@extends('user.layouts.app')

@section('content')
    @include('user.common.alert')
    <div class="d-flex justify-content-between dash-left-profile dash-profile-flex-wrap">
        <div class="dash-left-profile d-flex gap-14">
            <div class="dash-left-img">
                <img src="{{ image(auth()->user()->picture, 'profile') }}" alt="{{ __('Profile') }}" class="img-fluid">
            </div>
            <div class="qr-icon">
                <p class="mb-0 f-32 gilroy-Semibold text-dark"><span>{{ getColumnValue(auth()->user()) }}</span>
                    <a href="{{ route('user.profiles.index') }}" class="px-1">
                        <svg class="cursor-pointer" width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" clip-rule="evenodd" d="M11.8448 2.09484C12.759 1.18063 14.2412 1.18063 15.1554 2.09484C16.0696 3.00905 16.0696 4.49129 15.1554 5.4055L5.73337 14.8276C5.71852 14.8424 5.70381 14.8571 5.68921 14.8718C5.47363 15.0878 5.28355 15.2782 5.0544 15.4186C4.85309 15.542 4.63361 15.6329 4.40403 15.688C4.1427 15.7507 3.87364 15.7505 3.56847 15.7502C3.54781 15.7502 3.52698 15.7502 3.50598 15.7502H2.25008C1.83586 15.7502 1.50008 15.4144 1.50008 15.0002V13.7443C1.50008 13.7233 1.50006 13.7025 1.50004 13.6818C1.49975 13.3766 1.4995 13.1076 1.56224 12.8462C1.61736 12.6167 1.70827 12.3972 1.83164 12.1959C1.97206 11.9667 2.16249 11.7766 2.37848 11.5611C2.3931 11.5465 2.40784 11.5317 2.42269 11.5169L11.8448 2.09484ZM14.0948 3.1555C13.7663 2.82707 13.2339 2.82707 12.9054 3.1555L3.48335 12.5776C3.19868 12.8622 3.14619 12.9215 3.1106 12.9796C3.06948 13.0467 3.03917 13.1199 3.0208 13.1964C3.0049 13.2626 3.00008 13.3417 3.00008 13.7443V14.2502H3.50598C3.90857 14.2502 3.98762 14.2453 4.05386 14.2294C4.13039 14.2111 4.20354 14.1808 4.27065 14.1396C4.32873 14.1041 4.38804 14.0516 4.67271 13.7669L14.0948 4.34484C14.4232 4.01641 14.4232 3.48393 14.0948 3.1555ZM8.25006 15.0002C8.25006 14.586 8.58584 14.2502 9.00006 14.2502H15.7501C16.1643 14.2502 16.5001 14.586 16.5001 15.0002C16.5001 15.4144 16.1643 15.7502 15.7501 15.7502H9.00006C8.58584 15.7502 8.25006 15.4144 8.25006 15.0002Z" fill="currentColor" />
                        </svg>
                    </a>
                </p>
                <p class="mb-0 f-16 leading-18 gilroy-medium text-gray-100 mt-1 dash-w-262">{{ __('Welcome, here is a brief summary of your account.') }}</p>
            </div>
        </div>

        {{-- <div class="dash-right-profile d-flex align-items-end">
            <a href="{{ route('user.deposit.create') }}" class="btn btn-lg btn-primary w-160">
                <span class="mb-0 f-14 leading-20 gilroy-medium">{{ __('Deposit Money') }}</span>
                <svg class="ml-10" width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M12.75 12C13.1642 12 13.5 12.3358 13.5 12.75C13.5 13.1642 13.1642 13.5 12.75 13.5L5.25 13.5C4.83579 13.5 4.5 13.1642 4.5 12.75L4.5 5.25C4.5 4.83579 4.83579 4.5 5.25 4.5C5.66421 4.5 6 4.83579 6 5.25L6 10.9393L12.2197 4.71967C12.5126 4.42678 12.9874 4.42678 13.2803 4.71967C13.5732 5.01256 13.5732 5.48744 13.2803 5.78033L7.06066 12L12.75 12Z" fill="currentColor" />
                </svg>
            </a>
            <a href="{{ route('user.withdrawal.create') }}" class="btn btn-lg btn-warning cursor-pointer ml-12 w-160 yellow-btn">
                <span class="mb-0 f-14 leading-20 gilroy-medium text-dark">{{ __('Withdraw Money') }}</span>
                <svg class="ml-10 nscaleX-1" width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M5.25 6C4.83579 6 4.5 5.66421 4.5 5.25C4.5 4.83579 4.83579 4.5 5.25 4.5L12.75 4.5C13.1642 4.5 13.5 4.83579 13.5 5.25L13.5 12.75C13.5 13.1642 13.1642 13.5 12.75 13.5C12.3358 13.5 12 13.1642 12 12.75V7.06066L5.78033 13.2803C5.48744 13.5732 5.01256 13.5732 4.71967 13.2803C4.42678 12.9874 4.42678 12.5126 4.71967 12.2197L10.9393 6L5.25 6Z" fill="#3F405B" />
                </svg>
            </a>
        </div> --}}
    </div>
    {{-- <div class="d-flex dasboard-wallet-card gap-20 flex-wrap mt-40">
        @if ($wallets->count() > 0)
            @foreach ($wallets as $wallet)
            <div class="dash-wallet-box bg-white">
                <div class="d-flex justify-content-between">
                    <div class="dash-box-one">
                        <p class="mb-0 gilroy-Semibold text-primary f-16 leading-20">{{ $wallet->currency?->code }}</p>
                        <p class="mb-0 f-12 leading-15 text-gray-100 gilroy-regular mt-1">{{ ucwords(str_replace('_', ' ', $wallet->currency?->type)) }}</p>
                    </div>
                    <div class="dash-currency-sign d-flex justify-content-center align-items-center">
                        <img src="{{ image($wallet->currency?->logo, 'currency') }}" alt="{{ __('Currency') }}" class="img-fluid">
                    </div>
                </div>
                <div class="d-flex justify-content-between mt-15">
                    <p class="mb-0 f-24 leading-30 gilroy-Semibold l-s1 text-dark">{{ formatNumber($wallet->balance, $wallet->currency?->id) }}</p>
                    <p class="mb-0 text-success f-12 leading-15 l-s1 gilroy-medium d-flex align-items-center"><span>{{ $wallet->is_default == 'Yes' ? 'Default' : '' }}</span></p>
                </div>
            </div>
            @endforeach
        @endif
        <div class="dash-wallet-box bg-white d-flex gap-14 align-items-center h-112 cursor-pointer">
            <div class="dash-check-all bg-white-50 d-flex justify-content-center align-items-center">
                <svg width="22" height="18" viewBox="0 0 22 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M4.58887 0.562501L15.5361 0.562501C16.0303 0.562485 16.4567 0.562471 16.8078 0.591163C17.1785 0.621445 17.5471 0.688303 17.9019 0.869048C18.4311 1.13869 18.8613 1.56895 19.131 2.09816C19.3117 2.45289 19.3786 2.82153 19.4088 3.19216C19.4375 3.54332 19.4375 3.96965 19.4375 4.46385V5.8795C20.3635 6.20662 21.0631 7.00018 21.2585 7.98256C21.3131 8.25711 21.3128 8.56446 21.3125 8.92137C21.3125 8.94732 21.3125 8.97353 21.3125 9C21.3125 9.02649 21.3125 9.0527 21.3125 9.07866C21.3128 9.43556 21.3131 9.7429 21.2585 10.0174C21.0631 10.9998 20.3635 11.7934 19.4375 12.1205V13.5362C19.4375 14.0304 19.4375 14.4567 19.4088 14.8078C19.3786 15.1785 19.3117 15.5471 19.131 15.9018C18.8613 16.4311 18.4311 16.8613 17.9019 17.131C17.5471 17.3117 17.1785 17.3786 16.8078 17.4088C16.4567 17.4375 16.0304 17.4375 15.5362 17.4375L4.58885 17.4375C4.09465 17.4375 3.66832 17.4375 3.31716 17.4088C2.94653 17.3786 2.57788 17.3117 2.22315 17.131C1.69395 16.8613 1.26369 16.4311 0.994046 15.9018C0.813301 15.5471 0.746443 15.1785 0.716161 14.8078C0.68747 14.4567 0.687484 14.0303 0.687501 13.5361V4.46387C0.687484 3.96966 0.68747 3.54332 0.716161 3.19216C0.746443 2.82153 0.813302 2.45288 0.994046 2.09815C1.26369 1.56895 1.69395 1.13869 2.22315 0.869046C2.57788 0.688302 2.94653 0.621443 3.31716 0.591161C3.66833 0.56247 4.09467 0.562484 4.58887 0.562501ZM17.5625 12.2813H16.1563C16.1298 12.2813 16.1036 12.2813 16.0776 12.2813C15.7207 12.2816 15.4134 12.2818 15.1388 12.2272C14.0231 12.0053 13.151 11.1331 12.929 10.0174C12.8744 9.74289 12.8747 9.43555 12.875 9.07864C12.875 9.05269 12.875 9.02648 12.875 9C12.875 8.97352 12.875 8.94731 12.875 8.92136C12.8747 8.56446 12.8744 8.25711 12.929 7.98256C13.151 6.86687 14.0231 5.99472 15.1388 5.77279C15.4134 5.71818 15.7207 5.71843 16.0776 5.71871C16.1036 5.71873 16.1298 5.71875 16.1563 5.71875H17.5625V4.5C17.5625 3.95948 17.5618 3.61048 17.5401 3.34485C17.5193 3.09017 17.4839 2.99574 17.4603 2.94939C17.3704 2.77299 17.227 2.62957 17.0506 2.53969C17.0043 2.51607 16.9098 2.48074 16.6552 2.45994C16.3895 2.43823 16.0405 2.4375 15.5 2.4375H4.625C4.08448 2.4375 3.73548 2.43823 3.46985 2.45993C3.21516 2.48074 3.12074 2.51606 3.07439 2.53968C2.89798 2.62956 2.75457 2.77298 2.66468 2.94939C2.64107 2.99574 2.60574 3.09016 2.58493 3.34485C2.56323 3.61048 2.5625 3.95948 2.5625 4.5V13.5C2.5625 14.0405 2.56323 14.3895 2.58493 14.6552C2.60574 14.9098 2.64107 15.0043 2.66468 15.0506C2.75456 15.227 2.89798 15.3704 3.07439 15.4603C3.12074 15.4839 3.21516 15.5193 3.46985 15.5401C3.73548 15.5618 4.08448 15.5625 4.625 15.5625L15.5 15.5625C16.0405 15.5625 16.3895 15.5618 16.6552 15.5401C16.9098 15.5193 17.0043 15.4839 17.0506 15.4603C17.227 15.3704 17.3704 15.227 17.4603 15.0506C17.4839 15.0043 17.5193 14.9098 17.5401 14.6552C17.5618 14.3895 17.5625 14.0405 17.5625 13.5V12.2813ZM16.1563 7.59375C15.6757 7.59375 15.5723 7.59829 15.5046 7.61177C15.1327 7.68574 14.842 7.97646 14.768 8.34835C14.7545 8.41609 14.75 8.51945 14.75 9C14.75 9.48055 14.7545 9.58391 14.768 9.65165C14.842 10.0235 15.1327 10.3143 15.5046 10.3882C15.5723 10.4017 15.6757 10.4063 16.1563 10.4063H18.0313C18.5118 10.4063 18.6152 10.4017 18.6829 10.3882C19.0548 10.3143 19.3455 10.0235 19.4195 9.65165C19.433 9.58392 19.4375 9.48055 19.4375 9C19.4375 8.51945 19.433 8.41609 19.4195 8.34835C19.3455 7.97646 19.0548 7.68574 18.6829 7.61177C18.6152 7.59829 18.5118 7.59375 18.0313 7.59375H16.1563Z" fill="currentColor" />
                </svg>
            </div>
            <div class="check-all">
                <p class="mb-0 f-14 leading-17 gilroy-medium text-gray-100">{{ __('Check all') }}</p>
                <p class="mb-0 f-18 leading-22 text-dark gilroy-Semibold">{{ __('Wallet Balance') }}</p>
            </div>
            <a href="{{ route('user.wallets.index') }}" class="nscaleX-1 cursor-pointer d-flex justify-content-center align-items-center dash-arrow-div">
                <svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M12.1852 4.85247C11.8272 5.21045 11.8272 5.79085 12.1852 6.14883L16.1203 10.084H3.66667C3.16041 10.084 2.75 10.4944 2.75 11.0007C2.75 11.5069 3.16041 11.9173 3.66667 11.9173H16.1203L12.1852 15.8525C11.8272 16.2105 11.8272 16.7909 12.1852 17.1488C12.5431 17.5068 13.1235 17.5068 13.4815 17.1488L18.9815 11.6488C19.3395 11.2909 19.3395 10.7105 18.9815 10.3525L13.4815 4.85247C13.1235 4.49449 12.5431 4.49449 12.1852 4.85247Z" fill="#3F405B" />
                </svg>
            </a>
        </div>
    </div> --}}
    {{-- <div class="row mt-20 gy-4">
        <div class="col-12 col-lg-6">
            <div class="dash-profile-qr-div bg-white profile-mt-24">
                <div class="d-flex justify-content-between qr-icon">
                    <p class="mb-0 f-18 leading-22 text-dark gilroy-Semibold">{{ __('Profile QR Code') }}</p>
                    <a href="{{ route('user.profiles.index') }}">{!! svgIcons('edit_icon_lg') !!}</a>
                </div>
                <div class="d-flex">
                    <div class="dash-profile-qrCode mt-20">
                        <img src="{{ image($qrCode?->qr_image, 'user_qrcode') }}" alt="{{ __('QrCode') }}" class="img-fluid">
                    </div>
                    <div class="w-154 ml-20 qr-text">
                        <p class="mb-0 f-16 leading-22 gilroy-Semibold text-dark mt-25">{{ __('Send or Receive Money') }}</p>
                        <p class="mb-0 f-14 leading-22 gilroy-medium text-gray-100 mt-8">{{ __('Use the QR code to easily handle your transactions.') }}</p>
                    </div>
                </div>
                <button class="btn btn-lg btn-primary dash-print-btn mt-24 green-btn" id="printQrCodeBtn">
                    <svg class="mr-10" width="14" height="14" viewBox="0 0 14 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M3.23077 12.8333H10.7692V10.5H3.23077V12.8333ZM3.23077 7H10.7692V3.5H9.42308C9.19872 3.5 9.00801 3.41493 8.85096 3.24479C8.69391 3.07465 8.61538 2.86806 8.61538 2.625V1.16667H3.23077V7ZM12.9231 7.58333C12.9231 7.42535 12.8698 7.28863 12.7632 7.17318C12.6567 7.05773 12.5304 7 12.3846 7C12.2388 7 12.1126 7.05773 12.006 7.17318C11.8994 7.28863 11.8462 7.42535 11.8462 7.58333C11.8462 7.74132 11.8994 7.87804 12.006 7.99349C12.1126 8.10894 12.2388 8.16667 12.3846 8.16667C12.5304 8.16667 12.6567 8.10894 12.7632 7.99349C12.8698 7.87804 12.9231 7.74132 12.9231 7.58333ZM14 7.58333V11.375C14 11.454 13.9734 11.5224 13.9201 11.5801C13.8668 11.6378 13.8037 11.6667 13.7308 11.6667H11.8462V13.125C11.8462 13.3681 11.7676 13.5747 11.6106 13.7448C11.4535 13.9149 11.2628 14 11.0385 14H2.96154C2.73718 14 2.54647 13.9149 2.38942 13.7448C2.23237 13.5747 2.15385 13.3681 2.15385 13.125V11.6667H0.269231C0.196314 11.6667 0.133213 11.6378 0.0799279 11.5801C0.0266426 11.5224 0 11.454 0 11.375V7.58333C0 7.1033 0.158453 6.69162 0.475361 6.34831C0.792268 6.00499 1.17228 5.83333 1.61538 5.83333H2.15385V0.875C2.15385 0.631944 2.23237 0.425347 2.38942 0.255208C2.54647 0.0850694 2.73718 0 2.96154 0H8.61538C8.83974 0 9.08654 0.0607639 9.35577 0.182292C9.625 0.303819 9.83814 0.449653 9.99519 0.619792L11.274 2.00521C11.4311 2.17535 11.5657 2.40625 11.6779 2.69792C11.7901 2.98958 11.8462 3.25694 11.8462 3.5V5.83333H12.3846C12.8277 5.83333 13.2077 6.00499 13.5246 6.34831C13.8415 6.69162 14 7.1033 14 7.58333Z" fill="Currentcolor" />
                    </svg>
                    <span class="f-14 leading-20 gilroy-medium">{{ __('Print Code') }}</span>
                </button>
            </div>
        </div>
        <div class="col-12 col-lg-6">
            <div class="contact-support bg-white">
                <div class="d-flex">
                    <div class="messages-box">
                        <svg width="62" height="62" viewBox="0 0 62 62" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M51.3438 2.90625H24.2188C23.191 2.90625 22.2054 3.31451 21.4787 4.04121C20.752 4.76791 20.3438 5.75354 20.3438 6.78125V22.2812C20.3438 23.309 20.752 24.2946 21.4787 25.0213C22.2054 25.748 23.191 26.1562 24.2188 26.1562H40.6875L47.4688 31.9688V26.1562H51.3438C52.3715 26.1562 53.3571 25.748 54.0838 25.0213C54.8105 24.2946 55.2188 23.309 55.2188 22.2812V6.78125C55.2188 5.75354 54.8105 4.76791 54.0838 4.04121C53.3571 3.31451 52.3715 2.90625 51.3438 2.90625Z" fill="#635BFE" />
                            <path d="M37.7812 30.0312H10.6562C9.62854 30.0312 8.64291 30.4395 7.91621 31.1662C7.18951 31.8929 6.78125 32.8785 6.78125 33.9062V49.4062C6.78125 50.434 7.18951 51.4196 7.91621 52.1463C8.64291 52.873 9.62854 53.2812 10.6562 53.2812H14.5312V59.0938L21.3125 53.2812H37.7812C38.809 53.2812 39.7946 52.873 40.5213 52.1463C41.248 51.4196 41.6562 50.434 41.6562 49.4062V33.9062C41.6562 32.8785 41.248 31.8929 40.5213 31.1662C39.7946 30.4395 38.809 30.0312 37.7812 30.0312Z" fill="#FFAF30" />
                            <path d="M51.3438 2.90625H50.375V10.6562C50.375 13.7394 49.1502 16.6963 46.9701 18.8764C44.79 21.0565 41.8331 22.2812 38.75 22.2812H20.3438C20.3438 23.309 20.752 24.2946 21.4787 25.0213C22.2054 25.748 23.191 26.1562 24.2188 26.1562H40.6875L47.4688 31.9688V26.1562H51.3438C52.3715 26.1562 53.3571 25.748 54.0838 25.0213C54.8105 24.2946 55.2188 23.309 55.2188 22.2812V6.78125C55.2188 5.75354 54.8105 4.76791 54.0838 4.04121C53.3571 3.31451 52.3715 2.90625 51.3438 2.90625Z" fill="#524BD2" />
                            <path d="M37.7812 30.0312H35.8438V39.7188C35.8438 41.7742 35.0272 43.7454 33.5738 45.1988C32.1204 46.6522 30.1492 47.4688 28.0938 47.4688H6.78125V49.4062C6.78125 50.434 7.18951 51.4196 7.91621 52.1463C8.64291 52.873 9.62854 53.2812 10.6562 53.2812H14.5312V59.0938L21.3125 53.2812H37.7812C38.809 53.2812 39.7946 52.873 40.5213 52.1463C41.248 51.4196 41.6562 50.434 41.6562 49.4062V33.9062C41.6562 32.8785 41.248 31.8929 40.5213 31.1662C39.7946 30.4395 38.809 30.0312 37.7812 30.0312Z" fill="#DD992D" />
                            <path d="M37.7815 21.3126C37.5601 21.3104 37.3462 21.2316 37.1762 21.0896C37.0063 20.9476 36.8907 20.7512 36.8491 20.5337C36.8075 20.3162 36.8425 20.0909 36.9481 19.8963C37.0537 19.7016 37.2234 19.5495 37.4284 19.4657C37.6335 19.382 37.8612 19.3718 38.0729 19.4369C38.2846 19.5019 38.4672 19.6382 38.5898 19.8227C38.7124 20.0071 38.7674 20.2283 38.7454 20.4487C38.7235 20.6691 38.6259 20.875 38.4693 21.0317C38.2837 21.2087 38.038 21.309 37.7815 21.3126Z" fill="#F1F2F2" />
                            <path d="M37.7812 18.4064C37.5243 18.4064 37.2779 18.3043 37.0962 18.1226C36.9146 17.941 36.8125 17.6946 36.8125 17.4376V15.3287C36.8151 14.9043 36.9606 14.4931 37.2254 14.1615C37.4903 13.8298 37.8591 13.597 38.2724 13.5006C38.7474 13.3766 39.1577 13.0769 39.4203 12.6621C39.6828 12.2472 39.7781 11.7481 39.6868 11.2657C39.6122 10.8824 39.4248 10.53 39.1486 10.2539C38.8725 9.97774 38.5201 9.79034 38.1368 9.71573C37.8567 9.66343 37.5684 9.67358 37.2927 9.74543C37.0169 9.81729 36.7604 9.94909 36.5414 10.1314C36.3225 10.3138 36.1464 10.5422 36.0258 10.8004C35.9052 11.0586 35.843 11.3402 35.8438 11.6251C35.8438 11.8821 35.7417 12.1285 35.56 12.3101C35.3783 12.4918 35.1319 12.5939 34.875 12.5939C34.6181 12.5939 34.3717 12.4918 34.19 12.3101C34.0083 12.1285 33.9062 11.8821 33.9062 11.6251C33.9064 10.9009 34.1095 10.1912 34.4926 9.5765C34.8756 8.96184 35.4233 8.46683 36.0734 8.14763C36.7235 7.82843 37.4501 7.69781 38.1707 7.7706C38.8913 7.84338 39.577 8.11665 40.1502 8.55941C40.7233 9.00217 41.1609 9.5967 41.4133 10.2755C41.6657 10.9544 41.7228 11.6904 41.5781 12.4C41.4335 13.1097 41.0928 13.7646 40.5948 14.2905C40.0968 14.8163 39.4614 15.1921 38.7607 15.3752L38.75 17.4376C38.75 17.6946 38.6479 17.941 38.4663 18.1226C38.2846 18.3043 38.0382 18.4064 37.7812 18.4064Z" fill="#F1F2F2" />
                            <path d="M14.5312 36.8125H12.5938C12.3368 36.8125 12.0904 36.7104 11.9087 36.5288C11.7271 36.3471 11.625 36.1007 11.625 35.8438C11.625 35.5868 11.7271 35.3404 11.9087 35.1587C12.0904 34.9771 12.3368 34.875 12.5938 34.875H14.5312C14.7882 34.875 15.0346 34.9771 15.2163 35.1587C15.3979 35.3404 15.5 35.5868 15.5 35.8438C15.5 36.1007 15.3979 36.3471 15.2163 36.5288C15.0346 36.7104 14.7882 36.8125 14.5312 36.8125Z" fill="#F1F2F2" />
                            <path d="M35.8438 36.8125H18.4062C18.1493 36.8125 17.9029 36.7104 17.7212 36.5288C17.5396 36.3471 17.4375 36.1007 17.4375 35.8438C17.4375 35.5868 17.5396 35.3404 17.7212 35.1587C17.9029 34.9771 18.1493 34.875 18.4062 34.875H35.8438C36.1007 34.875 36.3471 34.9771 36.5288 35.1587C36.7104 35.3404 36.8125 35.5868 36.8125 35.8438C36.8125 36.1007 36.7104 36.3471 36.5288 36.5288C36.3471 36.7104 36.1007 36.8125 35.8438 36.8125Z" fill="#F1F2F2" />
                            <path d="M14.5312 40.6875H12.5938C12.3368 40.6875 12.0904 40.5854 11.9087 40.4038C11.7271 40.2221 11.625 39.9757 11.625 39.7188C11.625 39.4618 11.7271 39.2154 11.9087 39.0337C12.0904 38.8521 12.3368 38.75 12.5938 38.75H14.5312C14.7882 38.75 15.0346 38.8521 15.2163 39.0337C15.3979 39.2154 15.5 39.4618 15.5 39.7188C15.5 39.9757 15.3979 40.2221 15.2163 40.4038C15.0346 40.5854 14.7882 40.6875 14.5312 40.6875Z" fill="#F1F2F2" />
                            <path d="M35.8438 40.6875H18.4062C18.1493 40.6875 17.9029 40.5854 17.7212 40.4038C17.5396 40.2221 17.4375 39.9757 17.4375 39.7188C17.4375 39.4618 17.5396 39.2154 17.7212 39.0337C17.9029 38.8521 18.1493 38.75 18.4062 38.75H35.8438C36.1007 38.75 36.3471 38.8521 36.5288 39.0337C36.7104 39.2154 36.8125 39.4618 36.8125 39.7188C36.8125 39.9757 36.7104 40.2221 36.5288 40.4038C36.3471 40.5854 36.1007 40.6875 35.8438 40.6875Z" fill="#F1F2F2" />
                            <path d="M14.5312 44.5625H12.5938C12.3368 44.5625 12.0904 44.4604 11.9087 44.2788C11.7271 44.0971 11.625 43.8507 11.625 43.5938C11.625 43.3368 11.7271 43.0904 11.9087 42.9087C12.0904 42.7271 12.3368 42.625 12.5938 42.625H14.5312C14.7882 42.625 15.0346 42.7271 15.2163 42.9087C15.3979 43.0904 15.5 43.3368 15.5 43.5938C15.5 43.8507 15.3979 44.0971 15.2163 44.2788C15.0346 44.4604 14.7882 44.5625 14.5312 44.5625Z" fill="#F1F2F2" />
                            <path d="M35.8438 44.5625H18.4062C18.1493 44.5625 17.9029 44.4604 17.7212 44.2788C17.5396 44.0971 17.4375 43.8507 17.4375 43.5938C17.4375 43.3368 17.5396 43.0904 17.7212 42.9087C17.9029 42.7271 18.1493 42.625 18.4062 42.625H35.8438C36.1007 42.625 36.3471 42.7271 36.5288 42.9087C36.7104 43.0904 36.8125 43.3368 36.8125 43.5938C36.8125 43.8507 36.7104 44.0971 36.5288 44.2788C36.3471 44.4604 36.1007 44.5625 35.8438 44.5625Z" fill="#F1F2F2" />
                            <path d="M14.5312 48.4375H12.5938C12.3368 48.4375 12.0904 48.3354 11.9087 48.1538C11.7271 47.9721 11.625 47.7257 11.625 47.4688C11.625 47.2118 11.7271 46.9654 11.9087 46.7837C12.0904 46.6021 12.3368 46.5 12.5938 46.5H14.5312C14.7882 46.5 15.0346 46.6021 15.2163 46.7837C15.3979 46.9654 15.5 47.2118 15.5 47.4688C15.5 47.7257 15.3979 47.9721 15.2163 48.1538C15.0346 48.3354 14.7882 48.4375 14.5312 48.4375Z" fill="#F1F2F2" />
                            <path d="M35.8438 48.4375H18.4062C18.1493 48.4375 17.9029 48.3354 17.7212 48.1538C17.5396 47.9721 17.4375 47.7257 17.4375 47.4688C17.4375 47.2118 17.5396 46.9654 17.7212 46.7837C17.9029 46.6021 18.1493 46.5 18.4062 46.5H35.8438C36.1007 46.5 36.3471 46.6021 36.5288 46.7837C36.7104 46.9654 36.8125 47.2118 36.8125 47.4688C36.8125 47.7257 36.7104 47.9721 36.5288 48.1538C36.3471 48.3354 36.1007 48.4375 35.8438 48.4375Z" fill="#F1F2F2" />
                        </svg>
                    </div>
                    <div class="ml-12 mt-9">
                        <p class="mb-0 f-18 text-dark leading-22 gilroy-Semibold w-break">{{ __('Contact Ticket Support') }}</p>
                    </div>
                </div>
                <p class="mb-0 f-14 leading-22 text-gray-100 gilroy-medium mt-18">{{ __('Create a ticket on the problem you are facing and our team will get back to you soon. Our dedicated support team is here to assist you every step of the way') }}</p>
                <a href="{{ route('user.tickets.create') }}" class="mt-32 btn btn-sm btn-primary ticket-btn green-btn">
                    <span class="f-14 leading-20 gilroy-medium text-white">{{ __('Create Ticket Now') }}</span>
                </a>

            </div>
        </div>
        @if(Common::has_permission(auth()->id(),'manage_merchant'))
        <div class="col-12 col-xl-4">
            <div class="contact-support bg-white">
                <div class="d-flex">
                    <div class="messages-box">
                        <svg width="62" height="62" viewBox="0 0 62 62" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M51.3438 2.90625H24.2188C23.191 2.90625 22.2054 3.31451 21.4787 4.04121C20.752 4.76791 20.3438 5.75354 20.3438 6.78125V22.2812C20.3438 23.309 20.752 24.2946 21.4787 25.0213C22.2054 25.748 23.191 26.1562 24.2188 26.1562H40.6875L47.4688 31.9688V26.1562H51.3438C52.3715 26.1562 53.3571 25.748 54.0838 25.0213C54.8105 24.2946 55.2188 23.309 55.2188 22.2812V6.78125C55.2188 5.75354 54.8105 4.76791 54.0838 4.04121C53.3571 3.31451 52.3715 2.90625 51.3438 2.90625Z" fill="#635BFE" />
                            <path d="M37.7812 30.0312H10.6562C9.62854 30.0312 8.64291 30.4395 7.91621 31.1662C7.18951 31.8929 6.78125 32.8785 6.78125 33.9062V49.4062C6.78125 50.434 7.18951 51.4196 7.91621 52.1463C8.64291 52.873 9.62854 53.2812 10.6562 53.2812H14.5312V59.0938L21.3125 53.2812H37.7812C38.809 53.2812 39.7946 52.873 40.5213 52.1463C41.248 51.4196 41.6562 50.434 41.6562 49.4062V33.9062C41.6562 32.8785 41.248 31.8929 40.5213 31.1662C39.7946 30.4395 38.809 30.0312 37.7812 30.0312Z" fill="#FFAF30" />
                            <path d="M51.3438 2.90625H50.375V10.6562C50.375 13.7394 49.1502 16.6963 46.9701 18.8764C44.79 21.0565 41.8331 22.2812 38.75 22.2812H20.3438C20.3438 23.309 20.752 24.2946 21.4787 25.0213C22.2054 25.748 23.191 26.1562 24.2188 26.1562H40.6875L47.4688 31.9688V26.1562H51.3438C52.3715 26.1562 53.3571 25.748 54.0838 25.0213C54.8105 24.2946 55.2188 23.309 55.2188 22.2812V6.78125C55.2188 5.75354 54.8105 4.76791 54.0838 4.04121C53.3571 3.31451 52.3715 2.90625 51.3438 2.90625Z" fill="#524BD2" />
                            <path d="M37.7812 30.0312H35.8438V39.7188C35.8438 41.7742 35.0272 43.7454 33.5738 45.1988C32.1204 46.6522 30.1492 47.4688 28.0938 47.4688H6.78125V49.4062C6.78125 50.434 7.18951 51.4196 7.91621 52.1463C8.64291 52.873 9.62854 53.2812 10.6562 53.2812H14.5312V59.0938L21.3125 53.2812H37.7812C38.809 53.2812 39.7946 52.873 40.5213 52.1463C41.248 51.4196 41.6562 50.434 41.6562 49.4062V33.9062C41.6562 32.8785 41.248 31.8929 40.5213 31.1662C39.7946 30.4395 38.809 30.0312 37.7812 30.0312Z" fill="#DD992D" />
                            <path d="M37.7815 21.3126C37.5601 21.3104 37.3462 21.2316 37.1762 21.0896C37.0063 20.9476 36.8907 20.7512 36.8491 20.5337C36.8075 20.3162 36.8425 20.0909 36.9481 19.8963C37.0537 19.7016 37.2234 19.5495 37.4284 19.4657C37.6335 19.382 37.8612 19.3718 38.0729 19.4369C38.2846 19.5019 38.4672 19.6382 38.5898 19.8227C38.7124 20.0071 38.7674 20.2283 38.7454 20.4487C38.7235 20.6691 38.6259 20.875 38.4693 21.0317C38.2837 21.2087 38.038 21.309 37.7815 21.3126Z" fill="#F1F2F2" />
                            <path d="M37.7812 18.4064C37.5243 18.4064 37.2779 18.3043 37.0962 18.1226C36.9146 17.941 36.8125 17.6946 36.8125 17.4376V15.3287C36.8151 14.9043 36.9606 14.4931 37.2254 14.1615C37.4903 13.8298 37.8591 13.597 38.2724 13.5006C38.7474 13.3766 39.1577 13.0769 39.4203 12.6621C39.6828 12.2472 39.7781 11.7481 39.6868 11.2657C39.6122 10.8824 39.4248 10.53 39.1486 10.2539C38.8725 9.97774 38.5201 9.79034 38.1368 9.71573C37.8567 9.66343 37.5684 9.67358 37.2927 9.74543C37.0169 9.81729 36.7604 9.94909 36.5414 10.1314C36.3225 10.3138 36.1464 10.5422 36.0258 10.8004C35.9052 11.0586 35.843 11.3402 35.8438 11.6251C35.8438 11.8821 35.7417 12.1285 35.56 12.3101C35.3783 12.4918 35.1319 12.5939 34.875 12.5939C34.6181 12.5939 34.3717 12.4918 34.19 12.3101C34.0083 12.1285 33.9062 11.8821 33.9062 11.6251C33.9064 10.9009 34.1095 10.1912 34.4926 9.5765C34.8756 8.96184 35.4233 8.46683 36.0734 8.14763C36.7235 7.82843 37.4501 7.69781 38.1707 7.7706C38.8913 7.84338 39.577 8.11665 40.1502 8.55941C40.7233 9.00217 41.1609 9.5967 41.4133 10.2755C41.6657 10.9544 41.7228 11.6904 41.5781 12.4C41.4335 13.1097 41.0928 13.7646 40.5948 14.2905C40.0968 14.8163 39.4614 15.1921 38.7607 15.3752L38.75 17.4376C38.75 17.6946 38.6479 17.941 38.4663 18.1226C38.2846 18.3043 38.0382 18.4064 37.7812 18.4064Z" fill="#F1F2F2" />
                            <path d="M14.5312 36.8125H12.5938C12.3368 36.8125 12.0904 36.7104 11.9087 36.5288C11.7271 36.3471 11.625 36.1007 11.625 35.8438C11.625 35.5868 11.7271 35.3404 11.9087 35.1587C12.0904 34.9771 12.3368 34.875 12.5938 34.875H14.5312C14.7882 34.875 15.0346 34.9771 15.2163 35.1587C15.3979 35.3404 15.5 35.5868 15.5 35.8438C15.5 36.1007 15.3979 36.3471 15.2163 36.5288C15.0346 36.7104 14.7882 36.8125 14.5312 36.8125Z" fill="#F1F2F2" />
                            <path d="M35.8438 36.8125H18.4062C18.1493 36.8125 17.9029 36.7104 17.7212 36.5288C17.5396 36.3471 17.4375 36.1007 17.4375 35.8438C17.4375 35.5868 17.5396 35.3404 17.7212 35.1587C17.9029 34.9771 18.1493 34.875 18.4062 34.875H35.8438C36.1007 34.875 36.3471 34.9771 36.5288 35.1587C36.7104 35.3404 36.8125 35.5868 36.8125 35.8438C36.8125 36.1007 36.7104 36.3471 36.5288 36.5288C36.3471 36.7104 36.1007 36.8125 35.8438 36.8125Z" fill="#F1F2F2" />
                            <path d="M14.5312 40.6875H12.5938C12.3368 40.6875 12.0904 40.5854 11.9087 40.4038C11.7271 40.2221 11.625 39.9757 11.625 39.7188C11.625 39.4618 11.7271 39.2154 11.9087 39.0337C12.0904 38.8521 12.3368 38.75 12.5938 38.75H14.5312C14.7882 38.75 15.0346 38.8521 15.2163 39.0337C15.3979 39.2154 15.5 39.4618 15.5 39.7188C15.5 39.9757 15.3979 40.2221 15.2163 40.4038C15.0346 40.5854 14.7882 40.6875 14.5312 40.6875Z" fill="#F1F2F2" />
                            <path d="M35.8438 40.6875H18.4062C18.1493 40.6875 17.9029 40.5854 17.7212 40.4038C17.5396 40.2221 17.4375 39.9757 17.4375 39.7188C17.4375 39.4618 17.5396 39.2154 17.7212 39.0337C17.9029 38.8521 18.1493 38.75 18.4062 38.75H35.8438C36.1007 38.75 36.3471 38.8521 36.5288 39.0337C36.7104 39.2154 36.8125 39.4618 36.8125 39.7188C36.8125 39.9757 36.7104 40.2221 36.5288 40.4038C36.3471 40.5854 36.1007 40.6875 35.8438 40.6875Z" fill="#F1F2F2" />
                            <path d="M14.5312 44.5625H12.5938C12.3368 44.5625 12.0904 44.4604 11.9087 44.2788C11.7271 44.0971 11.625 43.8507 11.625 43.5938C11.625 43.3368 11.7271 43.0904 11.9087 42.9087C12.0904 42.7271 12.3368 42.625 12.5938 42.625H14.5312C14.7882 42.625 15.0346 42.7271 15.2163 42.9087C15.3979 43.0904 15.5 43.3368 15.5 43.5938C15.5 43.8507 15.3979 44.0971 15.2163 44.2788C15.0346 44.4604 14.7882 44.5625 14.5312 44.5625Z" fill="#F1F2F2" />
                            <path d="M35.8438 44.5625H18.4062C18.1493 44.5625 17.9029 44.4604 17.7212 44.2788C17.5396 44.0971 17.4375 43.8507 17.4375 43.5938C17.4375 43.3368 17.5396 43.0904 17.7212 42.9087C17.9029 42.7271 18.1493 42.625 18.4062 42.625H35.8438C36.1007 42.625 36.3471 42.7271 36.5288 42.9087C36.7104 43.0904 36.8125 43.3368 36.8125 43.5938C36.8125 43.8507 36.7104 44.0971 36.5288 44.2788C36.3471 44.4604 36.1007 44.5625 35.8438 44.5625Z" fill="#F1F2F2" />
                            <path d="M14.5312 48.4375H12.5938C12.3368 48.4375 12.0904 48.3354 11.9087 48.1538C11.7271 47.9721 11.625 47.7257 11.625 47.4688C11.625 47.2118 11.7271 46.9654 11.9087 46.7837C12.0904 46.6021 12.3368 46.5 12.5938 46.5H14.5312C14.7882 46.5 15.0346 46.6021 15.2163 46.7837C15.3979 46.9654 15.5 47.2118 15.5 47.4688C15.5 47.7257 15.3979 47.9721 15.2163 48.1538C15.0346 48.3354 14.7882 48.4375 14.5312 48.4375Z" fill="#F1F2F2" />
                            <path d="M35.8438 48.4375H18.4062C18.1493 48.4375 17.9029 48.3354 17.7212 48.1538C17.5396 47.9721 17.4375 47.7257 17.4375 47.4688C17.4375 47.2118 17.5396 46.9654 17.7212 46.7837C17.9029 46.6021 18.1493 46.5 18.4062 46.5H35.8438C36.1007 46.5 36.3471 46.6021 36.5288 46.7837C36.7104 46.9654 36.8125 47.2118 36.8125 47.4688C36.8125 47.7257 36.7104 47.9721 36.5288 48.1538C36.3471 48.3354 36.1007 48.4375 35.8438 48.4375Z" fill="#F1F2F2" />
                        </svg>
                    </div>
                    <div class="ml-12 mt-9">
                        <p class="mb-0 f-18 text-dark leading-22 gilroy-Semibold w-break">{{ __('Create Merchant') }}</p>
                    </div>
                </div>
                <p class="mb-0 f-14 leading-22 text-gray-100 gilroy-medium mt-18">{{ __('A Merchant User is a special type of user who operates a business and sells products. If you wish to establish a merchant business, kindly access the following link.') }}</p>
                <a href="{{ route('user.merchants.create') }}" class="mt-32 btn btn-sm btn-primary ticket-btn green-btn">
                    <span class="f-14 leading-20 gilroy-medium text-white">{{ __('Create New Merchant') }}</span>
                </a>

            </div>
        </div>
        @endif
    </div> --}}

    {{-- @if ($transactions->count() > 0)
        <div>
            <div class="mt-22 mt-sm-4">
                <div class="d-flex justify-content-between align-items-center r-pb-8 pb-10">
                    <p class="mb-0 text-gray-100 f-16 r-f-12 gilroy-medium dark-CDO">{{ __('Recent Activities') }}</p>
                    <div class="d-flex align-items-center">
                        <p class="mb-0 text-gray-100 f-16 r-f-12 gilroy-medium dark-CDO">{{ __('See All Transactions') }}</p>
                        <a href="{{ url('/crypto-exchange/buy-sell-list') }}" class="fil-btn-arow ml-12 d-flex align-items-center justify-content-center">
                            <svg class="nscaleX-1" width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" clip-rule="evenodd" d="M9.96967 3.96967C9.67678 4.26256 9.67678 4.73744 9.96967 5.03033L13.1893 8.25H3C2.58579 8.25 2.25 8.58579 2.25 9C2.25 9.41421 2.58579 9.75 3 9.75H13.1893L9.96967 12.9697C9.67678 13.2626 9.67678 13.7374 9.96967 14.0303C10.2626 14.3232 10.7374 14.3232 11.0303 14.0303L15.5303 9.53033C15.8232 9.23744 15.8232 8.76256 15.5303 8.46967L11.0303 3.96967C10.7374 3.67678 10.2626 3.67678 9.96967 3.96967Z" fill="white" />
                            </svg>
                        </a>
                    </div>
                </div>
            </div>
        </div>

    <!-- Transaction List -->
        <div class="transac-parent">
            @include('user.transaction.info')
        </div>
    @endif --}}
@endsection

@push('js')
    {{-- <script>
        'use strict';
        var cancellingText = "{{ __('Cancelling...') }}";
        var cancelledText = "{{ __('Cancelled') }}";
        var requestPaymentCancelUrl = "{{ route('user.request_money.cancel') }}";
        var printQrCodeUrl = "{{ route('user.profile.qrcode.print', [auth()->id(), 'user']) }}";
        var requestPaymentCreatorStatusCheckUrl = "{{ route('user.request_money.creator_status_check') }}";
        var requestPaymentCreatorSuspendUrl = "{{ route('user.request_money.creator_suspend') }}";
        var requestPaymentCreatorInactiveUrl = "{{ route('user.request_money.creator_inactive') }}";
        var userStatus = "{{ auth()->user()->status }}";
        var userStatusCheckUrl = "{{ url('check-user-status') }}";
        var walletRoute = "{{ route('user.wallets.index') }}";
    </script> --}}
    <script src="{{ asset('public/user/customs/js/user-status.min.js') }}"></script>
    <script src="{{ asset('public/user/customs/js/user-transaction.min.js') }}"></script>
    <script src="{{ asset('public/user/customs/js/dashboard.min.js') }}" type="text/javascript"></script>
@endpush
