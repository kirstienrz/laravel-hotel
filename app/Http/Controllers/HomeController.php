<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RoomType;


class HomeController extends Controller
{
    Public function home(){
        $roomTypes=RoomType::all();
        return view('home',['roomTypes'=>$roomTypes]);
    }
    
}
