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
           
            <td></td>
        </tr>
        
        @endforeach
        </thead>
      
    </table>
@endsection