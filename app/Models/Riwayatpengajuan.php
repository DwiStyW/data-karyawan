<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Riwayatpengajuan extends Model
{
    use HasFactory;
    protected $table="riwayat_pengajuan";
    protected $fillable=[
        'id_pengajuan',
        'id_user',
        'deskripsi',
        'status',
    ];
}