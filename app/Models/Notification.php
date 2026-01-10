<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Notification extends Model
{
    protected $fillable = [
        'user_id', 'recipient_type', 'recipient_address',
        'title', 'message', 'notification_type', 'is_read', 'related_id'
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
