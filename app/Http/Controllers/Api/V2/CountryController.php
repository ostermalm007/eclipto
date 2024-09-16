<?php

/**
 * @package CountryController
 * @author Eclipto <support@eclipto.org>
 */

namespace App\Http\Controllers\Api\V2;

use App\Http\Resources\V2\CountryCollection;
use App\Models\Country;
use App\Http\Controllers\Controller;

class CountryController extends Controller
{
    /**
     * Get detfault country short name
     *
     * @return JsonResponse
     */
    public function getDefaultCountryShortName()
    {
        try {
            $response['country'] = getDefaultCountry();
            return $this->okResponse($response);
        } catch (\Exception $e) {
            return $this->unprocessableResponse([], __("Failed to process the request."));
        }
    }

    /**
     * Get all countries
     *
     * @return JsonResponse
     * @return \Illuminate\Database\Eloquent\Collection
     */
    public function list()
    {
        try {
            $countries = Country::getAll();
            return $this->okResponse(new CountryCollection($countries));
        } catch (\Exception $e) {
            return $this->unprocessableResponse([], __("Failed to process the request."));
        }
    }
}
