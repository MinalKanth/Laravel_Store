<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Blade;

class WelcomeEmail extends Mailable
{
    use Queueable, SerializesModels;

    protected $emailData;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($emailData)
    {
        $this->emailData = $emailData;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this
            ->from('meetshahlearnvern@gmail.com', 'LearnVern')
            ->replyTo('meetshahlearnvern@gmail.com', 'Reply To Email')
            ->subject($this->emailData['subject'])
            ->view('html_mail')
            ->with([
                'tagline' => $this->emailData['tagline']
            ]);
    }
}
