<%@ page import="com.example.gabrieljaymep1.ToDoDAO" %>
<%@ page import="com.example.gabrieljaymep1.ToDo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
  int idTodo = Integer.parseInt(request.getParameter("id"));
  ToDoDAO toDoDAO = new ToDoDAO();
  ToDo todo = toDoDAO.getToDoById(idTodo);
%>

<a href="#" class="closeMyModal">X</a>
<p>Id: <%=todo.getId()%></p>
<p>Message: <%=todo.getMessage()%></p>
<a href="ServletRemoveToDo?id=<%=todo.getId()%>" class="btn btn-lg btn-danger btn-block">Delete</a>

<script>
  $(".closeMyModal").click(function (e) {
    e.preventDefault();
    $(".mascara").hide();
    $(".myModal").hide();
  });
</script>

