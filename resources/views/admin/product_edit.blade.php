@extends('admin.layout')
@section('content')
    <main>
        <div class="container h-100" style="margin: 7% 0% 7% 15%;">
            <h1 class="mt-4">Edit Products</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="{{ route('admin_home') }}">Dashboard</a></li>
                <li class="breadcrumb-item active">Products</li>
            </ol>
            <div class="container-xl px-4 mt-4">
                @include('flash_data')
                @if($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach($errors->all() as $error)
                                <li> {{ $error }} </li>
                            @endforeach
                        </ul>
                    </div>
            @endif
            <!-- Account page navigation-->
                <div class="row">
                    <div class="col-xl-4">
                        <!-- image picture card-->
                        <div class="card mb-4 mb-xl-0">
                            <div class="card-header"><h5>Product Image</h5></div>
                            <div class="card-body text-center">
                                <!-- image picture image-->
                                <img class="img-account-image rounded-circle mb-2"
                                     src="{{ asset('products') . '/' . $product->image }}" alt="brand image" width="200">
                                <!-- image picture help block-->
                                <div class="small font-italic text-muted mb-4">JPG or PNG no larger than 5 MB</div>
                                <form method="POST"
                                      action="{{ route('admin_product_image_change', ['id' => $product->id]) }}"
                                      enctype="multipart/form-data">
                                    @csrf
                                    @method('POST')
                                    <div class="row mb-3">
                                        <div class="col">
                                            <input type="file" class="form-control-file" name="image"
                                                   id="image">
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col">
                                            <input type="submit" name="update" id="update" value="Update image"
                                                   class="btn btn-outline-primary">
                                        </div>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                    <div class="col-xl-8">
                        <!-- Account details card-->
                        <div class="card mb-4">
                            <div class="card-header"><h5>Product Details</h5></div>
                            <div class="card-body">
                                <form method="POST" action="{{ route('product.update', ['product' => $product->id]) }}"
                                      enctype="multipart/form-data">
                                   @csrf
                                    @method('put')
                                    <div class="row mb-3">
                                        <div class="col">

                                            <label for="name" class="form-label">Product Name</label>
                                            <input type="text" class="form-control" id="name" name="name"
                                                   placeholder="Product Name"
                                                   required="" value="{{ $product->name }}">
                                        </div>
                                        <div class="col">
                                            <label for="price" class="form-label">Price</label>
                                            <input type="text" class="form-control" id="price" name="price"
                                                   placeholder="15000"
                                                   required="" value="{{ $product->price }}">
                                        </div>
                                        <div class="col">
                                            <label for="sale_price" class="form-label">Sale Price</label>
                                            <input type="text" class="form-control" id="sale_price"
                                                   name="sale_price"
                                                   placeholder="10000" value="{{ $product->sale_price }}">
                                        </div>
                                        <div class="col">
                                            <label for="color" class="form-label">Color</label>
                                            <input type="text" class="form-control" id="color" name="color"
                                                   placeholder="Rose Gold"
                                                   required="" value="{{ $product->color }}">
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col">
                                            <label for="brand_id" class="form-label">Brand</label>
                                            <select class="form-select" id="brand_id"
                                                    aria-label="Default select example"
                                                    required="" name="brand_id">
                                                <option selected disabled>Select</option>

                                                @foreach($brands as $brand)
                                                    <option value="{{ $brand->id }}" @if($brand->id == $product->brand_id ) {{ 'selected'}} @endif>{{ $brand->name }}</option>
                                                @endforeach


                                            </select>
                                        </div>
                                        <div class="col">
                                            <label for="product_code" class="form-label">Product Code</label>
                                            <input type="text" class="form-control" id="product_code"
                                                   name="product_code"
                                                   placeholder="LV-123"
                                                   required="" value="{{ $product->product_code }}">
                                        </div>
                                        <div class="col">
                                            <label for="gender" class="form-label">Gender</label><br>
                                            <input type="radio" id="gender" name="gender" value="male"   @if($product->gender == 'male' ) {{'checked'}} @endif>&nbsp;&nbsp;Male&nbsp;&nbsp;
                                            <input type="radio" id="gender" name="gender" value="female"  @if($product->gender == 'female' ) {{'checked'}} @endif>&nbsp;&nbsp;Female
                                            <input type="radio" id="gender" name="gender" value="children"  @if($product->gender == 'children' ) {{'checked'}} @endif>&nbsp;&nbsp;Children
                                            <input type="radio" id="gender" name="gender" value="unisex"  @if($product->gender == 'unisex' ) {{'checked'}} @endif>&nbsp;&nbsp;Unisex
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-3">
                                            <label for="function" class="form-label">Function</label>
                                            <select class="form-select" id="function"
                                                    aria-label="Default select example"
                                                    required="" name="function">
                                                <option selected disabled>Select</option>
                                                @foreach(\Illuminate\Support\Facades\Config::get('watch_functions') as $value)
                                                    <option value="{{ $value }}" @if($value == $product->function){{ 'selected' }} @endif">{{ $value }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <div class="col-3">
                                            <label for="stock" class="form-label">Stock</label>
                                            <input type="number" class="form-control" id="stock" name="stock"
                                                   placeholder="100"
                                                   required="" value="{{ $product->stock }}">
                                        </div>
                                        <div class="col">
                                            <label for="description" class="form-label">Description</label>
                                            <textarea class="form-control" id="description" rows="3"
                                                      name="description"
                                                      placeholder="description" required=""> {{ $product->description }}</textarea>
                                        </div>
                                    </div>

                                    <br>
                                    <div class="mb-3">
                                        <input type="submit" name="update_product" id="update_product"
                                               value="Update Product"
                                               class="btn btn-outline-success">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
@endsection
