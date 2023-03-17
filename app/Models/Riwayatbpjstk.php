<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Riwayatbpjstk extends Model
{
    use HasFactory;
    protected $table="riwayat_bpjs_tk";
    protected $fillable=[
        'id_bpjs','id_master','iuran','date'
    ];
}