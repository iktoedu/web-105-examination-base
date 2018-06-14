@extends('base')

@section('content')
    <table class="table">
        <thead>
            <tr>
                <th>Model</th>
                <th>Power</th>
                <th>Drive-Wheels</th>
            </tr>
        @foreach($cars as $car)
        <tr>
            <td><a href="{{ route('carsShow', ['id' => $car->id]) }}" >{{ $car->model_name }}</a></td>
            <td>{{ $car->engine_power }}</td>
            <td>{{ $car->drive_wheels }}</td>
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
