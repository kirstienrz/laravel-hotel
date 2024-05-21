@extends('frontlayout')
@section('content')
<div class="container my-5">
    <h3 class="mb-3">Register</h3>
    <form enctype="multipart/form-data" action="{{url('admin/customer')}}" method="post">
        @csrf
        <table class="table table-bordered">
        @if($errors->any())
            @foreach($errors->all() as $error)
            <p class="text-danger">{{$error}}</p>
            @endforeach
        @endif
        @if(Session::has('success'))
            <p class="text-danger">{{session('success')}}</p>
        @endif
            <tr>
                <th>Full Name <span class="text-danger">*</span></th>
                <td><input type="text" class="form-control" name="fullName"></td>
            </tr>
            <tr>
                <th>Email<span class="text-danger">*</span></th>
                <td><input type="email" class="form-control" name="email"></td>
            </tr>
            <tr>
                <th>Password<span class="text-danger">*</span></th>
                <td><input type="password" class="form-control" name="password"></td>
            </tr>
            <tr>
                <th>Mobile<span class="text-danger">*</span></th>
                <td><input type="text" class="form-control" name="contact"></td>
            </tr>
            <tr>
                <th>Address<span class="text-danger">*</span></th>
                <td><input type="text" class="form-control" name="address"></td>
            </tr>
            <tr>
                <th>Profile<span class="text-danger">*</span></th>
                <td><input type="file" class="form-control" name="photo" id="formFile"></td>
            </tr>
            <tr>
                <input type="hidden" name="ref" value="front">
                <td colspan="2"><input type="submit" class="btn btn-primary" ></td>
            </tr>
        </table>
    </form>
</div>
@endsection
