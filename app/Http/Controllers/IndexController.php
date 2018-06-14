<?php

namespace App\Http\Controllers;
 
use Illuminate\Http\Request;
use App\Game;

class IndexController extends Controller
{
    public function index()
    {
        $games = Game::all();
        return view('index')->with('games', $games);
    }

  public function show($id) {
        $games = Game::find($id);
        return view('content')->with('games', $games);
    }
}