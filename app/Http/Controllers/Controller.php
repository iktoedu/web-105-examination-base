<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

use App\Book;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function index () {
      $book = Book::select(['id','author','title','pages','issued'])->get();
      return view('index')->with(['books' => $book]);
    }

    public function show ($id) {
      $book = Book::select(['id','author','title','pages','issued'])->where('id', $id)->first();
      return view('change')->with(['book' => $book]);
    }
}
