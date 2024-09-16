<?php

namespace Modules\CryptoExchange\Http\Middleware;

use Closure;

class CheckCryptoAvailiblity
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $value)
    {
      
        return $next($request);
       
    }
}
