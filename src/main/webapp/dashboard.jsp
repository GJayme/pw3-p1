<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.gabrieljaymep1.ToDo" %>
<%@ page import="com.example.gabrieljaymep1.ToDoDAO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>To Do List</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
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
            <li><c:out value="${li.message}"/></li>
        </c:forEach>
    </ul>

</body>
</html>
