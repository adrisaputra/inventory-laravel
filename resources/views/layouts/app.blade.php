<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Bootstrap 4 Admin &amp; Dashboard Template">
	<meta name="author" content="Bootlab">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Sistem Inventory</title>
    <link href="{{ asset('/upload/logo/inventory.png') }}" rel="icon">
	<link href="{{ asset('/assets/css/classic.css') }}" rel="stylesheet">
	<link href="{{ asset('/assets/css/custom.css') }}" rel="stylesheet">
	{{-- <script src="{{ asset('/assets2/js/settings.js') }}"></script> --}}
</head>

<body style="background-image: url(upload/background/SL_043021_42650_02.jpg);background-size: cover;">
	<main class="main d-flex w-100">
		<div class="container d-flex flex-column">
			<div class="row h-100">
				<div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
					<div class="d-table-cell align-middle">
						@yield('content')
					</div>
				</div>
			</div>
		</div>
	</main>

	<script src="{{ asset('//assets/js/app.js') }}"></script>

</body>

</html>