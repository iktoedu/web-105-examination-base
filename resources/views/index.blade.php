@extends('base')

@section('content')
    <div class="container">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Title</th>
                <th>members_count</th>
                <th>success_pergentage</th>
            </tr>
            </thead>
            <tbody>
            @foreach($Sport_teams as $Sport_team)
                <tr>
                    <td>{{ $Sport_team->title }}</td>
                    <td>{{ $Sport_team-> members_count}}</td>
                    <td>{{ $Sport_team->success_pergentage }}</td>
                </tr>
                <tr>
            @endforeach
            </tbody>

        </table>

    </div>
@endsection