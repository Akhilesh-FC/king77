@extends('admin.body.adminmaster')

@section('admin')

@if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
@endif

@if(session('error'))
    <div class="alert alert-danger">{{ session('error') }}</div>
@endif

@if ($errors->has('pin'))
    <span class="text-danger">{{ $errors->first('pin') }}</span>
@endif

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="white_shd full margin_bottom_30">
                <div class="full graph_head">
                    <div class="heading1 margin_0 d-flex justify-content-between">
                        <h2>Deposit List</h2>
                    </div>
                </div>

                <div class="table_section padding_infor_info">
                    <div class="table-responsive-sm">
                        <table id="example" class="table table-striped" style="width:100%">
                            <thead class="thead-dark">
                                <tr>
                                    <th>Id</th>
                                    <th>User Id</th>
                                    <th>User Name</th>
                                    <th>Mobile</th>
                                    <th>Order Id</th>
                                    <th>Screenshot</th>
                                    <th>Amount</th>
                                    <th>Status</th>
                                    <th>Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($deposits as $item)
                                <tr>
                                    <td>{{ $item->id }}</td>
                                    <td>{{ $item->userid }}</td>
                                    <td>{{ $item->uname }}</td>
                                    <td>{{ $item->mobile }}</td>
                                    <td>{{ $item->order_id }}</td>
                                    <td>
                                        <img src="{{ $item->typeimage }}" alt="Screenshot" width="100" style="cursor:pointer" data-toggle="modal" data-target="#imageModal{{ $item->id }}">

                                        <!-- Image Modal -->
                                        <div class="modal fade" id="imageModal{{ $item->id }}" tabindex="-1" role="dialog">
                                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title">Screenshot Preview</h5>
                                                        <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
                                                    </div>
                                                    <div class="modal-body text-center">
                                                        <img src="{{ $item->typeimage }}" class="img-fluid" style="max-height: 500px;" alt="Full Screenshot">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td>{{ $item->cash }}</td>
                                    <td>
                                        @if($item->status == 1)
                                            <div class="dropdown">
                                                <button class="btn btn-warning dropdown-toggle w-100" type="button" id="dropdownMenuButton{{ $item->id }}" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Pending
                                                </button>
                                                <div class="dropdown-menu w-100" aria-labelledby="dropdownMenuButton{{ $item->id }}">
                                                    <!-- ✅ Approve -->
                                                    <a class="dropdown-item text-success" data-toggle="modal" data-target="#approveModal{{ $item->id }}" style="cursor:pointer;">
                                                        ✅ Approve
                                                    </a>

                                                    <!-- ❌ Reject -->
                                                    <a class="dropdown-item text-danger" data-toggle="modal" data-target="#rejectModal{{ $item->id }}" style="cursor:pointer;">
                                                        ❌ Reject
                                                    </a>
                                                </div>
                                            </div>

                                            <!-- ✅ Approve Modal -->
                                            <div class="modal fade" id="approveModal{{ $item->id }}" tabindex="-1" role="dialog">
                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                    <div class="modal-content">
                                                        <form method="POST" action="{{ route('payin_success', ['id' => $item->id]) }}">
                                                            @csrf
                                                            <div class="modal-header bg-success text-white">
                                                                <h5 class="modal-title">Confirm Approval</h5>
                                                                <button type="button" class="close text-white" data-dismiss="modal"><span>&times;</span></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <label>Enter PIN to Approve</label>
                                                                <input type="number" name="pin" class="form-control" required>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                                                <button type="submit" class="btn btn-success">Confirm</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- ❌ Reject Modal -->
                                            <div class="modal fade" id="rejectModal{{ $item->id }}" tabindex="-1" role="dialog">
                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                    <div class="modal-content">
                                                        <form method="POST" action="{{ url('payin_reject/'.$item->id) }}">
                                                            @csrf
                                                            <div class="modal-header bg-danger text-white">
                                                                <h5 class="modal-title">Confirm Rejection</h5>
                                                                <button type="button" class="close text-white" data-dismiss="modal"><span>&times;</span></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                Are you sure you want to reject this request?
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                                                <button type="submit" class="btn btn-danger">Reject</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                        @elseif($item->status == 2)
                                            <span class="btn btn-success w-100">Success</span>
                                        @elseif($item->status == 3)
                                            <span class="btn btn-danger w-100">Rejected</span>
                                        @else
                                            <span class="badge badge-secondary">Unknown</span>
                                        @endif
                                    </td>
                                    <td>{{ $item->created_at }}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- ✅ Required Scripts -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>

@endsection
