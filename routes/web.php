<?php

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DepartementController;
use App\Http\Controllers\GolonganController;
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
Route::get('dashboard', [DashboardController::class, 'index']);
Route::get('master', [MasterController::class, 'index']);
Route::get('/getMaster', [MasterController::class, 'getMaster'])->name('getMaster');

Route::get('detailmaster/{id_master}', [MasterController::class, 'detailmaster']);
Route::get('departement', [DepartementController::class, 'index']);
Route::get('golongan', [GolonganController::class, 'index']);
