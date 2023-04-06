<?php

namespace App\Http\Controllers;

use App\Models\Bpjskes;
use App\Models\Bpjstk;
use App\Models\Riwayatbpjskes;
use App\Models\Riwayatbpjstk;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use PhpParser\Node\Stmt\Foreach_;

class RiwayatController extends Controller
{
    public function riwayatbpjstk(){
        // $data=DB::select("SELECT * FROM riwayat_bpjs_tk");
        $datewingi=date('F-Y', strtotime(date('F-Y') . '- 1 month'));
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
        $data=Riwayatbpjstk::where('date',$datewingi)
        ->join('bpjs_tk','bpjs_tk.id','=','riwayat_bpjs_tk.id_bpjs')
        ->leftjoin('master','master.id','=','riwayat_bpjs_tk.id_master')
        ->get();
        $totaliuran=DB::select("SELECT date,sum(iuran) as total from riwayat_bpjs_tk where date='$datewingi' group by date");
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
        $date=date('F-Y', strtotime(date('F-Y') . '- 1 month'));
        // dd($date);
        $bpjstk=Bpjstk::where('status','Aktif')->get();
        foreach($bpjstk as $tk){
            $value[]=[
                'id_bpjs'=>$tk['id'],
                'id_master'=>$tk['id_master'],
                'iuran'=>$tk['iuran'],
                'date'=>$date,
            ];
        }
        $cek=Riwayatbpjstk::where('date',$date)->get();
        if(count($cek)==0){
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
    public function riwayatbpjskes(){
        $datewingi=date('F-Y', strtotime(date('F-Y') . '- 1 month'));
        $bpjskes=Bpjskes::where('status','Aktif')->get();
        foreach($bpjskes as $kes){
            $value[]=[
                'id_bpjs'=>$kes['id'],
                'id_master'=>$kes['id_master'],
                'iuran'=>$kes['iuran'],
                'date'=>$datewingi,
            ];
        }
        if(date('d')==date('10')){
            $cek=Riwayatbpjskes::where('date',$datewingi)->get();
            if(count($cek)==0){
                try{
                    Riwayatbpjskes::insert($value);
                }catch(Exception $e){
                }
            }
        };
        $riwayat=Riwayatbpjskes::join('bpjs_kes','bpjs_kes.id','=','riwayat_bpjs_kes.id_bpjs')
        ->leftjoin('master','master.id','=','riwayat_bpjs_kes.id_master')
        ->get();
        $period=DB::select('SELECT date,sum(iuran) as total from riwayat_bpjs_kes group by date');
        $data=Riwayatbpjskes::where('date',$datewingi)
        ->join('bpjs_kes','bpjs_kes.id','=','riwayat_bpjs_kes.id_bpjs')
        ->leftjoin('master','master.id','=','riwayat_bpjs_kes.id_master')
        ->select('no_bpjs_kes','bpjs_kes.nik as nik','bpjs_kes.nama as nama','kelas','riwayat_bpjs_kes.iuran as iuran','master.nama as nama_master')
        ->get();
        // $data=DB::select('SELECT bpjs_kes.*, master.nama as nama_master from bpjs_kes join master on master.id=bpjs_kes.id_master where bpjs_kes.status="Aktif" order by id_master ASC');

        $totaliuran=DB::select("SELECT date,sum(iuran) as total from riwayat_bpjs_kes where date='$datewingi' group by date");

        $primer=DB::select('SELECT id_master,master.nama as nama,sum(iuran) as tiuran from bpjs_kes join master on master.id=bpjs_kes.id_master group by id_master,master.nama');
        $rowspan=DB::select('SELECT count(*) as row from bpjs_kes group by id_master');
        // dd($data);

        return view('riwayat.riwayatbpjskes',compact('data','totaliuran','period','riwayat','primer'));
    }
    public function printriwayatbpjskes($date){
        $data=Riwayatbpjskes::where('date',$date)
        ->join('bpjs_kes','bpjs_kes.id','=','riwayat_bpjs_kes.id_bpjs')
        ->leftjoin('master','master.id','=','riwayat_bpjs_kes.id_master')
        ->select('no_bpjs_kes','bpjs_kes.nik as nik','bpjs_kes.nama as nama','kelas','riwayat_bpjs_kes.iuran as iuran','master.nama as nama_master')
        ->get();
       $totaliuran=DB::select("SELECT date,sum(iuran) as total from riwayat_bpjs_kes where date='$date' group by date");
        return view('riwayat.printbpjskes',compact('data','date','totaliuran'));
    }

    public function simpandatabpjskes(){
        $date=date('F-Y', strtotime(date('F-Y') . '- 1 month'));
        // dd($date);
        $bpjskes=Bpjskes::where('status','Aktif')->get();
        foreach($bpjskes as $kes){
            $value[]=[
                'id_bpjs'=>$kes['id'],
                'id_master'=>$kes['id_master'],
                'iuran'=>$kes['iuran'],
                'date'=>$date,
            ];
        }
        $cek=Riwayatbpjskes::where('date',$date)->get();
        if(count($cek)==0){
            try{
                Riwayatbpjskes::insert($value);
                return back()->with('success','Data berhasil ditambahkan!');
            }catch(Exception $e){
// dd($e);
                return back()->with('failed','Data gagal ditambahkan');
            }
        }else{
            return back()->with('failed','Data yang ditambahkan sudah ada sebelumnya');
        }
    }
}