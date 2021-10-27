@extends('admin.layout')
@section('konten')
        <main class="content">
				<div class="container-fluid p-0">

					<div class="row">
						<div class="col-12 col-xl-12">
							<div class="card">
								<div class="card-header">
									<h3>Edit {{ __('Profil') }}</h3>
								</div>
								<div class="card-body">
								<form action="{{ url('/'.Request::segment(1).'/edit_profil/'.$user->id) }}" method="POST" enctype="multipart/form-data" class="form-horizontal">
								{{ csrf_field() }}
								<input type="hidden" name="_method" value="PUT">
									<div class="form-group row">
											<label class="col-form-label col-sm-3 text-sm-right"> Nama User</label>
											<div class="col-sm-9">
												@if(Auth::user()->group==2)
													<input type="text" class="form-control" placeholder="Nama User" value="{{ $user->name }}" disabled>
													<input type="hidden" class="form-control" placeholder="Nama User" name="name" value="{{ $user->name }}" >
												@else
													<input type="text" class="form-control" placeholder="Nama User" name="name" value="{{ $user->name }}" >
												@endif
												<input type="hidden" class="form-control" placeholder="Nama User" name="name2" value="{{ $user->name }}" >
												@if ($errors->has('name')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('name') }}</label>@endif
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-sm-3 text-sm-right">Email</label>
											<div class="col-sm-9">
												<input type="email" class="form-control" placeholder="Email" name="email" value="{{ $user->email }}" >
												@if ($errors->has('email')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('email') }}</label>@endif
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-sm-3 text-sm-right">Foto User <span class="required" style="color: #dd4b39;">*</span></label>
											<div class="col-sm-9">
												<span style="font-size:11px"><i>Ukuran File Tidak Boleh Lebih Dari 500 Kb (jpg,jpeg,png,pdf)</i></span><br>
												<input type="file" name="foto"  class="form-control @if ($errors->has('foto')) is-invalid @endif ">
												@if ($errors->has('foto')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('arsip_non_litigasi') }}</label>@endif
												@if($user->foto)
													<br>
													<img src="{{ asset('upload/foto/'.$user->foto) }}" width="150px" height="150px">
												@endif
											</div>
										</div>
										
										<hr style="border-top: 1px solid #d4d8e0;">

										<div class="form-group row">
											<label class="col-form-label col-sm-3 text-sm-right">Password Lama</label>
											<div class="col-sm-9">
												<input type="password" class="form-control" placeholder="Password" name="current-password" >
												@if ($errors->has('current-password')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('current-password') }}</label>@endif
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-sm-3 text-sm-right">Password Baru</label>
											<div class="col-sm-9">
												<input type="password" class="form-control" placeholder="Password" name="password" >
												@if ($errors->has('password')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('password') }}</label>@endif
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-sm-3 text-sm-right">Konfirmasi Password</label>
											<div class="col-sm-9">
												<input type="password" class="form-control" placeholder="Konfirmasi Password" name="password_confirmation" >
												@if ($errors->has('password_confirmation')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('password_confirmation') }}</label>@endif
											</div>
										</div>
										<br><br>
										<div class="form-group row">
											<div class="col-sm-10 ml-sm-auto">
												<button type="submit" class="btn btn-success">Simpan</button>
												<button type="reset" class="btn btn-danger">Reset</button>
												<a href="{{ url('/'.Request::segment(1)) }}" class="btn btn-warning">kembali</a>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				</div>
			</main>
@endsection