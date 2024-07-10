

<?php
    $page_title = $taxonomy->title ?? ($page->title ?? ($page->name ?? ''));
    $image_background =
        $taxonomy->json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? '');
?>
<?php $__env->startPush('style'); ?>
    <style>
        .form-contact {
            margin-top: 30px;
            margin-bottom: 30px;
            padding: 2rem;
            border: 1px dashed #ccc;
            border-radius: 20px
        }

        .ratio-registertrial {
            background-image: url("<?php echo e(asset('themes/frontend/watches/images/dung-thu.png')); ?>");
            height: 600px;
        }

        .text-registertrial p {
            color: #fff;
            font-size: 30px;
            font-weight: 700;
        }

        .add-theme {
            position: relative;
        }

        .text-registertrial {
            position: absolute;
            top: 50%;
            left: 0;
            right: 0;
            transform: translateY(-50%);
            padding: 30px;
            color: white;
        }

        .input-group-text {
            padding: .75rem 0.75rem;
            background-color: #01156C;
            color: #fff;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .title-input {
            margin-bottom: 10px
        }

        .trial-registration {
            width: 100%;
            height: 46px;
            line-height: 46px;
            border: 0;
            font-size: 16px;
            text-transform: uppercase;
            display: inline-block;
            cursor: pointer;
            font-weight: 700 !important;
            border-radius: 5px !important;
            color: #fff !important;
            background: #01156C;
        }

        
    </style>
<?php $__env->stopPush(); ?>
<?php $__env->startSection('content'); ?>
    <div class="container">
        <div class="row form-contact">
            <div class="col-12 col-md-7">
                <div class="form-registertrial p-4">
                    <div class="logo-section text-center mb-4"> <a href="/"> <img style="width:200px"
                                src="<?php echo e($web_information->image->logo_header ?? asset('themes/frontend/watches/images/header-logo.svg')); ?>">
                        </a></div>
                </div>
                <div class="formt">
                    <form class="form_ajax" method="post" action="<?php echo e(route('frontend.contact.store')); ?>">
                        <?php echo csrf_field(); ?>
                        <input type="hidden" name="is_type" value="call_request">
                        <div class="row">
                            <div class="col-12 col-md-6">
                                <div class="form-group">
                                    <p class="title-input"> Họ và tên:</p>
                                    <div class="input-group">
                                        <div class="input-group-prepend"> <span class="input-group-text first-input-group">
                                                <i class="fa fa-user"></i> </span></div> <input
                                            class="form-control required" type="text" name="name"
                                            placeholder="Họ và tên" aria-required="true" required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <div class="form-group">
                                    <p class="title-input"> Số điện thoại:</p>
                                    <div class="input-group">
                                        <div class="input-group-prepend"> <span class="input-group-text first-input-group">
                                                <i class="fa fa-phone"></i> </span></div> <input
                                            class="form-control required" type="text" name="phone"
                                            placeholder="Số điện thoại" aria-required="true"required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <div class="form-group">
                                    <p class="title-input"> Email:</p>
                                    <div class="input-group">
                                        <div class="input-group-prepend"> <span class="input-group-text first-input-group">
                                                <i class="fa fa-envelope"></i> </span></div> <input
                                            class="form-control required" type="email" name="email"
                                            placeholder="Email" aria-required="true"required>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <div class="form-group">
                                    <p class="title-input"> Địa chỉ:</p>
                                    <div class="input-group">
                                        <div class="input-group-prepend"> <span class="input-group-text first-input-group">
                                                <i class="fa fa-map-marker-alt"></i> </span></div> <input
                                            class="form-control required" type="text" name="content"
                                            placeholder="Địa chỉ" aria-required="true">
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-12 col-md-12">
                                <div class="form-group">
                                    <p class="title-input"> Chọn Template:</p>
                                    <div class="input-group">
                                        <div class="input-group-prepend"> <span class="input-group-text first-input-group">
                                                <i class="fa fa-desktop"></i> </span></div> 
                                                <?php
                                                    $params['status'] = App\Consts::POST_STATUS['active'];
                                                    $params['is_type'] = App\Consts::POST_TYPE['resource'];
                                                    $rows = App\Http\Services\ContentService::getCmsPost($params)->get();
                                                ?>
                                                <select required class="form-control required " name="json_params[template]" id="template">
                                                  <option value="">Chọn</option>
                                                  <?php $__currentLoopData = $rows; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <?php
                                                        $title = $item->json_params->title->{$locale} ?? $item->title;
                                                        $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['resource'], $item->taxonomy_alias ?? $item->taxonomy_title, $item->taxonomy_id);
                                                        $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['resource'], $item->alias ?? $title, $item->id, 'detail', $item->taxonomy_title);
                                                        $domain = $item->json_params->link_demo??"";
                                                    ?>
                                                    <option value="<?php echo e($domain); ?>"><?php echo e($title); ?></option>
                                                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-12">
                                <div class="form-group">
                                    <p class="title-input"> Tên miền dùng thử:</p>
                                    <div class="input-group">
                                        <div class="input-group-prepend"> <span class="input-group-text first-input-group">
                                                <i class="fa fa-globe"></i> </span></div> <input readonly
                                            class="form-control required domain" type="text"  
                                            placeholder="Tên miền dùng thử" aria-required="true">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="trial-registration"> Đăng ký dùng
                            thử </button>
                    </form>
                </div>
            </div>
            <div show-theme="" class="col-12 col-md-5">
                <div class="add-theme">
                    <div class="ratio-registertrial">
                        <div class="text-registertrial">
                            <p> DÙNG THỬ WEBSITE <br> MIỄN PHÍ</p> <span> +100.000 doanh nghiệp &amp; chủ shop đã
                                tin
                                dùng </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php $__env->startPush("script"); ?>
<script>
    $('#template').click(function () {
        $('.domain').val($(this).val())
    });
</script>
<?php $__env->stopPush(); ?>
<?php echo $__env->make('frontend.layouts.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH E:\xampp\htdocs\gbd\resources\views/frontend/pages/contact/index.blade.php ENDPATH**/ ?>