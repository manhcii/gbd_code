@if ($block)
    @php
        $title = $block->json_params->title->{$locale} ?? $block->title;
        $brief = $block->json_params->brief->{$locale} ?? $block->brief;
        $content = $block->json_params->content->{$locale} ?? $block->content;
        $image = $block->image != '' ? $block->image : null;
        $background = $block->image_background != '' ? $block->image_background : null;
        $url_link = $block->url_link != '' ? $block->url_link : '';
        $url_link_title = $block->json_params->url_link_title->{$locale} ?? $block->url_link_title;
        $block_childs = $blocks->filter(function ($item, $key) use ($block) {
            return $item->parent_id == $block->id;
        });
    @endphp
    <section class="global">
        <div class="container">
            <div class="brand-global">
                <div class="swiper project-global">
                    <div class="swiper-wrapper  align-items-center">
                        @if ($block_childs)
                            @foreach ($block_childs as $item)
                                @php
                                    $image_child = $item->image != '' ? $item->image : null;
                                @endphp
                                <div class="swiper-slide">
                                    <img src="{{ $image_child }}" alt="brand">
                                </div>
                            @endforeach
                        @endif
                    </div>
                </div>
            </div>
            <div class="info-brand">
                <div class="row">
                    <div class="col-md-4 info-brand-left">
                        <h3>{{ $title }}</h3>
                    </div>
                    <div class="col-md-8 ">
                        <div class="list-brand ">
                            <ul class="flex-wrap">
                                <li class="active">THIẾT KẾ LOGO - NHẬN DIỆN THƯƠNG HIỆU</li>
                                <li class="">WEBSITE</li>
                                <li class="">DIGITAL</li>
                                <li class="">CONTENTS</li>
                                <li class="">PRODUCT PHOTOGRAPHY
                                </li>
                                <li>+ Nhiều hơn nữa
                                </li>
                            </ul>
                        </div>
                        <div class="form-tuvan">
                            <form action="{{ route('frontend.contact.store') }}" method="post" class="form_ajax">
                                @csrf
                                <input type="hidden"name="name" value="Đăng ký mới" />
                                <input type="text" name="email"
                                    placeholder="Nhập số điện thoại hoặc email của bạn">
                                <button class="submit-button">Nhận tư vấn miễn phí <img
                                        src="{{ asset('themes/frontend/images/form-r.svg') }}" alt=""></button>
                                <input type="hidden" name="is_type" value="contact">
                            </form>
                        </div>
                        <div class="contact">
                            <div class="d-flex align-items-center flex-wrap">
                                <div class="contact-p-right">
                                    <p>{{ $url_link_title }}</p>
                                </div>
                                <div class="phone-contact">
                                    <div class="d-flex align-items-center">
                                        <img src="{{ asset('themes/frontend/watches/images/phone_contact.svg') }}"
                                            alt="">
                                        <h3>{{ $web_information->information->phone ?? '' }}</h3>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endif
