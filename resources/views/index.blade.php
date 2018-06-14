@extends('base')

@section('content')
        <table class="table">
            <thead>
                <tr>
                <th>Автор</th>
                <th>Назва</th>
                <th>Сторінок</th>
                <th>Рік</th>
            </tr>
            @foreach($books as $book)
            <tr>
                <td>{{ $book -> author }}</td>
                <td>{{ $book -> title }}</td>
                <td>{{ $book -> pages }}</td>
                <td>{{ $book -> issued }}</td>
                <td><a href="{{ route('show',['id'=>$book->id]) }}">Показати</a></td>
            </tr>
            @endforeach
            </thead>
        </table>
@endsection
