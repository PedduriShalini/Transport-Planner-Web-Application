package com.transportplanner.servlet;

import com.transportplanner.dao.AdminDAO;
import com.transportplanner.model.Admin;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class AdminRegisterServlet extends HttpServlet {
    private static final String SECURE_ADMIN_KEY = "SECURE_KEY_123"; // Change in production
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        try {
            // Validate admin key first
            String adminKey = request.getParameter("adminKey");
            
            if(!SECURE_ADMIN_KEY.equals(adminKey)) {
                response.sendRedirect("adminRegister.jsp?error=auth");
                return;
            }
            
            // Get registration parameters
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            
            // Validate required fields
            if(name == null || name.trim().isEmpty() || 
               email == null || email.trim().isEmpty() ||
               password == null || password.trim().isEmpty()) {
                response.sendRedirect("adminRegister.jsp?error=fields");
                return;
            }
            
            // Create admin object
            Admin admin = new Admin();
            admin.setName(name.trim());
            admin.setEmail(email.trim());
            admin.setPassword(hashPassword(password)); // Hash the password
            admin.setVerificationKey(adminKey);
            
            // Register admin
            AdminDAO dao = new AdminDAO();
            boolean success = dao.registerAdmin(admin);
            
            // Handle response
            if(success) {
                response.sendRedirect("adminLogin.jsp?success=1");
            } else {
                response.sendRedirect("adminRegister.jsp?error=db");
            }
            
        } catch(Exception e) {
            e.printStackTrace();
            response.sendRedirect("adminRegister.jsp?error=server");
        }
    }
    
    // Password hashing method
    private String hashPassword(String password) throws NoSuchAlgorithmException {
        MessageDigest md = MessageDigest.getInstance("SHA-256");
        md.update(password.getBytes());
        byte[] digest = md.digest();
        StringBuilder sb = new StringBuilder();
        for (byte b : digest) {
            sb.append(String.format("%02x", b));
        }
        return sb.toString();
    }
}