<%@ page import="com.example.gabrieljaymep1.persistence.ToDoDAO" %>
<%@ page import="com.example.gabrieljaymep1.entity.ToDo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    int idTodo = Integer.parseInt(request.getParameter("id"));
    ToDoDAO toDoDAO = new ToDoDAO();
    ToDo todo = toDoDAO.getToDoById(idTodo);
%>

<div class="text-center mt-5">
    <form method="post" action="updateTodo">
        <div style="display: flex">
            <label for="id" style="margin-right: 58px">id: </label>
            <input class="form-control mb-3" readonly type="text" name="id" id="id" value=<%=todo.getId()%> />
        </div>
        <div style="display: flex">
            <label style="margin-right: 5px" for="message">Message:</label>
            <input class="form-control" type="text" id="message" name="message" id="message" value=<%=todo.getMessage()%> />
        </div>
        <div class="mt-3" style="display: flex; justify-content: space-around">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Update</button>
            <button class="closeMyModal btn btn-outline-danger my-2 my-sm-0">Cancel</button>
        </div>
    </form>
</div>

<script>
    $(".closeMyModal").click(function (e) {
        e.preventDefault();
        $(".mascara").hide();
        $(".myModal").hide();
    });
</script>

