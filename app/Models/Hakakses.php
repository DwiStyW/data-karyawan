<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hakakses extends Model
{
    use HasFactory;
    protected $table="akses_jabatan";
    protected $fillable=[
        'id_user',
        'id_jabatan',
    ];
}