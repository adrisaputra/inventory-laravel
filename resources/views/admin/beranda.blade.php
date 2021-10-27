@extends('admin.layout')
@section('konten')
    <main class="content">
        <div class="container-fluid p-0">
            
            <div class="row">
                <div class="col-12 col-sm-6 col-xl d-flex">
                    <div class="card flex-fill">
                        <div class="card-body py-4">
                            <div class="media">
                                <div class="d-inline-block mt-2 mr-3">
                                    <i class="feather-lg text-info" data-feather="list"></i>
                                </div>
                                <div class="media-body">
                                    <h3 class="mb-2">{{ $barang }}</h3>
                                    <div class="mb-0">Jumlah Barang</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-xl d-flex">
                    <div class="card flex-fill">
                        <div class="card-body py-4">
                            <div class="media">
                                <div class="d-inline-block mt-2 mr-3">
                                    <i class="feather-lg text-danger" data-feather="user"></i>
                                </div>
                                <div class="media-body">
                                    <h3 class="mb-2">{{ $user }}</h3>
                                    <div class="mb-0">Jumlah User</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection