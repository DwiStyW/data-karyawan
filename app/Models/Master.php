<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Master extends Model
{
    use HasFactory;
    protected $table="master";
    protected $fillable=[
        'nama','noktp','tmptlhr','tgllhr','kelamin','agama','alamat','pendakhir','statussip','awalmsk','depart','bagian','jabatan','bpjskes','bpjstk','status','goldrh','namayah','namibu','telp','urlfoto'
    ];
}