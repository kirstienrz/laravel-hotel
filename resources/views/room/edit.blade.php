
@extends('layout')
@section('body')
 <!-- Begin Page Content -->
 <div class="container-fluid">
<!-- DataTales Bootstrap -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Add Room           
            <a href="{{url('admin/rooms')}}" class="float-right btn btn-success btn-sm"><i class="fas fa-angle-double-right"></i> View all</a>
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
        <form action="{{url('admin/rooms/'.$data->id)}}" method="post">
        @csrf
        @method('put')
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <tr>
                        <th>Select Room Types</th>
                        <td>
                            <select class="form-control" name="rtid">
                                <option value="0" class="text-center">--- Select Available Roomtypes ---</option>
                                @foreach($roomtypes as $roomt)
                                <option class="text-center" @if($data->room_type_id==$roomt->id) selected @endif value="{{$roomt->id}}">{{$roomt->title}}</option>
                                @endforeach
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>Room ID</th>
                        <td><input value="{{($data->title)}}" type="text" class="form-control" name="title" id=""></td>
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

