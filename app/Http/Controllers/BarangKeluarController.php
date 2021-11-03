<?php

namespace App\Http\Controllers;

use App\Models\BarangKeluar;   //nama model
use App\Models\Barang;   //nama model
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB; //untuk membuat query di controller
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class BarangKeluarController extends Controller
{
    ## Cek Login
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    ## Tampikan Data
    public function index()
    {
        $title = "Barang Keluar";
        $barang_keluar = BarangKeluar::orderBy('id','ASC')->paginate(25)->onEachSide(1);
        return view('admin.barang_keluar.index',compact('title','barang_keluar'));
    }

    ## Tampilkan Data Search
    public function search(Request $request)
    {
        $title = "Barang Keluar";
        $barang_keluar = $request->get('search');
        $barang_keluar = BarangKeluar::
                            where(function ($query) use ($barang_keluar) {
                                $query->where(function ($query) use ($barang_keluar) {
                                    $query->where('waktu', 'LIKE', '%'.$barang_keluar.'%')
                                        ->orWhere('jumlah', 'LIKE', '%'.$barang_keluar.'%')
                                        ->orWhere('keterangan', 'LIKE', '%'.$barang_keluar.'%');
                                })
                                ->orwhereHas('barang', function ($query) use ($barang_keluar) {
                                    $query->where('barcode', 'LIKE', '%'. $barang_keluar .'%')
                                     ->orWhere('nama_barang', 'LIKE', '%'.$barang_keluar.'%')
                                     ->orWhere('satuan', 'LIKE', '%'.$barang_keluar.'%');
                                });
                            })
                            ->orderBy('id','ASC')->paginate(25)->onEachSide(1);
        return view('admin.barang_keluar.index',compact('title','barang_keluar'));
    }

    ## Tampilkan Data Search
    public function search2(Request $request)
    {
        $title = "Barang Keluar";
        $barang_keluar = $request->get('search');
        $barang_keluar = BarangKeluar::where('id', $barang_keluar)->orderBy('id','ASC')->paginate(25)->onEachSide(1);
        return view('admin.barang_keluar.index',compact('title','barang_keluar'));
    }

    ## Tampilkan Form Create
    public function create()
    {
        $title = "Barang Keluar";
        $barang = Barang::orderBy('id','ASC')->get();
        $view=view('admin.barang_keluar.create',compact('title','barang'));
        $view=$view->render();
        return $view;
    }

    ## Simpan Data
    public function store(Request $request)
    {
        $this->validate($request, [
            'tanggal' => 'required',
            'waktu' => 'required',
            'barang_id' => 'required',
            'jumlah' => 'required'
        ]);

        $tgl = substr($request->tanggal,3,2);
        $bln = substr($request->tanggal,0,2);
        $thn = substr($request->tanggal,6,4);
        
        $input['tanggal'] = $thn.'-'.$bln.'-'.$tgl;
        $input['waktu'] = $request->waktu;
        $input['barang_id'] = $request->barang_id;
        $input['jumlah'] = str_replace(".", "", $request->jumlah);
        $input['keterangan'] = $request->keterangan;
        $input['user_id'] = Auth::user()->id;
        
        BarangKeluar::create($input);

        return redirect('/barang_keluar/')->with('status','Data Tersimpan');
    }

    ## Tampilkan Form Edit
    public function edit(BarangKeluar $barang_keluar)
    {
        $title = "Barang Keluar";
        $barang = Barang::orderBy('id','ASC')->get();
        $view=view('admin.barang_keluar.edit', compact('title','barang','barang_keluar'));
        $view=$view->render();
        return $view;
    }

    ## Edit Data
    public function update(Request $request, BarangKeluar $barang_keluar)
    {
        $this->validate($request, [
            'tanggal' => 'required',
            'waktu' => 'required',
            'barang_id' => 'required',
            'jumlah' => 'required'
        ]);
        
        $barang_keluar->fill($request->all());
        
        $tgl = substr($request->tanggal,3,2);
        $bln = substr($request->tanggal,0,2);
        $thn = substr($request->tanggal,6,4);
        
        $barang_keluar->tanggal = $thn.'-'.$bln.'-'.$tgl;
        $barang_keluar->jumlah = str_replace(".", "", $request->jumlah);
        $barang_keluar->user_id = Auth::user()->id;
        $barang_keluar->save();
        
        return redirect('/barang_keluar/')->with('status', 'Data Berhasil Diubah');
    }

    ## Edit Data
    public function update2(Request $request, BarangKeluar $barang_keluar)
    {
        $barang_keluar->fill($request->all());
        $barang_keluar->jumlah = $barang_keluar->jumlah + 1;
        $barang_keluar->user_id = Auth::user()->id;
        $barang_keluar->save();
        
        return redirect('/barang_keluar/search2?search='.$barang_keluar->id)->with('status', 'Data Berhasil Diubah');
    }

    ## Edit Data
    public function update3(Request $request, BarangKeluar $barang_keluar)
    {
        $barang_keluar->fill($request->all());
        $barang_keluar->jumlah = str_replace(".", "", $request->jumlah);
        $barang_keluar->user_id = Auth::user()->id;
        $barang_keluar->save();
        
        return redirect('/barang_keluar')->with('status', 'Data Berhasil Diubah');
    }

    ## Hapus Data
    public function delete(BarangKeluar $barang_keluar)
    {
        $barang_keluar->delete();
        return redirect('/barang_keluar/')->with('status', 'Data Berhasil Dihapus');
    }
}
