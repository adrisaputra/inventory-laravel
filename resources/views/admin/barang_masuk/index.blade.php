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
									<form action="{{ url('/barang_masuk/search') }}" method="GET">
									<div class="row">
										<div class="col-md-9">
											@if(Auth::user()->group==1)
												<a href="{{ url('/barang_masuk/create') }}" class="btn btn-success btn-flat" title="Tambah Data">Tambah</a>
												<a href="{{ url('/barang_masuk') }}" class="btn btn-warning btn-flat" title="Refresh halaman">Refresh</a>
											@else
												<a href="{{ url('/barang_masuk') }}" class="btn btn-warning btn-flat" title="Refresh halaman">Refresh</a>    
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
												<th style="width: 5%">No</th>
												<th style="width: 10%">Tanggal</th>
												<th style="width: 10%">Barcode</th>
												<th style="width: 20%">Nama Barang</th>
												<th style="width: 10%">Satuan</th>
												<th style="width: 10%">Jumlah</th>
												<th style="width: 10%">Aksi</th>
											</tr>
											</thead>
											<tbody>
											@foreach($barang_masuk as $v)
											<tr>
												<td>{{ ($barang_masuk ->currentpage()-1) * $barang_masuk ->perpage() + $loop->index + 1 }}</td>
												<td>{{ date('d-m-Y', strtotime($v->tanggal)) }}</td>
												<td>{{ $v->barang->barcode }}</td>
												<td>{{ $v->barang->nama_barang }}</td>
												<td>{{ $v->barang->satuan }}</td>
												<td>{{ number_format($v->jumlah,0,",",".") }}</td>
												<td>
													<a href="{{ url('/barang_masuk/edit/'.$v->id ) }}" class="btn btn-xs btn-warning">Edit</a>
													<a href="{{ url('/barang_masuk/hapus/'.$v->id ) }}" class="btn btn-xs btn-danger" onclick="return confirm('Anda Yakin ?');">Hapus</a>
												</td>
											</tr>

											@endforeach
											</tbody>
										</table>
									</div><br>
									<div align="right">{{ $barang_masuk->appends(Request::only('search'))->links() }}</div>
								</div>
							</div>
						</div>
					</div>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				</div>
			</main>
@endsection