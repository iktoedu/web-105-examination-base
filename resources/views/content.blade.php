@extends('base')

@section('content')
    <div class="flex-center position-ref full-height">
        @if($article)
                <div class="col-md-12">
                    <h2>{{ $game->id }}</h2>
                    <p>{{ $game->title }}</p>
                    <p>{{ $game->price }}</p>
                </div>
                
        @endif
    </div>
@endsection