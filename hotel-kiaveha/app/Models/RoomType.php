<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RoomType extends Model
{
    public function rooms()
    {
        return $this->hasMany(Room::class);
    }
    use HasFactory;
    protected $fillable = [
        // Specify the attributes that are mass assignable
        'id','title', 'detail', 'price','action' // Add more attributes as needed
    ];
    // Define the factory for the Customer model
    protected static function newFactory()
    {
        return \Database\Factories\RoomTypeFactory::new();
    }
}
