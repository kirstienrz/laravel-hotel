<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;
    protected $fillable = [
        'id', 'fullName', 'email','phone' // Add more attributes as needed
    ];

    function bookings(){
        return $this->hasMany(Booking::class);
    }

}
