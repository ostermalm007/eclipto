<?php

/**
 * @package GatewayHandler
 * @author Eclipto <support@eclipto.org>
 */


namespace App\Services\Gateways\Gateway;

use App\Services\Gateways\Gateway\Exceptions\InvalidGatewayException;

class GatewayHandler
{

    /**
     * Issues the gateway processor
     *
     * @param string $gateway
     *
     * @return void
     *
     * @throws InvalidGatewayException
     */
    public static function gatewayIssue($gateway)
    {
        $gatewayConcrete = "App\Services\Gateways\\" . ucfirst($gateway) . "\\" . ucfirst($gateway) . "Processor";
        if (class_exists($gatewayConcrete)) {
            app()->bind(PaymentProcessor::class, $gatewayConcrete);
        } else {
            throw new InvalidGatewayException(__(":x Gateway processor not found.", ["x" => ucfirst($gateway)]));
        }
    }
}
