@extends('base')

@section('content')
    <div class="flex-center position-ref full-height">
        <div class="col-md-6">
            <form method="post" action="{{ route('bookStore') }}">
                <div class="form-group">
                    <label for="title">Author</label>
                    <input type="text" class="form-control" id="title" name="author">
                </div>
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" class="form-control" id="title" name="title">
                </div>
                <div class="form-group">
                    <input type="hidden" class="form-control" id="title" name="id_genre" value="1">
                </div>
                <div class="form-group">
                    <label for="title">Pages</label>
                    <input type="text" class="form-control" id="title" name="pages">
                </div>
                <div class="form-group">
                    <label for="title">Issued</label>
                    <input type="text" class="form-control" id="title" name="issued">
                </div>
                <input type="submit" class="btn btn-default">

                {{ csrf_field() }}
            </form>
        </div>
    </div>
@endsection