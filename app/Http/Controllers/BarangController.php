<?php

namespace App\Http\Controllers;

use App\Models\Barang;   //nama model
use App\Models\Satuan;   //nama model
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; //untuk membuat query di controller
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class BarangController extends Controller
{
    ## Cek Login
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    ## Tampikan Data
    public function index()
    {
        $title = "Barang";
        $barang = Barang::orderBy('id','ASC')->paginate(25)->onEachSide(1);
        return view('admin.barang.index',compact('title','barang'));
    }

    ## Tampilkan Data Search
    public function search(Request $request)
    {
        $title = "Barang";
        $barang = $request->get('search');
        $barang = Barang::where(function ($query) use ($barang) {
                                $query->where('barcode', 'LIKE', '%'.$barang.'%')
                                    ->orWhere('nama_barang', 'LIKE', '%'.$barang.'%')
                                    ->orWhere('satuan', 'LIKE', '%'.$barang.'%');
                            })
                            ->orderBy('id','ASC')->paginate(25)->onEachSide(1);
        return view('admin.barang.index',compact('title','barang'));
    }

    ## Tampilkan Form Create
    public function create()
    {
        $title = "Barang";
        $satuan = Satuan::get();
        $view=view('admin.barang.create',compact('title','satuan'));
        $view=$view->render();
        return $view;
    }

    ## Simpan Data
    public function store(Request $request)
    {
        $this->validate($request, [
            'nama_barang' => 'required',
            'satuan' => 'required',
            'harga' => 'required',
            'stok' => 'required'
        ]);

        $input['barcode'] = $request->barcode;
        $input['nama_barang'] = $request->nama_barang;
        $input['satuan'] = $request->satuan;
        $input['harga'] = str_replace(".", "", $request->harga);
        $input['stok'] = str_replace(".", "", $request->stok);
        $input['user_id'] = Auth::user()->id;
        
        Barang::create($input);

        return redirect('/barang/')->with('status','Data Tersimpan');
    }

    ## Tampilkan Form Edit
    public function edit(Barang $barang)
    {
        $title = "Barang";
        $satuan = Satuan::get();
        $view=view('admin.barang.edit', compact('title','barang','satuan'));
        $view=$view->render();
        return $view;
    }

    ## Edit Data
    public function update(Request $request, Barang $barang)
    {
        $this->validate($request, [
            'nama_barang' => 'required',
            'satuan' => 'required',
            'harga' => 'required',
            'stok' => 'required'
        ]);
        
        $barang->fill($request->all());
        
        $barang->harga = str_replace(".", "", $request->harga);
        $barang->stok = str_replace(".", "", $request->stok);
        $barang->user_id = Auth::user()->id;
        $barang->save();
        
        return redirect('/barang/')->with('status', 'Data Berhasil Diubah');
    }

    ## Hapus Data
    public function delete(Barang $barang)
    {
        $pathToYourFile = public_path('upload/arsip_litigasi/'.$barang->arsip_litigasi);
        if(file_exists($pathToYourFile))
        {
            unlink($pathToYourFile);
        }

        $barang->delete();
        
        return redirect('/barang/')->with('status', 'Data Berhasil Dihapus');
    }
}
