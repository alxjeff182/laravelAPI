<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

// List data
Route::get('agrolokas', 'AgrolokaController@index');

//List single data
Route::get('agroloka/{id}', 'AgrolokaController@show');

//Create new data
Route::post('agroloka', 'AgrolokaController@store');

//Update selected data
Route::put('agroloka', 'AgrolokaController@store');

//Delete selected data
Route::delete('agroloka/{id}', 'AgrolokaController@destroy');