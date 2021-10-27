@extends('layouts.app')

@section('content')
    <div class="card">
        <div class="card-body">
            <div class="m-sm-4">
                <div class="text-center">
                    <img src="{{ asset('/upload/logo/logo.png') }}"class="img-fluid" style="max-width: 70%;">
                </div>
                @if ($message = Session::get('status'))
                <br>
                
                  <div class="alert alert-danger alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <div class="alert-message">
                            {{ $message }}
                        </div>
                    </div>
                    @endif
                <form method="POST" action="{{ url('login_w') }}" method="POST" enctype="multipart/form-data">
                @csrf
                    <div class="form-group">
                        <label>{{ __('Nama User') }}</label>
                        <input type="name" class="form-control form-control-lg" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="email" autofocus placeholder="Masukkan Nama User">
                    </div>
                    <div class="form-group">
                        <label>{{ __('Password') }}</label>
                        <input type="password" class="form-control form-control-lg" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password" placeholder="Masukkan Password">
                        
                    </div>
                    <div class="text-center mt-3">
                        <button type="submit" class="btn btn-lg btn-primary">{{ __('Masuk') }}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection