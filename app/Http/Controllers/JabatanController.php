<?php

namespace App\Http\Controllers;

use App\Models\Jabatan;
use Illuminate\Http\Request;

class JabatanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('jabatan');
    }
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
        $totalRecords = Jabatan::select('count(*) as allcount')->count();
        $totalRecordswithFilter = Jabatan::select('count(*) as allcount')->where('nama_jabatan', 'like', '%' .$searchValue . '%')->count();

        // Fetch records
        if($rowperpage != -1){
            $records = Jabatan::orderBy($columnName,$columnSortOrder)
               ->where('jabatan.nama_jabatan', 'like', '%' .$searchValue . '%')
               ->orwhere('jabatan.departemen', 'like', '%' .$searchValue . '%')
               ->orwhere('jabatan.bagian', 'like', '%' .$searchValue . '%')
               ->orwhere('jabatan.sie', 'like', '%' .$searchValue . '%')
              ->select('jabatan.*')
              ->skip($start)
              ->take($rowperpage)
              ->get();
        }else{
            $records = Jabatan::orderBy($columnName,$columnSortOrder)
               ->where('jabatan.nama_jabatan', 'like', '%' .$searchValue . '%')
               ->orwhere('jabatan.departemen', 'like', '%' .$searchValue . '%')
               ->orwhere('jabatan.bagian', 'like', '%' .$searchValue . '%')
               ->orwhere('jabatan.sie', 'like', '%' .$searchValue . '%')
              ->select('jabatan.*')
              ->skip($start)
              ->take($totalRecords)
              ->get();
        }


        $data_arr = array();
        $no=$start;


        foreach($records as $record){
           $no +=1;
           $id=$record->id;
           $nama_jabatan = $record->nama_jabatan;
           $departemen = $record->departemen;
           $bagian = $record->bagian;
           $sie = $record->sie;

           $data_arr[] = array(
               "id" => $no,
               "id_master" => $id,
               "nama_jabatan" => $nama_jabatan,
               "departemen" => $departemen,
               "bagian" => $bagian,
               "sie" => $sie,
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