<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\IndexController;

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

Route::get('/', function () {
    return view('home');
});
Route::get('/customer/home', [App\Http\Controllers\CustomerController:: class,'customerHome']);
Route::get('/customer/regform', [App\Http\Controllers\CustomerController:: class,'createRegistration'])->name('customer.registrationForm');
Route::post('/customer/register_submit', [App\Http\Controllers\CustomerController:: class,'storeFormData']);
Route::get('/customer/customersData', [App\Http\Controllers\CustomerController:: class,'view'])->name('customer.view');

//customer trash  delete route
Route::get('delete/{cid}', [App\Http\Controllers\CustomerController::class, 'delete_customers'])->name('customer.delete');

//we are deleting force fully trashed data(permanent)
Route::get('/customer/forceDelete/{cid}', [App\Http\Controllers\CustomerController::class, 'permanentDelete'])->name('customer.permanentDelete');

// customer restore data creating  route
Route::get('/customer/restore/{cid}', [App\Http\Controllers\CustomerController::class, 'restore'])->name('customer.restore');

// customer Trash All Data Page Route
Route::get('/customer/allTrashData',[App\Http\Controllers\CustomerController::class, 'trash'])->name('customer.trash');

// customers edit routes

Route::get('customer/edit/{cid}', [App\Http\Controllers\CustomerController::class, 'edit'])->name('customer.edit');

Route::post('customer/update/{cid}', [App\Http\Controllers\CustomerController::class, 'update'])->name('customer.update');

//------------making routes for one to one relationship---------------//
Route::get('/onetoOne',[App\Http\Controllers\IndexController::class, 'index']);
Route::get('/onetoMany',[App\Http\Controllers\IndexController::class, 'manyRelationship']);
Route::get('/group/{group_id}',[App\Http\Controllers\IndexController::class, 'groupData']);


// Language converter route
