
<meta name="csrf-token" content="{{ csrf_token() }}">
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.datatables.net/1.11.4/css/dataTables.bootstrap5.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>  
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>
<script src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.11.4/js/dataTables.bootstrap5.min.js"></script>
@extends('layout')
@section('body')
 <!-- Begin Page Content -->
 <div class="container-fluid">
<!-- DataTales Bootstrap -->
<div class="card shadow mb-4">
    <div class="card-header py-3" >
        <h6 class="m-0 font-weight-bold text-primary"> Add New
            <a href="{{url('admin/rooms/create')}}" class="float-right btn btn-success btn-sm"><i class="fa fa-plus"></i> Add New</a>
        </h6>
    </div>
    <div class="card-body">
        @if(Session::has('success'))
        <p class="text-danger">{{session('success')}}</p>
        @endif
        <div class="table-responsive">
            <table class="table table-bordered data-table" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Room Type</th>
                        <th>Room ID</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>#</th>
                        <th>Room Type</th>
                        <th>Room ID</th>
                        <th>Action</th>
                    </tr>
                </tfoot>
                <tbody>
                    @if($data)
                        @foreach($data as $i)
                        <tr>
                            <td>{{$i->id}}</td>
                            <td>{{ optional($i->roomtype)->title }}</td> 
                            <td>{{$i->title}}</td>
                            <td class="text-center">
                                <a class="btn btn-primary btn-sm" href="{{url('admin/rooms/'.$i->id)}}"><i class="fa fa-eye"></i></a>
                                <a class="btn btn-info btn-sm" href="{{url('admin/rooms/'.$i->id).'/edit'}}"><i class="fa fa-edit"></i></a>
                                <a class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this data?')" href="{{url('admin/rooms/'.$i->id).'/delete'}}"><i class="fa fa-trash"></i></a>
                            </td>
                        </tr>
                        @endforeach
                    @endif
                </tbody>
            </table>
        </div>
    </div>
</div>

<script type="text/javascript">
$(function(){
    var table = $('.data-table').DataTable({
        processing: true,
        serverSide:true,
        ajax:{
            url:"{{route('rooms.index')}}"
        },
        columns:[
            {data:'id',name:'id'},
            {data:'roomtype.title',name:'roomtype.title'}, 
            {data:'title',name:'title'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
            // {data:'created_at',name:'created_at'}
        ]
    });
});
</script>
    @section('js')
    <!-- Custom styles for this page -->
    <link href="{{asset('')}}/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <!-- Page level plugins -->
    <script src="{{asset('')}}/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="{{asset('')}}/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="{{asset('')}}/js/demo/datatables-demo.js"></script>

@endsection
@endsection

