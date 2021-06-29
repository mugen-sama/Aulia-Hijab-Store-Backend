<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProductGalleryController;
use App\Http\Controllers\TransactionController;

Route::get('/', [DashboardController::class, 'index'])->name('dashboard');
Auth::routes(['register' => false]);

Route::get('products/{id}/gallery', [ProductController::class, 'gallery'])
    ->name('products.gallery'); 

Route::resource('products', ProductController::class); 
//memanggil semua class ProductController sekaligus membuatkan named route setiap class nya
//syarat Route::resource adalah controller dibuat dengan metode --resource 

Route::resource('product-galleries', ProductGalleryController::class); 

Route::resource('transactions', TransactionController::class); 