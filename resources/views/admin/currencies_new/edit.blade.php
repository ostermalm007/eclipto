@extends('admin.layouts.app')
@section('title', __('Edit Currency'))

@section('head_style')
    <link rel="stylesheet" type="text/css" href="{{ asset('public/dist/libraries/sweetalert/sweetalert.min.css') }}">
    <link rel="stylesheet" href="{{ asset('public/dist/plugins/bootstrap-toggle-2.2.0/css/bootstrap-toggle.min.css') }}">
@endsection

@section('page_content')


    <form action="{{ url(config('adminPrefix') . '/settings/edit_currency', $currency->id) }}" method="POST" class="form-horizontal" enctype="multipart/form-data" id="edit_currency_form">
        @csrf
        <input type="hidden" name="default_currency" value="{{ $currency->default }}">
        <input type="hidden" value="{{ $currency->allowed_wallet_creation }}" name="allowed_wallet_creation" id="allowed_wallet_creation">
        <input type="hidden" value="{{ $currency->id }}" name="currency_id" id="currency_id">
        
        <div>
            <label for="gridAddress1">Name</label>
            <input id="gridAddress1" type="text" name="name" placeholder="" value="{{ $currency->name }}" class="form-input" />
            @if ($errors->has('name'))
            <p class="mt-1 text-danger">{{ $errors->first('name') }}</p>
            @endif
        </div>
        <div>
            <label for="gridAddress1">Code</label>
            <input id="gridAddress1" type="text" name="code" placeholder="" value="{{ $currency->code }}" class="form-input" />
            @if ($errors->has('code'))
            <p class="mt-1 text-danger">{{ $errors->first('code') }}</p>
            @endif
        </div>
        <div>
            <label for="gridAddress1">{{ __('Symbol') }}</label>
            <input id="gridAddress1" type="text" name="symbol" placeholder="" value="{{ $currency->symbol }}" class="form-input" />
            @if ($errors->has('symbol'))
            <p class="mt-1 text-danger">{{ $errors->first('symbol') }}</p>
            @endif
        </div>
        
        <div>
            <label for="type">Type</label>
        
            <select class="form-select" name="type" id="type">
                <option value="fiat"   {{ $currency->status == 'fiat' ? 'selected' : '' }}> {{ __('Fiat') }}</option>
                <option value="crypto"   {{ $currency->status == 'crypto' ? 'selected' : '' }}> {{ __('Crypto') }}</option>
            </select>
            @if ($errors->has('status'))
                <p class="mt-1 text-danger">{{ $errors->first('status') }}</p>
            @endif
        </div>
    
        
        <div>
            <label for="gridAddress1">{{ __('Merchant Address') }}</label>
            <input id="gridAddress1" type="text" name="address" placeholder="" value="{{ $currency->address }}" class="form-input" />
            @if ($errors->has('address'))
            <p class="mt-1 text-danger">{{ $errors->first('address') }}</p>
            @endif
        </div>
    
    
        
    
        <div class="grid grid-cols-1 lg:grid-cols-4 gap-4">
            
        <div>
            <label for="rate">{{ __('Exchange Rate') }}(in case rate api failed)</label>
            <input id="rate" type="text" name="rate" placeholder="" value="{{ $currency->rate }}" class="form-input" />
            @if ($errors->has('rate'))
                <p class="mt-1 text-danger">{{ $errors->first('address') }}</p>
            @endif
            <p><strong class="text-warning">{{ __('*Exchagne rate should be equivalent to default currency (allowed upto 8 decimal places).') }}</strong></p>
        </div>
            <div>
                <label for="status">Exchange From</label>
            
                <select class="form-select" name="exchange_from" id="status">
                    <option value="api" {{ $currency->exchange_from == 'local'  ? 'selected' : '' }}> {{ __('API') }}</option>
                    <option value="local" {{ $currency->exchange_from == 'local'  ? 'selected' : '' }}> {{ __('Local') }}</option>
                </select>
                @if ($errors->has('exchange_from'))
                    <p class="mt-1 text-danger">{{ $errors->first('exchange_from') }}</p>
                @endif
            </div>

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
                    <option value="Active"  {{ $currency->status == 'Active'  ? 'selected' : '' }} >{{ __('Active') }}</option>
                    <option value="Inactive" {{ $currency->status == 'Active'  ? 'selected' : '' }} >{{ __('Inactive') }}</option>
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
                <button type="submit" class="btn btn-primary btn-lg">Submit</button>
        </div>

    </form>

                
    {{-- <div id="currency-converter" class="modal fade display_none" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content pB-27 M-50">
                <div class="modal-header header-background">
                    <h3 class="header-text f-24">{{ __('How to set up currrency conveter') }}</h3>
                </div>
                <div class="modal-body p-4 ps-5">
                    <div class="text-strong">
                        <p class="f-18">{{ __('Set up any currency converter api') }}</p>
                        <p class="blue-text f-13">{{ __('Currency Converter Api') }}</p>
                        <ul class="f-14">
                            <li><strong>{{ __('URL') }}: </strong><a target="_blank" href="//free.currencyconverterapi.com">free.currencyconverterapi.com</a>
                            <li><strong>{{ __('Api Key') }}:</strong> {{ __('Get an api key from URL') }}</li>
                            <li>{{ __('After that set the value in the Api Key field.') }}</li>
                        </ul>
                        <p class="blue-text f-18">{{ __('Exchange Rate Api') }}</p>
                        <ul class="f-14">
                            <li><strong>{{ __('URL') }}: </strong><a target="_blank" href="//exchangerate-api.com/">exchangerate-api.com</a>
                            <li><strong>{{ __('Api Key') }}:</strong>{{ __('Get an api key from URL') }}</li>
                            <li>{{ __('After that set the value in the Api Key field.') }}</li>
                        </ul>
                        <a target="_blank" href="{{ url(config('adminPrefix') . '/settings/currency-conversion-rate-api') }}" class="currency-converter-link f-14">{{ __('Click this for Currency Converter Setup') }}</a>
                    </div>
                </div>
                <div class="text-right">
                    <button type="button" class="btn btn-primary custom-btn-small f-14 float-end mt-2 me-4" data-bs-dismiss="modal">{{ __('Close') }}</button>
                </div>
            </div>
        </div>
    </div> --}}
@endsection

@push('extra_body_scripts')

    <!-- jquery.validate -->
    <script src="{{ asset('public/dist/plugins/jquery-validation-1.17.0/dist/jquery.validate.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('public/dist/plugins/jquery-validation-1.17.0/dist/additional-methods.min.js') }}" type="text/javascript"></script>
    <script src="{{ asset('public/dist/libraries/sweetalert/sweetalert.min.js') }}" type="text/javascript"></script>
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

        let checkAllowedWalletCreation = $('#allowed_wallet_creation').val();
        if(checkAllowedWalletCreation == 'Yes') {
            $('#create_wallet').prop('checked', true).change();
        }

        function restrictNumberToPrefdecimalOnInput(e)
        {
            var type = $('select#type').find(':selected').val()
            restrictNumberToPrefdecimal(e, type);
        }

        function exchangeRateFrom(type) {
            if (type == 'crypto') {
                $('#exchange_from_div, #exchange_rate_div').css('display', 'none');
                $('#address_div').css('display', 'block');
                $('#allowed_wallet_creation_div').css('display', 'block');
            } else if (type == 'fiat') {
                $('#exchange_from_div, #exchange_rate_div').css('display', 'block');
                $('#address_div').css('display', 'none');
                $('#allowed_wallet_creation_div').css('display', 'block');
            }
        }

        $(window).on('load', function() {
            exchangeRateFrom($('#type').find('option:selected').val());
        });

        $('#type').on('change', function() {
            exchangeRateFrom($(this).find('option:selected').val());
        });

        $(document).on('change', '#logo', function() {
            let orginalSource = '{{ url('public/user_dashboard/images/favicon.png') }}';
            let logo = $('#logo').attr('data-rel');
            if (logo != '') {
                readFileOnChange(this, $('#currency-logo-preview'), orginalSource);
                $('.remove_currency_preview').remove();
            }
            readFileOnChange(this, $('#currency-demo-logo-preview'), orginalSource);
        });

        $('#exchange_from').on('change', function() {
            var exchangeFrom = $(this).find('option:selected').val();
            if (exchangeFrom == 'api') {
                var exchangeEnabledApi = "{{ settings('exchange_enabled_api') }}";
                var currencyConverterApiKey = "{{ settings('currency_converter_api_key') }}";
                var exchangeRateApiKey = "{{ settings('exchange_rate_api_key') }}";

                if (exchangeEnabledApi != 'Disabled' && ((exchangeEnabledApi == 'currency_converter_api_key' && currencyConverterApiKey != '') || ( exchangeEnabledApi == 'exchange_rate_api_key' && exchangeRateApiKey != ''))) {
                    $('#currency-edit-submit-btn').attr('disabled', false);
                } else {
                    $('#currency-edit-submit-btn').attr('disabled', true);
                    $('.rate-setup-text').removeClass('d-none');
                }
            } else if (exchangeFrom == 'local') {
                $('.rate-setup-text').addClass('d-none');
                $('#currency-edit-submit-btn').attr('disabled', false);
            }
        });

        $(document).on('click', '.remove_currency_preview', function() {
            var image = $('#logo').attr('data-rel');
            var currency_id = $('#currency_id').val();

            if (image) {
                $.ajax({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: "POST",
                    url: SITE_URL + "/" + ADMIN_PREFIX + "/settings/currency/delete-currency-logo",
                    data: {
                        'logo': image,
                        'currency_id': currency_id,
                    },
                    dataType: 'json',
                    success: function(reply) {
                        if (reply.success == 1) {
                            swal({
                                    title: "Deleted!",
                                    text: reply.message,
                                    type: "success"
                                },
                                function() {
                                    location.reload();
                                }
                            );
                        } else {
                            alert(reply.message);
                            location.reload();
                        }
                    }
                });
            }
        });

        $.validator.setDefaults({
            highlight: function(element) {
                $(element).parent('div').addClass('has-error');
            },
            unhighlight: function(element) {
                $(element).parent('div').removeClass('has-error');
            },
        });

        $('#edit_currency_form').validate({
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
                address: {
                    required: true,
                },
                rate: {
                    required: true,
                    number: true,
                    min: 0.0001,
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
                },
            },
            submitHandler: function(form) {
                $("#currency-edit-submit-btn").attr("disabled", true);
                $('#cancel-link').attr("disabled", true);
                $(".fa-spin").removeClass("d-none");
                $("#currency-edit-submit-btn-text").text('Updating...');
                $('#currency-edit-submit-btn').click(function(e) {
                    e.preventDefault();
                });
                $('#cancel-link').click(function(e) {
                    e.preventDefault();
                });
                form.submit();
            }
        });
    </script>

@endpush
