<?php

namespace App\Http\Controllers;

use App\Models\Pendidikan;
use Illuminate\Http\Request;
use Exception;

class PendidikanController extends Controller
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
        $SD=$request->pendidikanSD;
        $SMP=$request->pendidikanSMP;
        $SMA=$request->pendidikanSMA;
        $Diploma=$request->pendidikanDiploma;
        $S1=$request->pendidikanS1;
        $S2=$request->pendidikanS2;
        $Lainnya=$request->pendidikanLainnya;

        if($SD!="" && $request->hasFile('sertifikatSD')){
            $resorceSD       = $request->file('sertifikatSD');
            $sertifikatSD   = $resorceSD->getClientOriginalName();
            $resorceSD->move(\base_path() ."/public/assets/img/sertifikat", $sertifikatSD);
        }else{
            $sertifikatSD="";
        }
        if($SMP!="" && $request->hasFile('sertifikatSMP')){
            $resorceSMP       = $request->file('sertifikatSMP');
            $sertifikatSMP   = $resorceSMP->getClientOriginalName();
            $resorceSMP->move(\base_path() ."/public/assets/img/sertifikat", $sertifikatSMP);
        }else{
            $sertifikatSMP="";
        }
        if($SMA!="" && $request->hasFile('sertifikatSMA')){
            $resorceSMA       = $request->file('sertifikatSMA');
            $sertifikatSMA   = $resorceSMA->getClientOriginalName();
            $resorceSMA->move(\base_path() ."/public/assets/img/sertifikat", $sertifikatSMA);
        }else{
            $sertifikatSMA="";
        }
        if($Diploma!="" && $request->hasFile('sertifikatDiploma')){
            $resorceDiploma       = $request->file('sertifikatDiploma');
            $sertifikatDiploma   = $resorceDiploma->getClientOriginalName();
            $resorceDiploma->move(\base_path() ."/public/assets/img/sertifikat", $sertifikatDiploma);
        }else{
            $sertifikatDiploma="";
        }
        if($S1!="" && $request->hasFile('sertifikatS1')){
            $resorceS1       = $request->file('sertifikatS1');
            $sertifikatS1   = $resorceS1->getClientOriginalName();
            $resorceS1->move(\base_path() ."/public/assets/img/sertifikat", $sertifikatS1);
        }else{
            $sertifikatS1="";
        }
        if($S2!="" && $request->hasFile('sertifikatS2')){
            $resorceS2       = $request->file('sertifikatS2');
            $sertifikatS2   = $resorceS2->getClientOriginalName();
            $resorceS2->move(\base_path() ."/public/assets/img/sertifikat", $sertifikatS2);
        }else{
            $sertifikatS2="";
        }
        if($Lainnya!="" && $request->hasFile('sertifikatLainnya')){
            $resorceLainnya       = $request->file('sertifikatLainnya');
            $sertifikatLainnya   = $resorceLainnya->getClientOriginalName();
            $resorceLainnya->move(\base_path() ."/public/assets/img/sertifikat", $sertifikatLainnya);
        }else{
            $sertifikatLainnya="";
        }

        $dataSD=[
            'tingkat_pendidikan'=>"SD",
            'nama_sekolah'=>$request->pendidikanSD,
            'jurusan'=>"-",
            'tgl_awal'=>$request->masukSD,
            'tgl_akhir'=>$request->keluarSD,
            'id_master'=>$request->id_master,
            'sertifikat'=>$sertifikatSD,
            'updated_at'=>date("Y-m-d H:i:s")
        ];

        $dataSMP=[
            'tingkat_pendidikan'=>"SMP",
            'nama_sekolah'=>$request->pendidikanSMP,
            'jurusan'=>"-",
            'tgl_awal'=>$request->masukSMP,
            'tgl_akhir'=>$request->keluarSMP,
            'id_master'=>$request->id_master,
            'sertifikat'=>$sertifikatSMP,
            'updated_at'=>date("Y-m-d H:i:s")
        ];

        $dataSMA=[
            'tingkat_pendidikan'=>"SMA",
            'nama_sekolah'=>$request->pendidikanSMA,
            'jurusan'=>$request->jurusanSMA,
            'tgl_awal'=>$request->masukSMA,
            'tgl_akhir'=>$request->keluarSMA,
            'id_master'=>$request->id_master,
            'sertifikat'=>$sertifikatSMA,
            'updated_at'=>date("Y-m-d H:i:s")
        ];

        $dataDiploma=[
            'tingkat_pendidikan'=>"Diploma",
            'nama_sekolah'=>$request->pendidikanDiploma,
            'jurusan'=>$request->jurusanDiploma,
            'tgl_awal'=>$request->masukDiploma,
            'tgl_akhir'=>$request->keluarDiploma,
            'id_master'=>$request->id_master,
            'sertifikat'=>$sertifikatDiploma,
            'updated_at'=>date("Y-m-d H:i:s")
        ];

        $dataS1=[
            'tingkat_pendidikan'=>"S1",
            'nama_sekolah'=>$request->pendidikanS1,
            'jurusan'=>$request->jurusanS1,
            'tgl_awal'=>$request->masukS1,
            'tgl_akhir'=>$request->keluarS1,
            'id_master'=>$request->id_master,
            'sertifikat'=>$sertifikatS1,
            'updated_at'=>date("Y-m-d H:i:s")
        ];

        $dataS2=[
            'tingkat_pendidikan'=>"S2",
            'nama_sekolah'=>$request->pendidikanS2,
            'jurusan'=>$request->jurusanS2,
            'tgl_awal'=>$request->masukS2,
            'tgl_akhir'=>$request->keluarS2,
            'id_master'=>$request->id_master,
            'sertifikat'=>$sertifikatS2,
            'updated_at'=>date("Y-m-d H:i:s")
        ];

         $dataLainnya=[
            'tingkat_pendidikan'=>"Lainnya",
            'nama_sekolah'=>$request->pendidikanLainnya,
            'jurusan'=>$request->jurusanLainnya,
            'tgl_awal'=>$request->masukLainnya,
            'tgl_akhir'=>$request->keluarLainnya,
            'id_master'=>$request->id_master,
            'sertifikat'=>$sertifikatLainnya,
            'updated_at'=>date("Y-m-d H:i:s")
        ];
        if($SD!='' && $SMP!='' && $SMA!='' && $Diploma!='' && $S1!='' && $S2!='' && $Lainnya!=''){
            $data=[$dataSD,$dataSMP,$dataSMA,$dataDiploma,$dataS1,$dataS2,$Lainnya];
        }else if($SD!='' && $SMP!='' && $SMA!='' && $S1!='' && $S2!='' && $Lainnya!=''){
            $data=[$dataSD,$dataSMP,$dataSMA,$dataS1,$dataS2,$Lainnya];
        }elseif($SD!='' && $SMP!='' && $SMA!='' && $S1!='' && $S2!=''){
            $data=[$dataSD,$dataSMP,$dataSMA,$dataS1,$dataS2];
        }else if($SD!='' && $SMP!=''&& $SMA!='' && $S1!=''){
            $data=[$dataSD,$dataSMP,$dataSMA,$dataS1];
        }else if($SD!='' && $SMP!=''&& $S1!='' && $S2!=''){
            $data=[$dataSD,$dataSMP,$dataS1,$dataS2];
        }else if($SD!='' && $SMA!=''&& $S1!='' && $S2!=''){
            $data=[$dataSD,$dataSMA,$dataS1,$dataS2];
        }else if($SMP!='' && $SMA!=''&& $S1!='' && $S2!=''){
            $data=[$dataSMP,$dataSMA,$dataS1,$dataS2];
        }else if($SD!='' && $SMP!=''&& $SMA!=''){
            $data=[$dataSD,$dataSMP,$dataSMA];
        }else if($SD!='' && $SMP!=''&& $S1!=''){
            $data=[$dataSD,$dataSMP,$dataS1];
        }else if($SD!='' && $SMP!=''&& $S2!=''){
            $data=[$dataSD,$dataSMP,$dataS2];
        }else if($SD!='' && $SMA!=''&& $S1!=''){
            $data=[$dataSD,$dataSMA,$dataS1];
        }else if($SD!='' && $SMA!=''&& $S2!=''){
            $data=[$dataSD,$dataSMA,$dataS2];
        }else if($SD!='' && $S1!=''&& $S2!=''){
            $data=[$dataSD,$dataS1,$dataS2];
        }else if($SMP!='' && $SMA!=''&& $S1!=''){
            $data=[$dataSMP,$dataSMA,$dataS1];
        }else if($SMP!='' && $SMA!=''&& $S2!=''){
            $data=[$dataSMP,$dataSMA,$dataS2];
        }else if($SD!='' && $SMP!=''){
            $data=[$dataSD,$dataSMP];
        }else if($SD!='' && $SMA!=''){
            $data=[$dataSD,$dataSMA];
        }else if($SD!='' && $S1!=''){
            $data=[$dataSD,$dataS1];
        }else if($SD!='' && $S2!=''){
            $data=[$dataSD,$dataS2];
        }else if($SMP!='' && $SMA!=''){
            $data=[$dataSMP,$dataSMA];
        }else if($SMP!='' && $S1!=''){
            $data=[$dataSMP,$dataS1];
        }else if($SMP!='' && $S2!=''){
            $data=[$dataSMP,$dataS2];
        }else if($SMA!='' && $S1!=''){
            $data=[$dataSMA,$dataS1];
        }else if($SMA!='' && $S2!=''){
            $data=[$dataSMA,$dataS2];
        }else if($S1!='' && $S2!=''){
            $data=[$dataS1,$dataS1];
        }else if($SD!=''){
            $data=[$dataSD];
        }else if($SMP!=''){
            $data=[$dataSMP];
        }else if($SMA!=''){
            $data=[$dataSMA];
        }else if($Diploma!=''){
            $data=[$dataDiploma];
        }else if($S1!=''){
            $data=[$dataS1];
        }else if($S2!=''){
            $data=[$dataS2];
        }else if($Lainnya!=''){
            $data=[$dataLainnya];
        }
        // $data=[$dataSD,$dataSMP,$dataSMA,$dataS1];
        try{
            Pendidikan::insert($data);
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
        $where=[
            'id_pendidikan'=>$request->id_pendidikan
        ];

        $data=[
            'tingkat_pendidikan'=>$request->tingkat_pendidikan,
            'nama_sekolah'=>$request->nama_sekolah,
            'jurusan'=>$request->jurusan,
            'tgl_awal'=>$request->tglawal,
            'tgl_akhir'=>$request->tglakhir,
            'id_master'=>$request->id_master,
        ];
        try {
            Pendidikan::where($where)->update($data);
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
        Pendidikan::where(['id_pendidikan'=>$id])->delete();
        return back()->with('success','Data berhasil dihapus!');
    }catch(Exception $e){
        return back()->with('failed','Data gagal dihapus!');
    }
    }
}
