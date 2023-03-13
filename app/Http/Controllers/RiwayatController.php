<?php

namespace App\Http\Controllers;

use App\Models\Bpjstk;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RiwayatController extends Controller
{
    public function riwayatbpjstk(){
        // $data=DB::select("SELECT * FROM riwayat_bpjs_tk");
        $data=Bpjstk::leftjoin('master','master.id','=','bpjs_tk.id_master')->where('status','Aktif')->get();
        return view('riwayat.riwayatbpjstk',compact('data'));
    }
}