<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Master;
use Illuminate\Http\Request;

class MasterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){

         // Load index view
         return view('master');
     }

     // Fetch records
     public function getMaster(Request $request){

        ## Read value
        $draw = $request->get('draw');
        $start = $request->get("start");
        $rowperpage = $request->get("length"); // Rows display per page

        $columnIndex_arr = $request->get('order');
        $columnName_arr = $request->get('columns');
        $order_arr = $request->get('order');
        $search_arr = $request->get('search');

        $columnIndex = $columnIndex_arr[0]['column']; // Column index
        $columnName = $columnName_arr[$columnIndex]['data']; // Column name
        $columnSortOrder = $order_arr[0]['dir']; // asc or desc
        $searchValue = $search_arr['value']; // Search value

        // Total records
        $totalRecords = master::select('count(*) as allcount')->count();
        $totalRecordswithFilter = master::select('count(*) as allcount')->where('nama', 'like', '%' .$searchValue . '%')->count();

        // Fetch records
        $records = master::orderBy($columnName,$columnSortOrder)
               ->where('master.nama', 'like', '%' .$searchValue . '%')
              ->select('master.*')
              ->skip($start)
              ->take($rowperpage)
              ->get();

        $data_arr = array();
        $no=$start;


        foreach($records as $record){
           $no +=1;
           $nama = $record->nama;
           $noktp = $record->noktp;
           $tmptlhr = $record->tmptlhr;
           $tgllhr = $record->tgllhr;
           $kelamin = $record->kelamin;
           $alamat = $record->alamat;
           $agama = $record->agama;

           $data_arr[] = array(
               "max" => $totalRecords,
               "id" => $no,
               "nama" => $nama,
               "tmptlhr" => $tmptlhr,
               "tgllhr" => $tgllhr,
               "kelamin" => $kelamin,
               "alamat" => $alamat,
               "noktp" => $noktp,
               "agama" => $agama
           );
        }

        $response = array(
           "draw" => intval($draw),
           "iTotalRecords" => $totalRecords,
           "iTotalDisplayRecords" => $totalRecordswithFilter,
           "aaData" => $data_arr
        );

        return response()->json($response);
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