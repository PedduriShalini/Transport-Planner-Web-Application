package com.transportplanner.web;

import java.io.IOException;
import java.util.List;
import javax.servlet.*;
import javax.servlet.http.*;
import com.transportplanner.dao.RouteDAO;
import com.transportplanner.model.Route;

public class LoadRoutesServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RouteDAO routeDAO = new RouteDAO();
        List<Route> routeList = routeDAO.getAllRoutes();

        request.setAttribute("routeList", routeList);

        // Forward to JSP
        RequestDispatcher dispatcher = request.getRequestDispatcher("bookTicket.jsp");
        dispatcher.forward(request, response);
    }
}
