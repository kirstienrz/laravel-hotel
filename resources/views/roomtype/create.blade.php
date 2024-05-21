
@extends('layout')
@section('body')
 <!-- Begin Page Content -->
 <div class="container-fluid">
<!-- DataTales Bootstrap -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Create Room           
            <a href="{{url('admin/roomtype')}}" class="float-right btn btn-success btn-sm"><i class="fas fa-angle-double-right"></i> View all</a>
        </h6>
    </div>
    <div class="card-body">
        @if($errors->any())
            @foreach($errors->all() as $error)
            <p class=" text-danger">{{$error}}</p>
            @endforeach
        @endif
        @if(Session::has('success'))
        <p class=" alert text-success">{{session('success')}}</p>
        @endif
        <form action="{{url('admin/roomtype')}}" method="post" enctype="multipart/form-data">
        @csrf
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <tr>
                        <th>Title</th>
                        <td><input type="text" class="form-control" name="title" id=""></td>
                    </tr>
                    <tr>
                        <th>Gallery</th>
                        <td><input class="form-control" type="file" name="images[]" id=""  multiple accept=".jpg,.jpeg,.png,.gif"></td>
                    </tr>
                    <tr>
                        <th>Price</th>
                        <td><input type="number" class="form-control" name="price" id=""></td>
                    </tr>
                    <tr>
                        <th>Detail</th>
                        <td><textarea class="form-control" name="detail" id=""></textarea></td>
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

