package com.transportplanner.servlet;

import com.transportplanner.dao.RouteDAO;
import com.transportplanner.model.Route;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class ViewRoutesServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        RouteDAO dao = new RouteDAO();
        List<Route> routes = dao.getAllRoutes();
        
        // Store routes in request attribute
        request.setAttribute("routes", routes);
        
        // Forward to appropriate page based on user type
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("admin") != null) {
            request.getRequestDispatcher("admin/viewRoutes.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("user/viewRoutes.jsp").forward(request, response);
        }
    }
}