<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Riwayatkaryawan extends Model
{
    use HasFactory;
    protected $table="riwayat_karyawan";
    protected $fillable=[
        'id_master',
        'jenis',
        'jabatan',
        'keterangan',
        'tanggal',
    ];
}