package com.transportplanner.servlet;

import com.transportplanner.dao.UserDAO;

import com.transportplanner.model.User;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class UserLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        UserDAO dao = new UserDAO();
        User user = dao.loginUser(email, password);
        
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            response.sendRedirect("userDashboard.jsp");
        } else {
            response.sendRedirect("userLogin.jsp?error=1");
        }
    }
}