<!-- resources/views/deploy.blade.php -->
<form action="/deploy" method="POST">
    <?php echo csrf_field(); ?>
    <input type="text" name="subdomain" placeholder="Enter subdomain" required>
    <button type="submit">Create Subdomain</button>
</form>
<?php /**PATH E:\xampp\htdocs\gbd\resources\views/deploy.blade.php ENDPATH**/ ?>