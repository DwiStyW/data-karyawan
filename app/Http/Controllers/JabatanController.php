<?php

namespace App\Http\Controllers;

use App\Models\Bagian;
use App\Models\Departemen;
use App\Models\Jabatan;
use App\Models\Master;
use App\Models\Sie;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class JabatanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $Tjabatan=DB::select('SELECT jabatan.*, nama_jabatan,nama_departemen,nama_bagian,nama_sie FROM jabatan LEFT JOIN departemen ON departemen.id=jabatan.departemen LEFT JOIN bagian ON bagian.id=jabatan.bagian LEFT JOIN sie ON sie.id=jabatan.sie');
        $jabatan=Jabatan::get();
        $departemen=Departemen::get();
        $bagian=Bagian::get();
        // dd($Tjabatan);
        $sie=Sie::get();
        return view('jabatan.jabatan',compact('Tjabatan','jabatan','departemen','bagian','sie'));
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
        $pid=$request->pid;
        $level=$request->level;
        if($pid!=''||$level!=''){
            $levelpid=Jabatan::where('id',$pid)->get('level');
                    foreach ($levelpid as $lpid){
                        $lvpid=$lpid->level;
                    };
            $tags=$level-$lvpid-1;
        }else{
            $tags=0;
        }


        $data=[
            'nama_jabatan'=>$request->nama_jabatan,
            'departemen'=>$request->departemen,
            'bagian'=>$request->bagian,
            'sie'=>$request->sie,
            'level'=>$request->level,
            'pid'=>$request->pid,
            'tags'=>$tags,
        ];

        try{
            Jabatan::insert($data);
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
        $pid=$request->pid;
        $level=$request->level;
        if($pid!=''||$level!=''){
            $levelpid=Jabatan::where('id',$pid)->get('level');
                    foreach ($levelpid as $lpid){
                        $lvpid=$lpid->level;
                    };
            $tags=$level-$lvpid-1;
        }else{
            $tags=0;
        }
        $data=[
            'nama_jabatan'=>$request->nama_jabatan,
            'departemen'=>$request->departemen,
            'bagian'=>$request->bagian,
            'sie'=>$request->sie,
            'level'=>$request->level,
            'pid'=>$request->pid,
            'tags'=>$tags,
        ];
        $where=[
            'id'=>$request->id_jabatan
        ];
        $id=$request->id_jabatan;
        try {
            Jabatan::where('id',$id)->update($data);
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
    $id_jabatan = $request->jabatan_id;
    // dd($id_jabatan);
    $cek=Master::where('id_jabatan',$id_jabatan)->count();
    // dd($cek);

    if($cek==0){
        Jabatan::where(['id'=>$id_jabatan])->delete();
        return back()->with('success','Data berhasil dihapus!');
    }else{
        return back()->with('failed','Data gagal dihapus!');
    }
    }
}