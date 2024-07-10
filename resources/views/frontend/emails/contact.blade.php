@extends('frontend.layouts.email')

@section('content')
  <h1>@lang('Bạn nhận được khách hàng đăng ký themes mới trên hệ thống')</h1>

  <p>@lang('Content appointment'): </p>

  <p>
    <strong>@lang('Fullname')</strong>: {{ $contact->name }}
  </p>
  <p>
    <strong>@lang('Email')</strong>: {{ $contact->email }}
  </p>
  <p>
    <strong>@lang('Phone')</strong>: {{ $contact->phone }}
  </p>
  <p>
    <strong>@lang('Content note')</strong>: {{ $contact->content }}
  </p>
  <p>
    <strong>@lang('Link')</strong>:<a href="{{ route('contacts.index') }}">
      @lang('View detail')
    </a>
  </p>
@endsection
