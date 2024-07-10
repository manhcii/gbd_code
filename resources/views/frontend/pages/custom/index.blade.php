@extends('frontend.layouts.page')

@php
  $page_title = $taxonomy->title ?? ($page->title ?? ($page->name ?? ''));
  $image_background = $taxonomy->json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? '');
@endphp
@push('style')
<link rel="stylesheet" href="{{ asset('themes/frontend/watches/css/about.css') }}" />
<link rel="stylesheet" href="{{ asset('themes/frontend/watches/css/service.css') }}" />
<link rel="stylesheet" href="{{ asset('themes/frontend/watches/css/customer.css') }}" />
<link rel="stylesheet" href="{{ asset('themes/frontend/watches/css/hiring.css') }}" />

@endpush
@section('content')
  {{-- Print all content by [module - route - page] without blocks content at here --}}
  @if (isset($page->content) && $page->content != '')
    <div class="section bg-white m-0" id="content-detail">
      <div class="container">
        {!! $page->content ?? '' !!}
      </div>
    </div>
  @endif
  {{-- End content --}}
@endsection
