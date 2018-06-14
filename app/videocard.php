<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class videocard extends Model {
 protected $fillable = ['model_name','ram_amount','vulkan_support'];
 protected $table = 'videocard';
 public function vendor() {
  return $this->hasOne('App\vendor');
 }
}
