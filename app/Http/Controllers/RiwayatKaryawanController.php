<?php

namespace App\Http\Controllers;

use App\Models\Master;
use App\Models\Jabatan;
use App\Models\Riwayatkaryawan;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RiwayatKaryawanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $riwkaryawan=DB::select('SELECT riwayat_karyawan.*, master.nama as nama_master from riwayat_karyawan join master on master.id=riwayat_karyawan.id_master order by id ASC');
        $master=DB::select('SELECT master.*, nama_jabatan from master join jabatan on jabatan.id=master.id_jabatan where status="Aktif" order by id DESC');
        $jabatan=Jabatan::get();
        // dd($bpjstk);
        return view('riwkaryawan.riwayatkaryawan',compact('riwkaryawan','master','jabatan'));
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
        $idm=$request->id_master;
        $idj=$request->id_jabatan;
        if($request->keterangan==''){
            $keterangan='';
        }else{
            $keterangan=$request->keterangan;
        }
        if($request->hasFile('sertifikat')){
            $resorcesurat      = $request->file('sertifikat');
            $sertifikat   = $resorcesurat->getClientOriginalName();
            $resorcesurat->move(\base_path() ."/public/assets/img/sertifikat", $sertifikat);
        }else{
            $sertifikat="";
        }

        $jenis=$request->jenis;
        if($jenis=='Demosi' or $jenis=='Rotasi' or $jenis=='Promosi'){
            $jabatanlama=DB::select("SELECT id_jabatan,nama_jabatan,nama_departemen from master
            join jabatan on jabatan.id=master.id_jabatan
            left join departemen on jabatan.departemen=departemen.id
            where master.id = $idm");
            foreach($jabatanlama as $jl){
            }
            $jabatanbaru=DB::select("SELECT nama_jabatan,nama_departemen from jabatan
            left join departemen on jabatan.departemen=departemen.id
            where jabatan.id = $idj");
            foreach($jabatanbaru as $jb){
            }
            $data1=[
                'id_master'=>$request->id_master,
                'tanggal'=>$request->tanggal,
                'jenis'=>$request->jenis,
                'jabatan'=>$request->id_jabatan,
                'deskripsi'=>'Jenis mutasi '.$jenis.' dari Departemen '.$jl->nama_departemen.'bagian jabatan '.$jl->nama_jabatan.' menjadi Departemen '.$jb->nama_departemen.'bagian jabatan '.$jb->nama_jabatan,
                'keterangan'=>$keterangan,
                'sertifikat'=>$sertifikat,
            ];
            $data2=[
                'id_jabatan'=>$request->id_jabatan,
            ];
            $where=[
                'id'=>$request->id_master,
            ];
            DB::beginTransaction();
                try{
                    Master::where($where)->update($data2);
                    Riwayatkaryawan::insert($data1);

                    DB::commit();
                    //alert berhasil
                    return back()->with('success','Data berhasil ditambahkan!');
                }catch(Exception $e){
                    // dd($e);
                    DB::rollback();
                    //alert gagal
                    return back()->with('failed','Data gagal ditambahkan!');
                }
        }elseif($jenis=='Kontrak' || $jenis=='Tetap'){
            $jabatanlama=DB::select("SELECT id_jabatan,nama_jabatan,nama_departemen from master
            join jabatan on jabatan.id=master.id_jabatan
            left join departemen on jabatan.departemen=departemen.id
            where master.id = $idm");
            foreach($jabatanlama as $jl){
            }
            $data1=[
                'id_master'=>$request->id_master,
                'tanggal'=>$request->tanggal,
                'jenis'=>$request->jenis,
                'jabatan'=>$jl->id_jabatan,
                'deskripsi'=>'Status Karyawan menjadi '.$request->jenis,
                'keterangan'=>$keterangan,
                'sertifikat'=>$sertifikat,
            ];
            $data2=[
                'golongan'=>$request->jenis,
            ];
            $where=[
                'id'=>$request->id_master,
            ];
             DB::beginTransaction();
                try{
                    Master::where($where)->update($data2);
                    Riwayatkaryawan::insert($data1);

                    DB::commit();
                    //alert berhasil
                    return back()->with('success','Data berhasil ditambahkan!');
                }catch(Exception $e){
                    // dd($e);
                    DB::rollback();
                    //alert gagal
                    return back()->with('failed','Data gagal ditambahkan!');
                }
        }elseif($jenis=='SP 1' || $jenis=='SP 2' || $jenis=='SP 3'){
            $jabatanlama=DB::select("SELECT id_jabatan,nama_jabatan,nama_departemen from master
            join jabatan on jabatan.id=master.id_jabatan
            left join departemen on jabatan.departemen=departemen.id
            where master.id = $idm");
            foreach($jabatanlama as $jl){
            }
            $data1=[
                'id_master'=>$request->id_master,
                'tanggal'=>$request->tanggal,
                'jenis'=>$request->jenis,
                'jabatan'=>$jl->id_jabatan,
                'deskripsi'=>'Sanksi '.$request->jenis,
                'keterangan'=>$keterangan,
                'sertifikat'=>$sertifikat,
            ];
            try{
                Riwayatkaryawan::insert($data1);
                //alert berhasil
                return back()->with('success','Data berhasil ditambahkan!');
            }catch(Exception $e){
                // dd($e);
                //alert gagal
                return back()->with('failed','Data gagal ditambahkan!');
            }
        }elseif($jenis=='Pelatihan' || $jenis=='Penghargaan' || $jenis=='Peringatan'){
            $jabatanlama=DB::select("SELECT id_jabatan,nama_jabatan,nama_departemen from master
            join jabatan on jabatan.id=master.id_jabatan
            left join departemen on jabatan.departemen=departemen.id
            where master.id = $idm");
            foreach($jabatanlama as $jl){
            }
            $data1=[
                'id_master'=>$request->id_master,
                'tanggal'=>$request->tanggal,
                'jenis'=>$request->jenis,
                'jabatan'=>$jl->id_jabatan,
                'deskripsi'=>'Mendapatkan '.$request->jenis.' '.$request->deskripsi,
                'keterangan'=>$keterangan,
                'sertifikat'=>$sertifikat,
            ];
            try{
                Riwayatkaryawan::insert($data1);
                //alert berhasil
                return back()->with('success','Data berhasil ditambahkan!');
            }catch(Exception $e){
                // dd($e);
                //alert gagal
                return back()->with('failed','Data gagal ditambahkan!');
            }
        }elseif($jenis=='Kesehatan'){
            $jabatanlama=DB::select("SELECT id_jabatan,nama_jabatan,nama_departemen from master
            join jabatan on jabatan.id=master.id_jabatan
            left join departemen on jabatan.departemen=departemen.id
            where master.id = $idm");
            foreach($jabatanlama as $jl){
            }
            $data1=[
                'id_master'=>$request->id_master,
                'tanggal'=>$request->tanggal,
                'jenis'=>$request->jenis,
                'jabatan'=>$jl->id_jabatan,
                'deskripsi'=>'Melakukan cek '.$request->jenis.' '.$request->deskripsi,
                'keterangan'=>$keterangan,
                'sertifikat'=>$sertifikat,
            ];
            try{
                Riwayatkaryawan::insert($data1);
                //alert berhasil
                return back()->with('success','Data berhasil ditambahkan!');
            }catch(Exception $e){
                // dd($e);
                //alert gagal
                return back()->with('failed','Data gagal ditambahkan!');
            }
        }
        // dd($data2);

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
