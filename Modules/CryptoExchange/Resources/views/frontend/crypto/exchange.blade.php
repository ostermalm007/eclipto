@extends('frontend.layouts.app')

@section('styles')
    <link rel="stylesheet" href="{{ asset('Modules/CryptoExchange/Resources/assets/landing/css/style.min.css') }}">
    <link rel="stylesheet" href="{{ asset('Modules/CryptoExchange/Resources/assets/landing/css/scrolling.min.css') }}">
    <style>
        
    </style>
@endsection

@section('content')
    <div class="navandbody-section p-main" id="crypto-front-initiate" style="background-image: url('https://img.freepik.com/free-vector/abstract-technological-background_23-2148897676.jpg?size=626&ext=jpg&ga=GA1.1.1141335507.1719014400&semt=ais_user');background-size:cover;">
        <!-- Crypto exchange section -->
        <div>
            <div class="container-fluid px-240p pb-10 row-head">
                <div class="row">
                    <div class="col-lg-6  col-sm-12 col-sm-12 col-xs-12 mw-auto">
                        <div class="pt-95">
                            {{-- <p class="f-21 OpenSans-600 color-CD" data-aos="fade-up" data-aos-anchor-placement="top-bottom">
                                {{ __('THE SAFEST & MOST RELIABLE') }}</p> --}}
                            <p class="bold-text p-0">
                                <span class="crypto-text OpenSans-700 color-E8 text-white">{{ __('New-gen') }} {{ __('of') }}</span><br>
                                <span class="exchange-text OpenSans-700 color-FF text-white">{{ __('digital') }} {{ __('currency') }}</span>
                            </p>
                            <div class="OpenSans-400 font-20 text-width color-CD text-white">
                                {{ __('Buy, sell, and swap most popular cryptocurrencies on :x easily, safely & securely with very low fees in just a few minutes.', ['x' => settings('name')]) }}
                            </div>
                            <p class="OpenSans-400 font-16 col-md-11 mulish4 c-blue2"></p>
                            
                        </div>
                    </div>
                    @include('cryptoexchange::frontend.crypto.exchange_tab')
                </div>
            </div>
        </div>
        <!-- Crypto exchange section End-->
    </div>

  

    <!-- Download section End-->
@endsection

@section('js')
    <script src="{{ asset('Modules/CryptoExchange/Resources/assets/landing/js/main.min.js') }}"></script>
    <script src="{{ asset('Modules/CryptoExchange/Resources/assets/landing/js/scrolling.min.js') }}"></script>
    <script src="{{ asset('Modules/CryptoExchange/Resources/assets/landing/js/nav-scroll.min.js') }}"></script>
    <script src="{{ asset('public/dist/plugins/debounce-1.1/jquery.ba-throttle-debounce.min.js') }}" type="text/javascript"></script>
    @include('common.restrict_number_to_pref_decimal')
    @include('common.restrict_character_decimal_point')


    <script type="text/javascript">
        'use strict';
        var requiedText = "{{ __('This field is required.') }}";
        var numberText = "{{ __('Please enter a valid number.') }}";
        var submitBtnText = "{{ __('Processing...') }}";
        var exchangeText = "{{ __('Swap') }}";
        var buyText = "{{ __('Buy') }}";
        var sellText = "{{ __('Sell') }}";
        var directionNotAvaillable = "{{ __('Direction not available.') }}";
        var decimalPreferrence = "{{ preference('decimal_format_amount_crypto', 8) }}";
        var noResult = "{{ __('No Result') }}";
        var directionListUrl = "{{ route('guest.crypto_exchange.direction_list') }}";
        var directionAmountUrl = "{{ route('guest.crypto_exchange.direction_amount') }}";
        var directionTypeUrl = "{{ route('guest.crypto_exchange.direction_type') }}";
        var confirmationUrl = "{{ route('guest.crypto_exchange.verification') }}";
        var currencyLogoUrl = "{{ url(getDirectory('currency')) }}";
    </script>
    <script src="{{ asset('Modules/CryptoExchange/Resources/assets/js/crypto_front.min.js') }}"></script>
@endsection
