@extends('admin.layout')
@section('konten')
        <main class="content">
				<div class="container-fluid p-0">

					<div class="row">
						<div class="col-12 col-xl-12">
							<div class="card">
								<div class="card-header">
									<h3>Tambah {{ __($title) }}</h3>
								</div>
								<div class="card-body">
									<form action="{{ url('/'.Request::segment(1)) }}" method="POST" enctype="multipart/form-data" class="form-horizontal">
										{{ csrf_field() }}
										
										<div class="form-group row">
											<label class="col-form-label col-sm-3 text-sm-right"> {{ __('Tanggal Masuk') }} <span class="required" style="color: #dd4b39;">*</span></label>
											<div class="col-sm-9">
												<input type="text" name="tanggal" class="form-control @if ($errors->has('tanggal')) is-invalid @endif " placeholder="Tanggal Pinjam" value="{{ old('tanggal') }}">
												@if ($errors->has('tanggal')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('tanggal') }}</label>@endif
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-sm-3 text-sm-right"> {{ __('Waktu Masuk') }} <span class="required" style="color: #dd4b39;">*</span></label>
											<div class="col-sm-9">
												<div class="input-group date" id="datetimepicker-time" data-target-input="nearest">
													<input type="text" name="waktu" class="form-control datetimepicker-input" data-target="#datetimepicker-time" data-toggle="datetimepicker"  value="{{ old('waktu') }}">
												</div>
												@if ($errors->has('waktu')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('waktu') }}</label>@endif
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-sm-3 text-sm-right"> {{ __('Barang') }}  <span class="required" style="color: #dd4b39;">*</span></label>
											<div class="col-sm-9">
												<select class="form-control select2 @if ($errors->has('barang_id')) is-invalid @endif" name="barang_id">
													<option value="">- Pilih -</option>
													@foreach ($barang as $v)
														<option value="{{ $v->id }}">{{ $v->barcode }} || {{ $v->nama_barang }}</option>
													@endforeach
												</select>
												@if ($errors->has('barang_id')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('barang_id') }}</label>@endif
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-sm-3 text-sm-right">  {{ __('Jumlah') }} <span class="required" style="color: #dd4b39;">*</span></label>
											<div class="col-sm-9">
												<input type="text" name="jumlah" class="form-control @if ($errors->has('jumlah')) is-invalid @endif " value="{{ old('jumlah') }}">
												@if ($errors->has('jumlah')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('jumlah') }}</label>@endif
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-sm-3 text-sm-right"> {{ __('Keterangan') }}</label>
											<div class="col-sm-9">
												<textarea id="konten" name="keterangan" class="form-control @if ($errors->has('keterangan')) is-invalid @endif " rows="3">{{ old('keterangan') }}</textarea>
												@if ($errors->has('keterangan')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('keterangan') }}</label>@endif
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