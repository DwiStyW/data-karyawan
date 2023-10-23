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
                $pengajuanuser=Pengajuan::leftjoin('users','users.id','=','idpengaju')->leftjoin('jabatan','jabatan.id','=','idjabatan')->where('pengajuan_karyawan.updateby',$iduserpengaju)->where('pengajuan_karyawan.status','!=','ditolak')->select('pengajuan_karyawan.*','nama_jabatan','name')->get();
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

    public static function absen(){
        $Tmaster=[];
        $data=[];
        $iduser=Auth::user()->id;
        $hks=Hakakses::where('id_user',$iduser)->get();
        foreach($hks as $hk){
            $idjabatan=$hk->id_jabatan;
            $master=Master::leftjoin('jabatan','jabatan.id','=','id_jabatan')->where('id_jabatan',$idjabatan)->where('status','aktif')->select('master.*','nama_jabatan')->get();
            foreach($master as $m){
                $Tmaster[]=[
                    'id'=>$m->id,
                    'nama'=>$m->nama,
                    'nik'=>$m->nik,
                    'tempat_lahir'=>$m->tempat_lahir,
                    'tanggal_lahir'=>$m->tanggal_lahir,
                    'jenis_kelamin'=>$m->jenis_kelamin,
                    'alamat'=>$m->alamat,
                    'no_hp'=>$m->no_hp,
                    'agama'=>$m->agama,
                    'nama_jabatan'=>$m->nama_jabatan,
                    'golongan'=>$m->golongan,
                ];
            }
        }
        foreach($Tmaster as $tm){
            $idmaster=$tm['id'];
            $absensi=Absen::leftjoin('master','master.id','=','absen.id_master')
            ->select('absen.*','master.nama')
            // ->orderby('tanggal','asc')
            ->where('absen.id_master',$idmaster)
            ->get();
            if(count($absensi)!=0){
                foreach($absensi as $a){
                    $data[]=[
                        'id'=>$a->id,
                        'nama'=>$a->nama,
                        'tanggal'=>strtotime($a->tanggal)*1000,
                        'jenis'=>$a->jenis,
                        'ket'=>$a->ket,
                        'status'=>$a->status,
                        'surat'=>$a->surat,
                        'file'=>$a->filesurat,
                    ];
                }
            }
        }
        $grouptanggal = array_reduce($data, function($carry, $item){
                if(!isset($carry[$item['tanggal']])){
                    $carry[$item['tanggal']] = [
                        'tanggal'=>$item['tanggal'],
                    ];
                }
                return $carry;
            });

        if(count($data)!=0){
            return count($grouptanggal);
        }else{
            return 0;
        }

    }
}