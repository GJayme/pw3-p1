<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.gabrieljaymep1.ToDo" %>
<%@ page import="com.example.gabrieljaymep1.ToDoDAO" %>
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

    <div id="myDIV" class="header" >
        <h2>My To Do List</h2>
        <form method="post" action="addNewToDo">
            <input type="text" id="newTodo" name="newTodo" placeholder="New ToDo...">
            <span type="submit" class="addBtn">Add</span>
        </form>
    </div>

    <ul id="myUL">
        <c:forEach var="li" items="<%=todoList%>">
            <li style="display: flex; justify-content: space-between" >
                <c:out value="${li.message}"/>
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

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
-->

</body>
</html>
