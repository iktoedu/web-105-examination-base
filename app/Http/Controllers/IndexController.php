<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Sport_team;
class IndexController extends Controller
{
    public function index()
    {
        $Sport_teams = Sport_team::all();
        return view('index')->with('Sport_teams', $Sport_teams);
    }
    public function add()
    {
        return view('team');
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'id_sport_type' => '',
            'title' => 'required|max:255',
            'members_count' => 'required|max:255',
            'success_pergentage' => 'required|max:255'
        ]);
        $data = $request->all();
        $Sport_team = new Sport_team();
        $Sport_team->fill($data);
        $Sport_team->save();
        return redirect("/");
    }
}