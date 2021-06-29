<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class TransactionDetail extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $fillable = [
         'products_id', 'transactions_id'
    ];

    protected $hidden = [

    ];

    public function transaction()
    {
        //tabel transaction_details relasi belongsTo(milik) tabel transaction dengan penghubung transactions_id
        return $this->belongsTo(Transaction::class, 'transactions_id', 'id');
    }

    public function product()
    {
        //tabel transaction_details relasi belongsTo(milik) tabel produk dengan penghubung products_id
        return $this->belongsTo(Product::class, 'products_id', 'id');
    }

}
