<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\{App,
    Session
};
use Illuminate\Http\Request;
use App\Http\Helpers\Common;
use App\Models\Language;
use Ramsey\Uuid\Uuid;



use App\Models\Currency;

use Exception;

use Modules\CryptoExchange\Entities\CryptoExchange;
use Modules\CryptoExchange\Http\Requests\{CryptoUserRequest,
    CryptoExchangeRequest
};
use Modules\CryptoExchange\Services\CryptoExchangeService;



class HomeController extends Controller
{
    protected $helper;
    protected $service;

    public function __construct()
    {
        $this->helper = new Common();
        $this->service = new CryptoExchangeService();
    }

    public function index()
    {
        

        setActionSession();

        $data = [];

        $exchange_type = (preference('transaction_type') == 'crypto_buy_sell') ? 'crypto_buy' : 'crypto_swap';

        if (route('user_dashboard.crypto_buy_sell.payment_confirm') == url()->previous()) {
            $paymentData = getPaymentData();
            $exchange_type = $paymentData['exchange_type'];
        }

        $data = [
            'icon' => 'money',
            'menu' => 'Crypto Exchange',
            'content_title' => 'Crypto Exchange',
            'exchangeType' => $exchange_type,
        ];

        try {
            $fromCurrency = isset($paymentData) ? $paymentData['from_currency'] : null;
            $data = array_merge($data, $this->service->getCryptoExchangeDirection($exchange_type, $fromCurrency));
            $data['min_amount'] = isset($paymentData) ? $paymentData['send_amount'] : $data['min_amount'];
            $data['selectedTo'] = isset($paymentData) ? $paymentData['to_currency'] : '';
            $data['selectedFrom'] =  isset($paymentData) ? $paymentData['from_currency'] : '';

        } catch (Exception $e) {
            $this->helper->one_time_message('error', $e->getMessage());
        }

        return view('welcome',$data);
    }

    public function privacyPolicy()
    {
        $data = [];
        $data['menu'] = 'privacy-policy';
        return view('frontend.home.privacy', $data);
    }

}
