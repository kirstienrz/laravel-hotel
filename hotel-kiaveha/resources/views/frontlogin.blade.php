@extends('frontlayout')
@section('content')
<div class="container my-5">
    <h3 class="mb-3">Login</h3>
    <form action="{{ url('customer/login') }}" method="post">
        @csrf
        <table class="table table-bordered">
        @if($errors->any())
            @foreach($errors->all() as $error)
            <p class="text-danger">{{$error}}</p>
            @endforeach
        @endif

        @if(Session::has('success'))
            <p class="text-success">{{session('success')}}</p>
        @endif
            <tr>
                <th>Email<span class="text-danger">*</span></th>
                <td><input type="email" class="form-control" name="email"></td>
            </tr>
            <tr>
                <th>Password <span class="text-danger">*</span></th>
                <td><input type="password" class="form-control" name="password"></td>
            </tr>
            <tr>
                <input type="hidden" name="ref" value="front">
                <td colspan="2"><input type="submit" class="btn btn-primary" ></td>
            </tr>
        </table>
    </form>
</div>
@endsection
