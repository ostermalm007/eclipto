<?php

/**
 * @package PhoneCheckRequest
 * @author Eclipto <support@eclipto.org>
 */

namespace App\Http\Requests\RequestMoney;

use App\Http\Requests\CustomFormRequest;

class PhoneCheckRequest extends CustomFormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'receiverPhone'  => 'required',
        ];
    }
    /**
     * Get custom attributes for validator errors.
     *
     * @return array
     */
    public function attributes()
    {
        return [
            'receiverPhone' => __('Phone'),
        ];
    }
}
