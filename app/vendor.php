<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class vendor extends Model {
 protected $fillable = ['id', 'title'];
 protected $table = 'vendor';
 }
}