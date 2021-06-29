<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Transaction extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $fillable = [
        'uuid', 'name', 'email', 'number', 'address', 
        'transaction_total', 'transaction_detail'
    ];

    protected $hidden = [

    ];

    //buat relasi dengan tabel transaction_details
    public function details()
    {
        //transaction has many transaction_details dengan relasi di transactions_id
        return $this->hasMany(TransactionDetail::class, 'transactions_id');
    }

}
