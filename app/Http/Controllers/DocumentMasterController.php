<?php

namespace App\Http\Controllers;

use App\Models\Document;
use App\Models\Master;
use Exception;
use Illuminate\Http\Request;

class DocumentMasterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        // dd($id);
        $master=Master::where('id',$id)->get();


        $dokumen=Document::where('id_master',$id)->get();
        $data=[];
        foreach($dokumen as $d){
            if($d->file!=""){
                $ext=pathinfo($d->file);
                $extension=$ext['extension'];
            }else{
                $extension='';
            }

            $data[]=[
                'id'=>$d->id,
                'keterangan'=>$d->keterangan,
                'file'=>$d->file,
                'extension'=>$extension,
            ];
        }
        // dd($ext['extension']);
        return view('document-master.documentmaster',compact('id','master','data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dump($request);
        if($_FILES["file"]["name"] !=''){
            $allowed_ext = array("jpg", "png", "pdf","docx","doc","xlsx","xls");
            $ext = explode('.', $_FILES["file"]["name"]);
            $file_extension = end($ext);
            if(in_array($file_extension, $allowed_ext)){
                $resorce       = $request->file('file');
                $name = $request->id_master.'_'.$request->keterangan. '.' . $file_extension;
                $resorce->move(\base_path() ."/public/assets/upload/document", $name);
                echo "Gambar berhasil di upload";
            }else{
                $name="";
                echo "Gagal upload gambar";
            }
        }else{
            $name="";
            echo "Gagal upload gambar";
        }

        $data=[
            'id_master'=>$request->id_master,
            'keterangan'=>$request->keterangan,
            'file'=>$name,
            'created_at'=>date('Y-m-d H:i:s'),
            'updated_at'=>date('Y-m-d H:i:s'),
        ];
        // dd($data);
        try{
            Document::insert($data);
            return back()->with('success','Data berhasil ditambahkan!');
        }catch(Exception $e){
            dd($e);
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
    public function destroy(Request $request)
    {
        // dd($request->iddoc);
        $id=$request->iddoc;
        try{
            Document::where('id',$id)->delete();
            return back()->with('success','Data berhasil dihapus!');
        }catch(Exception $e){
            return back()->with('failed','Data gagal dihapus!');
        }
    }
}