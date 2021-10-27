@extends('admin.layout')
@section('konten')
        <main class="content">
				<div class="container-fluid p-0">

					<div class="row">
						<div class="col-12 col-xl-12">
							<div class="card">
								<div class="card-header">
									<h3>Cetak {{ __($title) }}</h3>
								</div>
								<div class="card-body">
									<form action="{{ url('/'.Request::segment(1)) }}" method="POST" enctype="multipart/form-data" class="form-horizontal">
										{{ csrf_field() }}
										<div class="form-group row">
											<label class="col-form-label col-sm-3 text-sm-right"> {{ __('Pilih Jenis Laporan') }}  <span class="required" style="color: #dd4b39;">*</span></label>
											<div class="col-sm-9">
												<select class="form-control @if ($errors->has('barang_id')) is-invalid @endif" name="jenis_laporan">
													<option value="">- Pilih Jenis Laporan-</option>
													<option value="1">Barang Masuk</option>
													<option value="2">Barang Keluar</option>
												</select>
												@if ($errors->has('barang_id')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('barang_id') }}</label>@endif
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-sm-3 text-sm-right"> Tanggal</label>
											<div class="col-sm-9">
												<input type="text" name="daterange" class="form-control @if ($errors->has('daterange')) is-invalid @endif " placeholder="Tanggal Pinjam" value="{{ old('daterange') }}">
												@if ($errors->has('daterange')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('daterange') }}</label>@endif
											</div>
										</div>
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