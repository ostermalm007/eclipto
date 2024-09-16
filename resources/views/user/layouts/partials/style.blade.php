<link rel="stylesheet" href="{{ asset('public/dist/libraries/bootstrap-5.0.2/css/bootstrap.min.css') }}">
<link rel="stylesheet" href="{{ asset('public/dist/plugins/select2-4.1.0-rc.0/css/select2.min.css') }}">
@stack('css')
<link rel="stylesheet" href="{{ asset('public/user/templates/css/style.min.css') }}">
<style>
    .list-option{border-radius:8px; }
    .list-option:hover{
        background-color:lightgray!important; 
        color:black!important;
        border-radius:8px!important;
    }
</style>
{{-- <style>
    

    .verification-alert-active {
        opacity: 1;
        transform: translateY(0);
        animation: blinks 1s infinite;
    }

    @keyframes blinks {
        0% { background-color: red; }
        50% { background-color: yellow;color:black; }
        100% { background-color: red; }
    }
</style> --}}
