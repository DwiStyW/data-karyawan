<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bataspensiun extends Model
{
    use HasFactory;
    protected $table="batas_pensiun";
    protected $fillable=[
        'tingkat_pendidikan','usia_max'
    ];
}