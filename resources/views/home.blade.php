@extends('frontlayout')
@section('content')
<!-- swiper -->
<div id="carouselExample" class="carousel slide">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="{{asset('storage/imgs/banner1.jpg')}}" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="{{asset('storage/imgs/banner2.jpg')}}" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="{{asset('storage/imgs/banner3.jpg')}}" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<!-- service -->
<div class="container mt-4">
  <h1 class="text-center border-bottom">Services</h1>
  <div class="row mt-4" style="box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); padding: 10px;">
      <div class="col-md-4">
        <img src="{{asset('storage/imgs/sample.jpg')}}" height=200 class="card-img-top" alt="...">
      </div>
      <div class="col-md-8">
         <h3>Service Heading</h3>
         <p>akshdkashdklajskdjaslkfjakfjakljfaajshfkjashfjkasfasdlajskd
          asflkaslfa.
         </p>
         <p>
            <a href="" class="btn btn-primary"> Read More</a>
         </p>
      </div>
  </div>
  <div class="row mt-4" style="box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); padding: 10px;">
      <div class="col-md-4">
        <img src="{{asset('storage/imgs/sample.jpg')}}" height=200 class="card-img-top" alt="...">
      </div>
      <div class="col-md-8">
         <h3>Service Heading</h3>
         <p>akshdkashdklajskdjaslkfjakfjakljfaajshfkjashfjkasfasdlajskd
          asflkaslfa.
         </p>
         <p>
            <a href="" class="btn btn-primary"> Read More</a>
         </p>
      </div>
  </div>
</div>

<!-- Gallery -->


<div class="container my-4">
    <h1 class="text-center border-bottom">Gallery</h1>
    <div class="row my-4">
    @foreach($roomTypes as $rtype)
    @if($rtype->image and $rtype->title)
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-header">{{$rtype->title}}</h5>
                    @if(!empty($rtype->image))
                        <div id="carousel{{$rtype->id}}" class="carousel slide carousel-fade mx-auto" style="max-width: 400px;">
                            <div class="carousel-inner">
                                @foreach(json_decode($rtype->image) as $key => $imagePath)
                                    <div class="carousel-item {{ $key === 0 ? 'active' : '' }} w-100">
                                        <img src="{{ asset('storage/' . $imagePath) }}" class="img-thumbnail d-block w-100" alt="Image">
                                    </div>
                                @endforeach
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carousel{{$rtype->id}}" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carousel{{$rtype->id}}" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    @else
                        <p>No images available</p>
                    @endif
                </div>
            </div>
        </div>
    @endif
@endforeach



    </div>
</div>
<script src="{{asset('bootstrap/bootstrap.bundle.min.js')}}" type="text/javascript"></script>
</body>
</html>

@endsection