<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Room extends Model
{
    use HasFactory;

    protected $fillable = [
        // Specify the attributes that are mass assignable
        'roomtype.title', 'title', 'id','action' // Add more attributes as needed
    ];

    function Roomtype(){
        return $this->belongsTo(RoomType::class,'room_type_id');
    }
}
