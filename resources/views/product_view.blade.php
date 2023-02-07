@extends('layout_user')
@section('content')

    <!-- Section-->
    <!-- Product section-->
    <section class="py-5">
        <div class="container px-4 px-lg-5 my-5">
            <div class="row gx-4 gx-lg-5 align-items-center">
                <div class="col-md-6"><img class="card-img-top" src="{{ $product->image }}" alt="Product Image"/></div>
                <div class="col-md-6">
                    <div class="small mb-1">{{ $product->product_code }}</div>
                    <h1 class="display-5 fw-bolder">{{ $product->name }}</h1>
                    <div class="fs-5 mb-5">
                        @if(empty($product->sale_price))
                            <span class="text-decoration-line-through">₹{{ $product->price }}</span>
                            <span>{{ '₹' . $product->sale_price }}</span>
                        @else
                            <span>{{ '₹' . $product->price }}</span>
                        @endif
                    </div>
                    <p class="lead">{{ $product->description }}</p>
                    <div class="d-flex">
                        <form method="POST" action="{{ route('add_to_cart') }}" >
                            @csrf
                            <input type="hidden" name="product_id" value="{{ $product->id }}" >
                        <input class="form-control text-center me-3" id="inputQuantity" name="quantity" type="number" min="1" value="1" style="max-width: 3rem" />
                        <input class="btn btn-outline-dark flex-shrink-0" type="submit" value="Add to Cart"></input>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Related items section-->
    <section class="py-5">
        <div class="container px-4 px-lg-5 mt-5">
            <h2 class="fw-bolder mb-4">Related products</h2>
            <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                @foreach($related as $relate)
                <div class="col mb-5">
                    <div class="card h-100">
                        @if(empty($relate->sale_price) && $relate->stock != 0)
                            <div class="badge bg-dark text-white position-absolute"
                                 style="top: 0.5rem; right: 0.5rem"> Sale
                            </div>
                        @elseif($relate->stock == 0)
                            <div class="badge bg-danger text-white position-absolute"
                                 style="top: 0.5rem; right: 0.5rem"> Out Of Stock
                            </div>
                        @endif
                        <!-- Product image-->
                        <img class="card-img-top" src="{{ $relate->image }}" alt="Product Image"/>
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h5 class="fw-bolder">{{ $relate->name }}</h5>
                                <!-- Product price-->
                                @if(!empty($relate->sale_price))
                                    <span
                                        class="text-muted text-decoration-line-through">{{ '₹' . $relate->price }}</span>
                                    {{ '₹' . $relate->sale_price }}
                                @else
                                    {{ '₹' . $relate->price }}
                                @endif<br>
                                <h6>{{ 'For: ' . $relate->gender }}</h6>
                                <h6>{{ 'Function: ' . $relate->function }}</h6>
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="{{ route('product_info', ['product' => $relate->product_code]) }}">View Products</a></div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
    @include('store_locator')
@endsection
