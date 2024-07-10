@extends('frontend.layouts.default')

@php
  $page_title = $taxonomy->title ?? ($page->title ?? $page->name);
  $image_background = $taxonomy->json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? '');
  $page_brief = $taxonomy->json_params->brief->{$locale} ?? ($taxonomy->brief ?? null);
  $title = $taxonomy->json_params->title->{$locale} ?? ($taxonomy->title ?? null);
  $image = $taxonomy->json_params->image ?? null;
  $seo_title = $taxonomy->json_params->seo_title ?? $title;
  $seo_keyword = $taxonomy->json_params->seo_keyword ?? null;
  $seo_description = $taxonomy->json_params->seo_description ?? null;
  $seo_image = $image ?? null;
@endphp
@push('style')
<link rel="stylesheet" href="{{ asset('themes/frontend/watches/css/blog.css') }}" />
<link rel="stylesheet" href="{{ asset('themes/frontend/watches/css/about.css') }}" />
<link rel="stylesheet" href="{{ asset('themes/frontend/watches/css/project.css') }}" />
<style>
 
</style>
@endpush
@section('content')

<!-- END BANNER-->

<!-- START BLOGS -->
<div id="fhm-blog">
  <section style="background-image:url('{{ $image }}')" class="banner">
    <div class="container">
        <h2>BLOG</h2>
    </div>
  </section>
  <section class="blogs">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-md-7 col-12">
              @foreach ($posts as $key => $item)
              @php
                $title = $item->json_params->title->{$locale} ?? $item->title;
                $brief = $item->json_params->brief->{$locale} ?? $item->brief;
                $content = $item->json_params->content->{$locale} ?? $item->content;
                $image = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
                $date = date('B m, Y', strtotime($item->created_at));
                // $date = date('d', strtotime($item->created_at));
                // $month = date('M', strtotime($item->created_at));
                // $year = date('Y', strtotime($item->created_at));
                // Viet ham xu ly lay slug
                $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item->taxonomy_alias ?? $item->taxonomy_title, $item->taxonomy_id);
                $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item->alias ?? $title, $item->id, 'detail', $item->taxonomy_title);
              @endphp
                <div class="blogs-item">
                    <div class="blogs-img">
                        <img src="{{ $image }}" alt="blogs">
                    </div>
                    <ul class="blog-infor">
                        <li>
                            <img src="{{ asset('themes/frontend/watches/images/icon-admin.png') }}" alt="Admin"> By Admin
                        </li>
                        <li>
                            <img src="{{ asset('themes/frontend/watches/images/icon-calenda.png') }}" alt="Admin"> {{ $date }}
                        </li>
                        <li>
                            <img src="{{ asset('themes/frontend/watches/images/icon-comment.png') }}" alt="Admin"> No Comments
                        </li>
                    </ul>
                    <h3>{{ $title }}</h3>
                    <p>{!! $content !!}</p>
                    <a class="read-more d-flex align-items-center" href="{{ $alias }}" title="Tìm hiểu">Đọc thêm</a>
                </div>
                @endforeach
            </div>
            <div class="col-lg-5 col-md-5 col-12 right-side">
                <div class="blog-search">
                  <form action="{{ route('frontend.search.index') }}" method="get" >
                    <div class="search-item">
                        <input type="text"  name="keyword">
                        <button>
                          <img src="{{ asset('themes/frontend/watches/images/search_header.svg') }}" alt="icon">
                        </button>
                    </div>
                  </form>
                </div>
                <div class="blog-category">
                    <h3>Categories</h3>
                    @php
                      $params_taxonomy['status'] = App\Consts::TAXONOMY_STATUS['active'];
                      $params_taxonomy['taxonomy'] = App\Consts::TAXONOMY['post'];
                      
                      $taxonomys = App\Http\Services\ContentService::getCmsTaxonomy($params_taxonomy)->get();
                    @endphp
                    <ul>
                    @isset($taxonomys)

                      @foreach ($taxonomys as $item)
                      @if ($item->parent_id == 0 || $item->parent_id == null)
                        @php
                          $title = $item->json_params->title->{$locale} ?? $item->title;
                          $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item->alias ?? $title, $item->id);
                          
                          $url_current = url()->full();
                          $current = $alias_category == $url_current ? 'current-nav-item' : '';
                        @endphp
                        <li class="{{ $current }}">
                          <a href="{{ $alias_category }}" title="{{ $title }}">
                            {{ Str::limit($title, 100) }}
                          </a>
                        </li>
                      @endif
                    @endforeach
                    @endisset

                    </ul>
                </div>
                <div class="blog-relate">
                    <h3>Bài Post</h3>
                    <ul>
                      @php
                        $params_product['status'] = App\Consts::POST_STATUS['active'];
                        $params_product['is_type'] = App\Consts::POST_TYPE['post'];
                        $params_product['order_by'] = 'id';
                        
                        $recents = App\Http\Services\ContentService::getCmsPost($params_product)
                            ->limit(App\Consts::PAGINATE['sidebar'])
                            ->get();
                      @endphp
                      @isset($recents)
                      @foreach ($recents as $item)
                        @php
                          $title = $item->json_params->title->{$locale} ?? $item->title;
                          $brief = $item->json_params->brief->{$locale} ?? $item->brief;
                          $image = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
                          $date = date('d-m, Y', strtotime($item->created_at));
                          // Viet ham xu ly lay slug
                          $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['post'], $item->alias ?? $title, $item->id, 'detail', $item->taxonomy_title);
                        @endphp
                        <li>
                            <div class="blog-img">
                                <img src="{{ $image }}" alt="Blog detail">
                            </div>
                            <div class="blog-detail">
                                <div class="blog-detail-time">
                                    <img src="{{ asset('themes/frontend/watches/images/icon-calenda.png') }}" alt="Calenda">{{ $date }}
                                </div>
                                <a href="{{ $alias  }}"><h4>{{ $title }}</h4></a>
                            </div>
                        </li>
                        @endforeach
                        @endisset
                    </ul>
                </div>
            </div>
        </div>
    </div>
  </section>
</div>
<div id="fhm-project">
  <div class="projects">
  {{ $posts->withQueryString()->links('frontend.pagination.default') }}

  </div>
</div>
@endsection

