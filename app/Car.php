<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Car extends Model {
    protected $fillable = ['id','model_name','engine_power','drive_wheels'];
}
