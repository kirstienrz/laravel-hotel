
@extends('layout')
@section('body')
 <!-- Begin Page Content -->
 <div class="container-fluid">
<!-- DataTales Bootstrap -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Edit Staff Information           
            <a href="{{url('admin/staff')}}" class="float-right btn btn-success btn-sm"><i class="fas fa-angle-double-right"></i> View all</a>
        </h6>
    </div>
    <div class="card-body">
        @if($errors->any())
            @foreach($errors->all() as $error)
            <p class="text-danger">{{$error}}</p>
            @endforeach
        @endif

        @if(Session::has('success'))
        <p class="text-success">{{session('success')}}</p>
        @endif
        <form action="{{ url('admin/staff/'.$data->id) }}" method="post" enctype="multipart/form-data">
            @csrf
            @method('put')
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <tr>
                    <th>Select Department</th>
                        <td>
                            <select class="form-control" name="department_id">
                                <option value="0" class="text-center">--- Select Department ---</option>
                                @foreach($departs as $dep)
                                <option @if($data->department_id==$dep->id) selected @endif value="{{$dep->id}}">{{$dep->title}}</option>
                                @endforeach
                            </select>
                        </td>
                    </tr>
                
                    <tr>
                        <th>Full Name <span class="text-danger">*</span></th>
                        <td><input type="text" value="{{$data->fullName}}" class="form-control" name="fullName" id=""></td>
                    </tr>
                    <tr>
                        <th>Profile</th>
                        <td>
                            @if(empty($data->photo))
                                <input type="file" class="form-control" name="photo" id="">
                                <input type="hidden" name="prev_photo" value="{{$data->photo}}">
                                <img  class="img-thumbnail" width=200 src="{{asset('/blank.jpg')}}" alt="Image">
                            @else
                                <input type="file" class="form-control" name="photo" id="">
                                <input type="hidden" name="prev_photo" value="{{$data->photo}}">
                                <img  class="img-thumbnail" width=200 src="{{ asset(str_replace('public', 'storage', $data->photo)) }}" alt="Image">
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <th>Biodata</th>
                        <td><textarea class="form-control" value="{{$data->bio}}" name="bio" id=""></textarea></td>
                    </tr>
                    <tr>
                        <th>Salary Type <span class="text-danger">*</span></th>
                        <td>
                            <label>
                                <input type="radio" name="salary_type" value="Daily" {{ $data->salary_type == 'Daily' ? 'checked' : '' }}> Daily
                            </label>
                            <label>
                                <input type="radio" name="salary_type" value="Monthly" {{ $data->salary_type == 'Monthly' ? 'checked' : '' }}> Monthly
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <th>Salary <span class="text-danger">*</span></th>
                        <td><input type="number" value="{{$data->salary_amt}}" class="form-control" name="salary_amt" id=""></td>
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

