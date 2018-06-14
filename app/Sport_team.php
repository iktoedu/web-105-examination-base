<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
class Sport_team extends Model
{
    protected $fillable = ['id', 'id_sport_type', 'title', 'members_count', 'success_pergentage'];
}