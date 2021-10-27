<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Barang extends Model
{
    // use HasFactory;
	protected $table = 'barang_tbl';
	protected $fillable =[
        'barcode',
        'nama_barang',
        'satuan',
        'harga',
        'stok',
        'user_id'
    ];

    public function barang_masuk()
    {
        return $this->hasOne('App\Models\BarangMasuk');
    }

    public function barang_keluar()
    {
        return $this->hasOne('App\Models\Barangkeluar');
    }
}