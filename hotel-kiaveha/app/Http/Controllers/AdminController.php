<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Booking;
use Cookie;

class AdminController extends Controller
{
    //login
    //logout
    function login(){
        return view('login');
    }
    //check login
    function check_login(Request $request){
        $request->validate([
            'email'=>'required|email',
            'password'=>'required',
        ]);
        $admin=Admin::where(['email'=>$request->email,'password'=>sha1($request->password)])
        ->count();
        if($admin>0){
            $adminData=Admin::where(['email'=>$request->email,'password'=>sha1($request->password)])
            ->get();
            session(['adminData'=>$adminData]);
            if($request->has('rememberme')){
                Cookie::queue('adminuser',$request->email,1440);
                Cookie::queue('adminpwd',$request->password,1440);

            }
            return redirect('admin');
        }else{
            return redirect('admin/login')->with('msg','Invalid Email/Password');
        }
    }

    
    //logout
    function logout(){
        session()->forget(['adminData']);
        return redirect('admin');
    }

    function dashboard(){
        $bookings=Booking::selectRaw('count(id) as total_bookings,checkin_date')->groupBy('checkin_date')->get();
        $labels=[];
        $data=[];
    foreach($bookings as $booking){
        $labels[]=$booking['checkin_date'];
        $data[]=$booking['total_bookings'];

    }   

    //piecharto
    $rtbookings=DB::table('room_types as rt')
    ->join('rooms as r','r.room_type_id','=','rt.id')
    ->join('bookings as b','b.room_id','=','r.id')
    ->select('rt.*','r.*','b.*',DB::raw('count(b.id) as total_bookings'))
    ->groupBy('r.room_type_id')
    ->get();
    $plabels=[];
    $pdata=[];
    foreach($rtbookings as $rbooking){
        $plabels[]=$rbooking->title;
        $pdata[]=$rbooking->total_bookings;

    } 

        return view('dashboard',['labels'=>$labels,'data'=>$data,'plabels'=>$plabels,'pdata'=>$pdata]);
    }
}
