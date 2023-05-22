<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pengajuan extends Model
{
    use HasFactory;
    protected $table="pengajuan_karyawan";
    protected $fillable=[
        'id_jabatan','id_master','jumlah','pend_terakhir','profesi','usia_max','jenis_kelamin','deskripsi','status'
    ];
}