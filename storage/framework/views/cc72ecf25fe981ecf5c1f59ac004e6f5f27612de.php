<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;500;600;700&display=swap"
    rel="stylesheet" />
<link rel="stylesheet" href="<?php echo e(asset('themes/frontend/watches/bootstrap/css/bootstrap.min.css')); ?>" />
<link rel="stylesheet" href="<?php echo e(asset('themes/frontend/watches/swiper/swiper-bundle.min.css')); ?>" />
<link rel="stylesheet" href="<?php echo e(asset('themes/frontend/watches/css/style.css')); ?>" />
<link rel="stylesheet" href="<?php echo e(asset('themes/frontend/watches/css/fixed-positioning.css')); ?>" />

<script src="<?php echo e(asset('themes/frontend/watches/bootstrap/js/bootstrap.min.js')); ?>"></script>
<style>
    #loading {
        position: fixed;
        display: none;
        justify-content: center;
        align-items: center;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
        opacity: 0.7;
        background-color: #fff;
        z-index: 99;
    }

    #loading-image {
        z-index: 100;
        width: 80px;
        height: 80px;
    }

    #alert-config {
        position: fixed;
        top: 20px;
        width: auto;
        z-index: 99;
        right: 30px;
    }
</style>
<?php if(isset($web_information->source_code->header)): ?>
    <?php echo $web_information->source_code->header; ?>

<?php endif; ?>
<?php /**PATH E:\xampp\htdocs\gbd\resources\views/frontend/panels/styles.blade.php ENDPATH**/ ?>