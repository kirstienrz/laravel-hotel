<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RoomType;
use App\Models\Room;


use \Yajra\DataTables\DataTables;
class RoomController extends Controller
{
    /**
     * Display a listing of the resource.
     */public function index(Request $request)
{    
    if ($request->ajax()) {
        $data = Room::with('Roomtype')->select('*'); // Eager load the 'Roomtype' relationship
        return DataTables::of($data)
            ->addIndexColumn()
            ->addColumn('room_type', function ($row) {
                return $row->Roomtype->title; // Access title from related RoomType
            })
            ->addColumn('action', function ($row) {
                $actionBtn = '
                        <td class="text-center">
                            <a class="btn btn-primary btn-sm" href="' . url('admin/rooms/' . $row->id) . '"><i class="fa fa-eye"></i></a>
                            <a class="btn btn-info btn-sm" href="' . url('admin/rooms/' . $row->id . '/edit') . '"><i class="fa fa-edit"></i></a>
                            <a class="btn btn-danger btn-sm" onclick="return confirm(\'Are you sure you want to delete this data?\')" href="' . url('admin/rooms/' . $row->id . '/delete') . '"><i class="fa fa-trash"></i></a>
                        </td>';
                return $actionBtn;
            })
            ->rawColumns(['action'])
            ->make(true);
    }
    $roomtypes = RoomType::all(); // Fix variable name here
    $data = Room::all();
    return view('room.index', ['data' => $data, 'roomtypes' => $roomtypes]); // Fix variable name here
}

    

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $roomtypes=RoomType::all();
        return view('room.create',['roomtypes'=>$roomtypes]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'title'=>'required',
        ]);
        
        $data=new Room;
        $data->room_type_id=$request->rtid;
        $data->title=$request->title;
        $data->save();

        return redirect('admin/rooms/create')->with('success','Data successfully added');
    }

    /**
     * Display the specified resource.
     */
    public function show( $id)
    {

        $data=room::find($id);
        return view('room.view',['data'=>$data]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit( $id)
    {
        $roomtypes=RoomType::all();
        $data=Room::find($id);
        return view('room.edit',['data'=>$data,'roomtypes'=>$roomtypes]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'title'=>'required',
        ]);
        $data=Room::find($id);
        $data->room_type_id=$request->rtid;
        $data->title=$request->title;
        // $data->detail=$request->detail;
        $data->save();
        
        return redirect('admin/rooms/'.$id.'/edit')->with('success','Data has been successfully Updated');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy( $id)
    {
        Room::where('id',$id)->delete();
        return redirect('admin/rooms/')->with('success','Data has been deleted');

    }
}
