package com.example.gabrieljaymep1.servlet;

import com.example.gabrieljaymep1.entity.User;
import com.example.gabrieljaymep1.persistence.UserDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletAddUser", value = "/sigUp")
public class ServletAddUser extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("user");
        String password = request.getParameter("password");

        User newUser = new User(user, password);
        UserDAO userDAO = new UserDAO();

        userDAO.insertUser(newUser);
        response.sendRedirect(".");
    }
}
