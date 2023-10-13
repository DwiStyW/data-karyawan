<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Distribusiabsen extends Model
{
    use HasFactory;
    protected $table="distribusi_absen";
    protected $fillable=[
        'id_user',
        'tanggal',
    ];
}