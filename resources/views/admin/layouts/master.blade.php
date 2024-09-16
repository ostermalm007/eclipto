<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>@yield('title') | {{ settings('name') }}</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

        <meta name="csrf-token" content="{{ csrf_token() }}"><!-- for ajax -->

        <script type="text/javascript">
            var SITE_URL = "{{url('/')}}";
            var ADMIN_PREFIX = "{{ config('adminPrefix') }}";
            var ADMIN_URL = SITE_URL + '/' + ADMIN_PREFIX;
            var FIATDP = "<?php echo number_format(0, preference('decimal_format_amount', 2)); ?>";
            var CRYPTODP = "<?php echo number_format(0, preference('decimal_format_amount_crypto', 8)); ?>";
        </script>

        <!---favicon-->
        <link rel="shortcut icon" href="{{ faviconPath() }}" />

        @include('admin.layouts.partials.head_style')
        @include('admin.layouts.partials.head_script')
        <style>
            .margin-left-45px{margin-left:45px;}
            
            .skin-blue .sidebar-menu > li.active > a, .skin-blue .sidebar-menu > li:hover > a {background:#00000014; }
            .skin-blue .sidebar a{font-weight: 400!important;}
            .skin-blue .sidebar-menu>li>.treeview-menu{background-color:transparent!important }
            
            #navbar-logo{visibility: hidden;}
            @media only screen and (max-width: 600px) {
                #navbar-logo{visibility: visible!important;}
            }
        </style>

    </head>

    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper_custom">
            @include('admin.layouts.partials.header')

            <!-- sidebar -->
            <aside class="main-sidebar bg-white shadow shadow-lg" style="position: fixed;margin-top:-50px; z-index:9999999;height:120%">
                <section class="sidebar ">
                    
                    <a href="{{ route('dashboard') }}" class="logo pt-12 text-decoration-none bg-white" id="sidebar-logo">
                        {{-- <span class="logo-mini"><b>{{ settings('name') }}</b></span> --}}
                        <img src="{{ asset('/public/assets') }}/images/logo/logo.png" height="40px" style="margin-left:19px">
                    </a>
                    @include('admin.layouts.partials.sidebar_menu')
                </section>
            </aside>

            <div class="content-wrapper" style="background: rgb(250 250 250/1)">
                <!-- Main content -->
                <section class="content">
                    @yield('page_content')
                </section>
            </div>

            <!-- footer -->
            <footer class="main-footer">
                @include('admin.layouts.partials.footer')
            </footer>
            <div class="control-sidebar-bg"></div>
        </div>

        <!-- body_script -->
        @include('admin.layouts.partials.body_script')
        @stack('extra_body_scripts')
        <script>
            $(document).on('click', function() {
                var isMobile = $(window).width() <= 768;

                if (isMobile) {
                    $("#sidebar-logo").css('visibility','hidden');
                    $("#navbar-logo").css('visibility','visible');
                }else{
                    if ($('body').hasClass('sidebar-collapse')) {
                        $("#sidebar-logo").css('visibility','hidden');
                        $("#navbar-logo").css('visibility','visible');
                    } else {
                        $("#navbar-logo").css('visibility','hidden');
                        $("#sidebar-logo").css('visibility','visible');
                    }
                }
                
                
            });

        </script>
    </body>
</html>
