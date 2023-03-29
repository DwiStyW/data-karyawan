<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Historypekerjaan extends Model
{
    use HasFactory;
    protected $table="history_pekerjaan";
    protected $fillable=[
        'nama_perusahaan',
        'alamat',
        'tahun_masuk',
        'tahun_keluar',
        'jabatan_terakhir',
        'alasan_pindah',
        'id_master',
    ];
}