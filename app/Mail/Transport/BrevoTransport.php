<?php

namespace App\Mail\Transport;

use Symfony\Component\Mailer\SentMessage;
use Symfony\Component\Mailer\Transport\AbstractTransport;
use Symfony\Component\Mime\MessageConverter;
use Illuminate\Support\Facades\Http;

class BrevoTransport extends AbstractTransport
{
    protected $apiKey;

    public function __construct(string $apiKey)
    {
        parent::__construct();
        $this->apiKey = $apiKey;
    }

    protected function doSend(SentMessage $message): void
    {
        $email = MessageConverter::toEmail($message->getOriginalMessage());

        $payload = [
            'sender' => [
                'name' => $email->getFrom()[0]->getName(),
                'email' => $email->getFrom()[0]->getAddress(),
            ],
            'to' => array_map(function ($address) {
                return [
                    'email' => $address->getAddress(),
                    'name' => $address->getName() ?: $address->getAddress()
                ];
            }, $email->getTo()),
            'subject' => $email->getSubject(),
            'htmlContent' => $email->getHtmlBody(),
            'textContent' => $email->getTextBody(),
        ];

        if ($replyTo = $email->getReplyTo()) {
            if (isset($replyTo[0])) {
                $payload['replyTo'] = [
                    'email' => $replyTo[0]->getAddress(),
                    'name' => $replyTo[0]->getName() ?: $replyTo[0]->getAddress(),
                ];
            }
        }

        $response = Http::withHeaders([
            'api-key' => $this->apiKey,
            'Content-Type' => 'application/json',
        ])->post('https://api.brevo.com/v3/smtp/email', $payload);

        if (!$response->successful()) {
            throw new \Exception('Brevo API Error: ' . $response->body());
        }
    }

    public function __toString(): string
    {
        return 'brevo-api';
    }
}
