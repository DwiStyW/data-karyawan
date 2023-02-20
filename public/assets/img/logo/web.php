<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DepartementController;
use App\Http\Controllers\GolonganController;
use App\Http\Controllers\JabatanController;
use App\Http\Controllers\MasterController;
use App\Http\Controllers\PendidikanController;
use Illuminate\Support\Facades\Route;

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

Route::get('/', [AuthController::class, 'index']);

Route::get('/login', [AuthController::class, 'index'])->name('login');
Route::post('/auth', [AuthController::class, 'auth']);
Route::get('/logout', [AuthController::class, 'logout']);

Route::get('dashboard', [DashboardController::class, 'index'])->middleware('auth');
//master
Route::get('master', [MasterController::class, 'index'])->middleware('auth');
Route::get('/getMaster', [MasterController::class, 'getMaster'])->name('getMaster');
Route::post('/postMaster', [MasterController::class, 'store']);
Route::post('/updateMaster', [MasterController::class, 'update']);
Route::post('/hapusMaster', [MasterController::class, 'destroy']);

Route::get('detailmaster/{id_master}', [MasterController::class, 'detailmaster'])->middleware('auth');
Route::post('/gantiFotoMaster', [MasterController::class, 'gantifoto']);
Route::get('/hapusFotoMaster/{id_master}', [MasterController::class, 'hapusfoto']);

Route::post('/postpendidikan', [PendidikanController::class, 'store'])->middleware('auth');
Route::post('/updatependidikan', [PendidikanController::class, 'update']);
Route::get('/hapuspendidikan/{id}', [PendidikanController::class, 'destroy']);

Route::get('departement', [DepartementController::class, 'index'])->middleware('auth');
Route::get('golongan', [GolonganController::class, 'index']);

Route::get('jabatan', [JabatanController::class, 'index']);
Route::get('/getJabatan', [JabatanController::class, 'getJabatan'])->name('getJabatan');
Route::post('/postJabatan', [JabatanController::class, 'store']);
Route::post('/updatejabatan', [JabatanController::class, 'update']);