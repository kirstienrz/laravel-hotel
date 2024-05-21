@extends('layout')
@section('body')
 <!-- Begin Page Content -->
 <div class="container-fluid">
<!-- DataTales Bootstrap -->
<div class="card shadow mb-4">
    <div class="card-header py-3" >
        <h6 class="m-0 font-weight-bold text-primary">All Bookings
            <a href="{{url('admin/booking/create')}}" class="float-right btn btn-success btn-sm"><i class="fa fa-plus"></i> Add New</a>
        </h6>
    </div>
    <div class="card-body">
        @if(Session::has('success'))
        <p class="text-danger">{{session('success')}}</p>
        @endif
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Customer</th>
                        <th>Room No.</th>
                        <th>Room Type</th>
                        <th>CheckIn Date</th>
                        <th>CheckOut Date</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($data as $booking)
                        <tr>
                        <td>{{$booking->id}}</td>
<td>{{ optional($booking->customer)->fullName }}</td>
<td>{{ optional($booking->room)->title }}</td>
<td>{{ optional(optional($booking->room)->Roomtype)->title }}</td>
<td>{{$booking->checkin_date}}</td>
<td>{{$booking->checkout_date}}</td>
<td>

                            <td>
                                <a class="btn btn-primary btn-sm" href="{{url('admin/customer/'.$booking->id)}}"><i class="fa fa-eye"></i></a>
                                <a class="btn btn-info btn-sm" href="{{url('admin/customer/'.$booking->id).'/edit'}}"><i class="fa fa-edit"></i></a>
                                <a class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this data?')" href="{{url('admin/customer/'.$booking->id).'/delete'}}"><i class="fa fa-trash"></i></a>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>
@endsection

@section('js')
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <!-- DataTables -->
    <script src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.4/js/dataTables.bootstrap5.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#dataTable').DataTable();
        });
    </script>
@endsection
