<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SportTeam extends Model {
    protected $fillable = ['id_sport_type','title','members_count','success_pergentage'];
}