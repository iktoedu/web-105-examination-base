<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

use App\videocard;
class Controller extends BaseController
{
   

	public function index () {
		
		$videocard = Videocard :: select (['id','model_name', 'ram_amount', 'vulkan_support']) ->get();
			return view ('index')-> with (['videocard'=>$videocard]);

	}}