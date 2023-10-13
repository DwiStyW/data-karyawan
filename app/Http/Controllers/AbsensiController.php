<?php

namespace App\Http\Controllers;

use App\Models\Absen;
use App\Models\Distribusiabsen;
use App\Models\Hakakses;
use App\Models\Jabatan;
use App\Models\Master;
use App\Models\Riwayatkaryawan;
use App\Models\User;
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
        $cek=Absen::where('tanggal',$tgl)->where('id_master',$master)->get();
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

        // distribusi absen
        $dabsen=Distribusiabsen::where('id_user',$iduser)->get();
        $disabsen=[];
        foreach($dabsen as $da){
            $disabsen[]=[
                "tanggal"=>strtotime($da->tanggal)*1000
            ];
        }
        // dd($data);
        $carilevel=User::leftjoin('jabatan','jabatan.id','=','id_jabatan')
        ->where('users.id',$iduser)
        ->select('users.*','level')
        ->get();
        foreach($carilevel as $c){}
        $level=$c->level;
        $countpengajuan=DataController::pengajuan();
        return view('absensi.absensi-perdiv',compact('data','disabsen','countpengajuan','level'));
    }
    public function distribusiabsen($strtime){
        $ts=$strtime/1000;
        $tanggal = date("Y-m-d",$ts);
        $idjabatan=Auth::user()->id_jabatan;
        $iduser=Auth::user()->id;
        $data=[
            "id_user"=>$iduser,
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
        $bulan=date('m');
        $tahun=date('Y');
        $dataabsenbulan=[];
        $absen=Absen::leftjoin('master','master.id','=','absen.id_master')->select('absen.*','master.nama','master.golongan')->whereMonth('tanggal',$bulan)->whereYear('tanggal',$tahun)->orderby('nama','desc')->get();
        foreach($absen as $a){
            $idmaster=$a->id_master;
            $cektetap=Riwayatkaryawan::where('id_master',$idmaster)->where('jenis','Tetap')->get();
            if(count($cektetap)!=0){
                $status='Tetap';
            }else{
                $status='Tidak Tetap';
            }
            $dataabsenbulan[]=[
                'nama'=>$a->nama,
                'tanggal'=>$a->tanggal,
                'jenis'=>$a->jenis,
                'ket'=>$a->ket,
                'status'=>$status,
                'surat'=>$a->surat,
            ];
        }
        // dd($dataabsenbulan);
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
        $aldat=Absen::leftjoin('master','master.id','=','absen.id_master')
        // ->join('riwayat_karyawan','riwayat_karyawan.id_master','=','absen.id_master')
        // ->where('riwayat_karyawan.jenis','Tetap')
        ->select('absen.*','master.nama','master.golongan')
        ->orderby('nama','desc')
        ->get();
        $alldata=[];
        foreach($aldat as $al){
            $idm=$al->id_master;
            $riwkar=Riwayatkaryawan::where('id_master',$idm)->where('jenis','Tetap')->get();
            if(count($riwkar)!=0){
                $statustetap='Tetap';
            }else{
                $statustetap='Tidak Tetap';
            }
            $alldata[]=[
                'nama'=>$al->nama,
                'tanggal'=>$al->tanggal,
                'jenis'=>$al->jenis,
                'ket'=>$al->ket,
                'surat'=>$al->surat,
                'filesurat'=>$al->filesurat,
                'status'=>$al->status,
                'statustetap'=>$statustetap,
            ];
        }
        // dd($aldat);

        return view('absensi.rekappotonganabsen',compact('month','dataabsenbulan','per','alldata'));
    }
     public function daftardistribusiabsen(){

        return view('absensi.distribusiabsen');
     }

    public function daftardistribusiabsenpost(Request $request){
        $data=[];
        $userhk=[];
        $date=$request->tanggal;
        $absen=Absen::leftjoin('master','master.id','=','id_master')->where('tanggal',$date)->select('absen.*','id_jabatan')->get();
        if(count($absen)!=0){
            foreach($absen as $a){
                $idjabatan=$a->id_jabatan;
                $uhk=Hakakses::leftjoin('users','users.id','=','id_user')->where('akses_jabatan.id_jabatan',$idjabatan)->select('akses_jabatan.*','name')->get();
                foreach($uhk as $uk){
                    $userhk[]=[
                        'id_user'=>$uk->id_user,
                        'nama_user'=>$uk->name
                    ];
                }
            }

            $iduser_penerima = array_reduce($userhk, function($carry, $item){
                if(!isset($carry[$item['id_user']])){
                    $carry[$item['id_user']] = [
                        'id_user'=>$item['id_user'],
                        'nama_user'=>$item['nama_user']
                    ];
                }
                return $carry;
            });
            foreach($iduser_penerima as $r){
                $iduser=$r['id_user'];
                $namauser=$r['nama_user'];
                $lvl=User::leftjoin('jabatan','jabatan.id','=','id_jabatan')
                    ->where('users.id',$iduser)
                    ->select('users.*','level')->get();
                $distribusi=Distribusiabsen::leftjoin('users','users.id','=','distribusi_absen.id_user')
                    ->where('id_user',$iduser)
                    ->where('tanggal',$date)
                    ->get();

                foreach($lvl as $l){}
                if(count($distribusi)==0 && $l->level>2){
                    $status='Belum Mengetahui';
                }else if(count($distribusi)==0 && $l->level>2){
                    $status='Sudah Mengetahui';
                }else{
                    $status='Sudah Terkirim';
                }
                $data[]=[
                    'id_user'=>$iduser,
                    'nama'=>$namauser,
                    'status'=>$status,
                    'level'=>$l->level,
                ];
            }
        }else{
            $data=[];
        }
        return response()->json($data);
    }

    public function rekapdistribusiabsen(){
        return view('absensi.rekapdistribusiabsen');
    }

    public function rekapdistribusiabsenpost(Request $request){
        $start=$request->start;
        $end=$request->end;
        $data=[];
        $userhk=[];

        $query=Absen::whereBetween('tanggal', [$start, $end])->groupby('tanggal')->get('tanggal');
        foreach($query as $q){
            $date=$q->tanggal;
            $absen=Absen::leftjoin('master','master.id','=','id_master')
            ->where('tanggal',$date)
            ->select('absen.*','id_jabatan')
            ->get();
            if(count($absen)!=0){
                foreach($absen as $a){
                    $idjabatan=$a->id_jabatan;
                    $uhk=Hakakses::leftjoin('users','users.id','=','id_user')
                    ->where('akses_jabatan.id_jabatan',$idjabatan)
                    ->select('akses_jabatan.*','name')
                    ->get();
                    foreach($uhk as $uk){
                        $userhk[]=[
                            'id_user'=>$uk->id_user,
                            'nama_user'=>$uk->name
                        ];
                    }
                }

                $iduser_penerima = array_reduce($userhk, function($carry, $item){
                    if(!isset($carry[$item['id_user']])){
                        $carry[$item['id_user']] = [
                            'id_user'=>$item['id_user'],
                            'nama_user'=>$item['nama_user']
                        ];
                    }
                    return $carry;
                });
                foreach($iduser_penerima as $r){
                    $iduser=$r['id_user'];
                    $namauser=$r['nama_user'];
                    $distribusi=Distribusiabsen::leftjoin('users','users.id','=','distribusi_absen.id_user')
                        ->where('id_user',$iduser)
                        ->where('tanggal',$date)
                        ->get();
                    $penerimapertanggal=Distribusiabsen::leftjoin('users','users.id','=','distribusi_absen.id_user')
                        ->where('tanggal',$date)
                        ->get();
                    if(count($distribusi)==0){
                        $status='Belum Mengetahui';
                    }else{
                        $status='Sudah Mengetahui';
                    }
                    if(count($iduser_penerima)==count($penerimapertanggal)){
                        $statusdistribusi='Done';
                    }else{
                        $statusdistribusi='Deliver';
                    }
                    $data[]=[
                        'tanggal'=>$date,
                        'id_user'=>$iduser,
                        'nama'=>$namauser,
                        'status'=>$status,
                        'statusdistribusi'=>$statusdistribusi,
                    ];
                }
            }else{
                $data=[];
            }
        }
        return response()->json($data);
    }

    public function absensipost(Request $request){
        $tanggal=$request->tanggal;
        $absensi=Absen::leftjoin('master','master.id','=','absen.id_master')->where('tanggal',$tanggal)->select('absen.*','master.nama','master.golongan')->get();
        return response()->json($absensi);
    }
}
