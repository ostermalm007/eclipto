<?php

/**
 * @package InvalidGatewayException
 * @author Eclipto <support@eclipto.org>
 */

namespace App\Services\Gateways\Gateway\Exceptions;

use App\Exceptions\Api\V2\ApiException;
use App\Traits\ApiResponse;

class InvalidGatewayException extends ApiException
{
    use ApiResponse;


    /**
     * Render custom exception
     *
     * @param mixed|null $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function render($request)
    {
        return $this->unprocessableResponse(
            [],
            $this->getMessage()
        );
    }
}
