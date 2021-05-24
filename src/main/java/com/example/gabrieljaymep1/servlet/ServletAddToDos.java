package com.example.gabrieljaymep1.servlet;

import com.example.gabrieljaymep1.entity.ToDo;
import com.example.gabrieljaymep1.persistence.ToDoDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletLoadToDos", value = "/addNewToDo")
public class ServletAddToDos extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String message = request.getParameter("newTodo");

        ToDo todo = new ToDo(message);
        ToDoDAO toDoDAO = new ToDoDAO();

        toDoDAO.insertNewToDo(todo);
        response.sendRedirect("dashboard.jsp");
    }
}
