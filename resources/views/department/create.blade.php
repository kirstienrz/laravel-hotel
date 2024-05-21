
@extends('layout')
@section('body')
 <!-- Begin Page Content -->
 <div class="container-fluid">
<!-- DataTales Bootstrap -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Add Department         
            <a href="{{url('admin/department')}}" class="float-right btn btn-success btn-sm"><i class="fas fa-angle-double-right"></i> View all</a>
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
        <form action="{{url('admin/department')}}" method="post">
        @csrf
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <tr>
                        <th>Department</th>
                        <td><input type="text" class="form-control" name="title" id=""></td>
                    </tr>
                    <tr>
                        <th>Detail</th>
                        <td><textarea class="form-control" name="detail" id="" cols="30" rows="10"></textarea></td>
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

