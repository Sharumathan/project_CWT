import re

def parse_value(val):
    if val == r'\N':
        return 'NULL'
    # Escape single quotes
    val = val.replace("'", "''")
    return f"'{val}'"

def convert_copy_to_insert(input_file, output_file):
    with open(input_file, 'r') as f_in, open(output_file, 'w') as f_out:
        lines = f_in.readlines()
        
        table_name = None
        columns = None
        in_copy_block = False
        
        for line in lines:
            line = line.strip()
            
            # Skip empty lines or comments
            if not line or line.startswith('--'):
                # Pass through specific comments if needed, or just sequences
                # But strict SQL is better.
                continue

            if line.startswith('SELECT pg_catalog.setval'):
                f_out.write(line + ";\n")
                continue
            
            if line.startswith('COPY'):
                # Parse: COPY public.users (id, username, ...) FROM stdin;
                match = re.search(r'COPY\s+(.+?)\s+\((.+?)\)\s+FROM\s+stdin;', line)
                if match:
                    table_name = match.group(1)
                    columns = match.group(2)
                    in_copy_block = True
                    f_out.write(f"-- Importing {table_name}\n")
                continue
            
            if line == r'\.':
                in_copy_block = False
                table_name = None
                columns = None
                continue
                
            if in_copy_block:
                # Split by tab
                values = line.split('\t')
                parsed_values = [parse_value(v) for v in values]
                vals_str = ", ".join(parsed_values)
                sql = f"INSERT INTO {table_name} ({columns}) VALUES ({vals_str}) ON CONFLICT DO NOTHING;\n"
                f_out.write(sql)

convert_copy_to_insert('sample_data.sql', 'converted_data.sql')
print("Conversion complete.")
