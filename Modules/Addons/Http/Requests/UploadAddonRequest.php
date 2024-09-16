<?php

namespace Modules\Addons\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UploadAddonRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'purchase_code' => 'required',
            'username' => 'required',
            'attachment' => 'required|mimes:zip,rar,7zip',
        ];
    }

    public function messages() 
    {
        return [
            'attachment.required' => __('Choose the module compressed file.'),
        ];
    }

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }
}
