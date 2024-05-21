
@extends('layout')
@section('body')
 <!-- Begin Page Content -->
 <div class="container-fluid">
<!-- DataTales Bootstrap -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Customers        
            <a href="{{url('admin/customer')}}" class="float-right btn btn-success btn-sm"><i class="fas fa-angle-double-right"></i> View all</a>
        </h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <tr>
                    @if(empty($data->photo))
                    <th>Profile</th>
                    <td><img  class="img-thumbnail" width=300 src="{{asset('/blank.jpg')}}" alt="Image"></td>
                    @else
                    <th>Profile</th>
                    <td><img  class="img-thumbnail" width=300 src="{{ asset(str_replace('public', 'storage', $data->photo)) }}" alt="Image"></td>
                    @endif
                </tr>
                <tr>
                    <th>Full Name</th>
                    <td>{{($data->fullName)}}</td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td>{{($data->email)}}</td>
                </tr>
                <tr>
                    <th>Contact No.</th>
                    <td>{{($data->phone)}}</td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td>{{($data->address)}}</td>
                </tr>
            </table>
        </div>
    </div>
</div>

@endsection

