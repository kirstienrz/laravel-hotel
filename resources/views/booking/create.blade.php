

@extends('layout')
@section('body')
 <!-- Begin Page Content -->
 <div class="container-fluid">
<!-- DataTales Bootstrap -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Bookings          
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
        <form enctype="multipart/form-data" action="{{url('admin/booking')}}" method="post">
        @csrf
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <tr>
                        <th>Customers <span class="text-danger">*</span></th>
                        <td>
                            <select name="customer_id" class="form-control">
                                <option class="text-center" value="">--- Select Customer ---</option>
                                @foreach($data as $customer)
                                    <option value="{{$customer->id}}">{{$customer->fullName}}</option>
                                @endforeach

                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>Check-in Date <span class="text-danger">*</span></th>
                        <td><input type="date" class="form-control checkin-date" name="checkin_date" id=""></td>
                        @if(Session::has('error'))
                            <p class="text-danger">{{session('error')}}</p>
                        @endif
                    </tr>

                    <tr>
                        <th>Check-out Date <span class="text-danger">*</span></th>
                        <td><input type="date" class="form-control checkout" name="checkout_date" id=""></td>                    
                    </tr>

                    <tr>
                        <th>Available Rooms <span class="text-danger">*</span></th>
                        <td>
                            <select name="room_id" class="form-control room-list">
             
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <th>Total Adults <span class="text-danger">*</span></th>
                        <td><input type="number" class="form-control" name="total_adults" id=""></td>
                    </tr>

                    <tr>
                        <th>Total Kids <span class="text-danger">*</span></th>
                        <td><input type="number" class="form-control" name="total_kids" id=""></td>
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

@section('js')
<script type="text/javascript">
 $(document).ready(function(){
        $(".checkin-date").on('blur',function(){
            var _checkin=$(this).val();

            $.ajax({
                url:"{{url('admin/booking')}}/available-rooms/"+_checkin,
                dataType:'json',
                beforeSend:function(){
                    $(".room-list").html('<option class="text-center">----- Loading -----</option>');
                },
                success:function(res){
                    var _html='';
                    $.each(res.data,function(index,row){
                        _html+='<option value="'+row.id+'">'+row.title+'</option>';
                    });
                    $(".room-list").html(_html);
                }
            });
        });
    });
    
</script>

@endsection
@endsection

