<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sie extends Model
{
    use HasFactory;
    protected $table="Sie";
    protected $fillable=[
        'id_bagian',
        'nama_Sie',
    ];
}