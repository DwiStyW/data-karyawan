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
        $pend=DB::select("SELECT id_master from pendidikan where tingkat_pendidikan!='Lainnya' group by id_master");
        if(count($pend)!=0){
            foreach($pend as $p){
                $idm=$p->id_master;
                $tingkat=DB::select("SELECT batas_pensiun.id from pendidikan left join batas_pensiun on batas_pensiun.tingkatan_pendidikan=pendidikan.tingkat_pendidikan where id_master='$idm' and batas_pensiun.tingkatan_pendidikan !='Lainnya' order by batas_pensiun.id DESC limit 1");
                foreach($tingkat as $t){
                    $tingkatan[]=$t->id;
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
                        $t='S1';
                    }else if($dp['tingkatan']==5){
                        $t='S2';
                    }else if($dp['tingkatan']==6){
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
        //detail karyawan
        $Tmaster=DB::select('SELECT master.*, nama_jabatan from master join jabatan on jabatan.id=master.id_jabatan where status="Aktif" order by id DESC');
        $apoteker=DB::select("SELECT * from pendidikan where tingkat_pendidikan = 'Lainnya' and jurusan='Apoteker'");
        // dd($datapend);
        return view('dashboard',compact('datagender','datapend','jumkar','Tmaster','apoteker'));
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
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}