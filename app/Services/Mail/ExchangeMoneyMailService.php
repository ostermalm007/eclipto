<?php

/**
 * @package EmailToSenderMailService
 * @author Eclipto <support@eclipto.org>
 */

namespace App\Services\Mail;

use Exception;
use App\Services\Mail\TechVillageMail;

class ExchangeMoneyMailService extends TechVillageMail
{
    /**
     * The array of status and message whether email sent or not.
     *
     * @var array
     */
    protected $mailResponse = [];

    public function __construct()
    {
        parent::__construct();
        $this->mailResponse = [
            'status'  => true,
            'message' => __('We have sent you the ticket status. Please check your email.')
        ];
    }
    /**
     * Send forgot password code to user email
     * @param object $user
     * @return array $response
     */
    public function send($exchange, $optional = [])
    {
        $recipient = getRecipientFromNotificationSetting($optional);

        try {
            $response = $this->getEmailTemplate('notify-admin-on-exchange');

            if (!$response['status']) {
                return $response;
            }

            $data = [
                "{admin}" => $recipient['name'] ?? $recipient['email'],
                "{amount}" => moneyFormat($exchange->fromWallet?->currency?->symbol, formatNumber($exchange->amount, $exchange->fromWallet?->currency?->id)),
                "{user}" => getColumnValue($exchange->user),
                "{created_at}" => dateFormat($exchange->created_at),
                "{uuid}" => $exchange->uuid,
                "{from_wallet}" => $exchange->fromWallet?->currency?->code,
                "{to_wallet}" => $exchange->toWallet?->currency?->code,
                "{exchanged_amount}" => moneyFormat($exchange->toWallet?->currency?->symbol, formatNumber($exchange->amount * $exchange->exchange_rate, $exchange->toWallet?->currency?->id)),
                "{fee}" => moneyFormat($exchange->fromWallet?->currency?->symbol, formatNumber($exchange->fee, $exchange->currency_id)),
                "{exchange_rate}" => formatNumber($exchange->exchange_rate, $exchange->toWallet?->currency?->id),
                "{soft_name}" => settings('name')
            ];

            $message = str_replace(array_keys($data), $data, $response['template']->body);
            $this->email->sendEmail($recipient['email'], $response['template']->subject, $message);

        } catch (Exception $e) {
            $this->mailResponse = ['status' => false, 'message' => $e->getMessage()];
        }
        return $this->mailResponse;
    }
}