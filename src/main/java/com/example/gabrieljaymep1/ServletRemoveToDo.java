package com.example.gabrieljaymep1;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletRemoveToDo", value = "/ServletRemoveToDo")
public class ServletRemoveToDo extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ToDoDAO toDoDAO = new ToDoDAO();
        toDoDAO.removeById(id);
        response.sendRedirect("dashboard.jsp");
    }

}
