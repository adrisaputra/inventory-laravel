<?php

namespace App\Http\Controllers;

use App\Models\Barang;   //nama model
use App\Models\User;   //nama model
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
class HomeController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
	
    public function index()
    {
        $user = User::count();
        $barang = Barang::count();
        return view('admin.beranda', compact('user','barang','user'));
    }
}
