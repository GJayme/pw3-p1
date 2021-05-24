package com.example.gabrieljaymep1.servlet;

import com.example.gabrieljaymep1.persistence.ToDoDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletUpdateToDo", value = "/updateTodo")
public class ServletUpdateToDo extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String message = request.getParameter("message");
        ToDoDAO toDoDAO = new ToDoDAO();
        toDoDAO.updateBy(id, message);
        response.sendRedirect("dashboard.jsp");
    }
}
