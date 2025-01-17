<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="{{asset('bootstrap/bootstrap.min.css')}}" rel="stylesheet">
    <title>Home Page</title>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">KIAVEHA HOTEL</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="{{('home')}}">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Services</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Gallery</a>
        </li>
        @if(Session::has('customerlogin'))
        <li class="nav-it em">
          <a class="btn-danger nav-link" href="{{url('logout')}}">Logout</a>
          <a class="btn-danger nav-link" href="{{url('booking')}}">Booking</a>

        </li>
        @else
        <li class="nav-item">
            <a class="btn-danger nav-link" href="{{url('booking')}}">Booking</a>
        </li>
        <li class="nav-item">
            <a class="btn-danger nav-link" href="{{url('register')}}">Register</a>
        </li>
        <li class="nav-item">
          <a class="btn-danger nav-link" href="{{url('login')}}">Login</a>
        </li>
        @endif
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

    </div>
</div>
<main>

    @yield('content')
</main>
<script src="{{asset('bootstrap/bootstrap.bundle.min.js')}}" type="text/javascript"></script>
</body>
</html>
