<!-- Sidebar Start -->
<div class="side-navbar active-nav d-flex justify-content-between flex-wrap flex-column" id="sidebar">
    <div class="bg-white vh-100 position-fixed d-flex flex-column w-inherit drop-parent">
        <div>
            <a href="{{ url('/') }}"><img class="ml-40 mt-20 pay-logo img-fluid" src="{{ image(settings('logo'), 'logo') }}" alt="{{ settings('name') }}"></a>
        </div>
        <div class="flex-grow-1 px-4 px-res mt-43 bg-white position-relative overflow-auto hide-thin-scrollbar thin-scrollbar">
            <ul class="list-unstyled ps-0 accordion accordion-flush position-absolute w-268" id="accordion-menu">

                <!-- Dashboard -->
                <li>
                    <a href="{{ route('user.dashboard') }}" class="mb-1 d-flex align-items-center list-option h-46 mt-7 {{ request()->route()->named('user.dashboard') ? 'bg-light' : 'text-info' }}">
                        <span class="ms-3 mr-20">{!! menuSvgIcon('user.dashboard') !!}</span>
                        <span>{{ __('Dashboard') }}</span>
                    </a>
                </li>
                <li>
                    <a href="{{ route('user_dashboard.crypto_buy_sell.create') }}" class="mb-1 d-flex align-items-center list-option h-46 mt-7 {{ (request()->is('crypto-exchange/buy-sell') || request()->is('crypto-exchange/confirm') || request()->is('crypto-buy-sell/success') || request()->is('crypto-exchange/verification'))  ? 'bg-light' : 'text-info' }}">
                        <span class="ms-3 mr-20">{!! menuSvgIcon('user_dashboard.crypto_buy_sell.*') !!}</span>
                        <span>{{ __('Buy/Sell/Swap') }}</span>
                    </a>
                </li>

                <!-- Transactions -->
                <li>
                    <a href="{{ route('user_dashboard.crypto_buy_sell.list') }}" class="mb-1 d-flex align-items-center list-option h-46 mt-7  {{ request()->is('crypto-exchange/buy-sell-list')  ? 'bg-light' : 'text-info' }}">
                        <span class="ms-3 mr-20">{!! menuSvgIcon('user.transactions.*') !!}</span>
                        <span>{{ __('Transactions') }}</span>
                    </a>
                </li>
                

                <li class="mb-20 d-flex align-items-center text-warning f-13 ml-20 mt-38 gilroy-Semibold res-other text-uppercase">{{ __('Others') }}</li>

              

                <!-- Profile -->
                <li>
                    <a href="{{ route('user.profiles.index') }}" class="mb-1 d-flex align-items-center list-option h-46 mt-7 {{ request()->route()->named('user.profiles.*') ? 'bg-light' : 'text-info' }}">
                        <span class="ms-3 mr-20">{!! menuSvgIcon('user.profiles.*') !!}</span>
                        <span>{{ __('Profile') }}</span>
                    </a>
                </li>

                <!-- Verifications -->
                <li>
                    <a href="{{ route('user.setting.identitiy_verify') }}" class="verification-alert mb-1 d-flex align-items-center list-option h-46 mt-7 {{ request()->route()->named('user.setting.*') ? 'bg-light' : 'text-info' }}">
                        <span class="ms-3 mr-20">{!! menuSvgIcon('user.setting.*') !!}</span>
                        <span>{{ __('Verifications') }}</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- Sidebar End -->
