
@extends('layout')
@section('body')
 <!-- Begin Page Content -->
 <div class="container-fluid">
<!-- DataTales Bootstrap -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Upload Customer           
            <a href="{{url('admin/customer')}}" class="float-right btn btn-success btn-sm"><i class="fas fa-angle-double-right"></i> View all</a>
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
        <form enctype="multipart/form-data" action="{{url('admin/customer')}}" method="post">
        @csrf
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <tr>
                        <th>Full Name <span class="text-danger">*</span></th>
                        <td><input type="text" class="form-control" name="fullName" id=""></td>
                    </tr>
                    <tr>
                        <th>Email <span class="text-danger">*</span></th>
                        <td><input type="email" class="form-control" name="email" id=""></td>
                        @if(Session::has('error'))
                            <p class="text-danger">{{session('error')}}</p>
                        @endif
                    </tr>
                    <tr>
                        <th>Password <span class="text-danger">*</span></th>
                        <td><input type="password" class="form-control" name="password" id=""></td>
                    </tr>
                    <tr>
                        <th>Phone No. <span class="text-danger">*</span></th>
                        <td><input type="text" class="form-control" name="contact" id=""></td>
                    </tr>
                    <tr>
                        <th>Profile</th>
                        <td><input type="file" class="form-control" name="photo" id="formFile"></td>
                    </tr>
                    <tr>
                        <th>Address <span class="text-danger">*</span></th>
                        <td><input type="text" class="form-control" name="address" id=""></td>
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

