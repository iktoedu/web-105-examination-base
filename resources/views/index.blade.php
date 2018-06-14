@extends('base')

@section('content')
    <table class="table">
        <thead>
        <tr>
            <th>id</th>
            <th>id_genre</th>
            <th>title</th>
            <th>price</th>
            <th>steamapp_link</th>
        </tr>
        </thead>
        <tbody>
         @foreach($games as $game)
        <tr>
            <td>{{ $game->id }}</td>
        	<td>{{ $game->id_genre }}</td>
            <td><a href=""{{ route('gameShow', ['id' => $game->id]) }}"> {{ $game->title }} </a></td>
            <td>{{ $game->price }}</td>
            <td><a href="{{ $game->steamapp_link }}" >{{ $game->steamapp_link }}</a></td>
        </tr>
        @endforeach
        </tbody>
    </table>
@endsection
