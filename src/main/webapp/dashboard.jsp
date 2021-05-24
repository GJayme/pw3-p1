<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.gabrieljaymep1.entity.ToDo" %>
<%@ page import="com.example.gabrieljaymep1.persistence.ToDoDAO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>To Do List</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script rel="script" type="text/javascript" src="script/script.js"></script>
</head>
<body>
<%
    ToDoDAO toDoDAO = new ToDoDAO();
    ArrayList<ToDo> todoList = toDoDAO.getListTodo();
%>

    <nav class="navbar navbar-dark bg-dark justify-content-between">
        <h3 href="#" class="navbar-brand"style="color: #FFFFFF; margin-left: 10px">My To Do List</h3>
        <div style="width: 40%">
            <form method="post" action="addNewToDo" style="display: flex; width: 100%">
                <input type="text" id="newTodo" name="newTodo" placeholder="New ToDo..." class="form-control">
                <button class="btn btn-outline-success my-2 my-sm-0" style="margin-left: 10px; margin-right: 10px" type="submit">Add</button>
            </form>
        </div>
    </nav>

    <ul class="list-group list-group-flush">
        <c:forEach var="li" items="<%=todoList%>">
            <li class="list-group-item" style="display: flex; justify-content: space-between">
                <div style="display: flex">
                    <input class="form-check-input" type="checkbox" style="margin-right: 20px">
                    <p><c:out value="${li.message}"/></p>
                </div>
                <div>
                    <a class="btn btn-lg btn-success btn-block" rel="myModal" href="updateTodo.jsp?id=<c:out value='${li.id}' />">Update</a>
                    <a class="btn btn-lg btn-danger btn-block" rel="myModal" href="deleteTodo.jsp?id=<c:out value='${li.id}'/>">Delete</a>
                </div>
            </li>
        </c:forEach>
    </ul>

<%--Modal--%>
<div class="myModal">
</div>

<%--Masc--%>
<div class="mascara">
</div>

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html>
