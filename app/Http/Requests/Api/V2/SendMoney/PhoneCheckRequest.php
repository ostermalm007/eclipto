<?php

namespace App\Http\Requests\Api\V2\SendMoney;

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
            'receiver_phone'    => 'required',
        ];
    }
}
