<?php

namespace App\Http\Controllers;

use App\Models\Bpjskes;
use App\Models\Master;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BpjskesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $bpjskes=DB::select('SELECT bpjs_kes.*, master.nama as nama_master from bpjs_kes join master on master.id=bpjs_kes.id_master where bpjs_kes.status="Aktif" order by id_master ASC');
        $master=Master::where('status','Aktif')->get();

        return view('bpjskes.bpjskes',compact('bpjskes','master'));
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
            'no_bpjs_kes'=>$request->no_bpjs_kes,
            'nama'=>$request->nama,
            'kelas'=>$request->kelas,
            'iuran'=>$request->iuran,
            'id_master'=>$request->id_master,
            'status'=>'Aktif',
            'alasan_nonaktif'=>'',
        ];
        // dd($data);
         if($request->id_master!=0) {
            Bpjskes::insert($data);
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
            'no_bpjs_kes'=>$request->no_bpjs_kes,
            'nama'=>$request->nama,
            'kelas'=>$request->kelas,
            'iuran'=>$request->iuran,
            'id_master'=>$request->id_master,
        ];
        $id=$request->id_bpjskes;
        // dd($data);
        if($request->id_master!=0) {
            Bpjskes::where('id',$id)->update($data);
            return back()->with('success','Data berhasil diedit!');
        }else{
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
        $data=[
            'status'=>'Pengajuan',
            'alasan_nonaktif'=>$request->alasan,
        ];
        try{
           Bpjskes::where('id',$id)->update($data);
            return back()->with('success','Data berhasil dinonaktifkan!');
        }catch(Exception $e){
            return back()->with('failed','Data gagal dinonaktifkan!');
        }
    }
}