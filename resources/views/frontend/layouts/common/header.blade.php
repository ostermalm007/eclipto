<!-- navbar -->
   

    <nav class="navbar fixed-top navbar-dark navbar-expand-sm py-3 my-0" style="background: black!important">
        <div class="container-fluid">
          <a class="navbar-brand" href="{{ url('/') }}"><img src="{{ asset('/public/assets') }}/images/logo/logo.svg" height="30px" alt="Eclipto"></a>
          <button class="navbar-toggler text-white" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
            <span class="navbar-toggler-icon text-white"></span>
          </button>
          <div class="collapse navbar-collapse" id="mynavbar">
            <ul class="navbar-nav me-auto">
             
            @if(!empty(getMenuContent('Header')))
                @foreach(getMenuContent('Header') as $top_navbar)
                    <li class="nav-item {{ isset( $menu ) && ( $menu == $top_navbar->url ) ? 'nav-active': '' }}">
                        <a href="{{ url($top_navbar->url) }}" class="nav-link text-white p-3">{{ $top_navbar->name }}</a>
                    </li>
                @endforeach
            @endif
          
            <li class="nav-item {{ isset( $menu ) && ( $menu == 'blogs' ) ? 'nav-active': '' }}">
              <a class="nav-link text-white p-3"href="{{ url('/blogs') }}">{{ __('Blogs') }}</a>
            </li>
            <li class="nav-item me-0 me-md-5 {{ isset( $menu ) && ( $menu == 'crypto-exchange/create' ) ? 'nav-active': '' }}">
              <a class="nav-link text-white p-3" href="{{ url('crypto-exchange/create') }}">{{ __('Exchange') }}</a>
            </li>
              
              
            </ul>
            <div class="d-flex">
              {{-- <input class="form-control me-2" type="text" placeholder="Search">
              <button class="btn btn-primary" type="button">Search</button> --}}
                @guest
                    <a href="{{ url('login') }}" class="btn btn-secondary me-3">
                        {{ __('Login') }}
                    </a>

                    <a href="{{ url('register') }}" class="btn btn-secondary">
                        {{ __('Register') }}
                    </a>
                @endguest
                @auth
                    <a href="{{ url('dashboard') }}"class="btn btn-secondary me-3">
                        {{ __('Dashboard') }}
                    </a>

                    <a href="{{ url('logout') }}" class="btn btn-danger">
                        {{ __('Logout') }}
                    </a>
                @endauth
            </div>
          </div>
        </div>
      </nav>