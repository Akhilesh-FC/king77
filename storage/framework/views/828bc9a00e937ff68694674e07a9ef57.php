

<?php $__env->startSection('admin'); ?>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<div class="container mt-5">
    <div class="card shadow-sm border-0">
        <div class="card-header bg-primary text-white d-flex justify-content-between align-items-center">
            <h4 class="mb-0"><i class="fas fa-gamepad me-2"></i>Mines Bets History</h4>
            <span class="badge bg-light text-dark">Total: <?php echo e($bets->total()); ?></span>
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
                        <?php $__empty_1 = true; $__currentLoopData = $bets; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $bet): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                            <tr>
                                <td><?php echo e($bet->id); ?></td>
                                <td><?php echo e($bet->userid); ?></td>
                                <td><?php echo e($bet->game_id); ?></td>
                                <td class="text-success fw-semibold">₹<?php echo e(number_format($bet->amount, 2)); ?></td>
                                <td class="text-primary fw-semibold">₹<?php echo e(number_format($bet->win_amount, 2)); ?></td>
                                <td>
                                    <?php if(strtolower($bet->status) === 'win'): ?>
                                        <span class="badge bg-success"><i class="fas fa-trophy me-1"></i>Win</span>
                                    <?php elseif(strtolower($bet->status) === 'lose'): ?>
                                        <span class="badge bg-danger"><i class="fas fa-times-circle me-1"></i>Lose</span>
                                    <?php else: ?>
                                        <span class="badge bg-secondary"><?php echo e(ucfirst($bet->status)); ?></span>
                                    <?php endif; ?>
                                </td>
                                <td><?php echo e(\Carbon\Carbon::parse($bet->updated_at)->format('d M Y, h:i A')); ?></td>
                                <td><?php echo e(\Carbon\Carbon::parse($bet->created_at)->diffForHumans()); ?></td>
                                <td><?php echo e(\Carbon\Carbon::parse($bet->updated_at)->diffForHumans()); ?></td>
                            </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                            <tr>
                                <td colspan="9" class="text-center text-muted py-4">No Mines Bets Found</td>
                            </tr>
                        <?php endif; ?>
                    </tbody>
                </table>
            </div>
        </div>

        
        <?php if($bets->hasPages()): ?>
            <div class="card-footer">
                <div id="custom-pagination">
                    <?php echo e($bets->links()); ?>

                </div>
            </div>
        <?php endif; ?>
    </div>
</div>


<script>
document.addEventListener("DOMContentLoaded", function() {
    let pagination = document.querySelector("#custom-pagination ul");
    if (!pagination) return;

    let totalPages = <?php echo e($bets->lastPage()); ?>;
    let currentPage = <?php echo e($bets->currentPage()); ?>;
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
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.body.adminmaster', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/u609116592/domains/king77.games/public_html/root/resources/views/plinko/miens.blade.php ENDPATH**/ ?>