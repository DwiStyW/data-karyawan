<?php

namespace App\Http\Controllers;

use App\Models\Historypekerjaan;
use Exception;
use Illuminate\Http\Request;

class HistoryPekerjaanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
            'nama_perusahaan'=>$request->nama_perusahaan,
            'alamat'=>$request->alamat_perusahaan,
            'tahun_masuk'=>$request->tahun_masuk,
            'tahun_keluar'=>$request->tahun_keluar,
            'jabatan_terakhir'=>$request->jabatan_terakhir,
            'alasan_pindah'=>$request->alasan_pindah,
            'id_master'=>$request->id_master,
            'updated_at'=>date("Y-m-d H:i:s")
        ];
        try{
            Historypekerjaan::insert($data);
            return back()->with('success','Data berhasil ditambahkan!');
        }catch(Exception $e){
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
        $data=[
            'nama_perusahaan'=>$request->nama_perusahaan,
            'alamat'=>$request->alamat_perusahaan,
            'tahun_masuk'=>$request->tahun_masuk,
            'tahun_keluar'=>$request->tahun_keluar,
            'jabatan_terakhir'=>$request->jabatan_terakhir,
            'alasan_pindah'=>$request->alasan_pindah,
            'id_master'=>$request->id_master,
        ];
        $id=$request->id_history;
        // dd($data);
        try {
            Historypekerjaan::where('id',$id)->update($data);
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
    public function destroy($id)
    {
        try{
            Historypekerjaan::where(['id'=>$id])->delete();
            return back()->with('success','Data berhasil dihapus!');
        }catch(Exception $e){
            return back()->with('failed','Data gagal dihapus!');
        }
    }
}