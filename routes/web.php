<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\BpjskesController;
use App\Http\Controllers\BpjstkController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DepartementController;
use App\Http\Controllers\GolonganController;
use App\Http\Controllers\HistoryPekerjaanController;
use App\Http\Controllers\JabatanController;
use App\Http\Controllers\MasterController;
use App\Http\Controllers\PendidikanController;
use App\Http\Controllers\RiwayatController;
use App\Http\Controllers\RiwayatKaryawanController;
use App\Http\Controllers\SimpleController;
use App\Http\Controllers\StrukturController;
use App\Http\Controllers\RiwkaryawanController;
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

Route::get('/struktur', function () {
    return view('layout');
});
Route::get('coba', [SimpleController::class, 'index']);

Route::get('/', [AuthController::class, 'index']);
Route::get('/login', [AuthController::class, 'index'])->name('login');
Route::post('/auth', [AuthController::class, 'auth']);
Route::get('/logout', [AuthController::class, 'logout']);

Route::get('dashboard', [DashboardController::class, 'index'])->middleware('auth');

//Filter perdepartemen&bagian
Route::get('perdepart/{id}', [MasterController::class, 'perdepartemen'])->middleware('auth');
Route::get('perbagian/{id}', [MasterController::class, 'perbagian'])->middleware('auth');
//Filter pergolongan
Route::get('pergolongan/{gol}', [MasterController::class, 'pergolongan'])->middleware('auth');

//master
Route::get('master', [MasterController::class, 'index'])->middleware('auth');
Route::get('/getMaster', [MasterController::class, 'getMaster'])->name('getMaster');
Route::post('/postMaster', [MasterController::class, 'store']);
Route::post('/updateMaster', [MasterController::class, 'update']);
Route::post('/hapusMasterResign', [MasterController::class, 'destroyresign']);
Route::post('/hapusMasterPensiun', [MasterController::class, 'destroypensiun']);

Route::get('detailmaster/{id_master}', [MasterController::class, 'detailmaster'])->middleware('auth');
Route::get('print/{id_master}', [MasterController::class, 'print'])->middleware('auth');
Route::post('/gantiFotoMaster', [MasterController::class, 'gantifoto']);
Route::get('/hapusFotoMaster/{id_master}', [MasterController::class, 'hapusfoto']);

Route::post('/postpendidikan', [PendidikanController::class, 'store'])->middleware('auth');
Route::post('/updatependidikan', [PendidikanController::class, 'update']);
Route::get('/hapuspendidikan/{id}', [PendidikanController::class, 'destroy']);

Route::post('/postriwayatkerja', [HistoryPekerjaanController::class, 'store'])->middleware('auth');
Route::post('/updateriwayatkerja', [HistoryPekerjaanController::class, 'update']);
Route::get('/hapusriwayatkerja/{id}', [HistoryPekerjaanController::class, 'destroy']);

Route::get('/bpjskes', [BpjskesController::class, 'index'])->middleware('auth');
Route::post('/postbpjskes', [BpjskesController::class, 'store'])->middleware('auth');
Route::post('/updatebpjskes', [BpjskesController::class, 'update']);
Route::post('/hapusbpjskes', [BpjskesController::class, 'destroy']);

Route::get('/bpjstk', [BpjstkController::class, 'index'])->middleware('auth');
Route::post('/postbpjstk', [BpjstkController::class, 'store'])->middleware('auth');
Route::post('/updatebpjstk', [BpjstkController::class, 'update']);
Route::post('/hapusbpjstk', [BpjstkController::class, 'destroy']);

Route::get('departement', [DepartementController::class, 'index'])->middleware('auth');
Route::get('golongan', [GolonganController::class, 'index']);

Route::get('/riwkaryawan', [RiwkaryawanController::class, 'index'])->middleware('auth');
Route::get('/riwayatkaryawan', [RiwayatkaryawanController::class, 'index'])->middleware('auth');
Route::post('/postriwayatkaryawan', [RiwayatKaryawanController::class, 'store'])->middleware('auth');

Route::get('jabatan', [JabatanController::class, 'index']);
Route::get('/getJabatan', [JabatanController::class, 'getJabatan'])->name('getJabatan');
Route::post('/postJabatan', [JabatanController::class, 'store']);
Route::post('/updatejabatan', [JabatanController::class, 'update']);
Route::post('/hapusJabatan', [JabatanController::class, 'destroy']);

Route::get('test', [StrukturController::class, 'index']);

Route::get('riwayatbpjstk', [RiwayatController::class, 'riwayatbpjstk']);
Route::get('printtk/{date}', [RiwayatController::class, 'printriwayatbpjstk']);
Route::get('simpandatabpjstk', [RiwayatController::class, 'simpandatabpjstk']);

Route::get('/setting',[AuthController::class, 'setting']);
Route::post('/edituser',[AuthController::class, 'edituser']);

Route::get('riwayatbpjskes', [RiwayatController::class, 'riwayatbpjskes']);
Route::get('printkes/{date}', [RiwayatController::class, 'printriwayatbpjskes']);
Route::get('simpandatabpjskes', [RiwayatController::class, 'simpandatabpjskes']);