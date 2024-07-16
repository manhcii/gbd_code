@extends('frontend.layouts.default')

@php
    $page_title = $taxonomy->title ?? ($page->title ?? ($page->name ?? ''));
    $image_background =
        $taxonomy->json_params->image_background ?? ($web_information->image->background_breadcrumbs ?? '');
@endphp
@push('style')
    <style>
        .form-contact {
            margin-top: 30px;
            margin-bottom: 30px;
            padding: 2rem;
            border: 1px dashed #ccc;
            border-radius: 20px
        }

        .ratio-registertrial {
            background-image: url("{{ asset('themes/frontend/watches/images/dung-thu.png') }}");
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
@endpush
@section('content')
    <div class="container">
        <div class="row form-contact">
            <div class="col-12 col-md-7">
                <div class="form-registertrial p-4">
                    <div class="logo-section text-center mb-4"> <a href="/"> <img style="width:200px"
                                src="{{ $web_information->image->logo_header ?? asset('themes/frontend/watches/images/header-logo.svg') }}">
                        </a></div>
                </div>
                <div class="formt">
                    <form class="form_ajax" method="post" action="{{ route('frontend.contact.store') }}">
                        @csrf
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
                                            @php
                                                $params['status'] = App\Consts::POST_STATUS['active'];
                                                $params['is_type'] = App\Consts::POST_TYPE['resource'];
                                                $rows = App\Http\Services\ContentService::getCmsPost($params)->get();
                                            @endphp
                                            <select required class="form-control required " name="json_params[template]" id="template">
                                                <option value="">Chọn</option>
                                                @foreach ($rows as $item)
                                                @php
                                                    $title = $item->json_params->title->{$locale} ?? $item->title;
                                                    $alias_category = App\Helpers::generateRoute(App\Consts::TAXONOMY['resource'], $item->taxonomy_alias ?? $item->taxonomy_title, $item->taxonomy_id);
                                                    $alias = App\Helpers::generateRoute(App\Consts::TAXONOMY['resource'], $item->alias ?? $title, $item->id, 'detail', $item->taxonomy_title);
                                                    $domain = $item->json_params->git_repo??"";
                                                @endphp
                                                <option value="{{ $domain }}">{{ $title }}</option>
                                                @endforeach
                                            </select>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" name="git_repo" class="git_repo" value="">
                            <div class="col-12 col-md-12">
                                <div class="form-group">
                                    <p class="title-input"> Tên miền website:</p>
                                    <div class="input-group">
                                        <input class="form-control required " required type="text" name="domain" placeholder="Tên miền website" aria-required="true"> 
                                        <div class="input-group-prepend"> 
                                            <span class="input-group-text first-input-group">.efb.vn</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="trial-registration"> Đăng ký Website </button>
                    </form>
                </div>
            </div>
            <div show-theme="" class="col-12 col-md-5">
                <div class="add-theme">
                    <div class="ratio-registertrial">
                        <div class="text-registertrial">
                            <p> TẠO WEBSITE <br> MIỄN PHÍ</p> <span> +100.000 doanh nghiệp &amp; chủ shop đã
                                tin
                                dùng </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@push("script")
<script>
    $('#template').click(function () {
        $('.git_repo').val($(this).val())
    });
</script>
@endpush