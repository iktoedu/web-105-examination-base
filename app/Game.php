<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Game extends Model
{
    protected $fillable = ['id', 'id_genre', 'title', 'price', 'steamapp_link'];
}
