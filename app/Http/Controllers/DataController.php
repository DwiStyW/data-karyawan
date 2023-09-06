<?php

namespace App\Http\Controllers;

use App\Models\Absen;
use App\Models\Master;
use App\Models\Bataspensiun;
use App\Models\Hakakses;
use App\Models\Jabatan;
use App\Models\Pengajuan;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class DataController extends Controller
{
    public static function pengajuan(){
        $iduser=Auth::user()->id;
        $carilevel=User::leftjoin('jabatan','jabatan.id','=','id_jabatan')->where('users.id',$iduser)->select('users.*','level')->get();
        foreach ($carilevel as $cl){}
        $level=$cl->level;
        $levelbawahan=$level+1;
        // dd($level);
        $akses=Hakakses::leftjoin('jabatan','jabatan.id','=','id_jabatan')->where('id_user',$iduser)->where('level',$levelbawahan)->get();
        $pengajuanpersetujuan=[];
        foreach($akses as $as){
            $jabatan=$as->id_jabatan;
            $users=User::where('id_jabatan',$jabatan)->get();
            foreach($users as $u){}
            if(count($users)!=0){
                $iduserpengaju=$u->id;
                $pengajuanuser=Pengajuan::leftjoin('users','users.id','=','idpengaju')->leftjoin('jabatan','jabatan.id','=','idjabatan')->where('idpengaju',$iduserpengaju)->select('pengajuan_karyawan.*','nama_jabatan','name')->get();
                foreach($pengajuanuser as $pu){
                    $pengajuanpersetujuan[]=[
                        'id'=>$pu->id,
                        'idpengaju'=>$pu->idpengaju,
                        'idpenyetuju'=>$pu->idpenyetuju,
                        'idjabatan'=>$pu->idjabatan,
                        'status'=>$pu->status,
                        'jumlah'=>$pu->jumlah,
                        'pendidikan_terakhir'=>$pu->pendidikan_terakhir,
                        'profesi'=>$pu->profesi,
                        'max_usia'=>$pu->max_usia,
                        'jenis_kelamin'=>$pu->jenis_kelamin,
                        'updated_at'=>$pu->updated_at,
                        'nama_jabatan'=>$pu->nama_jabatan,
                        'name'=>$pu->name,
                    ];
                }
            }
        }
        $pengajuan=count($pengajuanpersetujuan);
        return $pengajuan;
    }
}