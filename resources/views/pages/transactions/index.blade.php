@extends('layouts.default')
{{-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> --}}
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">


@section('content')
    <div class="orders">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <h4 class="box-title">Daftar Transaksi Masuk</h4>
                    </div>
                    <div class="card-body--">
                        <div class="table-stats order-table ov-h">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Nama</th>
                                        <th>Email</th>
                                        <th>Nomor</th>
                                        <th>Total Transaksi</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                   @forelse ($items as $item)
                                    <tr>
                                        <td>{{ $item->id }}</td>
                                        <td>{{ $item->name }}</td>
                                        <td>{{ $item->email }}</td>
                                        <td>{{ $item->number }}</td>
                                        <td>Rp. {{ $item->transaction_total }}</td>
                                        <td>
                                            @if ($item->transaction_status == 'PENDING')
                                                <span class="badge badge-info">
                                            @elseif ($item->transaction_status == 'SUCCESS')
                                                <span class="badge badge-success">
                                            @elseif ($item->transaction_status == 'FAILED')
                                                <span class="badge badge-info">
                                            @else
                                                <span>
                                            @endif
                                                {{ $item->transaction_status }}
                                                </span>

                                        </td>
                                        <td>
                                            {{-- @if ($items->transaction_status == 'PENDING') --}}
                                                {{-- <a href="{{ route('transactions.status', $item->id) }}?status=SUCCESS"
                                                   class="btn btn-succes btn-sm">
                                                    <i class="fa fa-check"></i>
                                                </a>
                                                <a href="{{ route('transactions.status', $item->id) }}?status=FAILED"
                                                    class="btn btn-warning btn-sm">
                                                     <i class="fa fa-times"></i>
                                                 </a> --}}
                                                
                                            {{-- @endif --}}
                                            

                                            <button type="button" 
                                                    class="btn btn-info btn-sm" 
                                                    data-toggle="modal" 
                                                    data-target="#mymodal" 
                                                    data-title="Detail Transaksi | 
                                                    {{ $item->uuid }} "
                                                    data-remote="{{ route('transactions.show', $item->id) }}"
                                                    data-whatever="@getbootstrap">
                                                    <i class="fa fa-eye"></i>
                                            </button>

                                            <div class="modal fade" id="mymodal" tabindex="-1" aria-labelledby="mymodalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content text-left">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="mymodalLabel">New message</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <form>
                                                    <div class="form-group">
                                                        <label for="recipient-name" class="col-form-label">Recipient:</label>
                                                        <input type="text" class="form-control" id="recipient-name">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="message-text" class="col-form-label">Message:</label>
                                                        <textarea class="form-control" id="message-text"></textarea>
                                                    </div>
                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                    {{-- <button type="button" class="btn btn-primary">Send message</button> --}}
                                                </div>
                                                </div>
                                            </div>
                                            </div>
                                        
                                           
                                            <a href="{{ route('transactions.edit', $item->id) }}" class="btn btn-primary btn-sm">
                                                <i class="fa fa-pencil"></i>
                                            </a>
                                            <form action="{{ route('transactions.destroy', $item->id) }}" method="post" class="d-inline">
                                                @csrf
                                                @method('delete')
                                                <button class="btn btn-danger btn-sm">
                                                    <i class="fa fa-trash"></i>
                                                </button>
                                            </form>
                                        </td>
                                    </tr>
                                   @empty
                                       <tr>
                                           <td colspan="6" class="text-center p-5" >
                                               Data Tidak Tersedia
                                           </td>
                                       </tr>
                                   @endforelse
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
{{-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script> --}}
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
