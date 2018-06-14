@extends('base')

@section('content')
    <div class="flex-center position-ref full-height">
        <div class="col-md-6">
            <form method="post" action="{{ route('teamStore') }}">
                <div class="form-group">
                    <input type="hidden" class="form-control" id="title" name="id_sport_type" value="1">
                </div>
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" class="form-control" id="title" name="title">
                </div>
                <div class="form-group">
                    <label for="title">success_pergentage</label>
                    <input type="text" class="form-control" id="title" name="success_pergentage">
                </div>
                <div class="form-group">
                    <label for="title">members_count</label>
                    <input type="text" class="form-control" id="title" name="members_count">
                </div>
                <input type="submit" class="btn btn-default">

                {{ csrf_field() }}
            </form>
        </div>
    </div>
@endsection