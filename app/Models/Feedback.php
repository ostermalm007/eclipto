<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Feedback extends Model
{
    
    protected $casts    = ['position' => 'array'];
    protected $table='feedbacks';
    protected $fillable = [
        'user',
        'designation',
        'image',
        'content',
        'rating',
    ];
}
