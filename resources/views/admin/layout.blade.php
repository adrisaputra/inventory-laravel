<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Bootstrap 4 Admin &amp; Dashboard Template">
	<meta name="author" content="Bootlab">

	<title>Sistem Inventory</title>

    <link rel="preconnect" href="//fonts.gstatic.com/" crossorigin="">
    
    <!-- Favicons -->
    <link href="{{ asset('/upload/logo/inventory.png') }}" rel="icon">
    <link href="{{ asset('/upload/logo/inventory.png') }}" rel="apple-touch-icon">

	<!-- PICK ONE OF THE STYLES BELOW -->
	<link href="{{ asset('/assets/css/classic.css') }}" rel="stylesheet">
	<!-- <link href="css/corporate.css" rel="stylesheet"> -->
	<!-- <link href="css/modern.css" rel="stylesheet"> -->

	<!-- BEGIN SETTINGS -->
	<!-- You can remove this after picking a style -->
	<style>
		body {
			opacity: 0;
		}
	</style>
	{{-- <script src="{{ asset('/assets/js/settings.js') }}"></script> --}}
	<!-- END SETTINGS -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-120946860-6"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-120946860-6');
</script>
<script>
			
			function formatRupiah(objek, separator) {
                  a = objek.value;
                  b = a.replace(/[^\d]/g,"");
                  c = "";
                  panjang = b.length;
                  j = 0;
                  for (i = panjang; i > 0; i--) {
                    j = j + 1;
                    if (((j % 3) == 1) && (j != 1)) {
                      c = b.substr(i-1,1) + separator + c;
                    } else {
                      c = b.substr(i-1,1) + c;
                    }
                  }
                  objek.value = c;
            }
                
        </script>
</head>

<body>
	<div class="wrapper">
		<nav id="sidebar" class="sidebar">
			<div class="sidebar-content ">
				<a class="sidebar-brand" href="/">
				  <img src="{{ asset('/upload/logo/logo.png') }}" height="50" width="150">
				</a>

				<ul class="sidebar-nav">
					<li class="sidebar-header">
						Main
					</li>
					<li class="sidebar-item {{ (request()->is('dashboard*')) ? 'active' : '' }}">
						<a href="{{ url('/dashboard') }}" class="sidebar-link">
						  <i class="align-middle" data-feather="home"></i> <span>Beranda</span>
						</a>
					</li>
					<li class="sidebar-item {{ (request()->is('barang*')) ? 'active' : '' }}">
						<a href="{{ url('/barang') }}" class="sidebar-link">
						  <i class="align-middle" data-feather="box"></i> <span>Barang</span>
						</a>
					</li>
					<li class="sidebar-item">
							<a href="#pages" data-toggle="collapse" class="sidebar-link collapsed">
								<i class="align-middle" data-feather="list"></i> <span class="align-middle">Transaksi</span>
								<span id="datamasuk"></span>
							</a>
							<ul id="pages" class="sidebar-dropdown list-unstyled collapse " data-parent="#sidebar">
								<li class="sidebar-item {{ (request()->is('barang_masuk*')) ? 'active' : '' }}">
									<a href="{{ url('/barang_masuk') }}" class="sidebar-link">
									<i class="align-middle" data-feather="circle"></i> Barang Masuk 
										<span id="datamasuk2"></span>
									</a>
								</li>
								<li class="sidebar-item {{ (request()->is('barang_keluar*')) ? 'active' : '' }}">
									<a href="{{ url('/barang_keluar') }}" class="sidebar-link">
									<i class="align-middle" data-feather="circle"></i> Barang Keluar
									</a>
								</li>
							</ul>
					</li>
					<li class="sidebar-item {{ (request()->is('report*')) ? 'active' : '' }}">
						<a href="{{ url('/report') }}" class="sidebar-link">
						  <i class="align-middle" data-feather="printer"></i> <span>Report</span>
						</a>
					</li>
					<li class="sidebar-header">
						Setting
					</li>
					<li class="sidebar-item {{ (request()->is('user*')) ? 'active' : '' }}">
						<a href="{{ url('/user') }}" class="sidebar-link">
						<i class="align-middle" data-feather="users"></i> <span>User</span>
						</a>
					</li>

				<div class="sidebar-bottom d-none d-lg-block">
					<div class="media">
                        @if(Auth::user()->foto)
                            <img class="rounded-circle mr-3" src="{{ asset('upload/foto/'.Auth::user()->foto) }}" alt="Chris Wood" width="40" height="40">
                        @else 
                            <img class="rounded-circle mr-3" src="{{ asset('/assets/img/avatars/avatar.jpg') }}" alt="Chris Wood" width="40" height="40">
                        @endif     
						<div class="media-body">
							<h5 class="mb-1">{{ Auth::user()->name }}</h5>
							<div>
								<i class="fas fa-circle text-success"></i> Online
							</div>
						</div>
					</div>
				</div>

			</div>
		</nav>

		<div class="main">
			<nav class="navbar navbar-expand navbar-light bg-white">
			<a class="sidebar-toggle d-flex mr-2">
          <i class="hamburger align-self-center"></i>
        </a>
				<div class="navbar-collapse collapse">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item dropdown">
							<a class="nav-icon dropdown-toggle d-inline-block d-sm-none" href="#" data-toggle="dropdown">
                <i class="align-middle" data-feather="settings"></i>
              </a>

							<a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#" data-toggle="dropdown">
                            @if(Auth::user()->foto)
                                <img src="{{ asset('upload/foto/'.Auth::user()->foto) }}" class="avatar img-fluid rounded-circle mr-1" alt="Chris Wood"> <span class="text-dark">{{ Auth::user()->name }}</span>
                            @else 
                                <img src="{{ asset('/assets/img/avatars/avatar.jpg') }}" class="avatar img-fluid rounded-circle mr-1" alt="Chris Wood"> <span class="text-dark">{{ Auth::user()->name }}</span>
                            @endif     
               
              </a>
							<div class="dropdown-menu dropdown-menu-right">
								<a class="dropdown-item" href="{{ url('/user/edit_profil/'.Auth::user()->id) }}">Profil</a>
								<a class="dropdown-item" href="{{ route('logout') }}" onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Log Out') }}</a>
								<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                </form>
							</div>
						</li>
					</ul>
				</div>
			</nav>

			@yield('konten')

		</div>
	</div>

	<script src="{{ asset('/assets/js/app.js') }}"></script>

	<script>
		$(function() {
			// Select2
			$(".select2").each(function() {
				$(this)
					.wrap("<div class=\"position-relative\"></div>")
					.select2({
						placeholder: "Select value",
						dropdownParent: $(this).parent()
					});
			})
			// Daterangepicker
			$("input[name=\"daterange\"]").daterangepicker({
				opens: "left"
			});
			$("input[name=\"datetimes\"]").daterangepicker({
				timePicker: true,
				opens: "left",
				startDate: moment().startOf("hour"),
				endDate: moment().startOf("hour").add(32, "hour"),
				locale: {
					format: "M/DD hh:mm A"
				}
			});
			$("input[name=\"tanggal\"]").daterangepicker({
				singleDatePicker: true,
				showDropdowns: true
			});
			$("input[name=\"tmt_cpns\"]").daterangepicker({
				singleDatePicker: true,
				showDropdowns: true
			});
			$("input[name=\"tmt_pns\"]").daterangepicker({
				singleDatePicker: true,
				showDropdowns: true
			});
			// Datetimepicker
			$('#datetimepicker-minimum').datetimepicker();
			$('#datetimepicker-view-mode').datetimepicker({
				viewMode: 'years'
			});
			$('#datetimepicker-time').datetimepicker({
				format: 'LT'
			});
			$('#datetimepicker-date').datetimepicker({
				format: 'L'
			});
			var start = moment().subtract(29, "days");
			var end = moment();

			function cb(start, end) {
				$("#reportrange span").html(start.format("MMMM D, YYYY") + " - " + end.format("MMMM D, YYYY"));
			}
			$("#reportrange").daterangepicker({
				startDate: start,
				endDate: end,
				ranges: {
					"Today": [moment(), moment()],
					"Yesterday": [moment().subtract(1, "days"), moment().subtract(1, "days")],
					"Last 7 Days": [moment().subtract(6, "days"), moment()],
					"Last 30 Days": [moment().subtract(29, "days"), moment()],
					"This Month": [moment().startOf("month"), moment().endOf("month")],
					"Last Month": [moment().subtract(1, "month").startOf("month"), moment().subtract(1, "month").endOf("month")]
				}
			}, cb);
			cb(start, end);
		});
	</script>

</body>

</html>

