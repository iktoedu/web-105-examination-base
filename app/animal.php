<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class animal extends Model {
 protected $fillable = ['id','id_class','title','speed_average','limbs_count'];
 protected $table = 'animal';
 public function clas() {
  return $this->hasOne('App\clas');
 }
 
}