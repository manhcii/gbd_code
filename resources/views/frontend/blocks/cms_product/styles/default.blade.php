@if ($block)
  @php
    $title = $block->json_params->title->{$locale} ?? $block->title;
    $brief = $block->json_params->brief->{$locale} ?? $block->brief;
    $content = $block->json_params->content->{$locale} ?? $block->content;
    $image = $block->image != '' ? $block->image : null;
    $background = $block->image_background != '' ? $block->image_background : null;
    $url_link = $block->url_link != '' ? $block->url_link : '';
    $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
    
    $params['is_featured'] = true;
    $params['status'] = App\Consts::POST_STATUS['active'];
    $params['is_type'] = App\Consts::POST_TYPE['product'];
    
    $rows = App\Http\Services\ContentService::getCmsPost($params)
        ->limit(6)
        ->get();
  @endphp
    <section class="featured">
        <div class="container ">
            <h3>
                {{ $title }}
            </h3>
            <div class="swiper mySwiper">
                <div class="swiper-wrapper">
                  @if($rows)
                    @foreach ($rows as $item)
                      @php
                        $title = $item->json_params->title->{$locale} ?? $item->title;
                        $brief = $item->json_params->brief->{$locale} ?? $item->brief??"";
                        $content = $item->json_params->content->{$locale} ?? $item->content??"";
                        $image = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
                        $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item->taxonomy_alias ?? $item->taxonomy_title, $item->taxonomy_id);
                        $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item->alias ?? $title, $item->id, 'detail', $item->taxonomy_title);
                      @endphp
                      <div class="swiper-slide">
                          <div class="image-container">
                              <img class="img-item-service" src="{{ $image }}" alt="">
                              <div class="box-text-before">
                                  <div class="">
                                      <img class="sevice-blue" src="{{ asset('themes/frontend/watches/images/sevice-blue.svg') }}" alt="">
                                      <div class="elipsis2">
                                        <p>{!! $brief !!}</p>
                                      </div>
                                  </div>
                                  <span class="fa fa-long-arrow-right"></span>
                              </div>
                              <div class="overlay">
                                  <div class="box-text">
                                      <a class="link-service" class="" href="{{ $alias }}">
                                          <div class="bg-sevice-info">
                                              <h4>{{ $title }} </h4>
                                              <p>{!! $brief !!}</p> 
                                              <img class="sevice-white" src="{{ asset('themes/frontend/watches/images/sevice-white.svg') }}" alt="">
                                          </div>
                                      </a>
                                  </div>
                              </div>
                          </div>
                      </div>
                      @endforeach
                    @endif
                </div>
            </div>
            <div class="swiper-pagination"></div>
        </div>
    </section>
@endif