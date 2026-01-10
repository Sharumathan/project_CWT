@extends('admin.layouts.admin_master')

@section('title', 'Admin Notifications')

@section('content')

<h2><i class="fas fa-bell"></i> System Notifications</h2>

<div class="card-panel">
    @foreach($notifications as $n)
        <div class="notification-item">
            <p>{{ $n->message }}</p>
            <small>{{ $n->created_at }}</small>
        </div>
    @endforeach
</div>

@endsection
