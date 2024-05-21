<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Models\RoomType;



use \Yajra\DataTables\DataTables;
class RoomtypeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
{   
    if($request->ajax()){
        $data = RoomType::select('*');
        return DataTables::of($data)
            ->addIndexColumn()
            ->addColumn('action', function($row){
                $actionBtn = '<a class="btn btn-primary btn-sm" href="'.url('admin/roomtype/'.$row->id).'"><i class="fa fa-eye"></i></a>
                              <a class="btn btn-info btn-sm" href="'.url('admin/roomtype/'.$row->id).'/edit"><i class="fa fa-edit"></i></a>
                              <a class="btn btn-danger btn-sm" onclick="return confirm(\'Are you sure you want to delete this data?\')" href="'.url('admin/roomtype/'.$row->id).'/delete"><i class="fa fa-trash"></i></a>';
                return $actionBtn;
            })
            ->rawColumns(['action'])
            ->make(true);
    }

    $data = RoomType::all();
    return view('roomtype.index',['data'=>$data]);
}


    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('roomtype.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'images.*' => 'required|image|mimes:png,jpg,jpeg,webp',
            'price' => 'required|numeric',
            'title' => 'required',
            'detail' => 'required',
        ]);
    
        // Store the images
        $imagePaths = [];
        foreach ($request->file('images') as $image) {
            $imagePath = str_replace('public/', '', $image->store('public/imgs'));
            $imagePaths[] = $imagePath;
        }
    
        // Create and save RoomType instance
        $data = new RoomType;
        $data->title = $request->title;
        $data->price = $request->price;
        $data->detail = $request->detail;
        $data->image = json_encode($imagePaths); // Store paths as JSON or in another appropriate format
        $data->save();
    
        return redirect('admin/roomtype/create')->with('success', 'Data successfully added');
    }
    /**
     * Display the specified resource.
     */
    public function show( $id)
    {
        $data=RoomType::find($id);
        return view('roomtype.view',['data'=>$data]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit( $id)
    {
        
        $data=RoomType::find($id);
        return view('roomtype.edit',['data'=>$data]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'images.*' => 'nullable|image|mimes:png,jpg,jpeg,webp',
            'price' => 'required|numeric',
            'title' => 'required',
            'detail' => 'required',
        ]);
    
        // Retrieve the existing room type
        $data = RoomType::find($id);
    
        // Store the new image paths
        $newImagePaths = [];
        if ($request->hasFile('images')) {
            foreach ($request->file('images') as $image) {
                $imagePath = str_replace('public/', '', $image->store('public/imgs'));
                $newImagePaths[] = $imagePath;
            }
        }
    
        // Delete old images that are not used anymore
        if ($data->image && isset($newImagePaths)) {
            $oldImagePaths = json_decode($data->image, true);
            $imagesToDelete = array_diff($oldImagePaths, $newImagePaths);
            foreach ($imagesToDelete as $imageToDelete) {
                if (Storage::exists('public/' . $imageToDelete)) {
                    Storage::delete('public/' . $imageToDelete);
                }
            }
        }
    
        // Update RoomType instance
        $data->title = $request->title;
        $data->price = $request->price;
        $data->detail = $request->detail;
        $data->image = isset($newImagePaths) ? json_encode($newImagePaths) : $data->image;
        $data->save();
        
        return redirect('admin/roomtype/'.$id.'/edit')->with('success', 'Data has been successfully Updated');
    }
    


    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        // Retrieve the room type data
        $roomType = RoomType::findOrFail($id);
    
        // Delete the associated images from storage
        if ($roomType->image) {
            $imagePaths = json_decode($roomType->image, true);
            foreach ($imagePaths as $imagePath) {
                if (Storage::exists('public/' . $imagePath)) {
                    Storage::delete('public/' . $imagePath);
                }
            }
        }
    
        // Delete the room type record from the database
        $roomType->delete();
    
        return redirect('admin/roomtype/')->with('success', 'Data has been deleted');
    }
}
