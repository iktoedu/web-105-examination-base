<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Тестовий проект на базі Laravel</title>
    <link href="{{ asset('/css/app.css')  }}" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="{{ asset('/js/app.js') }}"></script>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="{{ url('/') }}">Тестовий проект на базі Laravel</a>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <h1>Тестовий проект на базі Laravel</h1>

    @yield('content')
</div>
</body>
</html>
