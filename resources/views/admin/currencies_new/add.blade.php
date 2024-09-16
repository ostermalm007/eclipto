@extends('admin.layouts.app')
@section('title', __('Add Currency'))

@section('head_style')
    <link rel="stylesheet" href="{{ asset('public/dist/plugins/bootstrap-toggle-2.2.0/css/bootstrap-toggle.min.css') }}">
@endsection

@section('breadcrumbs')
    <li class="before:content-['/'] ltr:before:mr-1 rtl:before:ml-1">
        <a href="{{ url('/admin/settings/currency') }}" class="text-primary hover:underline">Currencies</a>
    </li>

    <li class="before:content-['/'] ltr:before:mr-1 rtl:before:ml-1">
        <span>Add Manual Currency</span>
    </li>
@endsection

@section('page_content')

<form action="{{ url(config('adminPrefix') . '/settings/add_currency') }}" method="post"  enctype="multipart/form-data" class="space-y-5">
    {{ csrf_field() }}

    <div>
        <label for="gridAddress1">Name</label>
        <input id="gridAddress1" type="text" name="name" placeholder="" value="{{ old('name') }}" class="form-input" />
        @if ($errors->has('name'))
        <p class="mt-1 text-danger">{{ $errors->first('name') }}</p>
        @endif
    </div>
    <div>
        <label for="gridAddress1">Code</label>
        <input id="gridAddress1" type="text" name="code" placeholder="" value="{{ old('code') }}" class="form-input" />
        @if ($errors->has('code'))
        <p class="mt-1 text-danger">{{ $errors->first('code') }}</p>
        @endif
    </div>
    <div>
        <label for="gridAddress1">{{ __('Symbol') }}</label>
        <input id="gridAddress1" type="text" name="symbol" placeholder="" value="{{ old('symbol') }}" class="form-input" />
        @if ($errors->has('symbol'))
        <p class="mt-1 text-danger">{{ $errors->first('symbol') }}</p>
        @endif
    </div>
    
    <div>
        <label for="type">Type</label>
    
        <select class="form-select" name="type" id="type">
            <option value="fiat" <? ( old('status') == 'fiat' ) ? 'selected' : '' ?>{{ __('Fiat') }}</option>
            <option value="crypto" <? ( old('status') == 'crypto' ) ? 'selected' : '' ?>{{ __('Crypto') }}</option>
        </select>
        @if ($errors->has('status'))
            <p class="mt-1 text-danger">{{ $errors->first('status') }}</p>
        @endif
    </div>

    
    <div>
        <label for="gridAddress1">{{ __('Merchant Address') }}</label>
        <input id="gridAddress1" type="text" name="address" placeholder="" value="{{ old('address') }}" class="form-input" />
        @if ($errors->has('address'))
        <p class="mt-1 text-danger">{{ $errors->first('address') }}</p>
        @endif
    </div>

    <div>
        <label for="rate">{{ __('Exchange Rate') }}(in case rate api failed)</label>
        <input id="rate" type="text" name="rate" placeholder="" value="{{ old('rate') }}" class="form-input" />
        @if ($errors->has('rate'))
            <p class="mt-1 text-danger">{{ $errors->first('address') }}</p>
        @endif
        <p><strong class="text-warning">{{ __('*Exchagne rate should be equivalent to default currency (allowed upto 8 decimal places).') }}</strong></p>
    </div>

    <div>
        <label for="status">Exchange From</label>
    
        <select class="form-select" name="exchange_from" id="status">
            <option value="api" <? ( old('exchange_from') == 'api' ) ? 'selected' : '' ?>{{ __('API') }}</option>
            <option value="local" <? ( old('exchange_from') == 'local' ) ? 'selected' : '' ?>{{ __('Local') }}</option>
        </select>
        @if ($errors->has('exchange_from'))
            <p class="mt-1 text-danger">{{ $errors->first('exchange_from') }}</p>
        @endif
    </div>

    <div class="grid grid-cols-1 lg:grid-cols-3 gap-4">
        
        <div>
            <label for="gridAddress1">Logo </label>
            <input id="gridAddress1" type="file" accept="image/*" name="logo" placeholder="" class="form-input" />
            @if ($errors->has('logo'))
                <p class="mt-1 text-danger">{{ $errors->first('logo') }}</p>
            @endif

            {{-- <small class="form-text text-muted f-12"><strong>{{ allowedImageDimension(64,64) }}</strong></small>
            <img src="{{ image(null, 'currency') }}" class="img-w64" id="currency-demo-logo-preview"> --}}
        </div>
        

        <div>
            <label for="status">Status</label>
        
            <select class="form-select" name="status" id="status">
                <option value="Active" <? ( old('status') == 'Active' ) ? 'selected' : '' ?>{{ __('Active') }}</option>
                <option value="Inactive" <? ( old('status') == 'Inactive' ) ? 'selected' : '' ?>{{ __('Inactive') }}</option>
            </select>
            @if ($errors->has('status'))
                <p class="mt-1 text-danger">{{ $errors->first('status') }}</p>
            @endif
        </div>
    </div>
    {{-- <div>
        <label class="flex items-center mt-1 cursor-pointer">
            <input type="checkbox" class="form-checkbox" />
            <span class="text-white-dark"">Check me out</span>
        </label>
    </div> --}}



    <div class="flex  justify-end">

        <a class="btn btn-danger me-4" href="{{ url(config('adminPrefix') . '/settings/currency') }}" >{{ __('Cancel') }}</a>
        @if (Common::has_permission(auth('admin')->user()->id, 'add_crypto_asset'))
            <button type="submit" class="btn btn-primary btn-lg">Submit</button>
        @endif
    </div>
</form>


@endsection

@section('extra_body_scripts')

    <script src="{{ asset('public/dist/plugins/jquery-validation-1.17.0/dist/jquery.validate.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('public/dist/plugins/jquery-validation-1.17.0/dist/additional-methods.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('public/dist/plugins/bootstrap-toggle-2.2.0/js/bootstrap-toggle.min.js') }}" type="text/javascript"></script>

    @include('common.read-file-on-change')
    @include('common.restrict_number_to_pref_decimal')
    @include('common.restrict_character_decimal_point')

    <script type="text/javascript">

        $(window).on('load', function(){
            var type = $('select#type').find(':selected').val();
            if (type == 'crypto') {
                $('#exchange_from_div, #exchange_rate_div').css('display', 'none');
                $('#address_div').css('display', 'block');
            } else if (type == 'fiat') {
                $('#exchange_from_div, #exchange_rate_div').css('display', 'block');
                $('#address_div').css('display', 'none');
            }
        });

        $(document).on('change', '#currency-logo', function() {
            let orginalSource = '{{ url('public/user_dashboard/images/favicon.png') }}';
            readFileOnChange(this, $('#currency-demo-logo-preview'), orginalSource);
        });

        function restrictNumberToPrefdecimalOnInput(e)
        {
            var type = $('select#type').find(':selected').val()
            restrictNumberToPrefdecimal(e, type);
        }

        $.validator.setDefaults({
            highlight: function(element) {
                $(element).parent('div').addClass('has-error');
            },
            unhighlight: function(element) {
                $(element).parent('div').removeClass('has-error');
            },
        });

        $('#type').on('change', function() {
            var type = $(this).find('option:selected').val();
            if (type == 'crypto') {
                $('#exchange_from_div, #exchange_rate_div').css('display', 'none');
                $('#address_div').css('display', 'flex');
            } else if (type == 'fiat') {
                $('#exchange_from_div, #exchange_rate_div').css('display', 'block');
                $('#address_div').css('display', 'none');
            }
        });

        $('#exchange_from').on('change', function() {
            var exchangeFrom = $(this).find('option:selected').val();
            if (exchangeFrom == 'api') {
                var exchangeEnabledApi = "{{ settings('exchange_enabled_api') }}";
                var currencyConverterApiKey = "{{ settings('currency_converter_api_key') }}";
                var exchangeRateApiKey = "{{ settings('exchange_rate_api_key') }}";

                if (exchangeEnabledApi != 'Disabled' && ((exchangeEnabledApi == 'currency_converter_api_key' && currencyConverterApiKey != '') || ( exchangeEnabledApi == 'exchange_rate_api_key' && exchangeRateApiKey != ''))) {
                    $('#currency-add-submit-btn').attr('disabled', false);
                } else {
                    $('#currency-add-submit-btn').attr('disabled', true);
                    $('.rate-setup-text').removeClass('d-none');
                }
            } else if (exchangeFrom == 'local') {
                $('.rate-setup-text').addClass('d-none');
                $('#currency-add-submit-btn').attr('disabled', false);
            }
        });

        $('#add_currency_form').validate({
            rules: {
                name: {
                    required: true,
                },
                code: {
                    required: true,
                },
                symbol: {
                    required: true,
                },
                type: {
                    required: true,
                },
                rate: {
                    required: true,
                    number: true,
                    min: 0.0001,
                },
                address: {
                    required: true,
                },
                logo: {
                    extension: "png|jpg|jpeg|gif|bmp",
                },
            },
            messages: {
                rate: {
                    min: "Please enter values greater than 0.0001!"
                },
                logo: {
                    extension: "Please select (png, jpg, jpeg, gif or bmp) file!"
                }
            },
            submitHandler: function(form) {
                $("#currency-add-submit-btn").attr("disabled", true);
                $('#cancel-link').attr("disabled", true);
                $(".fa-spin").removeClass("d-none");
                $("#currency-add-submit-btn-text").text('Submitting...');
                $('#currency-add-submit-btn').click(function(e) {
                    e.preventDefault();
                });
                $('#cancel-link').click(function(e) {
                    e.preventDefault();
                });
                form.submit();
            }
        });
    </script>

@endsection
