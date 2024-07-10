@extends('frontend.layouts.email')

@section('content')
  <h1>@lang('Cảm ơn bạn đã sử dụng dịch vụ')</h1>

  <p>@lang('Thông tin đăng nhập'): </p>

  <p>
    <strong>@lang('Link')</strong>: 
  </p><a href="{{ $link }}">{{ $link }}</a>
  <p>
    <strong>@lang('Tài khoản')</strong>: {{ $user }}
  </p>
  <p>
    <strong>@lang('Mật khẩu')</strong>: {{ $pass }}
  </p>
 
@endsection
