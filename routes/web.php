<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', function () {
//    return view('user_index');
//})->name('home');
Route::controller(\App\Http\Controllers\HomeController::class)->group(function () {
    Route::get('/', 'index')->name('home');
    Route::get('/view-product/{product:product_code}', 'productInfo')->name('product_info');
    Route::get('/list-product', 'productList')->name('product_list');
});

Route::controller(\App\Http\Controllers\AuthenticationController::class)->group(function () {
    Route::get('/register', 'register')->name('register');
    Route::post('/register', 'storeUser')->name('store_user');
    Route::get('/login', 'login')->name('login');
    Route::post('/login', 'authenticate')->name('authenticate');
    Route::get('/forgot-password', 'forgotPassword')->name('forgot_password');
    Route::post('/forgot-password', 'sendForgotPasswordEmail')->name('send_forgot_password_email');
    Route::get('/reset-password/{token}', 'resetPassword')->name('reset_password');
    Route::post('/reset-password', 'resetPasswordData')->name('reset_password_data');
    Route::get('/logout', 'logout')->name('logout');
});

Route::controller(\App\Http\Controllers\UserController::class)->group(function () {
    Route::get('/profile', 'userProfile')->name('user_profile');
    Route::put('/profile', 'userProfileUpdate')->name('user_profile_update');
    Route::post('/user-image-update', 'userProfileImageUpdate')->name('user_profile_image_update');
});

Route::group(['prefix' => '/admin', 'middleware' => ['checkRoles']], function () {
    Route::controller(\App\Http\Controllers\AdminController::class)->group(function () {
        Route::get('/', 'index')->name('admin_home');
        Route::get('/user-list', 'usersList')->name('admin_user_list');
        Route::get('/edit-user/{id}', 'editUsers')->name('admin_user_edit');
        Route::put('/update-user/{id}', 'updateUsers')->name('admin_user_update');
        Route::post('/update-user-profile/{id}', 'updateUsersProfile')->name('admin_user_profile_update');
        Route::get('/register-user', 'registerUsersProfile')->name('admin_user_profile_register');
        Route::post('/register-user', 'registerUsersProfileData')->name('admin_user_profile_register_data');
        Route::get('/change-user-status/{id}/{status?}', 'changeUserStatus')->name('admin_change_user_status');
    });

    Route::resource('brands', \App\Http\Controllers\BrandsController::class);
    Route::controller(\App\Http\Controllers\BrandsController::class)->group(function () {
        Route::post('/change-brand-image/{id}', 'changeBrandImage')->name('admin_brand_image_change');
        Route::get('/change-brand-status/{id}/{status?}', 'changeBrandStatus')->name('admin_change_brand_status');
    });

    Route::resource('product', \App\Http\Controllers\ProductController::class);
    Route::controller(\App\Http\Controllers\ProductController::class)->group(function () {
        Route::post('/change-product-image/{id}', 'changeProductImage')->name('admin_product_image_change');
        Route::get('/change-product-status/{id}/{status?}', 'changeProductStatus')->name('admin_change_product_status');
    });

    Route::controller(\App\Http\Controllers\OrderController::class)->group(function () {
        Route::get('/orders', 'index')->name('list_orders');
        Route::post('/change-order-status/{id}', 'changeOrderStatus')->name('admin_change_order_status');
        Route::get('/lineitems/{id}', 'getLineItems')->name('get_line_items');
    });


});

    Route::resource('cart', \App\Http\Controllers\CartController::class);
    Route::post('add-to-cart', [\App\Http\Controllers\CartController::class, 'addToCart'])->name('add_to_cart');
    Route::get('store-order', [\App\Http\Controllers\CartController::class, 'storeOrder'])->name('store-order');

    Route::resource('crudOperations', \App\Http\Controllers\CrudOperationsController::class);
