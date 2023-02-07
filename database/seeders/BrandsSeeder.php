<?php

namespace Database\Seeders;

use App\Models\Brands;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class BrandsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Brands::truncate();
        $brands = config('brands');
        foreach ($brands as $brand) {
            Brands::create([
                'name' => ucfirst($brand['name']),
                'description' => $brand['name'] . ' description',
                'image' => Str::snake($brand['image']),
            ]);
        }
    }
}
