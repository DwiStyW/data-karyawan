<?php

namespace App\Http\Controllers;

use App\Models\Bpjstk;
use App\Models\Master;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BpjstkController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $bpjstk=DB::select('SELECT bpjs_tk.*,nama FROM bpjs_tk JOIN master ON master.id=bpjs_tk.id_master order by id_master asc');
         $master=Master::get();
        // dd($bpjstk);
        return view('bpjstk.bpjstk',compact('bpjstk','master'));
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
            'no_bpjs_tk'=>$request->no_bpjs_tk,
            'tgl_kepesertaan'=>$request->tgl_kepesertaan,
            'iuran'=>$request->iuran,
            'id_master'=>$request->id_master,
        ];
        $idmaster=$request->id_master;
        // dd($data);
        $cek=Bpjstk::where('id_master',$idmaster)
        ->count();
        if($cek == 0 && $idmaster!=0){
            Bpjstk::insert($data);
            return back()->with('success','Data berhasil ditambahkan!');
        }else{
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
            'no_bpjs_tk'=>$request->no_bpjs_tk,
            'tgl_kepesertaan'=>$request->tgl_kepesertaan,
            'iuran'=>$request->iuran,
            'id_master'=>$request->id_master,
        ];
        $id=$request->id_bpjstk;
        // dd($id);
        try {
            Bpjstk::where('id',$id)->update($data);
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
        $id = $request->id;
        try{
            Bpjstk::where(['id'=>$id])->delete();
            return back()->with('success','Data berhasil dihapus!');
        }catch(Exception $e){
            return back()->with('failed','Data gagal dihapus!');
        }
    }
}