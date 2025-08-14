<?php $__env->startSection('admin'); ?>

<style>
/* Container Card Style */
.attendance-card {
    background: #fff;
    border-radius: 12px;
    padding: 20px;
    box-shadow: 0 4px 25px rgba(0, 0, 0, 0.1);
}

/* Add Button Style */
.add-btn {
    background: linear-gradient(135deg, #3b82f6, #06b6d4);
    color: #fff;
    border: none;
    padding: 8px 20px;
    border-radius: 25px;
    transition: all 0.3s;
}

.add-btn:hover {
    background: linear-gradient(135deg, #06b6d4, #3b82f6);
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
}

/* Table Styles */
.table thead {
    background: linear-gradient(135deg, #4f46e5, #6366f1);
    color: #fff;
}

.table-striped tbody tr:hover {
    background: #f0f4f8;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
    cursor: pointer;
}

.table td, .table th {
    vertical-align: middle;
}

/* Icon Styles */
.fa-edit, .fa-trash {
    cursor: pointer;
    transition: transform 0.3s;
}

.fa-edit:hover {
    color: #3b82f6;
    transform: scale(1.2);
}

.fa-trash:hover {
    color: red;
    transform: scale(1.2);
}

/* Modal Custom */
.modal-content {
    border-radius: 12px;
    box-shadow: 0 4px 25px rgba(0, 0, 0, 0.2);
}
</style>

<div class="container-fluid " style="margin-top:105px">
    <div class="row">
        <div class="col-md-12">
            <div class="attendance-card">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h3><i class="fa fa-calendar"></i> Attendance List</h3>
                    <button type="button" class="add-btn" data-toggle="modal" data-target="#exampleModalCenter">+ Add Attendance</button>
                </div>

                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Day</th>
                                <th>Accumulated Amount</th>
                                <th>Attendance Bonus</th>
                                <th>Date</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php $__currentLoopData = $attendances; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <td><?php echo e($item->id); ?></td>
                                <td><?php echo e($item->accumulated_amount); ?></td>
                                <td><?php echo e($item->attendance_bonus); ?></td>
                                <td><?php echo e($item->created_at); ?></td>
                                <td>
                                    <i class="fa fa-edit mr-3" data-toggle="modal" data-target="#editModal<?php echo e($item->id); ?>"></i>
                                    <a href="<?php echo e(route('attendance.delete', $item->id)); ?>">
                                        <i class="fa fa-trash"></i>
                                    </a>
                                </td>
                            </tr>

                            <!-- Edit Modal -->
                            <div class="modal fade" id="editModal<?php echo e($item->id); ?>" tabindex="-1">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Edit Attendance</h5>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>
                                        <form action="<?php echo e(route('attendance.update', $item->id)); ?>" method="POST">
                                            <?php echo csrf_field(); ?>
                                            <div class="modal-body">
                                                <div class="form-group">
                                                    <label>Accumulated Amount</label>
                                                    <input type="text" name="accumulated_amount" class="form-control" value="<?php echo e($item->accumulated_amount); ?>">
                                                </div>
                                                <div class="form-group">
                                                    <label>Attendance Bonus</label>
                                                    <input type="text" name="attendance_bonus" class="form-control" value="<?php echo e($item->attendance_bonus); ?>">
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary">Update</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>

                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Add Attendance Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Add Attendance</h5>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <form action="<?php echo e(route('attendance.store')); ?>" method="POST">
                <?php echo csrf_field(); ?>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Accumulated Amount</label>
                        <input type="text" name="accumulated_amount" class="form-control" placeholder="Enter amount">
                    </div>
                    <div class="form-group">
                        <label>Attendance Bonus</label>
                        <input type="text" name="attendance_bonus" class="form-control" placeholder="Enter bonus">
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Add Attendance</button>
                </div>
            </form>
        </div>
    </div>
</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.body.adminmaster', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/u609116592/domains/king77.games/public_html/root/resources/views/attendance/index.blade.php ENDPATH**/ ?>