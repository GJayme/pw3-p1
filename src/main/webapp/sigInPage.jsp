<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sig Un</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>

<div class="text-center mt-5">
    <form method="post" action="sigUp" style="max-width: 480px; margin: auto">
        <img class="mt-4 mb-4" src="https://img-premium.flaticon.com/png/512/1/1560.png?token=exp=1621721793~hmac=3bb73d050fdf23c1000480288c0af5ea" alt="todo-logo" height="72">
        <h1 class="h3 mb-3 font-weight-normal">Create your account</h1>
        <input class="form-control mb-3" type="text" placeholder="User" name="user" id="user" required autofocus>
        <input class="form-control" type="password" placeholder="Password" name="password" id="password">

        <div class="mt-3">
            <button class="btn btn-lg btn-primary btn-block" type="submit" style="width: 100%">Create account</button>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html>
