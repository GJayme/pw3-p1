<%@ page import="com.example.gabrieljaymep1.ToDoDAO" %>
<%@ page import="com.example.gabrieljaymep1.ToDo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    int idTodo = Integer.parseInt(request.getParameter("id"));
    ToDoDAO toDoDAO = new ToDoDAO();
    ToDo todo = toDoDAO.getToDoById(idTodo);
%>

<a href="#" class="closeMyModal">X</a>
<form method="post" action="updateTodo">
    <input readonly type="text" name="id" id="id" value=<%=todo.getId()%> />
    <input type="text" id="message" name="message" id="message" placeholder=<%=todo.getMessage()%>/>
    <button type="submit">Update</button>
</form>


<script>
    $(".closeMyModal").click(function (e) {
        e.preventDefault();
        $(".mascara").hide();
        $(".myModal").hide();
    });
</script>

