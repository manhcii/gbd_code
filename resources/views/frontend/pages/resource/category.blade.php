@extends('frontend.layouts.default')

@php
  $page_title = $taxonomy->title ?? ($page->title ?? $page->name);
  $image_background = $taxonomy->json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? '');
  
  $title = $taxonomy->json_params->title->{$locale} ?? ($taxonomy->title ?? null);
  $image = $taxonomy->json_params->image ?? null;
  $seo_title = $taxonomy->json_params->seo_title ?? $title;
  $seo_keyword = $taxonomy->json_params->seo_keyword ?? null;
  $seo_description = $taxonomy->json_params->seo_description ?? null;
  $seo_image = $image ?? null;
@endphp
@push('style')
    <link rel="stylesheet" href="{{ asset('themes/frontend/watches/css/about.css') }}" />
    <link rel="stylesheet" href="{{ asset('themes/frontend/watches/css/service.css') }}" />
    <link rel="stylesheet" href="{{ asset('themes/frontend/watches/css/project.css') }}" />
  <style>
    
  </style>
@endpush
@section('content')
<div id="fhm-project">
  <section class="banner">
    <h2>{{ $page_title }}</h2>
    <p>{!! $taxonomy->json_params->brief->{$locale} ??""  !!}</p>
  </section>
  <!-- END BANNER-->
  
  <!-- START PROJECTS -->
  <section class="projects">
    <div class="container">
        <div class="row projects-row">
          @foreach ($posts as $item)
          @php
            $title = $item->json_params->title->{$locale} ?? $item->title;
            $brief = $item->json_params->brief->{$locale} ?? $item->brief;
            $image = $item->image_thumb != '' ? $item->image_thumb : ($item->image != '' ? $item->image : null);
            $date = date('H:i d/m/Y', strtotime($item->created_at));
            // Viet ham xu ly lay alias bai viet
            $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['resource'], $item->taxonomy_alias ?? $item->taxonomy_title, $item->taxonomy_id);
            $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['resource'], $item->alias ?? $title, $item->id, 'detail', $item->taxonomy_title);
            $link_demo = route('frontend.demo', ['alias' => $item->alias]);
          @endphp
            <div class="col-lg-4 col-md-4 col-12">
                <div class="project-item">
                    <div class="project-img">
                        <img src="{{ $image }}" alt="projects">
                    </div>
                    <h3>{{ $title }} <a style="margin-left: 15px" href="{{ $link_demo }}"> <button type="button" class="btn btn-warning link_demo">Link
                      demo</button></a></h3>
                    
                </div>
            </div>
            @endforeach
        </div>
        {{ $posts->withQueryString()->links('frontend.pagination.default') }}
        
    </div>
  </section>
</div>

@endsection
