<?php

/**
 * @package CheckAllowedWithdrawalSettingPaymentMethod
 * @author Eclipto <support@eclipto.org>
 */

namespace App\Rules;

use App\Models\PaymentMethod;
use Illuminate\Contracts\Validation\Rule;

class CheckAllowedWithdrawalSettingPaymentMethod implements Rule
{
    /**
     * Determine if the validation rule passes.
     * Only allow Bank, PayPal and Crypto
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        $paymentMethods = PaymentMethod::whereIn('id', getPaymoneySettings('payment_methods')['mobile']['withdrawal'])
                                        ->active()->pluck('name')->toArray();
        if (!in_array($value, $paymentMethods)) {
            return false;
        }
        return true;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return __("The :x does not exist.", [":x" => __("Payment Method")]);
    }
}
