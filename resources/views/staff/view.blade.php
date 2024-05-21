
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
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <tr>
                        <th>Department</th>
                        <td class="text-primary">{{$data->department->title}}</td>  
                    </tr>
                    <tr>
                        <th>Profile</th>
                        <td class="text-center">
                            @if(empty($data->photo))
                                <img class="img-thumbnail" width="150" src="{{ asset('/blank.jpg') }}" alt="Image">
                            @else
                                <img class="img-thumbnail" width="150" src="{{ asset(str_replace('public', 'storage', $data->photo)) }}" alt="Image">
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <th>Full Name</th>
                        <td>{{$data->fullName}}</td>
                    </tr>
                    <tr>
                        <th>Biodata</th>
                        <td>{{$data->bio}}</td>
                    </tr>
                    <tr>
                        <th>Salary Type</th>
                        <td>{{$data->salary_type}}</td>
                    </tr>
                    <tr>
                        <th>Salary</th>
                        <td>{{$data->salary_amt}}</td>                    
                    </tr>
            </table>
        </div>
    </div>
</div>

@endsection

