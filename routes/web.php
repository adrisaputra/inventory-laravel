<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\BarangController;
use App\Http\Controllers\BarangMasukController;
use App\Http\Controllers\BarangKeluarController;
use App\Http\Controllers\SatuanController;
use App\Http\Controllers\ReportController;
use App\Http\Controllers\UserController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/clear-cache-all', function() {
    Artisan::call('cache:clear');
    dd("Cache Clear All");
});

Route::get('/buat_storage', function () {
    Artisan::call('storage:link');
    dd("Storage Berhasil Di Buat");
});

Route::get('/', function () {
    return view('auth.login');
});

Route::post('/login_w', [LoginController::class, 'authenticate']);
Route::get('/dashboard', [HomeController::class, 'index']);


## Barang
Route::get('/barang', [BarangController::class, 'index']);
Route::get('/barang/search', [BarangController::class, 'search']);
Route::get('/barang/create', [BarangController::class, 'create']);
Route::post('/barang', [BarangController::class, 'store']);
Route::get('/barang/edit/{barang}', [BarangController::class, 'edit']);
Route::put('/barang/edit/{barang}', [BarangController::class, 'update']);
Route::get('/barang/hapus/{barang}',[BarangController::class, 'delete']);

## BarangMasuk
Route::get('/barang_masuk', [BarangMasukController::class, 'index']);
Route::get('/barang_masuk/search', [BarangMasukController::class, 'search']);
Route::get('/barang_masuk/search2', [BarangMasukController::class, 'search2']);
Route::get('/barang_masuk/create', [BarangMasukController::class, 'create']);
Route::post('/barang_masuk', [BarangMasukController::class, 'store']);
Route::get('/barang_masuk/edit/{barang_masuk}', [BarangMasukController::class, 'edit']);
Route::put('/barang_masuk/edit/{barang_masuk}', [BarangMasukController::class, 'update']);
Route::put('/barang_masuk/edit2/{barang_masuk}', [BarangMasukController::class, 'update2']);
Route::put('/barang_masuk/edit3/{barang_masuk}', [BarangMasukController::class, 'update3']);
Route::get('/barang_masuk/hapus/{barang_masuk}',[BarangMasukController::class, 'delete']);

## Barang Keluar
Route::get('/barang_keluar', [BarangKeluarController::class, 'index']);
Route::get('/barang_keluar/search', [BarangKeluarController::class, 'search']);
Route::get('/barang_keluar/search2', [BarangKeluarController::class, 'search2']);
Route::get('/barang_keluar/create', [BarangKeluarController::class, 'create']);
Route::post('/barang_keluar', [BarangKeluarController::class, 'store']);
Route::get('/barang_keluar/edit/{barang_keluar}', [BarangKeluarController::class, 'edit']);
Route::put('/barang_keluar/edit/{barang_keluar}', [BarangKeluarController::class, 'update']);
Route::put('/barang_keluar/edit2/{barang_keluar}', [BarangKeluarController::class, 'update2']);
Route::put('/barang_keluar/edit3/{barang_keluar}', [BarangKeluarController::class, 'update3']);
Route::get('/barang_keluar/hapus/{barang_keluar}',[BarangKeluarController::class, 'delete']);

## Satuan
Route::get('/satuan', [SatuanController::class, 'index']);
Route::get('/satuan/search', [SatuanController::class, 'search']);
Route::get('/satuan/create', [SatuanController::class, 'create']);
Route::post('/satuan', [SatuanController::class, 'store']);
Route::get('/satuan/edit/{satuan}', [SatuanController::class, 'edit']);
Route::put('/satuan/edit/{satuan}', [SatuanController::class, 'update']);
Route::get('/satuan/hapus/{satuan}',[SatuanController::class, 'delete']);

## Barang Keluar
Route::get('/report', [ReportController::class, 'index']);
Route::post('/report', [ReportController::class, 'report']);

## User
Route::get('/user', [UserController::class, 'index']);
Route::get('/user/search', [UserController::class, 'search']);
Route::get('/user/create', [UserController::class, 'create']);
Route::post('/user', [UserController::class, 'store']);
Route::get('/user/edit/{user}', [UserController::class, 'edit']);
Route::put('/user/edit/{user}', [UserController::class, 'update']);
Route::get('/user/edit_profil/{user}', [UserController::class, 'edit_profil']);
Route::put('/user/edit_profil/{user}', [UserController::class, 'update_profil']);
Route::get('/user/hapus/{user}',[UserController::class, 'delete']);