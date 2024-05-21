<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
use App\Models\Customer;
use Illuminate\Support\Facades\Storage;
use Validator;
use Auth;

use \Yajra\DataTables\DataTables;

class CustomerController extends Controller
{
     /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {  
        if($request->ajax()){
            $data = Customer::select('*');
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function($row){
                    $actionBtn = '
                            <div class="text-center">
                                <a class="btn btn-primary btn-sm" href="' . url('admin/customer/' . $row->id) . '"><i class="fa fa-eye"></i></a>
                                <a class="btn btn-info btn-sm" href="' . url('admin/customer/' . $row->id . '/edit') . '"><i class="fa fa-edit"></i></a>
                                <a class="btn btn-danger btn-sm" onclick="return confirm(\'Are you sure you want to delete this data?\')" href="' . url('admin/customer/' . $row->id . '/delete') . '"><i class="fa fa-trash"></i></a>
                            </div>';
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        $data = Customer::all();
        return view('customer.index', ['data' => $data]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('customer.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'fullName'=>'required',
            'email'=>'required|email',
            'password'=>'required',
            'address'=>'required',
            // 'photo' => 'nullable|image',
        ]);
        if ($request->hasFile('photo')) {
            $img_path = $request->file('photo')->store('public/imgs');
            $data=new Customer;
            $data->fullName=$request->fullName;
            $data->email=$request->email;
            $data->password=bcrypt($request->password);
            $data->phone=$request->contact;
            $data->address=$request->address;
            $data->photo=$img_path;
            $data->save();
        } else {
            return redirect()->back()->withInput()->with('error', 'Email Already Exist');
        }

            // $img_path=$request->file('photo')->store('public/imgs');
            // $existingCustomer = Customer::where('email', $request->email)->first();

            // if ($existingCustomer) {
            //     return redirect()->back()->withInput()->with('error', 'Email already exists');
            // }
        // $data=new Customer;
        // $data->fullName=$request->fullName;
        // $data->email=$request->email;
        // $data->password=bcrypt($request->password);
        // $data->phone=$request->contact;
        // $data->address=$request->address;
        // $data->photo=$img_path;
        // $data->save();

        $ref=$request->ref;
        if($ref=='front'){
            return redirect('register')->with('success','Data successfully added');

        }
        
        return redirect('admin/customer/create')->with('success','Data successfully added');
    }

    /**
     * Display the specified resource.
     */
    public function show( $id)
    {
        $data=Customer::find($id);
        return view('customer.view',['data'=>$data]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit( $id)
    {
        
        $data=Customer::find($id);
        return view('customer.edit',['data'=>$data]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'fullName'=>'required',
            'email'=>'required|email',
            'phone'=>'contact',
            'address'=>'required',
        ]);
        if($request->hasfile('photo')){
            $img_path=$request->file('photo')->store('public/imgs');
        }else{
            $img_path=$request->prev_photo;
        }
        $data= Customer::find($id);
        $data->fullName=$request->fullName;
        $data->email=$request->email;
        $data->password=sha1($request->password);
        $data->phone=$request->contact;
        $data->address=$request->address;
        $data->photo=$img_path;
        $data->save();

        return redirect('admin/customer/'.$id.'/edit')->with('success','Data successfully Updated');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy( $id)
    {
        // Customer::where('id',$id)->delete();
        $customer = Customer::findOrFail($id);
        if ($customer->photo) {
            Storage::delete($customer->photo); // Assuming 'photo' column stores the image path
        }
    
        // Delete the customer data from the database
        $customer->delete();
        return redirect('admin/customer/')->with('success','Data has been deleted');

    }

    //login


    function customer_login(Request $request){
        $email = $request->email;
        $pwd = sha1($request->password); // Hashing the password
    
        $detail = Customer::where(['email' => $email, 'password' => $pwd])->count();
    
        if ($detail > 0) { 
            $detail = Customer::where(['email' => $email, 'password' => $pwd])->get();
            session(['customerlogin'=>true, 'data'=>$detail]); 
            return redirect('/');
        } else {
            return redirect('login')->with('error', 'Invalid credentials');
        }
    }
    
    function login(){
        return view('frontlogin');
    }
    //register
    function register(){
        return view('register');
    }



    function logout(){
        return redirect('login')->with('error', 'Invalid credentials');
    }

}
