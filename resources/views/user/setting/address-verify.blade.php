@extends('user.layouts.app')

@section('content')
<div class="bg-white pxy-62 exchange pt-62 shadow" id="addressVerify">
    <p class="mb-0 f-26 gilroy-Semibold text-uppercase text-center">{{ __('Verifications') }}</p>
    <div class="row">
        <div class="col-12">
            <nav>
                <div class="nav-tab-parent d-flex justify-content-center mt-4">
                    <div class="d-flex p-2 border-1p rounded-pill gap-1 bg-white nav-tab-child">
                        
                        <a href="{{ route('user.setting.identitiy_verify') }}" class="tablink-edit text-gray-100 @if(empty(App\Models\DocumentVerification::where(['user_id' => $user->id, 'verification_type' => 'identity', 'status' => 'approved'])->first())) verification-alert-active @endif">{{ __('Identity Verification') }}</a>
                        <a href="{{ route('user.setting.address_verify') }}" class="tablink-edit text-gray-100 tabactive">{{ __('Address Verfication') }}</a>
                       
                    </div>
                </div>
            </nav>
             @include('user.common.alert')
            <div class="mt-28 label-top">
                @if(!empty($documentVerification->status))
                    <h2 class="text-center gilroy-medium {{ getColor(ucfirst($documentVerification->status)) }}">{{ $documentVerification->status }}</h2>
                @endif
                <form method="post" action="{{ route('user.setting.address_verify.update') }}" id="addressVerifyForm" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" value="{{ $user->id }}" name="user_id" id="user_id" />
                    <input type="hidden" value="{{ !empty($documentVerification->file_id) ? $documentVerification->file_id : '' }}" name="existingAddressFileID" id="existingAddressFileID" />

                    <div class="col-12 column-pr-unset2">
                        <div class="label-top mt-withdraw">
                            <label class="gilroy-medium text-gray-100 mb-2 f-14 leading-17 r-mt-amount r-mt-6">{{ __('Country') }} <span class="f-16 text-F30">*</span></label>
                            <input type="text" class="form-control input-form-control input-form-control-withdraw apply-bg" name="country" id="country" value="{{ !empty($documentVerification)? $documentVerification->country:old('country') }}" required data-value-missing="{{ __('This field is required.') }}">
                            @if($errors->has('country'))
                                <span class="error">{{ $errors->first('country') }}</span>
                            @endif
                        </div>
                    </div>

                    <div class="col-12 column-pr-unset2">
                        <div class="label-top mt-withdraw">
                            <label class="gilroy-medium text-gray-100 mb-2 f-14 leading-17 r-mt-amount r-mt-6">{{ __('State') }} <span class="f-16 text-F30">*</span></label>
                            <input type="text" class="form-control input-form-control input-form-control-withdraw apply-bg" name="state" id="state" value="{{ !empty($documentVerification)? $documentVerification->state:old('state') }}" required data-value-missing="{{ __('This field is required.') }}">
                            @if($errors->has('state'))
                                <span class="error">{{ $errors->first('state') }}</span>
                            @endif
                        </div>
                    </div>

                    <div class="col-12 column-pr-unset2">
                        <div class="label-top mt-withdraw">
                            <label class="gilroy-medium text-gray-100 mb-2 f-14 leading-17 r-mt-amount r-mt-6">{{ __('City') }} <span class="f-16 text-F30">*</span></label>
                            <input type="text" class="form-control input-form-control input-form-control-withdraw apply-bg" name="city" id="city" value="{{ !empty($documentVerification)? $documentVerification->city:old('city') }}" required data-value-missing="{{ __('This field is required.') }}">
                            @if($errors->has('city'))
                                <span class="error">{{ $errors->first('city') }}</span>
                            @endif
                        </div>
                    </div>

                    <div class="col-12 column-pr-unset2">
                        <div class="label-top mt-withdraw">
                            <label class="gilroy-medium text-gray-100 mb-2 f-14 leading-17 r-mt-amount r-mt-6">{{ __('Zip Code') }} <span class="f-16 text-F30">*</span></label>
                            <input type="text" class="form-control input-form-control input-form-control-withdraw apply-bg" name="zip_code" id="zip_code" value="{{ !empty($documentVerification)? $documentVerification->zip_code:old('zip_code') }}" required data-value-missing="{{ __('This field is required.') }}">
                            @if($errors->has('zip_code'))
                                <span class="error">{{ $errors->first('zip_code') }}</span>
                            @endif
                        </div>
                    </div>

                    <div class="col-12 column-pr-unset2">
                        <div class="label-top mt-withdraw">
                            <label class="gilroy-medium text-gray-100 mb-2 f-14 leading-17 r-mt-amount r-mt-6">{{ __('Address Line 1') }} <span class="f-16 text-F30">*</span></label>
                            <input type="text" class="form-control input-form-control input-form-control-withdraw apply-bg" name="address_line_1" id="address_line_1" value="{{ !empty($documentVerification)? $documentVerification->address_line_1:old('address_line_1') }}" required data-value-missing="{{ __('This field is required.') }}">
                            @if($errors->has('address_line_1'))
                                <span class="error">{{ $errors->first('address_line_1') }}</span>
                            @endif
                        </div>
                    </div>

                    <div class="col-12 column-pr-unset2">
                        <div class="label-top mt-withdraw">
                            <label class="gilroy-medium text-gray-100 mb-2 f-14 leading-17 r-mt-amount r-mt-6">{{ __('Address Line 2') }}</label>
                            <input type="text" class="form-control input-form-control input-form-control-withdraw apply-bg" name="address_line_2" id="address_line_2" value="{{ !empty($documentVerification)? $documentVerification->address_line_2:old('address_line_2') }}">
                            @if($errors->has('address_line_2'))
                                <span class="error">{{ $errors->first('address_line_2') }}</span>
                            @endif
                        </div>
                    </div>

                    <div class="attach-file attach-print amount-label">
                        <label class="gilroy-medium text-B87 f-15 mb-2 mt-24 r-mt-amount r-mt-6" for="address_file">{{ __('Attach Address Proof') }}</label>
                       
                        <input type="file" class="form-control upload-filed" name="address_file" id="address_file" @empty($documentVerification) required data-value-missing="{{ __('This field is required.') }}" @endempty>
                        @error('address_file')
                            <span class="error">{{ $message }}</span>
                        @enderror
                    </div>
                    <p class="mb-0 f-11 gilroy-regular text-B87 mt-10">{{ __('Upload your documents (Max: :x mb)', ['x' => preference('file_size')]) }}</p>
                    
                    @if (!empty($documentVerification->file))
                        <div class="proof-btn-div d-flex justify-content-start mt-3">
                            <a href="{{ route('user.setting.kyc_proof.download', [$documentVerification->file->filename, 'address-proof']) }}" class='btn f-10 leading-12 proof-btn p-0 border-DF bg-FFF text-dark'><span>{{ $documentVerification->file->originalname }}</span>
                                {!! svgIcons('download_icon') !!}
                            </a>
                        </div>
                    @endif
                    
                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary px-4 py-2 mt-3" id="addressVerifySubmitBtn">
                            <div class="spinner spinner-border text-white spinner-border-sm mx-2 d-none" role="status">
                                <span class="visually-hidden"></span>
                            </div>
                            <span id="addressVerifySubmitBtnText">{{ __('Verify Address') }}</span>
                        </button>
                    </div>
                </form>
                <!-- 2nd step end-->
            </div>
        </div>                        
    </div>
</div>
@endsection

@push('js')
<script src="{{ asset('public/dist/plugins/html5-validation-1.0.0/validation.min.js') }}"></script>
<script>
    'use strict';
    var csrfToken = $('[name="_token"]').val();
    var submitButtonText = "{{ __('Submitting...') }}";
</script>
<script src="{{ asset('public/user/customs/js/settings.min.js') }}"></script>
@endpush