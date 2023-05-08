<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // gender
        $gender=DB::select("SELECT jenis_kelamin, count(*) as jumlah From master where status='Aktif' group by jenis_kelamin ");
        if(count($gender)!=0){
            foreach ($gender as $g){
                if($g->jenis_kelamin=='laki-laki'){
                    $color='lightblue';
                }else{
                    $color='pink';
                }
                $datagender[]=[  'name'=>$g->jenis_kelamin,
                            'y'=>$g->jumlah,
                            'color'=>$color
                    ];
            }
        }else{
            $datagender=[];
        }
        // pendidikan
        $pend=DB::select("SELECT id_master,tanggal_lahir from pendidikan left join master on master.id=pendidikan.id_master where tingkat_pendidikan!='Lainnya' group by id_master,tanggal_lahir");
        if(count($pend)!=0){
            foreach($pend as $p){
                $idm=$p->id_master;
                $tingkat=DB::select("SELECT batas_pensiun.*,id_master from pendidikan left join batas_pensiun on batas_pensiun.tingkatan_pendidikan=pendidikan.tingkat_pendidikan where id_master='$idm' and batas_pensiun.tingkatan_pendidikan !='Lainnya' order by batas_pensiun.id DESC limit 1");
                foreach($tingkat as $t){
                    $tingkatan[]=$t->id;
                    $upensiun[]=[ 'id_master'=>$p->id_master,
                                  'tanggal_lahir'=>$p->tanggal_lahir,
                                  'id_tingkatpend'=>$t->id,
                                  'tingkatpend'=>$t->tingkatan_pendidikan,
                                  'usia_max'=>$t->usia_max,
                                ];
                }

            }
            $jenis[]=null;
            $cek="";
            $i=0;
            for($j=0;$j<count($tingkatan);$j++)
            {
                $index2=array_search($tingkatan[$j],$jenis);
                if($index2 == "")
                {
                    $jenis[$i]=$tingkatan[$j];
                    $i++;
                }
            }
            for($K=0;$K<count($jenis);$K++)
            $datap=$this->cari($tingkatan, $jenis);
            asort($datap);
            if(count($datap)!=0){
                foreach($datap as $dp){
                    if($dp['tingkatan']==1){
                        $t='SD';
                    }else if($dp['tingkatan']==2){
                        $t='SMP';
                    }else if($dp['tingkatan']==3){
                        $t='SMA';
                    }else if($dp['tingkatan']==4){
                        $t='Diploma';
                    }else if($dp['tingkatan']==5){
                        $t='S1';
                    }else if($dp['tingkatan']==6){
                        $t='S2';
                    }else if($dp['tingkatan']==7){
                        $t='S3';
                    }else if($dp['tingkatan']==8){
                        $t='Lainnya';
                    }
                    $datapend[]=[
                        'name'=>$t,
                        'y'=>$dp['jumlah']
                    ];
                }
            }
        }else{
            $datapend=[];
        }
        //jumlah karyawan
        $jumkar = DB::table('master')->where('status','Aktif')->count();
        //karyawan apoteker
        $apoteker=DB::select("SELECT * from pendidikan where tingkat_pendidikan = 'Lainnya' and jurusan='Apoteker'");
        if(count($apoteker)!=0){
            foreach($apoteker as $ap){
                $idmaster=$ap->id_master;
                $masterap=DB::select("SELECT master.*, nama_jabatan from master join jabatan on jabatan.id=master.id_jabatan where master.id = $idmaster and master.status='Aktif'");
                if(count($masterap)){
                    foreach($masterap as $map){
                        $dataap[]=[
                            'id'=>$map->id,
                            'nama'=>$map->nama,
                            'nik'=>$map->nik,
                            'tempat_lahir'=>$map->tempat_lahir,
                            'tanggal_lahir'=>$map->tanggal_lahir,
                            'jenis_kelamin'=>$map->jenis_kelamin,
                            'alamat'=>$map->alamat,
                            'no_hp'=>$map->no_hp,
                            'agama'=>$map->agama,
                            'nama_jabatan'=>$map->nama_jabatan,
                            'golongan'=>$map->golongan,
                        ];
                    }
                }
                else{
                     $dataap=[];
                }
            }
        }else{
            $dataap=[];
            $masterap=[];
        }
        // dd($dataap);
        // dd($datap);
        //pensiun
        $datamp=[];
        foreach($upensiun as $pen){
            // $tahun=date('Y-01-01',strtotime($pen['tanggal_lahir']));
            $sekarang = strtotime(date('Y-12-31'));
            $tgl_lahir = strtotime($pen['tanggal_lahir']);
            $umur = $sekarang - $tgl_lahir;
            $age=floor($umur / (3600 * 24 * 365));

            $umax=$pen['usia_max'];
            $jp=$umax-$age;
            $jarak[]=['jarak'=>(int)$jp,'id'=>$pen['id_master']];
            $jarakumur[]=(int)$jp;

            if($jp<=0){
                $id= $pen['id_master'];
                $masterp=DB::select("SELECT master.*, nama_jabatan from master join jabatan on jabatan.id=master.id_jabatan where master.id = $id");
                    foreach($masterp as $m){
                        $datamp[]=[
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
                            'status'=>$m->status,
                        ];
                    }
            }
        }
        // dd($jarak);
        $mapjarak=function($jarak) {return $jarak['jarak'];};
        $pensiun = array_count_values(array_map($mapjarak,$jarak));
        for($a=0;$a>=min($jarakumur);$a--){
            if(isset($pensiun[$a])){
                $totalpensiun[]=$pensiun[$a];
            }
        }
// dd(array_sum($testing));

        return view('dashboard',compact('datagender','datapend','jumkar','apoteker','totalpensiun','dataap','datamp','masterap'));
    }
    function cari($data, $data2)
    {
        // dd(count($data2));
        for($K=0;$K<count($data2);$K++)
        {
            // $isine[]=$data2[$K]." => ".$this->cariyangsama($data,$data2[$K]);
            $isine[]=[
                'tingkatan'=>$data2[$K],
                'jumlah'=>$this->cariyangsama($data,$data2[$K]),
            ];
        }
        // dd($isine);
        return $isine;
    }

    function cariyangsama($data,$dupval) {
        $nb= 0;
        foreach($data as $key => $val)
        if ($val==$dupval) $nb++;

        return $nb;
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
}