package com.example.gabrieljaymep1;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ServletAutenticarUser", value = "/autenticar")
public class ServletAutenticarUser extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("user");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();

        UserDAO dao = new UserDAO();

        User user = dao.authenticateUser(username, password);

        if (user != null) {
            session.setAttribute("user", user);
            response.sendRedirect("dashboard.jsp");
        } else {
            response.sendRedirect(".");
        }
    }
}
