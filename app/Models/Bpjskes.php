<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bpjskes extends Model
{
    use HasFactory;
    protected $table="bpjs_kes";
    protected $fillable=[
        'no_bpjs_kes',
        'nama',
        'tanggungan',
        'kelas',
        'iuran',
        'id_master',
        'status',
        'alasan_nonaktif',
    ];
}