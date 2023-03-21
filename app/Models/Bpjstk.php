<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bpjstk extends Model
{
    use HasFactory;
    protected $table="bpjs_tk";
    protected $fillable=[
        'no_bpjs_tk',
        'tgl_kepesertaan',
        'iuran',
        'id_master',
        'status',
    ];
}