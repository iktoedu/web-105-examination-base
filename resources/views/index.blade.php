@extends('base')

@section('content')
    <table class="table">
     <tbody>
        <tr>
            <th>Назва моделі</th>
        	<th>Об`єм оперативної пам`яті</th>
        	<th>Підтримка Vulkan</th>
        </tr>
        </tbody>
        <thead>
        @foreach($videocard as $videocard)
        <tr>
       
            <td>{{ $videocard->model_name }} </td>
            <td>{{ $videocard->ram_amount }}</td>
            <td>{{ $videocard->vulkan_support }}</td>
           
            <td><form action="{{ route('videocardDelete',['videocard' => $videocard->id]) }}" method="post">
        {{method_field('DELETE')}}
        {{ csrf_field() }}
       
        <button type="submit" class="btn btn-danger">
        	Delete
        </button></td>
        </tr>
        
        @endforeach
        </thead>
      
    </table>
@endsection