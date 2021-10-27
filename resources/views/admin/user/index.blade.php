@extends('admin.layout')
@section('konten')
        <main class="content">
				<div class="container-fluid p-0">

					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3>{{ __('USER') }}</h3>
								</div>
								<div class="card-body">
									<form action="{{ url('/user/search') }}" method="GET">
									<div class="row">
										<div class="col-md-9">
											<a href="{{ url('/user/create') }}" class="btn btn-success btn-flat" title="Tambah Data">Tambah</a>
											<a href="{{ url('/user') }}" class="btn btn-warning btn-flat" title="Refresh halaman">Refresh</a>
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
													<th style="width: 60px">No</th>
													<th>Nama User</th>
													<th>Email</th>
													<th>Group</th>
													<th style="width: 20%">#aksi</th>
												</tr>
											</thead>
											<tbody>
												@foreach($user as $v)
												<tr>
													<td>{{ ($user ->currentpage()-1) * $user ->perpage() + $loop->index + 1 }}</td>
													<td>{{ $v->name }}</td>
													<td>{{ $v->email }}</td>
													<td>
														@if ($v->group==1)
															<span class="label label-danger">Administrator</span>
														@elseif  ($v->group==2)
															<span class="label label-warning">Pegawai</span>
														@endif
													</td>
													<td>
														<a href="{{ url('/user/edit/'.$v->id ) }}" class="btn btn-xs btn-flat btn-warning">Edit</a>
														@if ($v->id!=1)
															<a href="{{ url('/user/hapus/'.$v->id ) }}" class="btn btn-xs btn-flat btn-danger" onclick="return confirm('Anda Yakin ?');">Hapus</a>
														@endif
													</td>
												</tr>
												@endforeach
											</tbody>
										</table>
									</div><br>
									<div align="right">{{ $user->appends(Request::only('search'))->links() }}</div>
								</div>
							</div>
						</div>
					</div>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				</div>
			</main>
@endsection