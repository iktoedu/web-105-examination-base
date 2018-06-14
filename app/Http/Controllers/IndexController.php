<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Book;

class IndexController extends Controller
{
    public function index()
    {
        $books = Book::all();
        return view('index')->with('books', $books);
    }

    public function add()
    {
        return view('add-content');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'author' => 'required|max:255',
            'title' => 'required|max:255',
            'id_genre' => '',
            'pages' => 'required|max:255',
            'issued' => 'required|max:255'
        ]);
        $data = $request->all();
        $book = new Book();
        $book->fill($data);
        $book->save();
        return redirect("/");
    }
}
