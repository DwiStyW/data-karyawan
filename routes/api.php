<?php

use App\Http\Controllers\API\DashboardController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\MasterController;
use App\Http\Controllers\API\PendidikanController;
use App\Http\Controllers\API\RiwayatController;
use App\Http\Controllers\API\StrukturController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
// Master
Route::get('getMaster',[MasterController::class,'index']);
Route::get('getPendidikan',[PendidikanController::class,'index']);
Route::get('getRiwayat',[RiwayatController::class,'index']);
Route::get('getStruktur',[StrukturController::class,'index']);

//untuk chart turn over
Route::get('masuk',[DashboardController::class,'getmasuk']);
Route::get('keluar',[DashboardController::class,'getkeluar']);
Route::get('promosi',[DashboardController::class,'getpromosi']);
Route::get('demosi',[DashboardController::class,'getdemosi']);
Route::get('rotasi',[DashboardController::class,'getrotasi']);