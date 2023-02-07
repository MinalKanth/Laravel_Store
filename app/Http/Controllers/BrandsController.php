<?php

namespace App\Http\Controllers;

use App\Events\WelcomeEmail;
use App\Models\Brands;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class BrandsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $brands = Brands::all();
        return view('admin.brands_list', compact('brands'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.add_brand');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|min:2|max:10|string',
            'description' => 'nullable|string|max:100',
            'image' => 'required|mimes:jpg,jpeg,png',
        ]);
        $requestData = $request->except(['_token', 'add']);
        $imgName = Str::snake($request->name) . '.' . $request->image->extension();
        $request->image->move(public_path('brands/'), $imgName);
        $requestData['image'] = $imgName;
        $brand = Brands::create($requestData);
        if (!empty($brand)) {
            $brand->update($requestData);
            return redirect()->route('brands.index')->with('success', 'Brand has been added Successfully!');
        } else {
            return redirect()->route('brands.index')->with('danger', 'Something went wrong.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param \App\Models\Brands $brands
     * @return \Illuminate\Http\Response
     */
    public function show(Brands $brands)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param \App\Models\Brands $brands
     * @return \Illuminate\Http\Response
     */
    public function edit(Brands $brand)
    {
        return view('admin.brand_edit', compact('brand'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Brands $brands
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Brands $brand)
    {
        $this->validate($request, [
            'name' => 'required|min:2|max:20|string',
            'description' => 'nullable|string|max:100',
        ]);
        $brand->name = $request->name ?? $brand->name;
        $brand->description = $request->description ?? $brand->description;
        $brand->save();
        return redirect()->route('brands.index')->with('success', 'Brand has been updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param \App\Models\Brands $brands
     * @return \Illuminate\Http\Response
     */
    public function destroy(Brands $brands)
    {
        //
    }

    public function changeBrandImage(Request $request, $id)
    {
        $this->validate($request, [
            'image' => 'required|mimes:jpg,jpeg,png',
        ]);
        $requestData = $request->except(['_token', '_method', 'update']);
        $brand = Brands::find($id);
        if (!empty($brand)) {
            $imgName = Str::snake($brand->name) . '.' . $request->image->extension();
            $request->image->move(public_path('brands/'), $imgName);
            $requestData['image'] = Str::snake($imgName);
            $brand->update($requestData);
            return redirect()->route('brands.index')->with('success', 'Brand Image Updated Successfully!');
        } else {
            return redirect()->route('brands.index')->with('danger', 'Something went wrong.');
        }
    }

    public function changeBrandStatus(Request $request, $id, $status = 1)
    {
        $brands = Brands::find($id);
        if (!empty($brands)) {
            $brands->is_active = $status;
            $brands->save();
            return redirect()->route('brands.index')->with('success', 'Brand status Updated Successfully!');
        } else {
            return redirect()->route('brands.index')->with('danger', 'Something went wrong.');
        }
    }

}
