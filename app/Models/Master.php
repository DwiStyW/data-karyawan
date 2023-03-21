<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Master extends Model
{
    use HasFactory;
    protected $table="master";
    protected $fillable=[
        'nama','foto','nik','tempat_lahir','tanggal_lahir','jenis_kelamin','alamat','no_hp','agama','id_jabatan','golongan','awal_kerja','id_bpjs_tk','status_pensiun'
    ];
}
