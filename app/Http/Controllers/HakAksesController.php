<?php

namespace App\Http\Controllers;

use App\Models\Departemen;
use App\Models\Hakakses;
use App\Models\Jabatan;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HakAksesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data=Hakakses::select('akses_jabatan.*','nama_jabatan','name')->leftjoin('users','users.id','=','akses_jabatan.id_user')->leftjoin('jabatan','jabatan.id','=','akses_jabatan.id_jabatan')->get();
        // dd($data);
        return view('hakakses.hakakses',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $jabatan=Jabatan::leftjoin('departemen','departemen.id','=','jabatan.departemen')->select('jabatan.*','nama_departemen')->get();
        $departemen=Departemen::get();
        $data=[];
        foreach($departemen as $d){
            $id_depart=$d->id;
            $jabatan=DB::select("SELECT * from jabatan where departemen='$id_depart'");
            $data[]=[
                'id_departemen'=>$id_depart,
                'nama_departemen'=>$d->nama_departemen,
                'jabatan'=>$jabatan,
            ];
        }
        // dd($data);
        // $hakakses=Hakakses::groupby('id_user')->select('id_user')->get();
        // foreach($hakakses as $hk){
        //     $hk->
        // }
        $user=User::where('role','pimpinan')->get();
        return view('hakakses.tambahhakakses',compact('jabatan','user','data','departemen'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data=[];
        $id_user=$request->user;
        foreach($request->jabatan as $j){
            $data[]=[
                'id_user'=>$request->user,
                'id_jabatan'=>$j,
            ];
        }
        // dd($data);
        DB::beginTransaction();
        try{
            Hakakses::where(['id_user'=>$id_user])->delete();
            Hakakses::insert($data);

            DB::commit();
            return redirect('/hakakses')->with('success','Data berhasil ditambahkan!');
        }catch(Exception $e){
            dd($e);
            DB::rollback();
            return redirect('/hakakses')->with('failed','Data gagal ditambahkan!');
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