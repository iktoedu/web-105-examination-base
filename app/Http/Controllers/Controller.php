<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

use App\Car;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function index () {
    	$cars = Car::select(['id','model_name','engine_power','drive_wheels'])->get();
    	return view('index')->with(['cars' => $cars]);
    }

    public function show ($id) {
      $cars = Car::find($id);
      return view('page')->with(['cars' => $cars]);
    }
}

