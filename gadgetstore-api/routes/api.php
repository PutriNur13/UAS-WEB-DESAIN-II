<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::prefix('v1')->group(function () {
    Route::get('categories/random/{count}', 'CategoryController@random');
    Route::get('gadgets/top/{count}', 'GadgetController@top');
    Route::get('categories', 'CategoryController@index');
    Route::get('categories/slug/{slug}', 'CategoryController@slug');
    Route::get('provinces', 'ShopController@provinces');
    Route::get('cities', 'ShopController@cities');
    Route::get('couriers', 'ShopController@couriers');

    Route::post('services', 'ShopController@services');
    Route::post('payment', 'ShopController@payment');

    Route::post('login', 'AuthController@login');
    Route::post('register', 'AuthController@register');

    Route::middleware('auth:api')->group(function () {
        Route::get('logout', 'AuthController@logout');
        Route::post('shipping', 'ShopController@shipping'); 
        Route::post('services', 'ShopController@services'); 
        Route::post('payment', 'ShopController@payment'); 
        Route::post('edit-profile', 'AuthController@editProfile'); 
        Route::get('my-order', 'ShopController@myOrder');
        Route::post('order-detail/{id}', 'ShopController@detailsOrder');
    });
    Route::get('gadgets', 'GadgetController@index');
    Route::get('gadgets/slug/{slug}', 'GadgetController@slug');
});

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('nama', function () {
    return 'Hello';
});
