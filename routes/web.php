
<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RoomtypeController;
use App\Http\Controllers\BookingController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\RoomController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\StaffDep;
use App\Http\Controllers\StaffController;
use App\Http\Controllers\HomeController;


Route::get('home', [HomeController::class, 'home']);


//admin login
Route::get('admin/login',[AdminController::class,'login']);
Route::post('admin/login',[AdminController::class,'check_login']);
Route::get('admin/logout',[AdminController::class,'logout']);


Route::get('admin', function () {
    return view('dashboard');
});

// Customer routes
Route::resource('admin/customer',CustomerController::class);
Route::get('admin/customer/{id}/delete', [CustomerController::class, 'destroy'])->name('customer.delete');


// Room type routes
Route::resource('admin/roomtype',RoomtypeController::class);
Route::get('admin/roomtype/{id}/delete',[RoomtypeController::class,'destroy'])->name('roomtype.delete');

// Room routes
Route::resource('admin/rooms',RoomController::class);
Route::get('admin/rooms/{id}/delete',[RoomController::class,'destroy'])->name('room.delete');

// Dep routes
Route::resource('admin/department',StaffDep::class);
Route::get('admin/department/{id}/delete',[StaffDep::class,'destroy'])->name('department.delete');

// Employee routes
Route::resource('admin/staff',StaffController::class);
Route::get('admin/staff/{id}/delete',[StaffController::class,'destroy'])->name('staff.delete');

//payment
Route::get('admin/staff/payment/{id}/{staff_id}/delete', [StaffController::class, 'delete_payment']);
Route::get('admin/staff/payments/{id}',[StaffController::class,'history_payments']);
Route::get('admin/staff/payment/{id}/add',[StaffController::class,'add_payment']);
Route::post('admin/staff/payment/{id}',[StaffController::class,'save_payment']);

// Booking routes
Route::resource('admin/booking',BookingController::class);
Route::get('admin/booking/{id}/delete',[BookingController::class,'destroy'])->name('booking.delete');
Route::get('admin/booking/available-rooms/{checkin_date}',[BookingController::class,'available_rooms']);

//admin Dashboard
Route::get('admin',[AdminController::class,'dashboard']);

Route::get('booking',[BookingController::class,'front_booking']);

Route::get('login',[CustomerController::class,'login']);
Route::post('customer/login',[CustomerController::class,'customer_login']);
Route::get('register',[CustomerController::class,'register']);
Route::get('logout',[CustomerController::class,'logout']);


Route::get('booking',[BookingController::class,'front_booking']);





	

