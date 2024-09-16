<?php

/**
 * @package WithdrawSettingCollection
 * @author Eclipto <support@eclipto.org>
 */

namespace App\Http\Resources\V2;

use Illuminate\Http\Resources\Json\ResourceCollection;

class WithdrawSettingCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return WithdrawSettingResource::collection($this->collection);
    }
}
