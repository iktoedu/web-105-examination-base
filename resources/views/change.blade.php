@extends('base')

@section('content')

@if($book)
<table class="table">
            <thead>
                <tr>
                <th>Автор</th>
                <th>Назва</th>
                <th>Сторінок</th>
                <th>Рік</th>
            </tr>
            <tr>
                <td><input value="{{ $book -> author }}"></td>
                <td><input value="{{ $book -> title }}"></td>
                <td><input value="{{ $book -> pages }}"></td>
                <td><input value="{{ $book -> issued }}"></td> 
            </tr>
            </thead>
        </table>
@endif

@endsection