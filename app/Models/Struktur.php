<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Struktur extends Model
{
    use HasFactory;
    protected $table="struktur";
    protected $fillable=[
        'nama','tags','pid'
    ];

    static function getPid(){

        $return=DB::table('struktur')
        ->select(DB::raw('pid'))
        ->groupBy('pid')
        ->orderBy('pid','ASC')
        ->get();
        return $return;
    }
}