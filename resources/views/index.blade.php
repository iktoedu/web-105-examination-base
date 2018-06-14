@extends('base')

@section('content')
    <table class="table">
        <thead>
            @foreach($animal as $animal)
       
		<tr>
            <td> {{ $animal->title }}</td>
            <td> {{ $animal->limbs_count }}</td>
			<td><form action="{{ route('animalDelete',['animal' => $animal->id]) }}" method="post">
        {{method_field('DELETE')}}
        {{ csrf_field() }}
       
        <button type="submit" class="btn btn-danger">
         Delete
        </button></td>
        </tr>
        @endforeach
        </thead>
        <tbody>
        <tr>
		 <b><th>Назва тварини</th>
		<th>Кількість кінцівок</th></b>
            <td></td>
        </tr>
        </tbody>
    </table>
	
	 
@endsection