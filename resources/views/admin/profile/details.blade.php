@extends('admin.layouts.admin_master')

@section('title', 'Profile Details')

@section('content')

<h2>Admin Profile</h2>

<div class="card">
    <div class="card-body">
        <form action="{{ route('admin.profile.updateDetails') }}" method="POST">
            @csrf

            <div class="form-group">
                <label>Username</label>
                <input class="form-control" name="username" value="{{ $admin->username }}">
            </div>

            <div class="form-group">
                <label>Email</label>
                <input class="form-control" name="email" value="{{ $admin->email }}">
            </div>

            <button class="btn btn-primary">Update</button>
        </form>

        <hr>

        <h4>Update Password</h4>

        <form action="{{ route('admin.profile.updatePassword') }}" method="POST">
            @csrf
            <div class="form-group">
                <label>New Password</label>
                <input class="form-control" type="password" name="password">
            </div>
            <button class="btn btn-warning">Change Password</button>
        </form>
    </div>
</div>

@endsection
