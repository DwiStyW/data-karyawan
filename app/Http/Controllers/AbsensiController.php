<?php

namespace App\Http\Controllers;

use App\Models\Absen;
use App\Models\Distribusiabsen;
use App\Models\Jabatan;
use App\Models\Master;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AbsensiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $absensi=Absen::leftjoin('master','master.id','=','absen.id_master')->select('absen.*','master.nama','master.golongan')->orderby('tanggal','desc')->get();
        $master=Master::where('status','aktif')->get();
        // dd($absensi);
        return view('absensi.absensi',compact('absensi','master'));
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
        if($request->ket==null){
            $ket='-';
        }else{
            $ket=$request->ket;
        }
        if($request->hasFile('suratizin')){
            $resorcesurat      = $request->file('suratizin');
            $suratizin   = $resorcesurat->getClientOriginalName();
            $resorcesurat->move(\base_path() ."/public/assets/img/surat-izin", $suratizin);
        }else{
            $suratizin="";
        }
        // dd($request->ket);
        $data=[
            'id_master'=>$request->id_master,
            'tanggal'=>$request->tanggal,
            'jenis'=>$request->jenis,
            'ket'=>$ket,
            'status'=>'disetujui',
            'surat'=>$request->surat,
            'filesurat'=>$suratizin,
            'updated_at'=>date("Y-m-d H:i:s"),
        ];

        $tgl=$request->tanggal;
        $master=$request->id_master;
        $cek=Absen::whare('tanggal',$tgl)->whare('id_master',$master)->get();
        if(count($cek)==0){
            try{
                Absen::insert($data);
                return back()->with('success','Data berhasil ditambahkan!');
            }catch(Exception $e){
                //alert gagal
                // dd($e);
                return back()->with('failed','Data gagal ditambahkan!');
            }
        }else{
             return back()->with('failed','Data Master sudah ditambahkan sebelumnya!');
        }
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
    public function update(Request $request)
    {
        $id=$request->id_absen;
        $data=[
            'id_master'=>$request->id_master,
            'tanggal'=>$request->tanggal,
            'jenis'=>$request->jenis,
            'ket'=>$request->ket,
        ];
        try {
            Absen::where('id',$id)->update($data);
            return back()->with('success','Data berhasil diedit!');
        }catch(Exception $e){
            return back()->with('failed','Data gagal diedit!');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $id=$request->absen_id;
        try{
            Absen::where(['id'=>$id])->delete();
            return back()->with('success','Data berhasil dihapus!');
        }catch(Exception $e){
            return back()->with('failed','Data gagal dihapus!');
        }
    }

    public function rekap(){
        $master=master::get();
        $absensi=Absen::leftjoin('master','master.id','=','absen.id_master')->select('absen.*','master.nama')->orderby('id_master','asc','tanggal','desc')->get();

        return view('absensi.rekapabsensi',compact('master','absensi'));
    }
    public function rekapabsensipermaster($id){
        $master=master::where('id',$id)->get();
        $absensi=Absen::leftjoin('master','master.id','=','absen.id_master')->select('absen.*','master.nama')->orderby('id_master','asc','tanggal','desc')->get();

        return view('DetailMaster.rekapabsensipermaster',compact('master','absensi'));
    }
    public function absensiperhari(){
        $date=date('Y-m-d');
        $absensi=Absen::leftjoin('master','master.id','=','absen.id_master')->select('absen.*','master.nama')->orderby('tanggal','desc')->where('tanggal',$date)->get();
        $master=Master::get();
        // dd($absensi);
        return view('absensi.absensiperhari',compact('absensi','master','date'));
    }
    public function absensiperdiv(){
        $master=[];
        $data=[];
        $idjabatan=Auth::user()->id_jabatan;
        $jabatan=Jabatan::where('id',$idjabatan)->get();
        foreach($jabatan as $j){}
        $iddepartemen=$j->departemen;
        $level=$j->level;
        $departemen=Jabatan::where('departemen',$iddepartemen)->where('level','>',$level)->get();
        foreach ($departemen as $d) {
            $id_jabatan=$d->id;
            $qmaster=DB::select("SELECT * from master where id_jabatan='$id_jabatan'");
            if(count($qmaster)!=0){
                foreach($qmaster as $qm){
                    $master[]=[
                        'id'=>$qm->id,
                        'id_jabatan'=>$qm->id_jabatan
                    ];
                }
            }
        }

        foreach($master as $m){
            $idmaster=$m['id'];
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
                    ];
                }
            }
        }

        // distribusi absen
        $dabsen=Distribusiabsen::where('id_jabatan',$idjabatan)->get();
        $disabsen=[];
        foreach($dabsen as $da){
            $disabsen[]=[
                "tanggal"=>strtotime($da->tanggal)*1000
            ];
        }
        // dd($data);
        return view('absensi.absensi-perdiv',compact('data','disabsen'));
    }
    public function distribusiabsen($strtime){
        $ts=$strtime/1000;
        $tanggal = date("Y-m-d",$ts);
        $idjabatan=Auth::user()->id_jabatan;
        $data=[
            "id_jabatan"=>$idjabatan,
            "tanggal"=>$tanggal
        ];
        try{
            Distribusiabsen::insert($data);
            return back()->with('success','Data berhasil ditambahkan!');
        }catch(Exception $e){
            //alert gagal
            // dd($e);
            return back()->with('failed','Data gagal ditambahkan!');
        }
    }

    public function rekappotongan(){
        $month=date('F Y');
        $date=date('m');
        $absen=Absen::leftjoin('master','master.id','=','absen.id_master')->select('absen.*','master.nama','master.golongan')->whereMonth('tanggal',$date)->orderby('tanggal','desc')->get();
        $per=[];
        $periode=DB::select("SELECT MONTH(tanggal) as bln, MONTHNAME(tanggal) as bulan,Year(tanggal) as tahun from absen group by MONTH(tanggal),MONTHNAME(tanggal),YEAR(tanggal)");
        foreach($periode as $p){
            if($p->bln < 10){
                $bln='0'.$p->bln;
            }else{
                $bln=$p->bln;
            }
            $per[]=[
                'bln'=>$bln,
                'bulan'=>$p->bulan,
                'tahun'=>$p->tahun
            ];
        }
        // dd($periode);
        return view('absensi.rekappotonganabsen',compact('month','absen','per'));
    }

    public function rekappotongan_post(Request $request){
        return "student saved successfully";
    }
}