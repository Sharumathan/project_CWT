@extends('admin.layouts.admin_master')

@section('title', 'Update Photo')

@section('content')

<h2>Update Profile Photo</h2>

<div class="card">
    <div class="card-body">

        <img src="{{ asset('uploads/profile_pictures/' . $admin->profile_photo) }}" class="profile-preview">

        <form method="POST" enctype="multipart/form-data" action="{{ route('admin.profile.photo') }}">
            @csrf

            <input type="file" class="form-control mt-3" name="photo" required>

            <button class="btn btn-primary mt-2">Upload</button>
        </form>

    </div>
</div>

@endsection
