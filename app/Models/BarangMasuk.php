<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BarangMasuk extends Model
{
    // use HasFactory;
	protected $table = 'barang_masuk_tbl';
	protected $fillable =[
        'barang_id',
        'jumlah',
        'keterangan',
        'tanggal',
        'stok',
        'user_id'
    ];

    
    public function barang()
    {
        return $this->belongsTo('App\Models\Barang');
    }

}
