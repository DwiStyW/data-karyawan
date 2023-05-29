<?php

namespace App\Http\Controllers;

use App\Models\Absen;
use App\Models\Master;
use Exception;
use Illuminate\Http\Request;

class AbsensiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $absensi=Absen::leftjoin('master','master.id','=','absen.id_master')->select('absen.*','master.nama')->orderby('tanggal','desc')->get();
        $master=Master::get();
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
        $data=[
            'id_master'=>$request->id_master,
            'tanggal'=>$request->tanggal,
            'jenis'=>$request->jenis,
            'ket'=>$request->ket,
            'updated_at'=>date("Y-m-d H:i:s"),
        ];
        try{
            Absen::insert($data);
            return back()->with('success','Data berhasil ditambahkan!');
        }catch(Exception $e){
            //alert gagal
            // dd($e);
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
}