@extends('admin.layout')
@section('konten')
        <main class="content">
				<div class="container-fluid p-0">

					<div class="row">
						<div class="col-12 col-xl-12">
							<div class="card">
								<div class="card-header">
									<h3>Edit {{ __($title) }}</h3>
								</div>
								<div class="card-body">
									<form action="{{ url('/'.Request::segment(1).'/edit/'.$barang_keluar->id) }}" method="POST" enctype="multipart/form-data" class="form-horizontal">
									{{ csrf_field() }}
									<input type="hidden" name="_method" value="PUT">
										<div class="form-group row">
											<label class="col-form-label col-sm-3 text-sm-right"> {{ __('Tanggal keluar') }} <span class="required" style="color: #dd4b39;">*</span></label>
											<div class="col-sm-9">
												@php
													$tgl = substr($barang_keluar->tanggal,8,2);
													$bln = substr($barang_keluar->tanggal,5,2);
													$thn= substr($barang_keluar->tanggal,0,4);
												@endphp
												<input type="text" name="tanggal" class="form-control @if ($errors->has('tanggal')) is-invalid @endif " placeholder="Tanggal Keluar" value="{{ $bln }}/{{ $tgl }}/{{ $thn }}">
												@if ($errors->has('tanggal')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('tanggal') }}</label>@endif
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-sm-3 text-sm-right"> {{ __('Waktu Keluar') }} <span class="required" style="color: #dd4b39;">*</span></label>
											<div class="col-sm-9">
												<div class="input-group date" id="datetimepicker-time" data-target-input="nearest">
													<input type="text" name="waktu" class="form-control datetimepicker-input" data-target="#datetimepicker-time" data-toggle="datetimepicker"  value="{{ $barang_keluar->waktu }}">
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
														<option value="{{ $v->id }}" @if($barang_keluar->barang_id == $v->id) selected @endif>{{ $v->barcode }} || {{ $v->nama_barang }}</option>
													@endforeach
												</select>
												@if ($errors->has('barang_id')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('barang_id') }}</label>@endif
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-sm-3 text-sm-right">  {{ __('Jumlah') }} <span class="required" style="color: #dd4b39;">*</span></label>
											<div class="col-sm-9">
												<input type="text" name="jumlah" class="form-control @if ($errors->has('jumlah')) is-invalid @endif " value="{{ number_format($barang_keluar->jumlah, 0, ',', '.') }}" onkeyup="formatRupiah(this, '.')">
												@if ($errors->has('jumlah')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('jumlah') }}</label>@endif
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-sm-3 text-sm-right"> {{ __('Keterangan') }}</label>
											<div class="col-sm-9">
												<textarea id="konten" name="keterangan" class="form-control @if ($errors->has('keterangan')) is-invalid @endif " rows="3">{{ $barang_keluar->keterangan }}</textarea>
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