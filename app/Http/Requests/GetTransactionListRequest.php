<?php

/**
 * @package GetTransactionListRequest
 * @author Eclipto <support@eclipto.org>
 */

namespace App\Http\Requests;

class GetTransactionListRequest extends CustomFormRequest
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
            'type'   => 'required',
            'offset' => 'numeric|min:0',
            'limit'  => 'numeric|min:1',
            'order'  => 'in:desc,asc',
        ];
    }
}
