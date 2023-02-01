<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
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
    public function index()
    {
        $data=Struktur::all();
        // $parentid=Struktur::getPid();
        // foreach($parentid as $p){
        //     $pid=$p->pid;
        //     $data[]=DB::connection('mysql')->select("select id,tags from struktur where id=$pid");
        // }

        foreach($data as $datalist){
            // if($datalist['tags']=='1'){
            //     $tags="";
            // }else if($datalist['tags']=='2'){
            //     $tags="subLevels1";
            // }else if($datalist['tags']=='3'){
            //     $tags="subLevels2";
            // }else if($datalist['tags']=='4'){
            //     $tags="subLevels3";
            // }else if($datalist['tags']=='5'){
            //     $tags="subLevels4";
            // }else if($datalist['tags']=='6'){
            //     $tags="subLevels0";
            // }

            $datas[]=['id'=>$datalist['id'],
                    'nama'=>$datalist['nama'],
                    'level'=>$datalist['level'],
                    'pid'=>$datalist['pid'],
                    'tags'=>["subLevels".$datalist['tags']]];
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