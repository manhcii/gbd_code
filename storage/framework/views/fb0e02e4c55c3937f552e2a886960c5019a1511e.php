

<?php $__env->startSection('content'); ?>
  <h1><?php echo app('translator')->get('Bạn nhận được khách hàng đăng ký themes mới trên hệ thống'); ?></h1>

  <p><?php echo app('translator')->get('Content appointment'); ?>: </p>

  <p>
    <strong><?php echo app('translator')->get('Fullname'); ?></strong>: <?php echo e($contact->name); ?>

  </p>
  <p>
    <strong><?php echo app('translator')->get('Email'); ?></strong>: <?php echo e($contact->email); ?>

  </p>
  <p>
    <strong><?php echo app('translator')->get('Phone'); ?></strong>: <?php echo e($contact->phone); ?>

  </p>
  <p>
    <strong><?php echo app('translator')->get('Content note'); ?></strong>: <?php echo e($contact->content); ?>

  </p>
  <p>
    <strong><?php echo app('translator')->get('Link'); ?></strong>:<a href="<?php echo e(route('contacts.index')); ?>">
      <?php echo app('translator')->get('View detail'); ?>
    </a>
  </p>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.email', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp\htdocs\gbd\resources\views/frontend/emails/contact.blade.php ENDPATH**/ ?>