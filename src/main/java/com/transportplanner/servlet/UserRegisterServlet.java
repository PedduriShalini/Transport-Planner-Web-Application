package com.transportplanner.servlet;

import com.transportplanner.dao.UserDAO;

import com.transportplanner.model.User;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class UserRegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            
            User user = new User();
            user.setName(name);
            user.setEmail(email);
            user.setPassword(password);
            
            boolean success = new UserDAO().registerUser(user);
            
            if(success) {
                response.sendRedirect("userLogin.jsp?success=1");
            } else {
                response.sendRedirect("userRegister.jsp?error=1");
            }
        } catch(Exception e) {
            e.printStackTrace();
            response.sendRedirect("userRegister.jsp?error=2");
        }
    }
}