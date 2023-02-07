<?php

namespace App\Http\Controllers;

use App\Models\Brands;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::all();
        return view('admin.product_list', compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $brands = Brands::all();
        return view('admin.product_add', compact('brands'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
//        echo "<pre>";
//        print_r($request->all());
//        exit;
        $this->validate($request, [
            'name' => 'required|min:2|max:50|string',
            'price' => 'required|numeric',
            'sale_price' => 'nullable|numeric',
            'color' => 'required|string',
            'brand_id' => 'required|exists:brands,id',
            'product_code' => 'required|min:5',
            'gender' => 'required|in:male,female,children,unisex',
            'function' => 'nullable|string|max:50',
            'stock' => 'required|numeric',
            'description' => 'required|string|max:500',
            'image' => 'required|mimes:jpg,jpeg,png',
        ]);

        $requestData = $request->except(['_token', 'add_product']);
        $imgName = Str::snake($request->name) . '.' . $request->image->extension();
        $request->image->move(public_path('products/'), $imgName);
        $requestData['image'] = $imgName;
        $product = Product::create($requestData);
        return redirect()->route('product.index', [], 301)->with('success', 'Product Created Successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {

        $brands = Brands::all();
        return view('admin.product_edit', compact('product', 'brands'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update2(Request $request, Brands $brand)
    {

        $brand->name = $request->name ?? $brand->name;
        $brand->description = $request->description ?? $brand->description;
        $brand->save();
        return redirect()->route('brands.index')->with('success', 'Brand has been updated Successfully!');
    }

    public function update(Request $request, Product $product)
    {

        $this->validate($request, [
            'name' => 'required|min:2|max:50|string',
            'price' => 'required|numeric',
            'sale_price' => 'nullable|numeric',
            'color' => 'required|string',
            'brand_id' => 'required|exists:brands,id',
            'product_code' => 'required|min:5',
            'gender' => 'required|in:male,female,children,unisex',
            'function' => 'nullable|string|max:50',
            'stock' => 'required|numeric',
            'description' => 'required|string|max:500',
        ]);
        $product->name = $request->name ?? $product->name;
        $product->price = $request->price ?? $product->price;
        $product->sale_price = $request->sale_price ?? $product->sale_price;
        $product->color = $request->color ?? $product->color;
        $product->brand_id = $request->brand_id ?? $product->brand_id;
        $product->product_code = $request->product_code ?? $product->product_code;
        $product->gender = $request->gender ?? $product->gender;
        $product->function = $request->function ?? $product->function;
        $product->stock = $request->stock ?? $product->stock;
        $product->description = $request->description ?? $product->description;
        $product->save();
        return redirect()->route('product.index')->with('success', 'Product has been updated Successfully!');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        //
    }

    public function changeProductImage(Request $request, $id)
    {
        $this->validate($request, [
            'image' => 'required|mimes:jpg,jpeg,png',
        ]);
        $requestData = $request->except(['_token', '_method', 'update']);
        $product = Product::find($id);
        if (!empty($product)) {
            $imgName = Str::snake($product->name) . '.' . $request->image->extension();
            $request->image->move(public_path('products/'), $imgName);
            $requestData['image'] = Str::snake($imgName);
            $existingImage = $product->image;
            $imageExists = public_path("products/$existingImage");
            if(file_exists($imageExists)) {
                unlink("products/$existingImage");
            }
            $product->update($requestData);
            return redirect()->route('product.index')->with('success', 'Product Image Updated Successfully!');
        } else {
            return redirect()->route('product.index')->with('danger', 'Something went wrong.');
        }
    }

    public function changeProductStatus(Request $request, $id, $status = 1)
    {
        $products = Product::find($id);
        if (!empty($products)) {
            $products->is_active = $status;
            $products->save();
            return redirect()->route('product.index')->with('success', 'Product status Updated Successfully!');
        } else {
            return redirect()->route('product.index')->with('danger', 'Something went wrong.');
        }
    }
}
