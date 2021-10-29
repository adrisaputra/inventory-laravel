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
											<label class="col-form-label col-sm-3 text-sm-right"> Barcode</label>
											<div class="col-sm-9">
												<input type="text" name="barcode" class="form-control @if ($errors->has('barcode')) is-invalid @endif " value="{{ old('barcode') }}">
												@if ($errors->has('barcode')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('barcode') }}</label>@endif
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-sm-3 text-sm-right"> Nama Barang <span class="required" style="color: #dd4b39;">*</span></label>
											<div class="col-sm-9">
												<input type="text" name="nama_barang" class="form-control @if ($errors->has('nama_barang')) is-invalid @endif " value="{{ old('nama_barang') }}">
												@if ($errors->has('nama_barang')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('nama_barang') }}</label>@endif
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-sm-2 text-sm-right"> {{ __('Satuan') }}</label>
											<div class="col-sm-10">
												<select class="form-control @if ($errors->has('satuan')) is-invalid @endif " name="satuan">
													<option value="">- Pilih Satuan-</option>
													@foreach ($satuan as $v)
														<option value="{{ $v->nama_satuan }}"  @if(old('satuan')==$v->nama_satuan) selected @endif>{{ $v->nama_satuan }}</option>
													@endforeach
												</select>
												@if ($errors->has('satuan')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('satuan') }}</label>@endif
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-sm-3 text-sm-right"> Harga Per Item <span class="required" style="color: #dd4b39;">*</span></label>
											<div class="col-sm-9">
												<input type="text" name="harga" class="form-control @if ($errors->has('harga')) is-invalid @endif " value="{{ old('harga') }}" onkeyup="formatRupiah(this, '.')">
												@if ($errors->has('harga')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('harga') }}</label>@endif
											</div>
										</div>
										<div class="form-group row">
											<label class="col-form-label col-sm-3 text-sm-right"> Stok Awal <span class="required" style="color: #dd4b39;">*</span></label>
											<div class="col-sm-9">
												<input type="text" name="stok" class="form-control @if ($errors->has('stok')) is-invalid @endif " value="{{ old('stok') }}" onkeyup="formatRupiah(this, '.')">
												@if ($errors->has('stok')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('stok') }}</label>@endif
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