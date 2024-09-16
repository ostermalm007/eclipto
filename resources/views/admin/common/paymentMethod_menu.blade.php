<div class="box box-primary">

    <div class="box-header with-border ps-3">
        <h3 class="box-title underline">{{ __('Payment Methods') }}</h3>
    </div>
    <div class="box-body no-padding">
        <ul class="nav nav-pills nav-stacked flex-column">
			@if ($currency->type == 'fiat')
                <li {{ isset($list_menu) && $list_menu == 'stripe' ? 'class=active' : '' }}>
                    <a data-spinner="true" href='{{ url(config('adminPrefix') . '/settings/payment-methods/stripe/' . $currency->id) }}'>{{ __('Stripe') }}</a>
                </li>

               
                <li {{ isset($list_menu) && $list_menu == 'bank' ? 'class=active' : '' }}>
                    <a data-spinner="true" href='{{ url(config('adminPrefix') . '/settings/payment-methods/bank/' . $currency->id) }}'>{{ __('Banks') }}</a>
                </li>
            
			@endif
        </ul>
    </div>
</div>
