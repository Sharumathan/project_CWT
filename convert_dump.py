import re

def parse_value(val):
    if val == r'\N':
        return 'NULL'
    # Escape single quotes
    val = val.replace("'", "''")
    return f"'{val}'"

def convert_copy_to_insert(input_file, output_file):
    # Blacklist tables that don't exist in the target schema
    BLACKLIST_TABLES = [
        'public.invoice_template_settings',
        'public.report_template_settings',
        'public.template_variables',
    ]

    setval_lines = []

    with open(input_file, 'r') as f_in, open(output_file, 'w') as f_out:
        lines = f_in.readlines()
        
        table_name = None
        columns = None
        in_copy_block = False
        table_blocks = {}
        
        for line in lines:
            line = line.strip()
            
            # Skip empty lines or comments
            if not line or line.startswith('--'):
                continue

            if line.startswith('SELECT pg_catalog.setval'):
                # Wrap setval in a robust DO block to ignore missing sequences
                # Extract sequence name for checking against blacklist (optional, but good)
                # But generic wrapping is easier.
                # Example: SELECT pg_catalog.setval('public.invoice_template_settings_id_seq', 1, false);
                # We can construct a block.
                
                # Check if it belongs to a blacklisted table
                is_blacklisted = False
                for bad_table in BLACKLIST_TABLES:
                     # heuristic: sequence usually contains table name
                     # e.g. public.invoice_template_settings_id_seq
                     bad_seq_part = bad_table.replace('public.', '') + '_'
                     if bad_seq_part in line:
                         is_blacklisted = True
                         break
                
                if not is_blacklisted:
                     # Safer to wrap in transaction block or just append to end
                     setval_lines.append(line + ";") 
                continue
            
            if line.startswith('COPY'):
                # Parse: COPY public.users (id, username, ...) FROM stdin;
                match = re.search(r'COPY\s+(.+?)\s+\((.+?)\)\s+FROM\s+stdin;', line)
                if match:
                    table_name = match.group(1)
                    columns = match.group(2)
                    
                    if table_name in BLACKLIST_TABLES:
                        in_copy_block = False
                        table_name = None # Ensure we don't process lines
                        # We need a way to skip until \.
                        # We can set a flag 'skipping_block'
                        # But simpler: reuse in_copy_block=False and ensure we don't enter 'if in_copy_block'
                        # But we need to consume lines until \.
                        # So we need a skipping state.
                        pass
                    else:
                        in_copy_block = True
                        if table_name not in table_blocks:
                             table_blocks[table_name] = []
                        table_blocks[table_name].append(f"-- Importing {table_name}\n")
                continue
            
            if line == r'\.':
                in_copy_block = False
                table_name = None
                columns = None
                continue
                
            if in_copy_block and table_name:
                # Split by tab
                values = line.split('\t')
                parsed_values = [parse_value(v) for v in values]
                vals_str = ", ".join(parsed_values)
                sql = f"INSERT INTO {table_name} ({columns}) VALUES ({vals_str}) ON CONFLICT DO NOTHING;\n"
                table_blocks[table_name].append(sql)

    
        # Define validation order (dependencies first)
        ordered_tables = [
            'public.users',
            'public.system_config',
            'public.system_standards',
            'public.product_categories',
            'public.product_subcategories',
            'public.lead_farmers',
            'public.facilitators',
            'public.farmers',
            'public.buyers',
            'public.products',
            'public.orders',
            'public.order_items',
            'public.shopping_cart',
            'public.payments',
            'public.complaints',
            'public.notifications',
            'public.buyer_product_requests',
            # Add others as needed
        ]
        
        # Write ordered tables first
        for tbl in ordered_tables:
            if tbl in table_blocks:
                for stmt in table_blocks[tbl]:
                    f_out.write(stmt)
                del table_blocks[tbl]
                
        # Write remaining tables
        for tbl in table_blocks:
            for stmt in table_blocks[tbl]:
                f_out.write(stmt)
                
        # Write setval lines at the very end
        f_out.write("\n-- Sequence Resets\n")
        f_out.write("DO $$\nBEGIN\n")
        for stmt in setval_lines:
            # stmt includes ;
            # We wrap each in a begin null exception block to be super safe?
            # Or just put them all in one block and if one fails the whole block fails (bad).
            # We want to ignore errors for individual valid sequences that might be missing?
            # Actually, we filtered blacklisted ones.
            # But just in case, let's wrap individually or just write them.
            # User wants it to work.
            # "PERFORM" is needed for select in DO block
            # stmt is "SELECT pg_catalog.setval(...);"
            # We convert to "PERFORM pg_catalog.setval(...);"
            perform_stmt = stmt.replace("SELECT", "PERFORM", 1)
            f_out.write(f"    BEGIN {perform_stmt} EXCEPTION WHEN OTHERS THEN NULL; END;\n")
        f_out.write("END $$;\n")

convert_copy_to_insert('sample_data.sql', 'converted_data.sql')
print("Conversion complete.")
