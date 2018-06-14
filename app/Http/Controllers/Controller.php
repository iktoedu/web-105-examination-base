<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

use App\SportTeam;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
public function index () 
{
      $team = SportTeam::select(['id', 'id_sport_type','title','members_count','success_pergentage'])->get();
      return view('index')->with(['sportteams' => $team]);
    }
}

