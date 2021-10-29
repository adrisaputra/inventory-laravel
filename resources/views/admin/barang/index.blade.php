@extends('admin.layout')
@section('konten')
        <main class="content">
				<div class="container-fluid p-0">

					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3>{{ __($title) }}</h3>
								</div>
								<div class="card-body">
									<form action="{{ url('/barang/search') }}" method="GET">
									<div class="row">
										<div class="col-md-9">
											@if(Auth::user()->group==1)
												<a href="{{ url('/barang/create') }}" class="btn btn-success btn-flat" title="Tambah Data">Tambah</a>
												<a href="{{ url('/barang') }}" class="btn btn-warning btn-flat" title="Refresh halaman">Refresh</a>
											@else
												<a href="{{ url('/barang') }}" class="btn btn-warning btn-flat" title="Refresh halaman">Refresh</a>    
											@endif
										</div>
										<div class="col-md-3">
											<div class="input-group">
												<input type="text" class="form-control" name="search" placeholder="Cari Data">
												<span class="input-group-btn">
													<input type="submit" name="submit" class="btn btn-info btn-flat" value="Cari">
												</span>
											</div>
										</div>
									</div>
									</form><br>
									
									@if ($message = Session::get('status'))
									  <div class="alert alert-primary alert-dismissible" role="alert">
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<div class="alert-message">
												{{ $message }}
											</div>
										</div>
									@endif
									<div class="table-responsive table-bordered">
										<table class="table mb-0">
											<thead>
											<tr style="background-color: gray;color:white">
												<th style="width: 2%">No</th>
												<th style="width: 5%">Barcode</th>
												<th style="width: 25%">Nama Barang</th>
												<th style="width: 10%">Satuan</th>
												<th style="width: 10%">Stok Saat Ini</th>
												<th style="width: 25%">Aksi</th>
											</tr>
											</thead>
											<tbody>
											@foreach($barang as $v)
												@php
													$jumlah_barang_masuk = DB::table('barang_masuk_tbl')
																		->select(DB::raw('SUM(jumlah) as total'))
																		->where('barang_id', $v->id)
																		->first();
													$jumlah_barang_keluar = DB::table('barang_keluar_tbl')
																		->select(DB::raw('SUM(jumlah) as total'))
																		->where('barang_id', $v->id)
																		->first();
												@endphp
											<tr>
												<td>{{ ($barang ->currentpage()-1) * $barang ->perpage() + $loop->index + 1 }}</td>
												<td><center>
														<!-- <img src="data:image/png;base64,{{DNS1D::getBarcodePNG($v->barcode, 'C39')}}" alt="barcode" /> -->
														<!-- {!! DNS1D::getBarcodeHTML($v->barcode, 'C39') !!} -->
														<img src="data:image/png;base64,{{DNS1D::getBarcodePNG($v->barcode, 'C39',1,70,array(1,1,1), true) }}" alt="barcode"   />
													</center>
												</td>
												<td>{{ $v->nama_barang }}</td>
												
												<td>{{ $v->satuan }}</td>
												<td>{{ number_format((($v->stok + $jumlah_barang_masuk->total)-$jumlah_barang_keluar->total),0,",",".") }}</td>
												<td>
													<a href="data:image/png;base64,{{DNS1D::getBarcodePNG($v->barcode, 'C39',1,70,array(1,1,1), true) }}" class="btn btn-sm btn-primary btn-block" download="{{ $v->nama_barang }}" >Download Barcode</a>
													<a href="{{ url('/barang/edit/'.$v->id ) }}" class="btn btn-sm btn-warning btn-block">Edit</a>
													<a href="{{ url('/barang/hapus/'.$v->id ) }}" class="btn btn-sm btn-danger btn-block" onclick="return confirm('Anda Yakin ?');">Hapus</a>
												</td>
											</tr>

											@endforeach
											</tbody>
										</table>
									</div><br>
									<div align="right">{{ $barang->appends(Request::only('search'))->links() }}</div>
								</div>
							</div>
						</div>
					</div>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				</div>
			</main>
@endsection