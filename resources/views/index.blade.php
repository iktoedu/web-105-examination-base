@extends('base')

@section('content')
        <table class="table">
            <thead>
                <tr>
                <th>Команда</th>
                <th>Члени клубу</th>
                <th>% перемог</th>
            </tr>
            @foreach($sportteams as $team)
            <tr>
                <td>{{ $team -> title }}</td>
                <td>{{ $team -> members_count }}</td>
                <td>{{ $team -> success_pergentage }}</td>
                
            </tr>
            @endforeach
            </thead>
        </table>
@endsection