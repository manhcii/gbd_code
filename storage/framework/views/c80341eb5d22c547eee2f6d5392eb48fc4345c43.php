

<?php $__env->startSection('content'); ?>
  <h1><?php echo app('translator')->get('Cảm ơn bạn đã sử dụng dịch vụ'); ?></h1>

  <p><?php echo app('translator')->get('Thông tin đăng nhập'); ?>: </p>

  <p>
    <strong><?php echo app('translator')->get('Link'); ?></strong>: 
  </p><a href="<?php echo e($link); ?>"><?php echo e($link); ?></a>
  <p>
    <strong><?php echo app('translator')->get('Tài khoản'); ?></strong>: <?php echo e($user); ?>

  </p>
  <p>
    <strong><?php echo app('translator')->get('Mật khẩu'); ?></strong>: <?php echo e($pass); ?>

  </p>
 
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.email', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp\htdocs\gbd\resources\views/frontend/emails/customer.blade.php ENDPATH**/ ?>