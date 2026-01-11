<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width,initial-scale=1" />
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<title>@yield('title', 'GreenMarket')</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
	<link
		href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Inter:wght@300;400;500;600&display=swap"
		rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	@yield('styles')
</head>

<body>

	@include('includes.navbar')

	<main class="site-main" role="main">
		@yield('content')
	</main>

	@include('includes.footer')

	@yield('scripts')
	<script src="{{ asset('js/main.js') }}"></script>
</body>

</html>