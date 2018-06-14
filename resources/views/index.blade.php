@extends('base')

@section('content')
        <table class="table">
            <tr>
                <th>Автор</th>
                <th>Назва</th>
                <th>Жанр</th>
            </tr>
            <thead>
            @foreach($books as $books)
            <tr>
                <td>{{ $books -> author }}</td>
                <td>{{ $books -> title }}</td>
                <td>{{ $books -> pages }}</td>
            </tr>
            @endforeach
            </thead>
        </table>

@endsection
