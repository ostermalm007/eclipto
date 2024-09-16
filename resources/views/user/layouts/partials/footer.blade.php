<footer class="d-flex align-items-center justify-content-between bg-white w-100 px-4 footer-sec">
    <div class="res-order d-flex align-items-center">
        <p class="mb-0 gilroy-medium">{{ __('Copyright') }} &copy; {{ date('Y') }}&nbsp;<a href="{{ url('/') }}" class="link-text">{{ settings('name') }}</a>&nbsp;|&nbsp;{{ __('All Rights Reserved.') }}</p>
        <span class="d-none">{{ config('script.version') }}</span>
    </div>
    <div class="d-flex f-link align-items-center">
        <div>
        </div>
    </div>
</footer>