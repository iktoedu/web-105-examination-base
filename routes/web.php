<?php

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

Route::get('/', 'Controller@index')->name('index');
Route::delete('index/delete/{animal}', function(\App\Animal $animal){
 $animal->delete();
 return redirect('/');
 
 })->name('animalDelete');