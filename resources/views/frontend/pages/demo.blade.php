<!DOCTYPE html>
<html lang="{{ $locale ?? 'vi' }}">
    @php
    $lang_default='vi';
    $seo_title = $page->json_params->title->$locale ?? ($page->title ?? ($locale == $lang_default ? $web_information->information->seo_title : $web_information->information->{$locale . '-seo_title'} ?? ''));
    $seo_keyword = $page->keyword ?? ($locale == $lang_default ? $web_information->information->seo_keyword : $web_information->information->{$locale . '-seo_keyword'} ?? '');
    $seo_description = $page->description ?? ($locale == $lang_default ? $web_information->information->seo_description : $web_information->information->{$locale . '-seo_description'} ?? '');
    $seo_image = $page->json_params->image ?? ($web_information->information->seo_og_image ?? '');
@endphp
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
        {{ $seo_title }}
    </title>
    <link rel="icon" href="{{ $web_information->information->favicon ?? '' }}" type="image/x-icon">
    {{-- Print SEO --}}
    
    <meta name="description" content="{{ $seo_description }}" />
    <meta name="keywords" content="{{ $seo_keyword }}" />
    <meta name="news_keywords" content="{{ $seo_keyword }}" />
    <meta property="og:image" content="{{ $seo_image }}" />
    <meta property="og:title" content="{{ $seo_title }}" />
    <meta property="og:description" content="{{ $seo_description }}" />
    <meta property="og:url" content="{{ Request::fullUrl() }}" />
    {{-- End Print SEO --}}
    {{-- Include style for app --}}
    @include('frontend.panels.styles')
    {{-- Styles custom each page --}}
    @stack('style')

    @stack('schema')
    <link rel="stylesheet" href="{{ asset('themes/frontend/watches/css/demo.css') }}" />
</head>

<body class="page--styles-preview">
   
    <input id="list-banquyen" value="oriental-theme, capsule-hotel," class="hidden" />
    <div id="SiteContainer">
        <div id="SiteNavContainer" role="banner">
            <div class="marketing-nav-wrapper headroom headroom--verytop headroom--top" role="navigation"
                aria-label="Main Navigation">
                <nav class="marketing-nav marketing-nav__primary" id="HaravanMainNav" itemscope="itemscope"
                    itemtype="http://schema.org/SiteNavigationElement">
                    <ul class="marketing-nav__items">
                        <li>
                            <a class="marketing-nav__item link-product" itemprop="name" href="javascript:void(0)" onclick="window.history.back()">
                                <span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                        viewBox="0 0 24 24">
                                        <g fill="none" fill-rule="evenodd">
                                            <path
                                                d="M24 0v24H0V0zM12.593 23.258l-.011.002l-.071.035l-.02.004l-.014-.004l-.071-.035c-.01-.004-.019-.001-.024.005l-.004.01l-.017.428l.005.02l.01.013l.104.074l.015.004l.012-.004l.104-.074l.012-.016l.004-.017l-.017-.427c-.002-.01-.009-.017-.017-.018m.265-.113l-.013.002l-.185.093l-.01.01l-.003.011l.018.43l.005.012l.008.007l.201.093c.012.004.023 0 .029-.008l.004-.014l-.034-.614c-.003-.012-.01-.02-.02-.022m-.715.002a.023.023 0 0 0-.027.006l-.006.014l-.034.614c0 .012.007.02.017.024l.015-.002l.201-.093l.01-.008l.004-.011l.017-.43l-.003-.012l-.01-.01z" />
                                            <path fill="currentColor"
                                                d="M7.94 13.06a1.5 1.5 0 0 1 0-2.12l5.656-5.658a1.5 1.5 0 1 1 2.121 2.122L11.122 12l4.596 4.596a1.5 1.5 0 1 1-2.12 2.122z" />
                                        </g>
                                    </svg>
                                </span> Back
                            </a>
                        </li>
                    </ul>
                    <ul class="marketing-nav__items device-preview-controls">
                        <li>
                            <a class="marketing-nav__item device-preview-controls__toggle device-preview-controls__toggle--active"
                                data-view="desktop" itemprop="name" id="DesktopPreview" href="#">
                                <div class="responsive-svg device-preview-controls__icon device-preview-controls__icon--desktop"
                                    style="padding-bottom: 100%">
                                    <svg viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M14 0H2C.897 0 0 .897 0 2v8c0 1.103.897 2 2 2h4.667v2h-2c-.552 0-1 .447-1 1 0 .553.448 1 1 1h6.667c.552 0 1-.447 1-1 0-.553-.448-1-1-1h-2v-2H14c1.104 0 2-.897 2-2V2c0-1.103-.896-2-2-2zM2 10V2h12v8H2z">
                                        </path>
                                    </svg>
                                </div>
                                Desktop
                            </a>
                        </li>
                        <li>
                            <a class="marketing-nav__item device-preview-controls__toggle" data-view="mobile"
                                itemprop="name" id="MobilePreview" href="#">
                                <div class="responsive-svg device-preview-controls__icon" style="padding-bottom: 100%">
                                    <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                        <path
                                            d="M18.7 0H6.3C5.6 0 5 .6 5 1.3v21.3c0 .8.6 1.4 1.3 1.4h12.3c.7 0 1.4-.587 1.4-1.287V1.3c0-.7-.6-1.3-1.3-1.3zm-6.2 22.6c-.7 0-1.3-.6-1.3-1.3 0-.7.6-1.3 1.3-1.3.7 0 1.3.6 1.3 1.3 0 .7-.6 1.3-1.3 1.3zm4.5-4c0 .2-.2.4-.4.4H8.4c-.2 0-.4-.2-.4-.4V3.4c0-.2.2-.4.4-.4h8.1c.3 0 .5.2.5.4v15.2z">
                                        </path>
                                    </svg>
                                </div>
                                Mobile
                            </a>
                        </li>
                    </ul>
                    <ul class="marketing-nav__items marketing-nav__user">
                        <li>
                            <a target="_blank" href="{{ route('frontend.contact') }}" class="d-md-inline-block btn-registration">Chọn giao diện này</a>
                            <a href="{{ route('frontend.home') }}" class="marketing-nav__item hide--mobile link-theme"
                                title="Remove preview bar">
                                <span>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                        viewBox="0 0 24 24">
                                        <g fill="none" fill-rule="evenodd">
                                            <path
                                                d="M24 0v24H0V0zM12.593 23.258l-.011.002l-.071.035l-.02.004l-.014-.004l-.071-.035c-.01-.004-.019-.001-.024.005l-.004.01l-.017.428l.005.02l.01.013l.104.074l.015.004l.012-.004l.104-.074l.012-.016l.004-.017l-.017-.427c-.002-.01-.009-.017-.017-.018m.265-.113l-.013.002l-.185.093l-.01.01l-.003.011l.018.43l.005.012l.008.007l.201.093c.012.004.023 0 .029-.008l.004-.014l-.034-.614c-.003-.012-.01-.02-.02-.022m-.715.002a.023.023 0 0 0-.027.006l-.006.014l-.034.614c0 .012.007.02.017.024l.015-.002l.201-.093l.01-.008l.004-.011l.017-.43l-.003-.012l-.01-.01z" />
                                            <path fill="currentColor"
                                                d="m12 14.122l5.303 5.303a1.5 1.5 0 0 0 2.122-2.122L14.12 12l5.304-5.303a1.5 1.5 0 1 0-2.122-2.121L12 9.879L6.697 4.576a1.5 1.5 0 1 0-2.122 2.12L9.88 12l-5.304 5.304a1.5 1.5 0 1 0 2.122 2.12z" />
                                        </g>
                                    </svg>
                                </span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- BEGIN product review -->
        <div id="product-banquyen" class="product-review hidden">
            <div class="container">
                <div class="product-review-ct"></div>
            </div>
        </div>
        <!-- END product review -->
        <div id="PageContainer" class="">
            <main role="main" id="Main">
                <div class="device-preview">
                    <div class="loader-gif"></div>
                    <div class="device-preview__container" id="PreviewFrameContainer">
                        <div class="device-preview__iphone">
                            <div class="iphone--notch"><span></span><span></span></div>
                            <div class="iphone--volume">
                                <span></span><span></span><span></span><span></span>
                            </div>
                        </div>

                        <iframe id="PreviewFrame" src="" class="device-preview__iframe">
                        </iframe>
                    </div>
                </div>
            </main>
        </div>
    </div>

    @include('frontend.panels.scripts')
    {{-- Include scripts --}}
    <script src="{{ asset('themes/frontend/watches/js/demo.js') }}"></script>
    <script src="{{ asset('themes/frontend/watches/js/api.jquery.js') }}"></script>
    @stack('script')
    <script>
        $(document).ready(function() {
            // Haravan.clear(function() {});
            var parseQueryString = function() {
                var str = window.location.search;
                var objURL = {};
                str.replace(
                    new RegExp("([^?=&]+)(=([^&]*))?", "g"),

                    function($0, $1, $2, $3) {
                        objURL[$1] = $3;
                    }
                );
                return objURL;
            };
            var params = parseQueryString();
            var url_theme = "{{ $detail->json_params->link_demo??"" }}";
            var url_product =
                "https://themes.haravan.com/products/" + params["pro"];
            document.getElementById("PreviewFrame").src = url_theme;
            // $(".link-product").attr("href", url_product);
            // $(".link-theme").attr("href", url_product);
            //$('.link-theme').attr('href',url_theme);
            if (
                !(
                    navigator.userAgent.match(/iPhone/i) ||
                    navigator.userAgent.match(/iPod/i) ||
                    navigator.userAgent.match(/iPad/i) ||
                    navigator.userAgent.match(/Android/i) ||
                    navigator.userAgent.match(/Opera Mini/)
                )
            ) {} else {
                $("#SiteNavContainer").remove();
                $(".page--styles-preview #PageContainer").css("padding-top", "0");
            }
            // xu ly ban quyen
            var list_banquyen = $("#list-banquyen").val();
            var parseQueryString = function() {
                var str = window.location.search;
                var objURL = {};
                str.replace(
                    new RegExp("([^?=&]+)(=([^&]*))?", "g"),

                    function($0, $1, $2, $3) {
                        objURL[$1] = $3;
                    }
                );
                return objURL;
            };
            var params = parseQueryString();
            var handle_product = params["pro"];
            if (list_banquyen.indexOf(handle_product) > -1) {
                $("#PageContainer").addClass("hidden");
                $("#product-banquyen").removeClass("hidden");
                $(".device-preview-controls, .marketing-nav__user").addClass(
                    "hidden"
                );
                if (handle_product == "capsule-hotel") {
                    $("#product-banquyen").addClass("product-banquyen-2");
                } else {
                    $("#product-banquyen").addClass("product-banquyen-1");
                }
                console.log("co chua");
            } else {
                console.log("Khong co chua");
            }
        });
        var parseQueryString = function() {
            var str = window.location.search;
            var objURL = {};
            str.replace(
                new RegExp("([^?=&]+)(=([^&]*))?", "g"),

                function($0, $1, $2, $3) {
                    objURL[$1] = $3;
                }
            );
            return objURL;
        };
        var params = parseQueryString();
        var handle_product = params["pro"];
        var view = params["on"];
        //console.log(view);
        var variant_id_1nam = 0;
        //var variant_id_2nam = 0;
        //var variant_id_3nam = 0;

        // Haravan.getProduct(handle_product, function(product) {
        //     //console.log(product.variants[0].id);
        //     variant_id_1nam = product.variants[0].id;
        //     //variant_id_2nam = product.variants[1].id;
        //     //variant_id_3nam = product.variants[2].id;
        // });
    </script>


    <script>
        var page_loading_gif_3 = '{{ url('data/images/page-loading-gif-3.webp') }}';
        var loading = '{{ url('data/images/loading.gif') }}';
        window.ThemeStore.config = {
            spinnerImage: loading,
        };
        $(function() {
            ThemeStore.init();
        });
        $(document).ready(function() {
            if (view == "mobile") {
                $("#MobilePreview").click();
                // document.getElementById('PreviewFrame').src = document.getElementById('PreviewFrame').src;
                $(".device-preview").addClass("active-mobile");
            }
        });
        $(document).on("click", "a#MobilePreview,a#DesktopPreview", function() {
            if ($(this).attr("data-view") == "mobile") {
                $(".device-preview").addClass("active-mobile");
            } else {
                $(".device-preview").removeClass("active-mobile");
            }
            $(".loader-gif").html(
                "<img src='" + page_loading_gif_3 + "'>"
            );
            $("#PreviewFrame").css({
                opacity: "0"
            });
            setTimeout(function() {
                $("#PreviewFrame").attr("src", $("#PreviewFrame").attr("src"));
                setTimeout(function() {
                    $("#PreviewFrame").css({
                        opacity: "1"
                    });
                    $(".loader-gif").html("");
                }, 600);
            }, 600);
        });
    </script>

</body>

</html>