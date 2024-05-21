<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Department;

use \Yajra\DataTables\DataTables;

class StaffDep extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {    
        if ($request->ajax()) {
            $data = Department::select('*'); // Eager load the 'Roomtype' relationship
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($row) {
                    $actionBtn = '
                            <td class="text-center">
                                <a class="btn btn-primary btn-sm" href="' . url('admin/department/' . $row->id) . '"><i class="fa fa-eye"></i></a>
                                <a class="btn btn-info btn-sm" href="' . url('admin/department/' . $row->id . '/edit') . '"><i class="fa fa-edit"></i></a>
                                <a class="btn btn-danger btn-sm" onclick="return confirm(\'Are you sure you want to delete this data?\')" href="' . url('admin/department/' . $row->id . '/delete') . '"><i class="fa fa-trash"></i></a>
                            </td>';
                    return $actionBtn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        
        $data = Department::all();
        return view('department.index', ['data' => $data]);
    }
    

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('department.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'title'=>'required',
            'detail'=>'required',
        ]);

        $data=new Department;
        $data->title=$request->title;
        $data->detail=$request->detail;
        $data->save();

        return redirect('admin/department/create')->with('success','Data successfully added');
    }

    /**
     * Display the specified resource.
     */
    public function show( $id)
    {

        $data=Department::find($id);
        return view('department.view',['data'=>$data]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit( $id)
    {
        $data=Department::find($id);
        return view('department.edit',['data'=>$data]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'title'=>'required',
            'detail'=>'required',
        ]);
        $data=Department::find($id);
        $data->title=$request->title;
        $data->detail=$request->detail;
        // $data->detail=$request->detail;
        $data->save();
        
        return redirect('admin/department/'.$id.'/edit')->with('success','Data has been successfully Updated');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy( $id)
    {
        Department::where('id',$id)->delete();
        return redirect('admin/department/')->with('success','Data has been deleted');

    }
}
