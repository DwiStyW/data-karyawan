<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Bataspensiun;
use App\Models\Jabatan;
use App\Models\Master;
use App\Models\Pendidikan;
use Exception;
use Illuminate\Auth\Events\Validated;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MasterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
        $jabatan=Jabatan::get();

         // Load index view
         return view('MasterKaryawan.master',compact('jabatan'));
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
        if($columnName=='id'){
            $columnName='master.id';
        }else{
            $columnName = $columnName_arr[$columnIndex]['data'];
        }
        // Fetch records
        if($rowperpage != -1){

            $records = master::orderBy($columnName,$columnSortOrder)
            ->join('jabatan','master.id_jabatan','=','jabatan.id')
               ->where('master.nama', 'like', '%' .$searchValue . '%')
               ->orwhere('master.tempat_lahir', 'like', '%' .$searchValue . '%')
               ->orwhere('master.alamat', 'like', '%' .$searchValue . '%')
              ->select('master.*','nama_jabatan')
              ->skip($start)
              ->take($rowperpage)
              ->get();
        }else{
            $records = master::orderBy($columnName,$columnSortOrder)
            ->join('jabatan','master.id_jabatan','=','jabatan.id')
               ->where('master.nama', 'like', '%' .$searchValue . '%')
               ->orwhere('master.tempat_lahir', 'like', '%' .$searchValue . '%')
               ->orwhere('master.alamat', 'like', '%' .$searchValue . '%')
              ->select('master.*','nama_jabatan')
              ->skip($start)
              ->take($totalRecords)
              ->get();
        }


        $data_arr = array();
        $no=$start;


        foreach($records as $record){
           $no +=1;
           $id=$record->id;
           $nama = $record->nama;
           $noktp = $record->nik;
           $tmptlhr = $record->tempat_lahir;
           $tgllhr = $record->tanggal_lahir;
           $kelamin = $record->jenis_kelamin;
           $alamat = $record->alamat;
           $nohp = $record->no_hp;
           $agama = $record->agama;
           $id_jabatan = $record->id_jabatan;
           $jabatan = $record->nama_jabatan;
           $golongan = $record->golongan;
           $awalkerja = $record->awal_kerja;
           $bpjstk = $record->bpjs_tk;
           $pensiun = $record->status_pensiun;

           $data_arr[] = array(
               "id" => $no,
               "id_master" => $id,
               "nama" => $nama,
               "tempat_lahir" => $tmptlhr,
               "tanggal_lahir" => $tgllhr,
               "jenis_kelamin" => $kelamin,
               "alamat" => $alamat,
               "nik" => $noktp,
               "no_hp" => $nohp,
               "agama" => $agama,
               "id_jabatan" => $jabatan,
               "jabatan"=>$id_jabatan,
               "golongan" => $golongan,
               "awal_kerja" => $awalkerja,
               "bpjs_tk" => $bpjstk,
               "status_pensiun" => $pensiun,
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

     public function detailmaster($id_master){
        $jabatan=Jabatan::get();

        $jbatas=Bataspensiun::count();
        $sekolah=Pendidikan::where('pendidikan.id_master',$id_master)
        ->join('batas_pensiun','pendidikan.tingkat_pendidikan','=','batas_pensiun.tingkatan_pendidikan')
        ->join('master','pendidikan.id_master','=','master.id')
        ->orderby('batas_pensiun.id','ASC')
        ->get();
        $jsekolah=Pendidikan::where('pendidikan.id_master',$id_master)
        ->join('batas_pensiun','pendidikan.tingkat_pendidikan','=','batas_pensiun.tingkatan_pendidikan')
        ->join('master','pendidikan.id_master','=','master.id')
        ->orderby('batas_pensiun.id','ASC')
        ->count();
        $master=Master::where('master.id',$id_master)
        ->join('jabatan','master.id_jabatan','=','jabatan.id')
        ->get();
        $pendidikan=Pendidikan::where('pendidikan.id_master',$id_master)->get();
        if($jsekolah!=0){
        foreach($sekolah as $s){
            $sklh[]=$s->tingkat_pendidikan;
        }
        for ($i=0; $i < $jsekolah; $i++) {
            $where[]='tingkatan_pendidikan != "' .$sklh[$i].'"';
        }
        $kalimat = implode(" and ",$where);
        $bataspensiun=DB::select("SELECT * FROM batas_pensiun where $kalimat");
        }else{
            $bataspensiun=DB::select("SELECT * FROM batas_pensiun");
        }

        // dd($bataspensiun);

        return view('DetailMaster.detailmaster',compact('master','id_master','jabatan','bataspensiun','pendidikan'));
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
        $test = $request->id_bpjs_tk;
        if (!isset($request->id_bpjs_tk)){
            $test = "";
        }


        if($request->hasFile('image')){
            $resorce       = $request->file('image');
            $name   = $resorce->getClientOriginalName();
            $resorce->move(\base_path() ."/public/assets/img/karyawan", $name);
            echo "Gambar berhasil di upload";
        }else{
            $name="";
            echo "Gagal upload gambar";
        }

        $data=[
            'nama'=>$request->nama,
            'nik'=>$request->nik,
            'tempat_lahir'=>$request->tempat_lahir,
            'tanggal_lahir'=>$request->tanggal_lahir,
            'jenis_kelamin'=>$request->jenis_kelamin,
            'alamat'=>$request->alamat,
            'no_hp'=>$request->no_hp,
            'agama'=>$request->agama,
            'id_jabatan'=>$request->id_jabatan,
            'golongan'=>$request->golongan,
            'awal_kerja'=>$request->awal_kerja,
            'bpjs_tk'=>$test,
            'status_pensiun'=>$request->status_pensiun,
            'foto' => $name,
            'updated_at'=>date("Y-m-d H:i:s")
        ];
        // dd($data);
        try{
            master::insert($data);
            //alert berhasil
            return redirect("/master")->with('success','Data berhasil ditambahkan!');
        }catch(Exception $e){
            //alert gagal
            return redirect("/master")->with('failed','Data gagal ditambahkan!');
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
    public function edit()
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
            'nama'=>$request->nama,
            'nik'=>$request->nik,
            'tempat_lahir'=>$request->tempat_lahir,
            'tanggal_lahir'=>$request->tanggal_lahir,
            'jenis_kelamin'=>$request->jenis_kelamin,
            'alamat'=>$request->alamat,
            'no_hp'=>$request->no_hp,
            'agama'=>$request->agama,
            'id_jabatan'=>$request->id_jabatan,
            'golongan'=>$request->golongan,
            'awal_kerja'=>$request->awal_kerja,
            'bpjs_tk'=>$request->id_bpjs_tk,
            'status_pensiun'=>$request->status_pensiun,
        ];
        $where = [
            'id'=>$request->id_master
        ];
        $id=$request->id_master;
        // dd($id);
        try {
            master::where('id',$id)->update($data);
            return back()->with('success','Data berhasil diedit!');
        }catch(Exception $e){
            return back()->with('failed','Data gagal diedit!');
        }
    }


    public function gantifoto(Request $request){
        $id=$request->id_masterfoto;

        if($request->hasFile('image')){
            $resorce= $request->file('image');
            $name   = $resorce->getClientOriginalName();
            $resorce->move(\base_path() ."/public/assets/img/karyawan", $name);
            echo "Gambar berhasil di upload";
        }else{
            echo "Gagal upload gambar";
        }

        try {
            master::where('id',$id)->update(['foto'=>$name]);
            return back()->with('success','Data berhasil diedit!');
        }catch(Exception $e){
            return back()->with('failed','Data gagal diedit!');
        }

    }
    public function hapusfoto($id){
        try {
            master::where('id',$id)->update(['foto'=>'']);
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
    $id_master = $request->id_master;
    try{
        master::where(['id'=>$id_master])->delete();
        return redirect('/master')->with('success','Data berhasil dihapus!');
    }catch(Exception $e){
        return redirect('/master')->with('failed','Data gagal dihapus!');
    }
}
}