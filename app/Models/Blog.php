<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    
    protected $casts    = ['position' => 'array'];

    protected $fillable = [
        'title',
        'image',
        'video',
        'sub_title',
        'url',
        'content',
        'position',
        'status',
    ];
}
