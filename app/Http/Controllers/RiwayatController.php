<?php

namespace App\Http\Controllers;

use App\Models\Bpjstk;
use App\Models\Riwayatbpjstk;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RiwayatController extends Controller
{
    public function riwayatbpjstk(){
        // $data=DB::select("SELECT * FROM riwayat_bpjs_tk");
        // date('F-Y', strtotime(date($date) . '- 1 month'))
        $date=date('F-Y');
        $bpjstk=Bpjstk::where('status','Aktif')->get();
        foreach($bpjstk as $tk){
            $value[]=[
                'id_bpjs'=>$tk['id'],
                'id_master'=>$tk['id_master'],
                'iuran'=>$tk['iuran'],
                'date'=>date('F-Y'),
            ];
        }
        if(date('d')==date('t')){
            $cek=Riwayatbpjstk::where('date',$date)->get();
            if(count($cek)==0){
                try{
                    Riwayatbpjstk::insert($value);
                }catch(Exception $e){

                }
            }
        }
        $riwayat=Riwayatbpjstk::join('bpjs_tk','bpjs_tk.id','=','riwayat_bpjs_tk.id_bpjs')
        ->leftjoin('master','master.id','=','riwayat_bpjs_tk.id_master')
        ->get();
        $period=DB::select('SELECT date,sum(iuran) as total from riwayat_bpjs_tk group by date');
        $data=Riwayatbpjstk::where('date',$date)
        ->join('bpjs_tk','bpjs_tk.id','=','riwayat_bpjs_tk.id_bpjs')
        ->leftjoin('master','master.id','=','riwayat_bpjs_tk.id_master')
        ->get();
        $totaliuran=DB::select("SELECT date,sum(iuran) as total from riwayat_bpjs_tk where date='$date' group by date");
        return view('riwayat.riwayatbpjstk',compact('data','period','riwayat','totaliuran'));
    }

    public function printriwayatbpjstk($date){
        $data=Riwayatbpjstk::where('date',$date)
        ->join('bpjs_tk','bpjs_tk.id','=','riwayat_bpjs_tk.id_bpjs')
        ->leftjoin('master','master.id','=','riwayat_bpjs_tk.id_master')
        ->get();
        $totaliuran=DB::select("SELECT date,sum(iuran) as total from riwayat_bpjs_tk where date='$date' group by date");
        return view('riwayat.printbpjstk',compact('data','date','totaliuran'));
    }

    public function simpandatabpjstk(){
        $date=date('F-Y', strtotime(date('F-Y')));
        // dd($date);
        $bpjstk=Bpjstk::where('status','Aktif')->get();
        foreach($bpjstk as $tk){
            $value[]=[
                'id_bpjs'=>$tk['id'],
                'id_master'=>$tk['id_master'],
                'iuran'=>$tk['iuran'],
                'date'=>date('F-Y'),
            ];
        }
        $cek=Riwayatbpjstk::where('date',$date)->count();
        if($cek==0){
            try{
                Riwayatbpjstk::insert($value);
                return back()->with('success','Data berhasil ditambahkan!');
            }catch(Exception $e){
                return back()->with('failed','Data gagal ditambahkan');
            }
        }else{
            return back()->with('failed','Data yang ditambahkan sudah ada sebelumnya');
        }
    }
}