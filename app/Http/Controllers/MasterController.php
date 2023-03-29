<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Bataspensiun;
use App\Models\Bpjskes;
use App\Models\Bpjstk;
use App\Models\Historypekerjaan;
use App\Models\Jabatan;
use App\Models\Master;
use App\Models\Pendidikan;
use App\Models\Riwayatkaryawan;
use Exception;
use Illuminate\Auth\Events\Validated;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MasterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
        $jabatan=Jabatan::get();
        $Tmaster=DB::select('SELECT master.*, nama_jabatan from master join jabatan on jabatan.id=master.id_jabatan where status="Aktif" order by id DESC');
        // dd($Tmaster);
         // Load index view
         return view('MasterKaryawan.master',compact('jabatan','Tmaster'));
     }


     public function detailmaster($id_master){
        $jabatan=Jabatan::get(); //untuk select option jabatan
        $sekolah=Pendidikan::where('pendidikan.id_master',$id_master) //untuk perulangan insert pendidikan all
        ->join('batas_pensiun','pendidikan.tingkat_pendidikan','=','batas_pensiun.tingkatan_pendidikan')
        ->join('master','pendidikan.id_master','=','master.id')
        ->orderby('batas_pensiun.id','ASC')
        ->get();
        $jsekolah=Pendidikan::where('pendidikan.id_master',$id_master) //untuk numrow perulangan insert pendidikan sebagian
        ->join('batas_pensiun','pendidikan.tingkat_pendidikan','=','batas_pensiun.tingkatan_pendidikan')
        ->join('master','pendidikan.id_master','=','master.id')
        ->orderby('batas_pensiun.id','ASC')
        ->count();
        $master=DB::select("SELECT master.*,nama_jabatan,nama_departemen,tanggal from master
        join jabatan on jabatan.id = master.id_jabatan
        left join departemen on departemen.id = jabatan.departemen
        join riwayat_karyawan on riwayat_karyawan.id_master = master.id
        where riwayat_karyawan.jenis = 'masuk' and master.id = $id_master order by tanggal ASC limit 1
        ");
        $pendidikan=Pendidikan::where('pendidikan.id_master',$id_master)//echo data pendidikan
        ->leftJoin('batas_pensiun','pendidikan.tingkat_pendidikan','=','batas_pensiun.tingkatan_pendidikan')
        ->orderby('batas_pensiun.id','DESC')
        ->get();
        if($jsekolah!=0){
        foreach($sekolah as $s){
            $sklh[]=$s->tingkat_pendidikan;
        }
        for ($i=0; $i < $jsekolah; $i++) {
            $where[]='tingkatan_pendidikan != "' .$sklh[$i].'"';
        }
        $kalimat = implode(" and ",$where);//where sekolah yang belum diinput
        $bataspensiun=DB::select("SELECT * FROM batas_pensiun where $kalimat");
        }else{
            $bataspensiun=DB::select("SELECT * FROM batas_pensiun");
        }

        $historykerja=Historypekerjaan::where('history_pekerjaan.id_master',$id_master)->orderby('id','DESC')->get();//history pekerjaan
        $bpjskes=Bpjskes::where('id_master',$id_master)->get();//bpjskes
        $bpjstk=Bpjstk::where('id_master',$id_master)->get();//bpjstk
        $pendidikanterakhir=Pendidikan::where('pendidikan.id_master',$id_master)//pendidikan terakhir
        ->leftJoin('batas_pensiun','pendidikan.tingkat_pendidikan','=','batas_pensiun.tingkatan_pendidikan')
        ->orderby('batas_pensiun.id','DESC')
        ->take(1)
        ->get();
        // dd($bataspensiun);
        $riwayatkaryawan=DB::select("SELECT riwayat_karyawan.*,nama_jabatan from riwayat_karyawan
        join jabatan on jabatan.id=riwayat_karyawan.jabatan where id_master=$id_master order by riwayat_karyawan.tanggal DESC");
        // dd($riwayatkaryawan);

        return view('DetailMaster.detailmaster',compact('master','pendidikanterakhir','id_master','jabatan','bataspensiun','pendidikan','historykerja','bpjskes','bpjstk','riwayatkaryawan'));
    }
    public function print($id_master){
         $jabatan=Jabatan::get(); //untuk select option jabatan
        $sekolah=Pendidikan::where('pendidikan.id_master',$id_master) //untuk perulangan insert pendidikan all
        ->join('batas_pensiun','pendidikan.tingkat_pendidikan','=','batas_pensiun.tingkatan_pendidikan')
        ->join('master','pendidikan.id_master','=','master.id')
        ->orderby('batas_pensiun.id','ASC')
        ->get();
        $jsekolah=Pendidikan::where('pendidikan.id_master',$id_master) //untuk numrow perulangan insert pendidikan sebagian
        ->join('batas_pensiun','pendidikan.tingkat_pendidikan','=','batas_pensiun.tingkatan_pendidikan')
        ->join('master','pendidikan.id_master','=','master.id')
        ->orderby('batas_pensiun.id','ASC')
        ->count();
        $master=DB::select("SELECT master.*,nama_jabatan,nama_departemen,tanggal from master
        join jabatan on jabatan.id = master.id_jabatan
        left join departemen on departemen.id = jabatan.departemen
        join riwayat_karyawan on riwayat_karyawan.id_master = master.id
        where riwayat_karyawan.jenis = 'masuk' and master.id = $id_master order by tanggal ASC limit 1
        ");
        $pendidikan=Pendidikan::where('pendidikan.id_master',$id_master)//echo data pendidikan
        ->leftJoin('batas_pensiun','pendidikan.tingkat_pendidikan','=','batas_pensiun.tingkatan_pendidikan')
        ->orderby('batas_pensiun.id','DESC')
        ->get();
        if($jsekolah!=0){
        foreach($sekolah as $s){
            $sklh[]=$s->tingkat_pendidikan;
        }
        for ($i=0; $i < $jsekolah; $i++) {
            $where[]='tingkatan_pendidikan != "' .$sklh[$i].'"';
        }
        $kalimat = implode(" and ",$where);//where sekolah yang belum diinput
        $bataspensiun=DB::select("SELECT * FROM batas_pensiun where $kalimat");
        }else{
            $bataspensiun=DB::select("SELECT * FROM batas_pensiun");
        }

        $historykerja=Historypekerjaan::where('history_pekerjaan.id_master',$id_master)->orderby('id','DESC')->get();//history pekerjaan
        $bpjskes=Bpjskes::where('id_master',$id_master)->get();//bpjskes
        $bpjstk=Bpjstk::where('id_master',$id_master)->get();//bpjstk
        $pendidikanterakhir=Pendidikan::where('pendidikan.id_master',$id_master)//pendidikan terakhir
        ->leftJoin('batas_pensiun','pendidikan.tingkat_pendidikan','=','batas_pensiun.tingkatan_pendidikan')
        ->orderby('batas_pensiun.id','DESC')
        ->take(1)
        ->get();
        // dd($bataspensiun);
        $riwayatkaryawan=Riwayatkaryawan::where('id_master',$id_master)
        ->join('jabatan','jabatan.id','=','riwayat_karyawan.jabatan')
        ->orderby('riwayat_karyawan.id','DESC')
        ->get();
        // $riwayatkaryawan=DB::select("SELECT riwayat_karyawan.*,nama_jabatan from riwayat_karyawan
        // join jabatan on jabatan.id=riwayat_karyawan.jabatan where id_master=$id_master");
        // dd($riwayatkaryawan);

        return view('DetailMaster.print',compact('master','pendidikanterakhir','id_master','jabatan','bataspensiun','pendidikan','historykerja','bpjskes','bpjstk','riwayatkaryawan'));
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

        if($request->hasFile('image')){
            $resorce       = $request->file('image');
            $name   = $resorce->getClientOriginalName();
            $resorce->move(\base_path() ."/public/assets/img/karyawan", $name);
            echo "Gambar berhasil di upload";
        }else{
            $name="";
            echo "Gagal upload gambar";
        }
        $cek=Master::count();
        // dd($cek);
        $id_master=DB::select('SELECT id from master order by id DESC limit 1');
        if($cek==0){
            $id=0;
        }else{
            foreach ($id_master as $idm) {
                $idne=$idm->id;
            }
            $id=$idne;
        }
        // dd($id);
        $data1=[
            'nama'=>$request->nama,
            'nik'=>$request->nik,
            'tempat_lahir'=>$request->tempat_lahir,
            'tanggal_lahir'=>$request->tanggal_lahir,
            'jenis_kelamin'=>$request->jenis_kelamin,
            'alamat'=>$request->alamat,
            'no_hp'=>$request->no_hp,
            'agama'=>$request->agama,
            'id_jabatan'=>$request->id_jabatan,
            'golongan'=>$request->golongan,
            'status'=>'Aktif',
            'foto' => $name,
            'updated_at'=>date("Y-m-d H:i:s")
        ];

        $data2=[
            'id_master'=>$id+1,
            'jenis'=>'Masuk',
            'jabatan'=>$request->id_jabatan,
            'deskripsi'=>'karyawan baru',
            'keterangan'=>'',
            'tanggal'=>$request->awal_kerja,
        ];
        // dd($data1,$data2);
        // dd($data2);
        DB::beginTransaction();
        try{
            master::insert($data1);
            riwayatkaryawan::insert($data2);

            DB::commit();
            //alert berhasil
            return back()->with('success','Data berhasil ditambahkan!');
        }catch(Exception $e){
            // dd($e);
            DB::rollback();
            //alert gagal
            return back()->with('failed','Data gagal ditambahkan!');
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
    public function edit()
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
        $data=[
            'nama'=>$request->nama,
            'nik'=>$request->nik,
            'tempat_lahir'=>$request->tempat_lahir,
            'tanggal_lahir'=>$request->tanggal_lahir,
            'jenis_kelamin'=>$request->jenis_kelamin,
            'alamat'=>$request->alamat,
            'no_hp'=>$request->no_hp,
            'agama'=>$request->agama,
        ];
        $id=$request->id_master;
        // dd($id);
        try {
            master::where('id',$id)->update($data);
            return back()->with('success','Data berhasil diedit!');
        }catch(Exception $e){
            return back()->with('failed','Data gagal diedit!');
        }
    }


    public function gantifoto(Request $request){
        $id=$request->id_masterfoto;

        if($request->hasFile('image')){
            $resorce= $request->file('image');
            $name   = $resorce->getClientOriginalName();
            $resorce->move(\base_path() ."/public/assets/img/karyawan", $name);
            echo "Gambar berhasil di upload";
        }else{
            echo "Gagal upload gambar";
        }

        try {
            master::where('id',$id)->update(['foto'=>$name]);
            return back()->with('success','Data berhasil diedit!');
        }catch(Exception $e){
            return back()->with('failed','Data gagal diedit!');
        }

    }
    public function hapusfoto($id){
        try {
            master::where('id',$id)->update(['foto'=>'']);
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
    public function destroy(Request $request){
    $id_master = $request->id_master;
    $tanggal=date('Y-m-d');
    $jabatanlama=DB::select("SELECT id_jabatan,nama_jabatan,nama_departemen from master
    join jabatan on jabatan.id=master.id_jabatan
    left join departemen on jabatan.departemen=departemen.id
    where master.id = $id_master");

    foreach($jabatanlama as $jl){
    }
    $data=[
        'id_master'=>$id_master,
        'tanggal'=>date('Y-m-d'),
        'jenis'=>'Non Aktif',
        'jabatan'=>$jl->id_jabatan,
        'deskripsi'=>'Status menjadi Non Aktif ',
        'keterangan'=>'',
    ];
    // dd($data);
    DB::beginTransaction();
    try{
        master::where(['id'=>$id_master])->update(['status'=>'Non Aktif']);
        Bpjstk::where(['id_master'=>$id_master])->update(['status'=>'Non Aktif']);
        Bpjskes::where(['id_master'=>$id_master])->update(['status'=>'Pengajuan','alasan_nonaktif'=>'master dinonaktifkan']);
        Riwayatkaryawan::insert($data);
        DB::commit();
        return back()->with('success','Data berhasil dihapus!');
    }catch(Exception $e){
        // dd($e);
        DB::rollBack();
        return back()->with('failed','Data gagal dihapus!');
    }
}
}