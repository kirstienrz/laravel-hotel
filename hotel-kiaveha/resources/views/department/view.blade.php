
@extends('layout')
@section('body')
 <!-- Begin Page Content -->
 <div class="container-fluid">
<!-- DataTales Bootstrap -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Add Room           
            <a href="{{url('admin/department')}}" class="float-right btn btn-success btn-sm"><i class="fas fa-angle-double-right"></i> View all</a>
        </h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <tr>
                    <th>Department</th>
                    <td class="text-primary text-bold">{{$data->title}}</td>
                </tr>
                <tr>
                    <th>Details</th>
                    <td>{{$data->detail}}</td>
                </tr>
            </table>
        </div>
    </div>
</div>

@endsection

