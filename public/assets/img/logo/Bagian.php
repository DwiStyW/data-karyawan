<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bagian extends Model
{
    use HasFactory;
    protected $table="Bagian";
    protected $fillable=[
        'id_departemen',
        'nama_bagian',
    ];
}