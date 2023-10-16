<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\Jabatan;
use App\Models\Struktur;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StrukturController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    // public function index()
    // {

    //     $data=DB::select("SELECT jabatan.*, nama from jabatan left join master on master.id_jabatan=jabatan.id  order by jabatan.id ASC");
    //     // $data=Jabatan::get();
    //     // dd($data);

    //     foreach($data as $datalist){

    //         $datas[]=['id'=>$datalist->id,
    //                 'jabatan'=>$datalist->nama_jabatan,
    //                 'nama'=>$datalist->nama,
    //                 'level'=>$datalist->level,
    //                 'pid'=>$datalist->pid,
    //                 'tags'=>["subLevels".$datalist->tags]];
    //     }
    //     return $datas;
    // }

    public function index(){
        // $data=Jabatan::get();
        $data=DB::select("SELECT * from struktur");
        foreach($data as $datalist){

             $datas[]=['id'=>$datalist->id,
                    'jabatan'=>$datalist->nama,
                    'nama'=>$datalist->nama,
                    'level'=>$datalist->level,
                    'pid'=>$datalist->pid,
                    'tags'=>["subLevels".$datalist->tags]];
        }
        return $datas;
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
        //
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