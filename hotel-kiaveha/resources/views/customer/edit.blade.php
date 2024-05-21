
@extends('layout')
@section('body')
 <!-- Begin Page Content -->
 <div class="container-fluid">
<!-- DataTales Bootstrap -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Update Customer Information          
            <a href="{{url('admin/customer')}}" class="float-right btn btn-success btn-sm"><i class="fas fa-angle-double-right"></i> View all</a>
        </h6>
    </div>
    <div class="card-body">
        @if(Session::has('success'))
        <p class="text-success">{{session('success')}}</p>
        @endif
        <form enctype="multipart/form-data" action="{{url('admin/customer/'.$data->id)}}" method="post">
        @csrf
        @method('put')
            <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <tr>
                        <th>Full Name <span class="text-danger">*</span></th>
                        <td><input type="text" value="{{$data->fullName}}" class="form-control" name="fullName" id=""></td>
                    </tr>
                    <tr>
                        <th>Email <span class="text-danger">*</span></th>
                        <td><input type="email" value="{{$data->email}}" class="form-control" name="email" id=""></td>
                    </tr>
                    <tr>
                        <th>Phone No. <span class="text-danger">*</span></th>
                        <td><input type="text" value="{{$data->phone}}" class="form-control" name="contact" id=""></td>
                    </tr>
                    <tr>
                        <th>Profile</th>
                        <td>
                            @if(empty($data->photo))
                                <input type="file" class="form-control" name="photo" id="">
                                <input type="hidden" name="prev_photo" value="{{$data->photo}}">
                                <img  class="img-thumbnail" width=300 src="{{asset('/blank.jpg')}}" alt="Image">
                            @else
                                <input type="file" class="form-control" name="photo" id="">
                                <input type="hidden" name="prev_photo" value="{{$data->photo}}">
                                <img  class="img-thumbnail" width=300 src="{{ asset(str_replace('public', 'storage', $data->photo)) }}" alt="Image">
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <th>Address <span class="text-danger">*</span></th>
                        <td><input type="text" value="{{$data->address}}" class="form-control" name="address" id=""></td>
                    </tr>
                    <tr>
                        <td dolspan="2">
                            <input type="submit" class="btn btn-primary">
                        </td>
                    </tr>
                </table>
            </div>
        </form>
    </div>
</div>

@endsection

