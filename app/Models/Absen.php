<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Absen extends Model
{
    use HasFactory;
    protected $table="absen";
    protected $fillable=[
        'id_master',
        'tanggal',
        'jenis',
        'ket',
    ];
}