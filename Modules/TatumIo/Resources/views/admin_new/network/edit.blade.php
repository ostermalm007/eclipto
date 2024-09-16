@extends('admin.layouts.app')
@section('title', __('Update Crypto Asset') )

@section('head_style')
    <link rel="stylesheet" type="text/css" href="{{ asset('public/dist/plugins/bootstrap-toggle-2.2.0/css/bootstrap-toggle.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('Modules/TatumIo/Resources/assets/admin/css/tatumio_asset_setting.min.css') }}">
@endsection

@section('page_content')


                <form action="{{ route('admin.tatumio_asset.update', encrypt($cryptoAssetSetting->network)) }}" method="POST" class="form-horizontal" enctype="multipart/form-data" id="edit-tatumio-network-form">
                    @csrf

                    <input type="hidden" name="id" value="{{ encrypt($cryptoAssetSetting->id) }}">

                    <div>
                        <label for="gridAddress1">Name</label>
                        <input id="gridAddress1" type="text" name="name" placeholder="" value="{{ $cryptoAssetSetting->currency?->name }}" class="form-input" />
                        @if ($errors->has('name'))
                        <p class="mt-1 text-danger">{{ $errors->first('name') }}</p>
                        @endif
                    </div>
                    <div>
                        <label for="gridAddress1">{{ __('Coin/Network') }}</label>
                        <input id="gridAddress1" type="text" name="network" placeholder="{{ __('Enter network code (eg - BTC)') }}" value="{{ $cryptoAssetSetting->network }}" class="form-input" />
                        @if ($errors->has('network'))
                        <p class="mt-1 text-danger">{{ $errors->first('network') }}</p>
                        @endif
                    </div>
                    <div>
                        <label for="gridAddress1">{{ __('Symbol') }}</label>
                        <input id="gridAddress1" type="text" name="symbol" placeholder="" value="{{ $cryptoAssetSetting->currency?->symbol }}" class="form-input" />
                        @if ($errors->has('symbol'))
                        <p class="mt-1 text-danger">{{ $errors->first('symbol') }}</p>
                        @endif
                    </div>
            
                    <div>
                        <label for="gridAddress1">{{ __('API Key') }}</label>
                        <input id="gridAddress1" type="text" name="api_key" value="{{ json_decode($cryptoAssetSetting->network_credentials)->api_key }}" placeholder="{{ __('Please enter valid api key') }}" class="form-input" />
                        @if ($errors->has('api_key'))
                            <p class="mt-1 text-danger">{{ $errors->first('api_key') }}</p>
                        @endif
            
                        <p class="form-text text-warning f-12"><strong>{{ __('*Network/Crypto Currency is generated according to api key.') }} of tatum.io</strong></p>
            
                        <p class="form-text text-warning f-12"><strong>{{ __('*Updating API key will update corresponding crypto currency.') }}</strong></p>
                    </div>
                    
                    {{-- <div>
                        <label for="content">Content</label>
                        <textarea id="content" class="form-control editor f-14" name="content" placeholder="{{ __('Content') }}" rows="10" style="width: 100%">{{ old('content') }}</textarea>
                        @if ($errors->has('content'))
                            <span class="error">
                                <strong>{{ $errors->first('content') }}</strong>
                            </span>
                        @endif
                    </div> --}}
            
                    {{-- <!-- Address generate -->
                    <div class="form-group row" id="create-network-address-div">
                        <label class="col-sm-3 control-label f-14 fw-bold text-sm-end mt-11" for="network-address">{{ __('Create Addresses') }}</label>
                        <div class="col-sm-6">
                            <input type="checkbox" data-toggle="toggle" name="create_address" id="network-address">
                            <div class="clearfix"></div>
                            <small class="form-text text-muted f-12"><strong>{{ __('*If On, ') }}<span class="network-name"></span> {{ __('wallet addresses will be created for all registered users.') }}</strong></small>
                        </div>
                    </div> --}}
            
                    <div class="grid grid-cols-1 lg:grid-cols-3 gap-4">
                        
                        <div>
                            <label for="currency-logo">Logo </label>
                            <input id="currency-logo" type="file" accept="image/*" name="logo" placeholder="" class="form-input input-file-field" />
                            @if ($errors->has('logo'))
                                <p class="mt-1 text-danger">{{ $errors->first('logo') }}</p>
                            @endif
            
                            {{-- <small class="form-text text-muted f-12"><strong>{{ allowedImageDimension(64,64) }}</strong></small>
                            <img src="{{ image(null, 'currency') }}" class="img-w64" id="currency-demo-logo-preview"> --}}
                        </div>
                        <div class="">
                            @if (fileExistCheck($cryptoAssetSetting->currency?->logo, 'currency'))
                                <img src="{{ image($cryptoAssetSetting->currency?->logo, 'currency') }}" alt="{{ __('Currency Logo') }}" class="img-w64" id="currency-demo-logo-preview">
                            @else
                                <img src='{{ image(null, 'currency') }}' class="img-w64" id="currency-demo-logo-preview">
                            @endif
                        </div>
                        
            
                        <div>
                            <label for="status">Status</label>
                        
                            <select class="form-select" name="status" id="status">
                                <option value="Active" {{ $cryptoAssetSetting->status == 'Active' ? 'selected' : '' }}  >{{ __('Active') }}</option>
                                <option value="Inactive" {{ $cryptoAssetSetting->status == 'Inactive' ? 'selected' : '' }} >{{ __('Inactive') }}</option>
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


                    <div class="flex  justify-end pt-5">

                        <a class="btn btn-danger me-4" href="{{ url(config('adminPrefix') . '/settings/currency') }}" >{{ __('Cancel') }}</a>
                        @if (Common::has_permission(auth('admin')->user()->id, 'edit_crypto_asset'))
                            <button type="submit" class="btn btn-primary btn-lg">Submit</button>
                        @endif
                    </div>
                    
                </form>
                
@endsection

@section('extra_body_scripts')
<script src="{{ asset('public/dist/plugins/bootstrap-toggle-2.2.0/js/bootstrap-toggle.min.js') }}" type="text/javascript"></script>
<script src="{{ asset('public/dist/plugins/debounce-1.1/jquery.ba-throttle-debounce.min.js')}}" type="text/javascript"></script>
<script src="{{ asset('public/dist/libraries/sweetalert/sweetalert-unpkg.min.js')}}" type="text/javascript"></script>
<script src="{{ asset('public/dist/plugins/html5-validation-1.0.0/validation.min.js') }}"  type="text/javascript" ></script>

<script>
    'use script';
    var defaultImageSource = "{{ image(null, 'currency') }}";
    var pleaseWait = '{{ __("Please Wait") }}';
    var loading = '{{ __("Loading...") }}';
    var merchantAddress = '{{ __("Merchant address does not belong to this network.") }}';
    var update = '{{ __("Update") }}';
    var updating = '{{ __("Updating...") }}';
</script>

<script src="{{ asset('Modules/TatumIo/Resources/assets/admin/js/tatumio_asset_setting.min.js') }}"  type="text/javascript" ></script>
@include('common.read-file-on-change')

@endsection
