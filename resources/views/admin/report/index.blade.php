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
												<select class="form-control @if ($errors->has('barang_id')) is-invalid @endif" name="jenis_laporan" 
													onChange="if (this.selectedIndex=='3'){ 
													document.getElementById('tanggal').style.display = 'inline'; 
												} else if (this.selectedIndex=='2'){
													document.getElementById('tanggal').style.display = 'inline';
												} else if (this.selectedIndex=='1'){
													document.getElementById('tanggal').style.display = 'none';
												};">
													<option value="">- Pilih Jenis Laporan-</option>
													<option value="3">Laporan Stok</option>
													<option value="1">Barang Masuk</option>
													<option value="2">Barang Keluar</option>
												</select>
												@if ($errors->has('barang_id')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('barang_id') }}</label>@endif
											</div>
										</div>
										<span id='tanggal' style='display:none;'>
											<div class="form-group row">
												<label class="col-form-label col-sm-3 text-sm-right"> Tanggal</label>
												<div class="col-sm-9">
													<input type="text" name="daterange" class="form-control @if ($errors->has('daterange')) is-invalid @endif " placeholder="Tanggal Pinjam" value="{{ old('daterange') }}">
													@if ($errors->has('daterange')) <label id="validation-email-error" class="error jquery-validation-error small form-text invalid-feedback" for="validation-email">{{ $errors->first('daterange') }}</label>@endif
												</div>
											</div>
										</span>
										<div class="form-group row">
											<div class="col-sm-10 ml-sm-auto">
												<button type="submit" class="btn btn-primary">Cetak</button>
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