@extends('admin.layouts.admin_master')

@section('title', 'Profile Settings')

@section('styles')
<link rel="stylesheet" href="{{ asset('css/admin-profile.css') }}">
@endsection

@section('content')
<div class="card-panel profile-settings">
    <h2><i class="fas fa-user-circle"></i> Administrator Profile Settings</h2>
    <p>Manage your account details and profile visualization.</p>
</div>

<div class="tabs-container card-panel">
    <div class="tabs">
        <button class="tab-button active" onclick="showTab('details')"><i class="fas fa-user-edit"></i> Personal Details</button>
        <button class="tab-button" onclick="showTab('photo')"><i class="fas fa-camera"></i> Profile Photo</button>
        <button class="tab-button" onclick="showTab('security')"><i class="fas fa-lock"></i> Security (Password)</button>
    </div>

    <!-- Tab 1: Personal Details Change -->
    <div id="details" class="tab-content active">
        <form action="{{ route('admin.profile.details') }}" method="POST">
            @csrf
            <h3>Update Personal Information</h3>
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" value="Admin User" required>
            </div>
            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" value="admin@hghub.com" required>
            </div>
            <div class="form-group">
                <label for="mobile">Mobile Number</label>
                <input type="text" id="mobile" name="mobile" value="+94 77 XXX XXXX">
            </div>
            <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Save Details</button>
        </form>
    </div>

    <!-- Tab 2: Profile Photo Change -->
    <div id="photo" class="tab-content">
        <h3>Change Profile Photo</h3>
        <div class="photo-uploader">
            <img id="current-photo" src="{{ asset('assets/images/profiles/default-avatar.png') }}" alt="Current Photo" class="current-photo">
            <form action="{{ route('admin.profile.photo') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="form-group">
                    <label for="new_photo">Upload New Photo</label>
                    <input type="file" id="new_photo" name="new_photo" accept="image/*" required>
                </div>
                <button type="submit" class="btn btn-primary"><i class="fas fa-upload"></i> Upload Photo</button>
            </form>
        </div>
    </div>

    <!-- Tab 3: Security (Password Change) -->
    <div id="security" class="tab-content">
        <form action="{{ route('admin.profile.password') }}" method="POST">
            @csrf
            <h3>Change Password</h3>
            <div class="form-group">
                <label for="current_password">Current Password</label>
                <input type="password" id="current_password" name="current_password" required>
            </div>
            <div class="form-group">
                <label for="new_password">New Password</label>
                <input type="password" id="new_password" name="new_password" required>
            </div>
            <div class="form-group">
                <label for="new_password_confirmation">Confirm New Password</label>
                <input type="password" id="new_password_confirmation" name="new_password_confirmation" required>
            </div>
            <button type="submit" class="btn btn-primary"><i class="fas fa-key"></i> Change Password</button>
        </form>
    </div>
</div>

@endsection

@section('scripts')
<script>
    function showTab(tabId) {
        // Hide all tabs
        document.querySelectorAll('.tab-content').forEach(tab => {
            tab.classList.remove('active');
        });
        // Remove active class from all buttons
        document.querySelectorAll('.tab-button').forEach(btn => {
            btn.classList.remove('active');
        });

        // Show the selected tab and set button active
        document.getElementById(tabId).classList.add('active');
        document.querySelector(`.tab-button[onclick*='${tabId}']`).classList.add('active');
    }

    // Initialize: show the first tab by default
    document.addEventListener('DOMContentLoaded', () => {
        showTab('details');
    });
</script>
@endsection
