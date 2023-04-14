<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    //
    public function getmasuk(){
        $all=DB::select("SELECT tanggal,count(tanggal) as jumlah from riwayat_karyawan WHERE jenis='masuk' or jenis='Non Aktif' group by tanggal ORDER BY tanggal ASC");
        foreach($all as $tall){
            $stall[]=$tall->tanggal;
        }
        for($i=0;$i<count($all);$i++){
            $tanggal=$stall[$i];

            $kmasuk=DB::select("SELECT tanggal,count(tanggal) as jumlah from riwayat_karyawan WHERE jenis='masuk' and tanggal='$tanggal' group by tanggal ORDER BY tanggal asc");
            if(count($kmasuk)!=0){
                foreach($kmasuk as $km){
                }
                $tglm=strtotime($km->tanggal)*1000;
                $jum=$km->jumlah;
            }else{
                $tglm=strtotime($tanggal)*1000;
                $jum=0;
            }
            $datakm[]=[$tglm,$jum];
        }
        return $datakm;
    }

    public function getkeluar(){
        $all=DB::select("SELECT tanggal,count(tanggal) as jumlah from riwayat_karyawan WHERE jenis='masuk' or jenis='Non Aktif' group by tanggal ORDER BY tanggal ASC");
        foreach($all as $tall){
            $stall[]=$tall->tanggal;
        }
        for($i=0;$i<count($all);$i++){
            $tanggal=$stall[$i];

            $kkeluar=DB::select("SELECT tanggal,count(tanggal) as jumlah from riwayat_karyawan WHERE jenis='Non Aktif' and tanggal='$tanggal' group by tanggal ORDER BY tanggal asc");
            if(count($kkeluar)!=0){
                foreach($kkeluar as $kk){
                }
                $tglk=strtotime($kk->tanggal)*1000;
                $juk=$kk->jumlah;
            }else{
                $tglk=strtotime($tanggal)*1000;
                $juk=0;
            }
            $datakk[]=[$tglk,$juk];
        }
        return $datakk;
    }
}
