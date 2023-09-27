<?php

namespace App\Http\Controllers;

use App\Models\Bataspensiun;
use App\Models\Hakakses;
use App\Models\Jabatan;
use App\Models\Master;
use Illuminate\Support\Facades\Auth;
use App\Models\Pengajuan;
use App\Models\Riwayatkaryawan;
use App\Models\Riwayatpengajuan;
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
        $carilevel=User::leftjoin('jabatan','jabatan.id','=','id_jabatan')
        ->where('users.id',$iduser)
        ->select('users.*','level')
        ->get();
        foreach ($carilevel as $cl){}
        $level=$cl->level;
        $levelbawahan=$level+1;
        // dd($level);
        $akses=Hakakses::leftjoin('jabatan','jabatan.id','=','id_jabatan')
        ->where('id_user',$iduser)
        ->where('level',$levelbawahan)
        ->get();
        $pengajuanpersetujuan=[];
        foreach($akses as $as){
            $jabatan=$as->id_jabatan;
            $users=User::where('id_jabatan',$jabatan)->get();
            foreach($users as $u){}
            if(count($users)!=0){
                $iduserpengaju=$u->id;
                $pengajuanuser=Pengajuan::leftjoin('users','users.id','=','idpengaju')
                ->leftjoin('jabatan','jabatan.id','=','idjabatan')
                ->where('pengajuan_karyawan.updateby',$iduserpengaju)
                ->where('pengajuan_karyawan.status','!=','ditolak')
                ->select('pengajuan_karyawan.*','nama_jabatan','name')->get();
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
        $pengajuanpribadi=[];
        $pengajuanp=Pengajuan::leftjoin('users','users.id','=','idpengaju')
        ->leftjoin('jabatan','jabatan.id','=','idjabatan')
        ->where('idpengaju',$iduser)
        ->select('pengajuan_karyawan.*','nama_jabatan','name')
        ->get();
        foreach($pengajuanp as $pp){
            $idpenyetuju=$pp->idpenyetuju;
            if($idpenyetuju!=null){
                $penyetuju=User::where('id',$idpenyetuju)->get();
                foreach($penyetuju as $py){}
                $nama_penyetuju=$py->name;
            }else{
                $nama_penyetuju='-';
            }
            $pengajuanpribadi[]=[
                'id'=>$pp->id,
                'idpengaju'=>$pp->idpengaju,
                'idpenyetuju'=>$pp->idpenyetuju,
                'idjabatan'=>$pp->idjabatan,
                'status'=>$pp->status,
                'jumlah'=>$pp->jumlah,
                'pendidikan_terakhir'=>$pp->pendidikan_terakhir,
                'profesi'=>$pp->profesi,
                'max_usia'=>$pp->max_usia,
                'jenis_kelamin'=>$pp->jenis_kelamin,
                'updated_at'=>$pp->updated_at,
                'nama_jabatan'=>$pp->nama_jabatan,
                'name'=>$pp->name,
                'nama_penyetuju'=>$nama_penyetuju
            ];
        }
        // dump($pengajuanp);
        // dd($pengajuanpribadi);
        $countabsen=DataController::absen();
        return view('pengajuan.list_pengajuan',compact('pengajuanpribadi','pengajuanpersetujuan','countabsen'));
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
                    return redirect('/pengajuan')->with('failed','Data gagal ditambahkan!');
                }
                $jabatanbaru=Jabatan::where('nama_jabatan',$jabatan)->get();
                foreach($jabatanbaru as $jb){}
                // dump($jabatanbaru);
                $data_pengaju=[
                    'idpengaju'=>$request->idpengaju,
                    'idpenyetuju'=>null,
                    'status'=>'Pengajuan dengan jabatan baru',
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
        $pengajuan=Pengajuan::where('id',$id)->get();
        $jabatan=Jabatan::get();
        $pendidikan=Bataspensiun::get();
        // dump($pengajuan);
        // dd('text');
        return view('pengajuan.edit_pengajuan',compact('pengajuan','id','jabatan','pendidikan'));
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
        $jabatan=$request->jabatan;
        $bool = ( !is_int($jabatan) ? (ctype_digit($jabatan)) : true );
        // dd($bool);
        // dump($bool);
            if ($bool==true){
                $data_pengaju=[
                    'idpengaju'=>$request->idpengaju,
                    'status'=>'Pengajuan',
                    'idjabatan'=>$jabatan,
                    'jumlah'=>$request->jumlah,
                    'pendidikan_terakhir'=>$request->pendidikan,
                    'profesi'=>$request->profesi,
                    'max_usia'=>$request->max_usia,
                    'jenis_kelamin'=>$request->jenis_kelamin,
                    'updated_at'=>date('Y-m-d H:i:s'),
                ];
                 try{
                    Pengajuan::where('id',$id)->update($data_pengaju);
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
                    return redirect('/pengajuan')->with('failed','Data gagal ditambahkan!');
                }
                $jabatanbaru=Jabatan::where('nama_jabatan',$jabatan)->get();
                foreach($jabatanbaru as $jb){}
                // dump($jabatanbaru);
                $data_pengaju=[
                    'idpengaju'=>$request->idpengaju,
                    'status'=>'Belum dicek',
                    'idjabatan'=>$jb->id,
                    'jumlah'=>$request->jumlah,
                    'pendidikan_terakhir'=>$request->pendidikan,
                    'profesi'=>$request->profesi,
                    'max_usia'=>$request->max_usia,
                    'jenis_kelamin'=>$request->jenis_kelamin,
                    'updated_at'=>date('Y-m-d H:i:s'),

                ];
                 try{
                    Pengajuan::where('id',$id)->update($data_pengaju);
                    return redirect('/pengajuan')->with('success','Data berhasil ditambahkan!');
                }catch(Exception $e){
                    return redirect('/pengajuan')->with('failed','Data gagal ditambahkan!');
                }

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
        //
    }

    public function persetujuan(Request $request){
        $id=$request->id;
        $data1=[
            'idpenyetuju'=>Auth::user()->id,
            'updateby'=>Auth::user()->id,
        ];
        $data2=[
            'id_pengajuan'=>$id,
            'id_user'=>Auth::user()->id,
            'deskripsi'=>'telah menyetujui',
            'status'=>'setuju',
            'updated_at'=>date('Y-m-d H:i:s'),
        ];
        DB::beginTransaction();
        try{
            Pengajuan::where('id',$id)->update($data1);
            Riwayatpengajuan::insert($data2);

            DB::commit();
            //alert berhasil
            return back()->with('success','Data berhasil ditambahkan!');
        }catch(Exception $e){
            // dd($e);
            DB::rollback();
            //alert gagal
            return back()->with('failed','Data gagal ditambahkan!');
        }
    }
    public function tolakpengajuan(Request $request){
        $id=$request->id_pengajuan;
        $data1=[
            'idpenyetuju'=>Auth::user()->id,
            'status'=>'ditolak',
            'updateby'=>Auth::user()->id,
        ];

        if($request->alasan!=''){
            $catatan='telah menolak dengan catatan '.$request->alasan;
        }else{
            $catatan='telah menolak';
        }
        $data2=[
            'id_pengajuan'=>$id,
            'id_user'=>Auth::user()->id,
            'deskripsi'=>$catatan,
            'status'=>'ditolak',
        ];
        DB::beginTransaction();
        try{
            Pengajuan::where('id',$id)->update($data1);
            Riwayatpengajuan::insert($data2);

            DB::commit();
            //alert berhasil
            return back()->with('success','Data berhasil ditambahkan!');
        }catch(Exception $e){
            // dd($e);
            DB::rollback();
            //alert gagal
            return back()->with('failed','Data gagal ditambahkan!');
        }
    }

    public function pengajuan_karyawan(){
        $pengajuankaryawwan=Pengajuan::leftjoin('users','users.id','=','idpengaju')
        ->leftjoin('jabatan','jabatan.id','=','idjabatan')
        ->where('pengajuan_karyawan.status','!=','ditolak')
        ->where('pengajuan_karyawan.updateby','7')
        ->orwhere('pengajuan_karyawan.updateby','1')
        ->orderby('id','DESC')
        ->select('pengajuan_karyawan.*','nama_jabatan','name')
        ->get();
        $datapengajuan=[];
        foreach ($pengajuankaryawwan as $p) {
            $idpengaju=$p->id;
            $karyawan=Master::where('id_pengajuan',$idpengaju)->get();
            $idpenyetuju=$p->idpenyetuju;
            $penyetuju=User::where('id',$idpenyetuju)->get();
            foreach($penyetuju as $py){}
            $datapengajuan[]=[
                'id'=>$p->id,
                'idpengaju'=>$p->idpengaju,
                'idpenyetuju'=>$p->idpenyetuju,
                'id_jabatan'=>$p->idjabatan,
                'status'=>$p->status,
                'jumlah'=>$p->jumlah,
                'karyawan_masuk'=>count($karyawan),
                'pendidikan_terakhir'=>$p->pendidikan_terakhir,
                'profesi'=>$p->profesi,
                'max_usia'=>$p->max_usia,
                'jenis_kelamin'=>$p->jenis_kelamin,
                'updated_at'=>$p->updated_at,
                'nama_jabatan'=>$p->nama_jabatan,
                'name'=>$p->name,
                'nama_penyetuju'=>$py->name
            ];
        }

        // dump($pengajuankaryawwan);
        return view('pengajuan.pengajuan',compact('datapengajuan'));
    }

    public function tambah_karyawan(Request $request){
        $loop=$request->indexloop;
        $idpengajuan=$request->idpengajuan;
        $data=[];
        for($i=0;$i<$loop;$i++){
            $index=$i+1;
            $nama='nama'.$index;
            $nik='nik'.$index;
            $nokk='nokk'.$index;
            $norekening='norekening'.$index;
            $no_hp='no_hp'.$index;
            $tempat_lahir='tempat_lahir'.$index;
            $tanggal_lahir='tanggal_lahir'.$index;
            $jenis_kelamin='jenis_kelamin'.$index;
            $alamat='alamat'.$index;
            $agama='agama'.$index;
            $golongan='golongan'.$index;
            $id_jabatan='id_jabatan'.$index;
            $image='image'.$index;
            $awal_kerja='awal_kerja'.$index;
            // dump($request->file('image1'));
            if($request->hasFile($image)){
                $resorce       = $request->file($image);
                $name   = $resorce->getClientOriginalName();
                $resorce->move(\base_path() ."/public/assets/img/karyawan", $name);
                echo "Gambar berhasil di upload";
            }else{
                $name="";
                echo "Gagal upload gambar";
            }
            $data[]=[
                'nama'=>$request->$nama,
                'nik'=>$request->$nik,
                'nokk'=>$request->$nokk,
                'norekening'=>$request->$norekening,
                'tempat_lahir'=>$request->$tempat_lahir,
                'tanggal_lahir'=>$request->$tanggal_lahir,
                'jenis_kelamin'=>$request->$jenis_kelamin,
                'alamat'=>$request->$alamat,
                'no_hp'=>$request->$no_hp,
                'agama'=>$request->$agama,
                'id_jabatan'=>$request->$id_jabatan,
                'golongan'=>$request->$golongan,
                'status'=>'Aktif',
                'foto' => $name,
                'id_pengajuan' => $idpengajuan,
                'updated_at'=>date("Y-m-d H:i:s")
            ];
        }
        try{
            master::insert($data);
        }catch(Exception $e){
            //alert gagal
            return back()->with('failed','Data gagal ditambahkan!');
        }

        foreach ($data as $key=>$value ) {
            $indexke=$key+1;
            $awal_kerja='awal_kerja'.$indexke;
            $id_jabatan='id_jabatan'.$indexke;
            $datawhere=[
                'nama'=>$value['nama'],
                'nik'=>$value['nik'],
            ];
            $master=master::where($datawhere)->get();
            foreach($master as $m){
                $idmaster=$m->id;
            }
            $datariwayat=[
                'id_master'=>$idmaster,
                'jenis'=>'Masuk',
                'jabatan'=>$request->$id_jabatan,
                'deskripsi'=>'karyawan baru',
                'keterangan'=>'',
                'sertifikat'=>'',
                'tanggal'=>$request->$awal_kerja,
            ];

            try{
                Riwayatkaryawan::insert($datariwayat);
                // return back()->with('success','Data berhasil ditambahkan!');
            }catch(Exception $e){
                //alert gagal
                return back()->with('failed','Data gagal ditambahkan!');
            }
        }

        $pengajuan=Pengajuan::where('id',$idpengajuan)->get();
        foreach($pengajuan as $png){}
        $masterpengajuan=Master::where('id_pengajuan',$idpengajuan)->get();
        if($png->jumlah==count($masterpengajuan)){
            $data1=[
                'status'=>'done',
                'updateby'=>Auth::user()->id,
            ];
            $data2=[
                'id_pengajuan'=>$idpengajuan,
                'id_user'=>Auth::user()->id,
                'deskripsi'=>'pengajuan done',
                'status'=>'done',
            ];
            DB::beginTransaction();
            try{
                Pengajuan::where('id',$idpengajuan)->update($data1);
                Riwayatpengajuan::insert($data2);

                DB::commit();
                //alert berhasil
                return back()->with('success','Data berhasil ditambahkan!');
            }catch(Exception $e){
                // dd($e);
                DB::rollback();
                //alert gagal
                return back()->with('failed','Data gagal ditambahkan!');
            }
        }

    }
}
