<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pendidikan extends Model
{
    use HasFactory;
    protected $table="pendidikan";
    protected $fillable=[
        'tingkatan_pendidikan','nama_sekolah','jurusan','tgl_awal','tgl_akhir','id_master'
    ];
}