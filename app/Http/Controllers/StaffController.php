<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Staff;
use App\Models\Department;
use App\Models\StaffPayment;


use \Yajra\DataTables\DataTables;

class StaffController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {    
        if ($request->ajax()) {
            $data = Staff::with('department')->select('*'); // Eager load the 'Roomtype' relationship
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('departs', function ($row) {
                    return $row->department->title; // Access title from the related department
                })
                ->addColumn('action', function ($row) {
                    $actionBtn = '
                            <td class="text-center">
                                <a class="btn btn-primary btn-sm" href="' . url('admin/staff/' . $row->id) . '"><i class="fa fa-eye"></i></a>
                                <a class="btn btn-info btn-sm" href="' . url('admin/staff/' . $row->id . '/edit') . '"><i class="fa fa-edit"></i></a>
                                <a class="btn btn-danger btn-sm" onclick="return confirm(\'Are you sure you want to delete this data?\')" href="' . url('admin/staff/' . $row->id . '/delete') . '"><i class="fa fa-trash"></i></a>
                            </td>';                           
                            
                    return $actionBtn ;
                    
                })
                
                ->rawColumns(['action'])
                ->make(true);
        }
        
        $data = Staff::all();
        return view('staff.index', ['data' => $data]);
    }
    

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $departs=Department::all();
        return view('staff.create',['departs'=>$departs]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'fullName' => 'required',
            'salary_amt' => 'required',
            'salary_type' => 'required',
            'photo' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048', // Add validation for photo
        ]);
    
        $data = new Staff;
        $img_path = $request->file('photo')->store('public/imgs'); // Corrected variable assignment
        $data->fullName = $request->fullName;
        $data->photo = $img_path; // Corrected assignment
        $data->bio = $request->bio;
        $data->salary_amt = $request->salary_amt;
        $data->salary_type = $request->salary_type;
        $data->department_id = $request->department_id;
    
        $data->save();
    
        return redirect('admin/staff/create')->with('success', 'Data successfully added');
    }

    /**
     * Display the specified resource.
     */
    public function show( $id)
    {

        $data=Staff::find($id);
        return view('staff.view',['data'=>$data]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit( $id)
    {
        $departs=Department::all();
        $data=Staff::find($id);
        return view('staff.edit',['data'=>$data,'departs'=>$departs]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'fullName' => 'required',
            'salary_amt' => 'required',
            'salary_type' => 'required',
            'photo' => 'image|mimes:jpeg,png,jpg,gif|max:2048', // Add validation for photo
        ]);
        if($request->hasfile('photo')){
            $img_path=$request->file('photo')->store('public/imgs');
        }else{
            $img_path=$request->prev_photo;
        }       
        $data=Staff::find($id);
        $data->fullName = $request->fullName;
        $data->photo = $img_path; // Corrected assignment
        $data->bio = $request->bio;
        $data->salary_amt = $request->salary_amt;
        $data->salary_type = $request->salary_type;
        $data->department_id = $request->department_id;
    
        $data->save();
    
        
        return redirect('admin/staff/'.$id.'/edit')->with('success','Data has been successfully Updated');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy( $id)
    {
        Staff::where('id',$id)->delete();
        return redirect('admin/staff/')->with('success','Data has been deleted');

    }
    //payment history
    function history_payments(Request $request, $id) {
        $data = StaffPayment::where('staff_id', $id)->get();
        $staff = Staff::find($id);
        return view('staffpayment.index', ['staff_id' => $id, 'data' => $data, 'staff' => $staff]);
    }

    //add payment
    function add_payment($staff_id){
        return view('staffpayment.create',['staff_id'=>$staff_id]);

    }

    function save_payment(Request $request, $staff_id) {
        $request->validate([
            'amount' => 'required', // Add validation rules for the amount field
            'amount_date' => 'required', // Add validation rules for the amount_date field
        ]);
    
        $data = new StaffPayment;
        $data->staff_id = $staff_id;
        $data->amount = $request->amount;
        $data->payment_date = $request->amount_date;
        $data->save();
    
        return redirect('admin/staff/payment/'.$staff_id.'/add')->with('success', 'Staff Payment successful');
    }

    public function delete_payment($id, $staff_id)
    {
        StaffPayment::where('id', $id)->delete();
        return redirect('admin/staff/payments/'.$staff_id)->with('success', 'Data has been deleted');
    }
}
