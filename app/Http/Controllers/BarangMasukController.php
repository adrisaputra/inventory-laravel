<?php

namespace App\Http\Controllers;

use App\Models\BarangMasuk;   //nama model
use App\Models\Barang;   //nama model
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; //untuk membuat query di controller
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class BarangMasukController extends Controller
{
    ## Cek Login
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    ## Tampikan Data
    public function index()
    {
        $title = "Barang Masuk";
        $barang_masuk = BarangMasuk::orderBy('id','DESC')->paginate(25)->onEachSide(1);
        return view('admin.barang_masuk.index',compact('title','barang_masuk'));
    }

    ## Tampilkan Data Search
    public function search(Request $request)
    {
        $title = "Barang Masuk";
        $barang_masuk = $request->get('search');
        $barang_masuk = BarangMasuk::where(function ($query) use ($barang_masuk) {
                                $query->where('barcode', 'LIKE', '%'.$barang_masuk.'%')
                                    ->orWhere('nama_barang_masuk', 'LIKE', '%'.$barang_masuk.'%')
                                    ->orWhere('satuan', 'LIKE', '%'.$barang_masuk.'%');
                            })
                            ->orderBy('id','DESC')->paginate(25)->onEachSide(1);
        return view('admin.barang_masuk.index',compact('title','barang_masuk'));
    }

    ## Tampilkan Form Create
    public function create()
    {
        $title = "Barang Masuk";
        $barang = Barang::orderBy('id','DESC')->get();
        $view=view('admin.barang_masuk.create',compact('title','barang'));
        $view=$view->render();
        return $view;
    }

    ## Simpan Data
    public function store(Request $request)
    {
        $this->validate($request, [
            'tanggal' => 'required',
            'barang_id' => 'required',
            'jumlah' => 'required'
        ]);

        $tgl = substr($request->tanggal,3,2);
        $bln = substr($request->tanggal,0,2);
        $thn = substr($request->tanggal,6,4);
        
        $input['tanggal'] = $thn.'-'.$bln.'-'.$tgl;
        $input['barang_id'] = $request->barang_id;
        $input['jumlah'] = str_replace(".", "", $request->jumlah);
        $input['keterangan'] = $request->keterangan;
        $input['user_id'] = Auth::user()->id;
        
        BarangMasuk::create($input);

        return redirect('/barang_masuk/')->with('status','Data Tersimpan');
    }

    ## Tampilkan Form Edit
    public function edit(BarangMasuk $barang_masuk)
    {
        $title = "Barang Masuk";
        $barang = Barang::orderBy('id','DESC')->get();
        $view=view('admin.barang_masuk.edit', compact('title','barang','barang_masuk'));
        $view=$view->render();
        return $view;
    }

    ## Edit Data
    public function update(Request $request, BarangMasuk $barang_masuk)
    {
        $this->validate($request, [
            'tanggal' => 'required',
            'barang_id' => 'required',
            'jumlah' => 'required'
        ]);
        
        $barang_masuk->fill($request->all());
        
        $tgl = substr($request->tanggal,3,2);
        $bln = substr($request->tanggal,0,2);
        $thn = substr($request->tanggal,6,4);
        
        $barang_masuk->tanggal = $thn.'-'.$bln.'-'.$tgl;
        $barang_masuk->jumlah = str_replace(".", "", $request->jumlah);
        $barang_masuk->user_id = Auth::user()->id;
        $barang_masuk->save();
        
        return redirect('/barang_masuk/')->with('status', 'Data Berhasil Diubah');
    }

    ## Hapus Data
    public function delete(BarangMasuk $barang_masuk)
    {
        $barang_masuk->delete();
        return redirect('/barang_masuk/')->with('status', 'Data Berhasil Dihapus');
    }
}
