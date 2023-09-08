<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pengajuan extends Model
{
    use HasFactory;
    protected $table="pengajuan_karyawan";
    protected $fillable=[
        'idpengaju','idpenyatuju','status','idjabatan','jumlah','pendidikan_akhir','profesi','usia_max','jenis_kelamin','updateby'
    ];
}