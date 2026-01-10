<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        // 1. Users (Base table)
        // 1. Users (Base table)
        if (!Schema::hasTable('users')) {
            Schema::create('users', function (Blueprint $table) {
                $table->id();
                $table->string('username', 50)->unique();
                $table->string('password');
                $table->string('email', 100)->unique()->nullable();
                $table->string('role', 20);
                $table->boolean('is_active')->default(true);
                $table->string('profile_photo')->default('default-avatar.png');
                $table->timestamp('last_login')->nullable();
                $table->timestamps(); // created_at, updated_at
            });
        }

        // 2. Password History
        // 2. Password History
        if (!Schema::hasTable('password_history')) {
            Schema::create('password_history', function (Blueprint $table) {
                $table->id();
                $table->foreignId('user_id')->constrained('users')->onDelete('cascade');
                $table->string('password_hash');
                $table->timestamp('changed_at');
                $table->foreignId('changed_by')->nullable()->constrained('users')->onDelete('set null');
                $table->string('change_reason')->default('password_reset');
                $table->timestamps();
            });
        }

        // 3. Sessions
        // 3. Sessions
        if (!Schema::hasTable('sessions')) {
            Schema::create('sessions', function (Blueprint $table) {
                $table->string('id')->primary();
                $table->foreignId('user_id')->nullable()->index();
                $table->string('ip_address', 45)->nullable();
                $table->text('user_agent')->nullable();
                $table->longText('payload');
                $table->integer('last_activity')->index();
            });
        }

        // 4. OTP Verifications
        // 4. OTP Verifications
        if (!Schema::hasTable('otp_verifications')) {
            Schema::create('otp_verifications', function (Blueprint $table) {
                $table->id();
                $table->foreignId('user_id')->constrained('users')->onDelete('cascade');
                $table->string('otp', 6);
                $table->string('action', 50);
                $table->timestamp('expires_at');
                $table->boolean('used')->default(false);
                $table->timestamp('used_at')->nullable();
                $table->timestamps();
            });
        }

        // 5. System Config
        // 5. System Config
        if (!Schema::hasTable('system_config')) {
            Schema::create('system_config', function (Blueprint $table) {
                $table->id();
                $table->string('config_key', 100)->unique();
                $table->text('config_value')->nullable();
                $table->string('config_group', 50);
                $table->text('description')->nullable();
                $table->boolean('is_public')->default(false);
                $table->foreignId('updated_by')->nullable()->constrained('users');
                $table->timestamps();
            });
        }

        // 6. Templates
        // 6. Templates
        if (!Schema::hasTable('templates')) {
            Schema::create('templates', function (Blueprint $table) {
                $table->id();
                $table->string('template_name')->unique();
                $table->string('template_type', 50);
                $table->string('template_file_path', 500);
                $table->string('template_file_name');
                $table->integer('file_size')->nullable();
                $table->string('file_type', 50)->nullable();
                $table->boolean('is_active')->default(true);
                $table->boolean('is_default')->default(false);
                $table->text('description')->nullable();
                $table->foreignId('uploaded_by')->nullable()->constrained('users');
                $table->timestamps();
            });
        }

        // 7. Notifications
        // 7. Notifications
        if (!Schema::hasTable('notifications')) {
            Schema::create('notifications', function (Blueprint $table) {
                $table->id();
                $table->foreignId('user_id')->nullable()->constrained('users')->onDelete('cascade');
                $table->string('recipient_type', 20);
                $table->string('recipient_address')->nullable();
                $table->string('title');
                $table->text('message');
                $table->string('notification_type', 20)->default('system');
                $table->boolean('is_read')->default(false);
                $table->integer('related_id')->nullable();
                $table->timestamps();
            });
        }

        // 8. Product Categories
        // 8. Product Categories
        if (!Schema::hasTable('product_categories')) {
            Schema::create('product_categories', function (Blueprint $table) {
                $table->id();
                $table->string('category_name', 100);
                $table->text('description')->nullable();
                $table->string('icon_filename')->nullable();
                $table->boolean('is_active')->default(true);
                $table->integer('display_order')->default(0);
                $table->integer('created_by_user_id')->nullable();
                $table->timestamps();
            });
        }

        // 9. Product Subcategories
        // 9. Product Subcategories
        if (!Schema::hasTable('product_subcategories')) {
            Schema::create('product_subcategories', function (Blueprint $table) {
                $table->id();
                $table->foreignId('category_id')->constrained('product_categories')->onDelete('cascade');
                $table->string('subcategory_name', 100);
                $table->text('description')->nullable();
                $table->boolean('is_active')->default(true);
                $table->integer('display_order')->default(0);
                $table->timestamps();
            });
        }

        // 10. Product Examples
        // 10. Product Examples
        if (!Schema::hasTable('product_examples')) {
            Schema::create('product_examples', function (Blueprint $table) {
                $table->id();
                $table->foreignId('subcategory_id')->constrained('product_subcategories')->onDelete('cascade');
                $table->string('product_name', 200);
                $table->text('description')->nullable();
                $table->boolean('is_active')->default(true);
                $table->integer('display_order')->default(0);
                $table->timestamps();
            });
        }

        // 11. System Standards
        // 11. System Standards
        if (!Schema::hasTable('system_standards')) {
            Schema::create('system_standards', function (Blueprint $table) {
                $table->id();
                $table->string('standard_type', 50);
                $table->string('standard_value', 100);
                $table->text('description')->nullable();
                $table->boolean('is_active')->default(true);
                $table->integer('display_order')->default(0);
                $table->timestamps();
            });
        }

        // 12. Lead Farmers
        // 12. Lead Farmers
        if (!Schema::hasTable('lead_farmers')) {
            Schema::create('lead_farmers', function (Blueprint $table) {
                $table->id();
                $table->foreignId('user_id')->constrained('users')->onDelete('cascade');
                $table->string('name', 100);
                $table->string('nic_no', 20)->unique();
                $table->string('primary_mobile', 15);
                $table->string('whatsapp_number', 15)->nullable();
                $table->text('residential_address');
                $table->string('grama_niladhari_division', 100);
                $table->string('group_name', 100);
                $table->string('group_number', 50)->unique();
                $table->string('preferred_payment', 20)->default('bank');
                $table->text('payment_details')->nullable();
                $table->string('account_number', 50)->default('2422737');
                $table->string('account_holder_name', 100)->default('Abishigan');
                $table->string('bank_name', 100)->default('BOC');
                $table->string('bank_branch', 100)->default('Trincomalee Super Grade');
                $table->timestamps();
            });
        }

        // 13. Farmers
        // 13. Farmers
        if (!Schema::hasTable('farmers')) {
            Schema::create('farmers', function (Blueprint $table) {
                $table->id();
                $table->foreignId('user_id')->nullable()->constrained('users')->onDelete('set null');
                $table->foreignId('lead_farmer_id')->constrained('lead_farmers')->onDelete('cascade');
                $table->string('name', 100);
                $table->string('nic_no', 20)->unique()->nullable();
                $table->string('primary_mobile', 15);
                $table->string('whatsapp_number', 15)->nullable();
                $table->string('email', 100)->nullable();
                $table->text('residential_address');
                $table->text('address_map_link')->nullable();
                $table->string('preferred_payment', 20)->default('bank');
                $table->text('payment_details')->nullable();
                $table->string('grama_niladhari_division', 100);
                $table->boolean('is_active')->default(true);
                $table->string('district', 50)->default('Colombo');
                $table->string('account_number', 50)->nullable();
                $table->string('account_holder_name', 100)->nullable();
                $table->string('bank_name', 100)->nullable();
                $table->string('bank_branch', 100)->nullable();
                $table->string('ezcash_mobile', 15)->nullable();
                $table->string('mcash_mobile', 15)->nullable();
                $table->timestamps();
            });
        }

        // 14. Facilitators
        // 14. Facilitators
        if (!Schema::hasTable('facilitators')) {
            Schema::create('facilitators', function (Blueprint $table) {
                $table->id();
                $table->foreignId('user_id')->constrained('users')->onDelete('cascade');
                $table->string('name', 100);
                $table->string('nic_no', 20)->unique();
                $table->string('primary_mobile', 15);
                $table->string('whatsapp_number', 15)->nullable();
                $table->string('email', 100)->nullable();
                $table->string('assigned_division', 100);
                $table->boolean('is_active')->default(true);
                $table->timestamps();
            });
        }

        // 15. Buyers
        // 15. Buyers
        if (!Schema::hasTable('buyers')) {
            Schema::create('buyers', function (Blueprint $table) {
                $table->id();
                $table->foreignId('user_id')->constrained('users')->onDelete('cascade');
                $table->string('name', 100);
                $table->string('nic_no', 20)->unique()->nullable();
                $table->string('primary_mobile', 15);
                $table->string('whatsapp_number', 15)->nullable();
                $table->text('residential_address')->nullable();
                $table->string('business_name', 100)->nullable();
                $table->string('business_type', 20)->default('individual');
                $table->boolean('is_verified')->default(false);
                $table->timestamps();
            });
        }

        // 16. Products
        // 16. Products
        if (!Schema::hasTable('products')) {
            Schema::create('products', function (Blueprint $table) {
                $table->id();
                $table->foreignId('farmer_id')->constrained('farmers');
                $table->foreignId('lead_farmer_id')->constrained('lead_farmers');
                $table->string('product_name', 200);
                $table->text('product_description')->nullable();
                $table->string('product_photo')->nullable();
                $table->string('type_variant', 50)->nullable();
                $table->foreignId('category_id')->constrained('product_categories');
                $table->foreignId('subcategory_id')->constrained('product_subcategories');
                $table->decimal('quantity', 10, 2)->default(0);
                $table->string('unit_of_measure', 20)->nullable();
                $table->string('quality_grade', 50)->nullable();
                $table->date('expected_availability_date')->nullable();
                $table->decimal('selling_price', 10, 2)->default(0);
                $table->text('pickup_address')->nullable();
                $table->text('pickup_map_link')->nullable();
                $table->boolean('is_available')->default(true);
                $table->integer('views_count')->default(0);
                $table->string('product_status', 50)->default('have it');
                $table->timestamps();
            });
        }

        // 17. Wishlists
        // 17. Wishlists
        if (!Schema::hasTable('wishlists')) {
            Schema::create('wishlists', function (Blueprint $table) {
                $table->id();
                $table->foreignId('buyer_id')->constrained('buyers')->onDelete('cascade');
                $table->foreignId('product_id')->constrained('products')->onDelete('cascade');
                $table->timestamps();
            });
        }

        // 18. Buyer Product Requests
        // 18. Buyer Product Requests
        if (!Schema::hasTable('buyer_product_requests')) {
            Schema::create('buyer_product_requests', function (Blueprint $table) {
                $table->id();
                $table->foreignId('buyer_id')->constrained('buyers')->onDelete('cascade');
                $table->string('product_name', 255);
                $table->string('product_image', 255)->nullable();
                $table->decimal('needed_quantity', 10, 2);
                $table->string('unit_of_measure', 20)->nullable();
                $table->date('needed_date');
                $table->decimal('unit_price', 10, 2)->nullable();
                $table->text('description')->nullable();
                $table->string('status', 20)->default('active');
                $table->timestamps();
            });
        }

        // 19. Shopping Cart (Singular)
        // 19. Shopping Cart (Singular)
        if (!Schema::hasTable('shopping_cart')) {
            Schema::create('shopping_cart', function (Blueprint $table) {
                $table->id();
                $table->foreignId('buyer_id')->constrained('buyers')->onDelete('cascade');
                $table->foreignId('product_id')->constrained('products')->onDelete('cascade');
                $table->decimal('quantity', 10, 2);
                $table->decimal('selling_price_snapshot', 10, 2);
                $table->timestamps();
            });
        }

        // 20. Orders
        // 20. Orders
        if (!Schema::hasTable('orders')) {
            Schema::create('orders', function (Blueprint $table) {
                $table->id();
                $table->string('order_number', 50)->unique();
                $table->foreignId('buyer_id')->constrained('buyers')->onDelete('cascade');
                $table->foreignId('farmer_id')->constrained('farmers');
                $table->foreignId('lead_farmer_id')->constrained('lead_farmers');
                $table->string('order_status', 30)->default('pending');
                $table->decimal('total_amount', 10, 2);
                $table->timestamp('paid_date')->nullable();
                $table->timestamp('completed_date')->nullable();
                $table->timestamps();
            });
        }

        // 21. Order Items
        // 21. Order Items
        if (!Schema::hasTable('order_items')) {
            Schema::create('order_items', function (Blueprint $table) {
                $table->id();
                $table->foreignId('order_id')->constrained('orders')->onDelete('cascade');
                $table->foreignId('product_id')->constrained('products'); // No cascade delete usually for order history
                $table->string('product_name_snapshot');
                $table->decimal('quantity_ordered', 10, 2);
                $table->decimal('unit_price_snapshot', 10, 2);
                $table->decimal('item_total', 10, 2);
                $table->timestamps();
            });
        }

        // 22. Payments
        // 22. Payments
        if (!Schema::hasTable('payments')) {
            Schema::create('payments', function (Blueprint $table) {
                $table->id();
                $table->foreignId('order_id')->constrained('orders')->onDelete('cascade');
                $table->string('payment_reference', 100)->unique();
                $table->decimal('amount', 10, 2);
                $table->string('payment_method', 50);
                $table->string('payment_status', 20)->default('pending');
                $table->timestamp('payment_date')->useCurrent();
                $table->string('transaction_id', 100)->nullable();
                $table->string('receipt_url')->nullable();
                $table->timestamps();
            });
        }

        // 23. Invoices (Missed in initial list but good to check if needed, dump mentions it)
        // Wait, Dump doesn't have 'invoices' table, but complaints references 'invoice_error'. 
        // Ah, checked dump again. 'invoices' table is NOT in the CREATE TABLE list provided by user.
        // But templates table has type 'invoice'.
        // User dump > MY list. I will stick strictly to the dump provided now.
        // Dump list: buyer_product_requests, buyers, cache..., complaints, facilitators, failed_jobs, farmers, job_batches, jobs, lead_farmers, migrations, notifications, order_items, orders, otp_verifications, password_history, payments, product_categories, product_examples, product_feedback, product_subcategories, products, sessions, shopping_cart, system_config, system_standards, templates, users, wishlists.
        // OK.

        // 24. Complaints
        // 24. Complaints
        if (!Schema::hasTable('complaints')) {
            Schema::create('complaints', function (Blueprint $table) {
                $table->id();
                $table->foreignId('complainant_user_id')->constrained('users')->onDelete('cascade');
                $table->string('complainant_role', 20);
                $table->foreignId('against_user_id')->nullable()->constrained('users');
                $table->foreignId('related_order_id')->nullable()->constrained('orders');
                $table->string('complaint_type', 50);
                $table->text('description');
                $table->string('status', 20)->default('new');
                $table->foreignId('resolved_by_facilitator_id')->nullable()->constrained('facilitators');
                $table->timestamps();
            });
        }

        // 25. Product Feedback
        // 25. Product Feedback
        if (!Schema::hasTable('product_feedback')) {
            Schema::create('product_feedback', function (Blueprint $table) {
                $table->id();
                $table->foreignId('buyer_id')->constrained('buyers')->onDelete('cascade');
                $table->foreignId('order_id')->constrained('orders')->onDelete('cascade');
                $table->integer('rating')->nullable();
                $table->text('comment')->nullable();
                $table->timestamps();
            });
        }

        // Standard Laravel Jobs Tables
        // Standard Laravel Jobs Tables
        if (!Schema::hasTable('cache')) {
            Schema::create('cache', function (Blueprint $table) {
                $table->string('key')->primary();
                $table->text('value');
                $table->integer('expiration');
            });
        }

        if (!Schema::hasTable('cache_locks')) {
            Schema::create('cache_locks', function (Blueprint $table) {
                $table->string('key')->primary();
                $table->string('owner');
                $table->integer('expiration');
            });
        }

        if (!Schema::hasTable('failed_jobs')) {
            Schema::create('failed_jobs', function (Blueprint $table) {
                $table->id();
                $table->string('uuid')->unique();
                $table->text('connection');
                $table->text('queue');
                $table->longText('payload');
                $table->longText('exception');
                $table->timestamp('failed_at')->useCurrent();
            });
        }

        if (!Schema::hasTable('jobs')) {
            Schema::create('jobs', function (Blueprint $table) {
                $table->id();
                $table->string('queue')->index();
                $table->longText('payload');
                $table->unsignedTinyInteger('attempts');
                $table->unsignedInteger('reserved_at')->nullable();
                $table->unsignedInteger('available_at');
                $table->unsignedInteger('created_at');
            });
        }

        if (!Schema::hasTable('job_batches')) {
            Schema::create('job_batches', function (Blueprint $table) {
                $table->string('id')->primary();
                $table->string('name');
                $table->integer('total_jobs');
                $table->integer('pending_jobs');
                $table->integer('failed_jobs');
                $table->longText('failed_job_ids');
                $table->mediumText('options')->nullable();
                $table->integer('cancelled_at')->nullable();
                $table->integer('created_at');
                $table->integer('finished_at')->nullable();
            });
        }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('job_batches');
        Schema::dropIfExists('jobs');
        Schema::dropIfExists('failed_jobs');
        Schema::dropIfExists('cache_locks');
        Schema::dropIfExists('cache');
        Schema::dropIfExists('product_feedback');
        Schema::dropIfExists('complaints');
        Schema::dropIfExists('payments');
        Schema::dropIfExists('order_items');
        Schema::dropIfExists('orders');
        Schema::dropIfExists('shopping_cart');
        Schema::dropIfExists('buyer_product_requests');
        Schema::dropIfExists('wishlists');
        Schema::dropIfExists('products');
        Schema::dropIfExists('buyers');
        Schema::dropIfExists('facilitators');
        Schema::dropIfExists('farmers');
        Schema::dropIfExists('lead_farmers');
        Schema::dropIfExists('system_standards');
        Schema::dropIfExists('product_examples');
        Schema::dropIfExists('product_subcategories');
        Schema::dropIfExists('product_categories');
        Schema::dropIfExists('notifications');
        Schema::dropIfExists('templates');
        Schema::dropIfExists('system_config');
        Schema::dropIfExists('otp_verifications');
        Schema::dropIfExists('sessions');
        Schema::dropIfExists('password_history');
        Schema::dropIfExists('users');
    }
};
