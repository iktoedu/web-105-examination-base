

@extends('base')

@section('content')
    <table class="table">
        <thead>
        @foreach($cpu as $cpu)
        <tr>
            <td>{{ $cpu->id }}</td>
            <td>{{ $cpu->id_vendor }}</td>
            <td>{{ $cpu->model_name }}</td>
            <td>{{ $cpu->cores_count }}</td>
             <td>{{ $cpu->flops }}</td>
        </tr>
        @endforeach
        </thead>
        <tbody>
        <tr>
            <td></td>
        </tr>
        </tbody>
    </table>
@endsection
