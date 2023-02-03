<?php

use App\Http\Controllers\MasterController;
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

Route::get('/', function () {
    return view('layout');
});
Route::get('master', [MasterController::class, 'index']);
Route::get('/getMaster', [MasterController::class, 'getMaster'])->name('getMaster');
Route::get('detailmaster/{id_master}', [MasterController::class, 'detailmaster']);
Route::post('/postMaster', [MasterController::class, 'store']);
Route::post('/updateMaster', [MasterController::class, 'update']);
Route::post('/hapusMaster', [MasterController::class, 'destroy']);