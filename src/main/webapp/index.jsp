<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.example.gabrieljaymep1.User" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login: Todo List</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
</head>
<body>
    <h1>Login: Todo List</h1>
<br/>
    <div>
        <h2>Login</h2>
        <form method="post" action="autenticar">
            <div>
                <label for="user">Username</label>
                <input type="text" placeholder="Entre com o usuário" name="user" id="user">

                <label for="password">Password</label>
                <input type="password" placeholder="Entre com a senha" name="password" id="password">

                <button type="submit">Login</button>
            </div>
            <div>
                <span>Novo usuário</span>
            </div>
        </form>
    </div>

</body>
</html>