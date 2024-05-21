
@extends('layout')
@section('body')
 <!-- Begin Page Content -->
 <div class="container-fluid">
<!-- DataTales Bootstrap -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Add Staff          
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
        <form action="{{url('admin/staff')}}" method="post" enctype="multipart/form-data">
        @csrf
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <tr>
                        <th>Select Department <span class="text-danger">*</span></th>
                        <td>
                            <select class="form-control" name="department_id">
                                <option value="0" class="text-center">--- Select Department ---</option>
                                @foreach($departs as $dep)
                                <option value="{{$dep->id}}">{{$dep->title}}</option>
                                @endforeach
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>Full Name <span class="text-danger">*</span></th>
                        <td><input type="text" class="form-control" name="fullName" id=""></td>
                    </tr>
                    <tr>
                        <th>Profile</th>
                        <td><input type="file" class="form-control" name="photo" id=""></td>
                    </tr>
                    <tr>
                        <th>Biodata</th>
                        <td><textarea class="form-control" name="bio" id=""></textarea></td>
                    </tr>
                    <tr>
                        <th>Salary Type <span class="text-danger">*</span></th>
                        <td>
                            <input type="radio" name="salary_type" value="Daily"> Daily
                            <input type="radio" name="salary_type" value="Monthly"> Monthly
                        </td>
                    </tr>
                    <tr>
                        <th>Salary <span class="text-danger">*</span></th>
                        <td><input type="number" class="form-control" name="salary_amt" id=""></td>
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

