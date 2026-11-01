package com.transportplanner.servlet;

import com.transportplanner.dao.RouteDAO;

import com.transportplanner.model.Route;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class AddRouteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Check admin session
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("admin") == null) {
            response.sendRedirect("adminLogin.jsp");
            return;
        }
        
        String source = request.getParameter("source");
        String destination = request.getParameter("destination");
        double distance = Double.parseDouble(request.getParameter("distance"));
        String duration = request.getParameter("duration");
        
        Route route = new Route();
        route.setSource(source);
        route.setDestination(destination);
        route.setDistance(distance);
        route.setDuration(duration);
        
        RouteDAO dao = new RouteDAO();
        boolean success = dao.addRoute(route);
        
        if (success) {
            response.sendRedirect("viewRoutes.jsp?success=1");
        } else {
            response.sendRedirect("addRoute.jsp?error=1");
        }
    }
}