<?php if($block): ?>
  <?php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $content = $block->json_params->content->{$locale} ?? $block->content;
    $image = $block->image != '' ? $block->image : null;
    $background = $block->image_background != '' ? $block->image_background : null;
    $url_link = $block->url_link != '' ? $block->url_link : '';
    $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
    
    $params['status'] = App\Consts::POST_STATUS['active'];
    $params['is_type'] = App\Consts::POST_TYPE['post'];
    
    $rows = App\Http\Services\ContentService::getCmsPost($params)
        ->limit(6)
        ->get();
  ?>
<section class="newsletter">
  <div class="head-news">
      <h3><?php echo e($title); ?></h3>
  </div>
  <div class="container">
      <div class="container-new">
          <div class="row g-3">
            <?php if($rows): ?>
            <?php $__currentLoopData = $rows; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php
              $title = $item->json_params->title->{$locale} ?? $item->title;
              $brief = $item->json_params->brief->{$locale} ?? $item->brief;
              $image = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
              $date = date('B m,Y', strtotime($item->created_at));
              // $date = date('d', strtotime($item->created_at));
              // $month = date('M', strtotime($item->created_at));
              // $year = date('Y', strtotime($item->created_at));
              // Viet ham xu ly lay slug
              $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item->taxonomy_alias ?? $item->taxonomy_title, $item->taxonomy_id);
              $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item->alias ?? $title, $item->id, 'detail', $item->taxonomy_title);
            ?>
              <div class="col-md-4">
                  <div class="hover-div-new">
                      <div class="img-new">
                          <a href="<?php echo e($alias); ?>"><img src="<?php echo e($image); ?>" alt="news"></a>
                      </div>
                      <a href="<?php echo e($alias); ?>">
                          <div class="news-info">
                              <p><?php echo e($date); ?></p>
                              <h3><?php echo e($title); ?></h3>
                          </div>
                      </a>
                      <a href="<?php echo e($alias); ?>">
                          <div class="news-link">
                              <i class="fa fa-long-arrow-right"></i>
                          </div>
                      </a>
                  </div>
              </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php endif; ?>
          </div>
      </div>

  </div>
</section>
<?php endif; ?><?php /**PATH E:\xampp\htdocs\gbd\resources\views/frontend/blocks/cms_post/styles/default.blade.php ENDPATH**/ ?>