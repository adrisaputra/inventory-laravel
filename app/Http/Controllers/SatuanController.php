<?php

namespace App\Http\Controllers;

use App\Models\Satuan;   //nama model
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; //untuk membuat query di controller
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class SatuanController extends Controller
{
     ## Cek Login
     public function __construct()
     {
         $this->middleware('auth');
     }
     
     ## Tampikan Data
     public function index()
     {
         $title = "Satuan";
         $satuan = Satuan::orderBy('id','DESC')->paginate(25)->onEachSide(1);
         return view('admin.satuan.index',compact('title','satuan'));
     }
 
     ## Tampilkan Data Search
     public function search(Request $request)
     {
         $title = "Satuan";
         $satuan = $request->get('search');
         $satuan = Satuan::where('nama_satuan', 'LIKE', '%'.$satuan.'%')
                   ->orderBy('id','DESC')->paginate(25)->onEachSide(1);
         return view('admin.satuan.index',compact('title','satuan'));
     }
 
     ## Tampilkan Form Create
     public function create()
     {
         $title = "Satuan";
         $view=view('admin.satuan.create',compact('title'));
         $view=$view->render();
         return $view;
     }
 
     ## Simpan Data
     public function store(Request $request)
     {
         $this->validate($request, [
             'nama_satuan' => 'required'
         ]);
 
         $input['nama_satuan'] = $request->nama_satuan;
         $input['user_id'] = Auth::user()->id;
         
         Satuan::create($input);
 
         return redirect('/satuan/')->with('status','Data Tersimpan');
     }
 
     ## Tampilkan Form Edit
     public function edit(Satuan $satuan)
     {
         $title = "Satuan";
         $view=view('admin.satuan.edit', compact('title','satuan'));
         $view=$view->render();
         return $view;
     }
 
     ## Edit Data
     public function update(Request $request, Satuan $satuan)
     {
         $this->validate($request, [
             'nama_satuan' => 'required'
         ]);
         
         $satuan->fill($request->all());
         $satuan->user_id = Auth::user()->id;
         $satuan->save();
         
         return redirect('/satuan/')->with('status', 'Data Berhasil Diubah');
     }
 
     ## Hapus Data
     public function delete(Satuan $satuan)
     {
         $satuan->delete();
         return redirect('/satuan/')->with('status', 'Data Berhasil Dihapus');
     }
}
