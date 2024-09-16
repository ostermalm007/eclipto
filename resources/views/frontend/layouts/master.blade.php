<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Eclipto</title>
	<link rel="canonical" href="{{ url('/') }}" />
  <link rel="shortcut icon" href="{{ asset('/public/assets') }}/images/logo/favicon.png" type="image/x-icon">
  <link rel="icon" href="{{ asset('/public/assets') }}/images/logo/favicon.png" type="image/x-icon">
  <!--- End favicon-->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Public+Sans:wght@500;600;700;800&display=swap" rel="stylesheet">
  <!-- End google font  -->
  <link rel="stylesheet" href="{{ asset('/public/assets') }}/css/bootstrap.min.css" />
  <link rel="stylesheet" href="{{ asset('/public/assets') }}/css/fontawesome.css" />
  <link rel="stylesheet" href="{{ asset('/public/assets') }}/css/slick.css" />
  <link rel="stylesheet" href="{{ asset('/public/assets') }}/css/magnific-popup.css" />
  <link rel="stylesheet" href="{{ asset('/public/assets') }}/css/swiper-bundle.min.css" />
  <link rel="stylesheet" href="{{ asset('/public/assets') }}/css/icomoon-font.css" />
  <link rel="stylesheet" href="{{ asset('/public/assets') }}/css/animate.css" />
  <!-- Code Editor  -->
  <link rel="stylesheet" href="{{ asset('/public/assets') }}/css/main.css" />
  <link rel="stylesheet" href="{{ asset('/public/assets') }}/css/app.min.css" />
  <style>
    :root {
      --bs-primary: #2C04FE;
    }
    .btn:hover {
      color: #fff !important;
      background: #2C04FE !important;
    }
  </style>
  @yield('styles')
</head>
<body class="light">
  {{-- <header class="site-header fugu--header-section site-header--menu-right fugu--header-three pt-0" id="sticky-menu">
    <div class="container-fluid">
      <nav class="navbar site-navbar">
        <!-- Brand Logo-->
        <div class="brand-logo rt-mr-20">
          <a href='{{ url("/") }}'>
            <img src="{{ asset('/public/assets') }}/images/logo/logo.svg" height="60px"  alt="Eclipto" class="light-version-logo">
          </a>
        </div>
        <div class="menu-block-wrapper">
          <div class="menu-overlay"></div>
          <nav class="menu-block" id="append-menu-header">
            <div class="mobile-menu-head">
              <div class="go-back">
                <i class="fa fa-angle-left"></i>
              </div>
              <div class="current-menu-title"></div>
              <div class="mobile-menu-close">&times;</div>
            </div>
            <ul class="site-menu-main mt-4 p-0">
              <li class="nav-item nav-item-has-children">
                <a href="#" class="nav-link-item drop-trigger">Demo <i class="fas fa-angle-down"></i></a>
                <ul class="sub-menu" id="submenu-1">
                  <li class="sub-menu--item">
                    <a href='index.html'>home 01</a>
                  </li>
                  <li class="sub-menu--item">
                    <a href='index-2.html'>home 02</a>
                  </li>
                  <li class="sub-menu--item">
                    <a href='index-3.html'>home 03</a>
                  </li>
                  <li class="sub-menu--item">
                    <a href='index-4.html'>home 04</a>
                  </li>
                  <li class="sub-menu--item">
                    <a href='index.html'>home 05</a>
                  </li>
                </ul>
              </li>
              <li class="nav-item nav-item-has-children">
                <a href="#" class="nav-link-item drop-trigger">Pages <i class="fas fa-angle-down"></i></a>
                <ul class="sub-menu" id="submenu-2">
                  <li class="sub-menu--item nav-item-has-children">
                    <a href="#" data-menu-get="h3" class="drop-trigger">About <i class="fas fa-angle-down"></i></a>
                    <ul class="sub-menu shape-none" id="submenu-3">
                      <li class="sub-menu--item">
                        <a href='about-dark.html'>About Dark</a>
                      </li>
                      <li class="sub-menu--item">
                        <a href='about-us.html'>About light 01</a>
                      </li>
                      <li class="sub-menu--item">
                        <a href='about-light.html'>About light 02</a>
                      </li>
                    </ul>
                  </li>
                  <li class="sub-menu--item nav-item-has-children">
                    <a href="#" data-menu-get="h3" class="drop-trigger">blog light <i class="fas fa-angle-down"></i></a>
                    <ul class="sub-menu shape-none" id="submenu-4">
                      <li class="sub-menu--item">
                        <a href='blog-light.html'>blog light</a>
                      </li>
                      <li class="sub-menu--item">
                        <a href='blog.html'>blog light sidebar 01</a>
                      </li>
                      <li class="sub-menu--item">
                        <a href='blog-light-sidebar.html'>blog light sidebar 02</a>
                      </li>
                      <li class="sub-menu--item">
                        <a href='single-blog.html'>blog light details</a>
                      </li>
                    </ul>
                  </li>
                  <li class="sub-menu--item nav-item-has-children">
                    <a href="#" data-menu-get="h3" class="drop-trigger">blog dark <i class="fas fa-angle-down"></i></a>
                    <ul class="sub-menu shape-none" id="submenu-5">
                      <li class="sub-menu--item">
                        <a href='blog-dark.html'>blog dark</a>
                      </li>
                      <li class="sub-menu--item">
                        <a href='blog-dark-sidebar.html'>blog dark sidebar</a>
                      </li>
                      <li class="sub-menu--item">
                        <a href='single-dark-blog.html'>blog dark details</a>
                      </li>
                    </ul>
                  </li>
                  <li class="sub-menu--item nav-item-has-children">
                    <a href="#" data-menu-get="h3" class="drop-trigger">Service<i class="fas fa-angle-down"></i>
                    </a>
                    <ul class="sub-menu shape-none" id="submenu-6">
                      <li class="sub-menu--item">
                        <a href='service.html'>service</a>
                      </li>
                      <li class="sub-menu--item">
                        <a href='single-service.html'>single service</a>
                      </li>
                    </ul>
                  </li>
                  <li class="sub-menu--item nav-item-has-children">
                    <a href="#" data-menu-get="h3" class="drop-trigger">Team<i class="fas fa-angle-down"></i>
                    </a>
                    <ul class="sub-menu shape-none" id="submenu-7">
                      <li class="sub-menu--item">
                        <a href='team-dark.html'>Team dark</a>
                      </li>
                      <li class="sub-menu--item">
                        <a href='team.html'>Team light 01</a>
                      </li>
                      <li class="sub-menu--item">
                        <a href='team-light.html'>Team light 02</a>
                      </li>
                      <li class="sub-menu--item">
                        <a href='single-team.html'>single team</a>
                      </li>
                    </ul>
                  </li>
                  <li class="sub-menu--item nav-item-has-children">
                    <a href="#" data-menu-get="h3" class="drop-trigger">Career<i class="fas fa-angle-down"></i>
                    </a>
                    <ul class="sub-menu shape-none" id="submenu-8">
                      <li class="sub-menu--item">
                        <a href='career.html'>Career</a>
                      </li>
                      <li class="sub-menu--item">
                        <a href='single-career.html'>single Career</a>
                      </li>
                    </ul>
                  </li>
                  <li class="sub-menu--item nav-item-has-children">
                    <a href="#" data-menu-get="h3" class="drop-trigger">Portfolio<i class="fas fa-angle-down"></i>
                    </a>
                    <ul class="sub-menu shape-none" id="submenu-9">
                      <li class="sub-menu--item">
                        <a href='portfolio-01.html'>Portfolio Classic</a>
                      </li>
                      <li class="sub-menu--item">
                        <a href='portfolio-02.html'>Portfolio Minimal</a>
                      </li>
                      <li class="sub-menu--item">
                        <a href='portfolio-03.html'>Portfolio Modern</a>
                      </li>
                      <li class="sub-menu--item">
                        <a href='single-portfolio.html'>Single Portfolio</a>
                      </li>
                    </ul>
                  </li>
                  <li class="sub-menu--item nav-item-has-children">
                    <a href="#" data-menu-get="h3" class="drop-trigger">Pricing Light<i class="fas fa-angle-down"></i>
                    </a>
                    <ul class="sub-menu shape-none" id="submenu-10">
                      <li class="sub-menu--item">
                        <a href='pricing-light-01.html'>pricing light 01</a>
                      </li>
                      <li class="sub-menu--item">
                        <a href='pricing-light-02.html'>pricing light 02</a>
                      </li>
                    </ul>
                  </li>
                  <li class="sub-menu--item nav-item-has-children">
                    <a href="#" data-menu-get="h3" class="drop-trigger">Pricing Dark<i class="fas fa-angle-down"></i>
                    </a>
                    <ul class="sub-menu shape-none" id="submenu-11">
                      <li class="sub-menu--item">
                        <a href='pricing-dark-01.html'>pricing dark 01</a>
                      </li>
                      <li class="sub-menu--item">
                        <a href='pricing-dark-02.html'>pricing dark 02</a>
                      </li>
                    </ul>
                  </li>
                  <li class="sub-menu--item nav-item-has-children">
                    <a href="#" data-menu-get="h3" class="drop-trigger">Privacy Policy<i class="fas fa-angle-down"></i>
                    </a>
                    <ul class="sub-menu shape-none" id="submenu-12">
                      <li class="sub-menu--item">
                        <a href='privacy-policy-light.html'>Privacy Policy light</a>
                      </li>
                      <li class="sub-menu--item">
                        <a href='privacy-policy-dark.html'>Privacy Policy dark</a>
                      </li>
                    </ul>
                  </li>
                  <li class="sub-menu--item nav-item-has-children">
                    <a href="#" data-menu-get="h3" class="drop-trigger">Utility<i class="fas fa-angle-down"></i>
                    </a>
                    <ul class="sub-menu shape-none" id="submenu-13">
                      <li class="sub-menu--item">
                        <a href='faq.html'>faq</a>
                      </li>
                      <li class="sub-menu--item">
                        <a href='error-404.html'>Error 404</a>
                      </li>
                      <li class="sub-menu--item">
                        <a href='testimonial.html'>testimonial</a>
                      </li>
                      <li class="sub-menu--item">
                        <a href='coming-soon.html'>Coming Soon</a>
                      </li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li class="nav-item nav-item-has-children has-megamenu">
                <a href="#" class="nav-link-item drop-trigger">elements <i class="fas fa-angle-down"></i></a>
                <div class="sub-menu megamenu  megadropdown-center  d-lg-flex" id="submenu-100">
                  <ul class="col-lg-12 row-lg list-unstyled py-lg-7">
                    <li class="col-lg-3">
                      <div class="single-dropdown-block">
                        <h3>about Style</h3>
                        <a class='mega-drop-menu-item sub-menu--item' href='about-dark.html'>About us Dark</a>
                        <a class='mega-drop-menu-item sub-menu--item' href='about-us.html'>about us light 01</a>
                        <a class='mega-drop-menu-item sub-menu--item' href='about-light.html'>about us light 01</a>
                      </div>
                    </li>
                    <li class="col-lg-3">
                      <div class="single-dropdown-block">
                        <h3>blog Style</h3>
                        <a class='mega-drop-menu-item sub-menu--item' href='blog-dark.html'>blog dark</a>
                        <a class='mega-drop-menu-item sub-menu--item' href='blog-dark-sidebar.html'>blog dark sidebar</a>
                        <a class='mega-drop-menu-item sub-menu--item' href='single-dark-blog.html'>blog dark details</a>
                        <a class='mega-drop-menu-item sub-menu--item' href='blog-light.html'>blog light</a>
                        <a class='mega-drop-menu-item sub-menu--item' href='blog.html'>blog light sidebar 01</a>
                        <a class='mega-drop-menu-item sub-menu--item' href='blog-light-sidebar.html'>blog light sidebar 02</a>
                        <a class='mega-drop-menu-item sub-menu--item' href='single-blog.html'>blog light details</a>
                      </div>
                    </li>
                    <li class="col-lg-3">
                      <div class="single-dropdown-block">
                        <h3>Portfolio Style</h3>
                        <a class='mega-drop-menu-item sub-menu--item' href='portfolio-01.html'>Portfolio Classic </a>
                        <a class='mega-drop-menu-item sub-menu--item' href='portfolio-02.html'>Portfolio Minimal</a>
                        <a class='mega-drop-menu-item sub-menu--item' href='portfolio-03.html'>Portfolio Modern</a>
                        <a class='mega-drop-menu-item sub-menu--item d-block' href='single-portfolio.html'>portfolio details</a>
                      </div>
                    </li>
                    <li class="col-lg-3">
                      <div class="single-dropdown-block">
                        <h3>contact style</h3>
                        <a class='mega-drop-menu-item sub-menu--item d-block' href='contact-dark.html'>contact dark</a>
                        <a class='mega-drop-menu-item sub-menu--item d-block' href='contact.html'>contact light 01</a>
                        <a class='mega-drop-menu-item sub-menu--item d-block' href='contact-light.html'>contact light 02</a>
                      </div>
                    </li>
                  </ul>
                </div>
              </li>
              <li class="nav-item nav-item-has-children">
                <a href="#" class="nav-link-item drop-trigger">Blog <i
                  class="fas fa-angle-down"></i></a>
                <ul class="sub-menu" id="submenu-14">
                  <li class="sub-menu--item">
                    <a href='blog-dark.html'>blog dark</a>
                  </li>
                  <li class="sub-menu--item">
                    <a href='blog-dark-sidebar.html'>blog dark sidebar</a>
                  </li>
                  <li class="sub-menu--item">
                    <a href='single-dark-blog.html'>blog dark details</a>
                  </li>
                  <li class="sub-menu--item">
                    <a href='blog-light.html'>blog light</a>
                  </li>
                  <li class="sub-menu--item">
                    <a href='blog.html'>blog light sidebar 01</a>
                  </li>
                  <li class="sub-menu--item">
                    <a href='blog-light-sidebar.html'>blog light sidebar 02</a>
                  </li>
                  <li class="sub-menu--item">
                    <a href='single-blog.html'>blog light details</a>
                  </li>
                </ul>
              </li>
              <li class="nav-item nav-item-has-children">
                <a href="#" class="nav-link-item drop-trigger">Contact us <i
                  class="fas fa-angle-down"></i></a>
                <ul class="sub-menu" id="submenu-15">
                  <li class="sub-menu--item">
                    <a href='contact-dark.html'>contact dark</a>
                  </li>
                  <li class="sub-menu--item">
                    <a href='contact.html'>contact light 01</a>
                  </li>
                  <li class="sub-menu--item">
                    <a href='contact-light.html'>contact light 02</a>
                  </li>
                </ul>
              </li>

              @if(!empty(getMenuContent('Header')))
                @foreach(getMenuContent('Header') as $top_navbar)
                    <li class="nav-item {{ isset( $menu ) && ( $menu == $top_navbar->url ) ? 'nav-active': '' }}">
                        <a href="{{ url($top_navbar->url) }}" class="nav-link-item"> {{ $top_navbar->name }}</a>
                    </li>
                @endforeach
              @endif

              <li class="nav-item">
                <a href="{{ url('/blogs') }}" class="nav-link-item drop-trigger"> 
                    <i class="fas fa-exchange"></i>
                    Blogs
                </a>
              </li>
              <li class="nav-item mr-3">
                <a href="{{ url('crypto-exchange/create') }}" class="nav-link-item drop-trigger">
                    <i class="fas fa-exchange"></i>Exchange
                </a>
              </li>
            </ul>
          </nav>
        </div>
        <div class="header-btn header-btn-l1">
          <@guest
              <a href="{{ url('login') }}" class="border d-flex align-items-center justify-content-center btn-dark btn-sm my-0 px-4 rounded ml-5">
                  {{ __('My Account') }}
              </a>

              <a href="{{ url('register') }}" class="border d-flex align-items-center justify-content-center reg-btn rounded ml-18 mt-n4p">
                  {{ __('Register') }}
              </a>
          @endguest
          @auth
              <a href="{{ url('dashboard') }}" class="border d-flex align-items-center justify-content-center btn-dark btn-sm my-0 px-4 rounded ml-5">
                  {{ __('Dashboard') }}
              </a>

              <a href="{{ url('logout') }}" class="border d-flex align-items-center justify-content-center btn-danger btn-sm my-0 px-4 rounded ml-5">
                  {{ __('Logout') }}
              </a>
          @endauth
        </div>
        <!-- mobile menu trigger -->
        <div class="mobile-menu-trigger">
          <span></span>
        </div>
        <!--/.Mobile Menu Hamburger Ends-->
      </nav>
    </div>
  </header> --}}
  @include('frontend.layouts.common.header')

  @yield('content')
  <!-- Footer  -->
  <footer class="fugu--footer-section">
    <div class="container">
      <div class="fugu--footer-top">
        <div class="row">
          <div class="col-lg-5">
            <div class="fugu--textarea">
              <div class="fugu--footer-logo">
                <img src="{{ asset('/public/assets') }}/images/logo/logo.svg" height="80px" alt="" class="light-version-logo">
              </div>
              <p>Join thousands of users who trust Eclipto for their cryptocurrency trading needs.</p>
              <div class="fugu--social-icon fugu--social-icon3">
                <ul>
                  <li><a href=""><img src="{{ asset('/public/assets') }}/images/social2/twitter.svg" alt=""></a></li>
                  <li><a href=""><img src="{{ asset('/public/assets') }}/images/social2/facebook.svg" alt=""></a></li>
                  <li><a href=""><img src="{{ asset('/public/assets') }}/images/social2/instagram.svg" alt=""></a></li>
                  <li><a href=""><img src="{{ asset('/public/assets') }}/images/social2/github.svg" alt=""></a></li>
                </ul>
              </div>
            </div>
          </div>
          {{-- <div class="col-lg-2 offset-lg-1 col-md-4 col-sm-4">
            <div class="fugu--footer-menu">
              <span>Marketplace</span>
              <ul>
                <li><a href="">Create A Store</a></li>
                <li><a href="">Start Selling</a></li>
                <li><a href="">My Account</a></li>
                <li><a href="">Job</a></li>
                <li><a href="">List a Item</a></li>
              </ul>
            </div>
          </div> --}}
          <div class="col-lg-4">
            <div class="fugu--footer-menu">
              <span>Marketplace</span>
              <ul>
                <li><a href="{{ url('/') }}">Home</a></li>
                <li><a href="{{ url('crypto-exchange/create') }}">Exchange</a></li>
                <li><a href="{{ url('/blogs') }}">Blogs</a></li>
                @if(!empty(getMenuContent('Footer')))
                  @foreach(getMenuContent('Footer') as $footer_navbar)
                    <li>
                      <a href="{{ url($footer_navbar->url) }}">{{ $footer_navbar->name }}</a>
                    </li>
                  @endforeach
                @endif
              </ul>
            </div>
          </div>
          <div class="col-lg-3">
            <div class="fugu--footer-menu">
              <span>Contact Information</span>
            </div>
            <div class="fugu--info">
              <ul>
                <li><a href=""><img src="{{ asset('/public/assets') }}/images/svg2/phone.svg" alt="">+088-234-6534</a></li>
                <li><a href=""><img src="{{ asset('/public/assets') }}/images/svg2/mail.svg" alt="">example@gmail. com</a></li>
                <li><a href=""><img src="{{ asset('/public/assets') }}/images/svg2/map.svg" alt="">6391 Elgin St. Celina, New York City.</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="fugu--footer-bottom fugu--footer-bottom3">
        <div class="row">
          <div class="col-lg-6">
            <p>&copy; Copyright {{ date('Y') }}, All Rights Reserved by Eclipto</p>
          </div>
          <div class="col-lg-6">
            <div class="fugu--footer-menu text-white">
              {{-- <ul>
                <li><a href="">Terms</a></li>
                <li><a href=""> Privacy Policy</a></li>
              </ul> --}}
              Developed by <a href="#">Altaf</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <div class="fugu-preloader">
    <div class="fugu-spinner">
      <svg viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
        <circle cx="50" cy="50" r="46" />
      </svg>
    </div>
    <div class="fugu-title">loading...</div>
  </div>
  <!-- scripts -->
  <script src="{{ asset('/public/assets') }}/js/jquery-3.6.0.min.js"></script>
  <script src="{{ asset('/public/assets') }}/js/bootstrap.bundle.min.js"></script>
  <script src="{{ asset('/public/assets') }}/js/menu/menu.js"></script>
  <script src="{{ asset('/public/assets') }}/js/slick.js"></script>
  <script src="{{ asset('/public/assets') }}/js/isotope.pkgd.min.js"></script>
  <script src="{{ asset('/public/assets') }}/js/jquery.magnific-popup.min.js"></script>
  <script src="{{ asset('/public/assets') }}/js/swiper-bundle.min.js"></script>
  <script src="{{ asset('/public/assets') }}/js/countdown.js"></script>
  <script src="{{ asset('/public/assets') }}/js/wow.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?v=3&key=AIzaSyArZVfNvjnLNwJZlLJKuOiWHZ6vtQzzb1Y"></script>
  <script src="{{ asset('/public/assets') }}/js/app.js"></script>
  @yield('scripts')

</body>
</html>