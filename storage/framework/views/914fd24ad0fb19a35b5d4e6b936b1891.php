<?php $__env->startSection('admin'); ?>

<?php if(session('success')): ?>
    <div class="alert alert-success"><?php echo e(session('success')); ?></div>
<?php endif; ?>

<?php if(session('error')): ?>
    <div class="alert alert-danger"><?php echo e(session('error')); ?></div>
<?php endif; ?>

<?php if($errors->has('pin')): ?>
    <span class="text-danger"><?php echo e($errors->first('pin')); ?></span>
<?php endif; ?>

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
                                <?php $__currentLoopData = $deposits; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <td><?php echo e($item->id); ?></td>
                                    <td><?php echo e($item->userid); ?></td>
                                    <td><?php echo e($item->uname); ?></td>
                                    <td><?php echo e($item->mobile); ?></td>
                                    <td><?php echo e($item->order_id); ?></td>
                                    <td>
                                        <img src="<?php echo e($item->typeimage); ?>" alt="Screenshot" width="100" style="cursor:pointer" data-toggle="modal" data-target="#imageModal<?php echo e($item->id); ?>">

                                        <!-- Image Modal -->
                                        <div class="modal fade" id="imageModal<?php echo e($item->id); ?>" tabindex="-1" role="dialog">
                                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title">Screenshot Preview</h5>
                                                        <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
                                                    </div>
                                                    <div class="modal-body text-center">
                                                        <img src="<?php echo e($item->typeimage); ?>" class="img-fluid" style="max-height: 500px;" alt="Full Screenshot">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td><?php echo e($item->cash); ?></td>
                                    <td>
                                        <?php if($item->status == 1): ?>
                                            <div class="dropdown">
                                                <button class="btn btn-warning dropdown-toggle w-100" type="button" id="dropdownMenuButton<?php echo e($item->id); ?>" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Pending
                                                </button>
                                                <div class="dropdown-menu w-100" aria-labelledby="dropdownMenuButton<?php echo e($item->id); ?>">
                                                    <!-- ✅ Approve -->
                                                    <a class="dropdown-item text-success" data-toggle="modal" data-target="#approveModal<?php echo e($item->id); ?>" style="cursor:pointer;">
                                                        ✅ Approve
                                                    </a>

                                                    <!-- ❌ Reject -->
                                                    <a class="dropdown-item text-danger" data-toggle="modal" data-target="#rejectModal<?php echo e($item->id); ?>" style="cursor:pointer;">
                                                        ❌ Reject
                                                    </a>
                                                </div>
                                            </div>

                                            <!-- ✅ Approve Modal -->
                                            <div class="modal fade" id="approveModal<?php echo e($item->id); ?>" tabindex="-1" role="dialog">
                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                    <div class="modal-content">
                                                        <form method="POST" action="<?php echo e(route('payin_success', ['id' => $item->id])); ?>">
                                                            <?php echo csrf_field(); ?>
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
                                            <div class="modal fade" id="rejectModal<?php echo e($item->id); ?>" tabindex="-1" role="dialog">
                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                    <div class="modal-content">
                                                        <form method="POST" action="<?php echo e(url('payin_reject/'.$item->id)); ?>">
                                                            <?php echo csrf_field(); ?>
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

                                        <?php elseif($item->status == 2): ?>
                                            <span class="btn btn-success w-100">Success</span>
                                        <?php elseif($item->status == 3): ?>
                                            <span class="btn btn-danger w-100">Rejected</span>
                                        <?php else: ?>
                                            <span class="badge badge-secondary">Unknown</span>
                                        <?php endif; ?>
                                    </td>
                                    <td><?php echo e($item->created_at); ?></td>
                                </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
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

<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.body.adminmaster', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/u609116592/domains/king77.games/public_html/root/resources/views/work_order_assign/deposit.blade.php ENDPATH**/ ?>