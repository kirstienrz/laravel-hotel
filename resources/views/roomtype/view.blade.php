
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
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <tr>
                    <th>Title</th>
                    <td>{{($data->title)}}</td>
                </tr>
                <tr>
                    <th>Gallery</th>
                    <td>
                        @if($data->image)
                        <div id="carouselExampleFade" class="carousel slide carousel-fade mx-auto" style="max-width: 400px;">
                            <div class="carousel-inner">
                                @foreach(json_decode($data->image) as $key => $imagePath)
                                    <div class="carousel-item {{ $key == 1 ? 'active' : '' }} w-100">
                                        <img src="{{ asset('storage/' . $imagePath) }}" class="img-thumbnail d-block w-100" alt="Image">
                                    </div>
                                @endforeach
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    @else
                        <p>No images available</p>
                    @endif
                    </td>
                </tr>
                <tr>
                    <th>Price</th>
                    <td>{{($data->price)}}</td>
                </tr>
                <tr>
                    <th>Detail</th>
                    <td>{{($data->detail)}}</td>
                </tr>
            </table>
        </div>
    </div>
</div>

@endsection

