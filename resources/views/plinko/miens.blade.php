@extends('admin.body.adminmaster')

@section('admin')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<div class="container mt-5">
    <div class="card shadow-sm border-0">
        <div class="card-header bg-primary text-white d-flex justify-content-between align-items-center">
            <h4 class="mb-0"><i class="fas fa-gamepad me-2"></i>Mines Bets History</h4>
            <span class="badge bg-light text-dark">Total: {{ $bets->total() }}</span>
        </div>

        <div class="card-body p-0">
            <div class="table-responsive">
                <table class="table table-hover table-striped align-middle text-center mb-0">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>User ID</th>
                            <th>Game ID</th>
                            <th>Amount</th>
                            <th>Win Amount</th>
                            <th>Status</th>
                            <th>Date/Time</th>
                            <th>Created At</th>
                            <th>Updated At</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($bets as $bet)
                            <tr>
                                <td>{{ $bet->id }}</td>
                                <td>{{ $bet->userid }}</td>
                                <td>{{ $bet->game_id }}</td>
                                <td class="text-success fw-semibold">₹{{ number_format($bet->amount, 2) }}</td>
                                <td class="text-primary fw-semibold">₹{{ number_format($bet->win_amount, 2) }}</td>
                                <td>
                                    @if(strtolower($bet->status) === 'win')
                                        <span class="badge bg-success"><i class="fas fa-trophy me-1"></i>Win</span>
                                    @elseif(strtolower($bet->status) === 'lose')
                                        <span class="badge bg-danger"><i class="fas fa-times-circle me-1"></i>Lose</span>
                                    @else
                                        <span class="badge bg-secondary">{{ ucfirst($bet->status) }}</span>
                                    @endif
                                </td>
                                <td>{{ \Carbon\Carbon::parse($bet->updated_at)->format('d M Y, h:i A') }}</td>
                                <td>{{ \Carbon\Carbon::parse($bet->created_at)->diffForHumans() }}</td>
                                <td>{{ \Carbon\Carbon::parse($bet->updated_at)->diffForHumans() }}</td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="9" class="text-center text-muted py-4">No Mines Bets Found</td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
        </div>

        {{-- Pagination --}}
        @if ($bets->hasPages())
            <div class="card-footer">
                <div id="custom-pagination">
                    {{ $bets->links() }}
                </div>
            </div>
        @endif
    </div>
</div>

{{-- Custom Pagination JS --}}
<script>
document.addEventListener("DOMContentLoaded", function() {
    let pagination = document.querySelector("#custom-pagination ul");
    if (!pagination) return;

    let totalPages = {{ $bets->lastPage() }};
    let currentPage = {{ $bets->currentPage() }};
    let html = "";

    // First Button
    if (currentPage > 1) {
        html += `<li class="page-item"><a class="page-link" href="?page=1">First</a></li>`;
    } else {
        html += `<li class="page-item disabled"><span class="page-link">First</span></li>`;
    }

    // Previous Button
    if (currentPage > 1) {
        html += `<li class="page-item"><a class="page-link" href="?page=${currentPage - 1}">&laquo;</a></li>`;
    }

    // Page Numbers with Dots
    let start = Math.max(1, currentPage - 2);
    let end = Math.min(totalPages, currentPage + 2);

    if (start > 1) {
        html += `<li class="page-item"><a class="page-link" href="?page=1">1</a></li>`;
        if (start > 2) html += `<li class="page-item disabled"><span class="page-link">...</span></li>`;
    }

    for (let i = start; i <= end; i++) {
        if (i === currentPage) {
            html += `<li class="page-item active"><span class="page-link">${i}</span></li>`;
        } else {
            html += `<li class="page-item"><a class="page-link" href="?page=${i}">${i}</a></li>`;
        }
    }

    if (end < totalPages) {
        if (end < totalPages - 1) html += `<li class="page-item disabled"><span class="page-link">...</span></li>`;
        html += `<li class="page-item"><a class="page-link" href="?page=${totalPages}">${totalPages}</a></li>`;
    }

    // Next Button
    if (currentPage < totalPages) {
        html += `<li class="page-item"><a class="page-link" href="?page=${currentPage + 1}">&raquo;</a></li>`;
    }

    // Last Button
    if (currentPage < totalPages) {
        html += `<li class="page-item"><a class="page-link" href="?page=${totalPages}">Last</a></li>`;
    } else {
        html += `<li class="page-item disabled"><span class="page-link">Last</span></li>`;
    }

    pagination.innerHTML = html;
});
</script>
@endsection
