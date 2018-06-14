@extends('base')

@section('content')
                <div>
                    <h2>{{ $cars->model_name }}</h2>
                    <p>{{ $cars->engine_power }}</p>
                    <p>{{ $cars->drive_wheels }}</p>
                </div>

@endsection