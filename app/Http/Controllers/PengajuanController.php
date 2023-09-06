<?php

namespace App\Http\Controllers;

use App\Models\Bataspensiun;
use App\Models\Hakakses;
use App\Models\Jabatan;
use Illuminate\Support\Facades\Auth;
use App\Models\Pengajuan;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PengajuanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // dd(Auth::id());
        $iduser=Auth::user()->id;
        $carilevel=User::leftjoin('jabatan','jabatan.id','=','id_jabatan')->where('users.id',$iduser)->select('users.*','level')->get();
        foreach ($carilevel as $cl){}
        $level=$cl->level;
        $levelbawahan=$level+1;
        // dd($level);
        $akses=Hakakses::leftjoin('jabatan','jabatan.id','=','id_jabatan')->where('id_user',$iduser)->where('level',$levelbawahan)->get();
        $pengajuanpersetujuan=[];
        foreach($akses as $as){
            $jabatan=$as->id_jabatan;
            $users=User::where('id_jabatan',$jabatan)->get();
            foreach($users as $u){}
            if(count($users)!=0){
                $iduserpengaju=$u->id;
                $pengajuanuser=Pengajuan::leftjoin('users','users.id','=','idpengaju')->leftjoin('jabatan','jabatan.id','=','idjabatan')->where('pengajuan_karyawan.updateby',$iduserpengaju)->where('pengajuan_karyawan.status','pengajuan')->select('pengajuan_karyawan.*','nama_jabatan','name')->get();
                foreach($pengajuanuser as $pu){
                    $pengajuanpersetujuan[]=[
                        'id'=>$pu->id,
                        'idpengaju'=>$pu->idpengaju,
                        'idpenyetuju'=>$pu->idpenyetuju,
                        'idjabatan'=>$pu->idjabatan,
                        'status'=>$pu->status,
                        'jumlah'=>$pu->jumlah,
                        'pendidikan_terakhir'=>$pu->pendidikan_terakhir,
                        'profesi'=>$pu->profesi,
                        'max_usia'=>$pu->max_usia,
                        'jenis_kelamin'=>$pu->jenis_kelamin,
                        'updated_at'=>$pu->updated_at,
                        'nama_jabatan'=>$pu->nama_jabatan,
                        'name'=>$pu->name,
                    ];
                }
            }
        }
        // dump($akses);
        $pengajuanpribadi=Pengajuan::leftjoin('users','users.id','=','idpengaju')->leftjoin('jabatan','jabatan.id','=','idjabatan')->where('idpengaju',$iduser)->select('pengajuan_karyawan.*','nama_jabatan','name')->get();
        return view('pengajuan.list_pengajuan',compact('pengajuanpribadi','pengajuanpersetujuan'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        $jabatan=Jabatan::get();
        $pendidikan=Bataspensiun::get();
        return view('pengajuan.add_pengajuan',compact('jabatan','pendidikan'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $jabatan=$request->jabatan;
        $bool = ( !is_int($jabatan) ? (ctype_digit($jabatan)) : true );
        // dd($bool);
        // dump($bool);
            if ($bool==true){
                $data_pengaju=[
                    'idpengaju'=>$request->idpengaju,
                    'idpenyetuju'=>null,
                    'status'=>'Pengajuan',
                    'idjabatan'=>$jabatan,
                    'jumlah'=>$request->jumlah,
                    'pendidikan_terakhir'=>$request->pendidikan,
                    'profesi'=>$request->profesi,
                    'max_usia'=>$request->max_usia,
                    'jenis_kelamin'=>$request->jenis_kelamin,
                    'updateby'=>Auth::user()->id,
                    'updated_at'=>date('Y-m-d H:i:s'),
                ];
                 try{
                    Pengajuan::insert($data_pengaju);
                    return redirect('/pengajuan')->with('success','Data berhasil ditambahkan!');
                }catch(Exception $e){
                    dd($e);
                    return redirect('/pengajuan')->with('failed','Data gagal ditambahkan!');
                }
            }else{
                $data_jabatan=[
                    'nama_jabatan'=>$jabatan,
                    'departemen'=>null,
                    'bagian'=>null,
                    'sie'=>null,
                    'level'=>null,
                    'pid'=>null,
                    'tags'=>null,
                    'updateby'=>Auth::user()->id,
                ];
                try{
                    Jabatan::insert($data_jabatan);
                }catch(Exception $e){
                }
                $jabatanbaru=Jabatan::where('nama_jabatan',$jabatan)->get();
                foreach($jabatanbaru as $jb){}
                // dump($jabatanbaru);
                $data_pengaju=[
                    'idpengaju'=>$request->idpengaju,
                    'idpenyetuju'=>null,
                    'status'=>'Belum dicek',
                    'idjabatan'=>$jb->id,
                    'jumlah'=>$request->jumlah,
                    'pendidikan_terakhir'=>$request->pendidikan,
                    'profesi'=>$request->profesi,
                    'max_usia'=>$request->max_usia,
                    'jenis_kelamin'=>$request->jenis_kelamin,
                    'updateby'=>Auth::user()->id,
                    'updated_at'=>date('Y-m-d H:i:s'),

                ];
                 try{
                    Pengajuan::insert($data_pengaju);
                    return redirect('/pengajuan')->with('success','Data berhasil ditambahkan!');
                }catch(Exception $e){
                    return redirect('/pengajuan')->with('failed','Data gagal ditambahkan!');
                }

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