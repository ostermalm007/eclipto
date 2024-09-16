<li class="dropdown user user-menu">
    <a href="javascript:void(0)" class="f-14 text-decoration-none me-3" data-bs-toggle="dropdown">
        <img src="{{ image(auth('admin')->user()->picture, 'profile') }}" height="40px"  alt="{{ __('User Image') }}">
        {{-- <span class="hidden-xs">{{ ucwords(getColumnValue(auth('admin')->user()))}}</span> --}}
    </a>

    <ul class="dropdown-menu mt-3">
        {{-- <li class="user-header">
            <img src={{ image(auth('admin')->user()->picture, 'profile') }} class="img-circle mt-3" alt="{{ __('User Image') }}">
            <p>
                <small>{{ __('Email') }}: {{ auth('admin')->user()->email }}</small>
            </p>
        </li> --}}

        <li class="nav-menu">
            <a href="{{ url(config('adminPrefix').'/profile') }}" class="nav-link ps-3 text-info">
                 <i class="fa fa-user"></i>
                {{ __('Profile') }}
            </a>
            <a href="{{ url(config('adminPrefix').'/adminlogout') }}" class="nav-link ps-3 text-danger">
                 <i class="fa fa-sign-out"></i>
                {{ __('Sign out') }}
            </a>
            {{-- <div class="pull-left">
                <a href="{{ url(config('adminPrefix').'/profile') }}" class="profile-btn">{{ __('Profile') }}</a>
            </div>
            <div class="pull-right">
                <a href="{{ url(config('adminPrefix').'/adminlogout') }}" class="profile-btn">{{ __('Sign out') }}</a>
            </div> --}}
        </li>
    </ul>
</li>
