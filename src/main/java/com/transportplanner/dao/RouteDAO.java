package com.transportplanner.dao;

import java.sql.*;
import java.util.*;
import com.transportplanner.model.Route;
import com.transportplanner.util.DBConnection;

public class RouteDAO {

    public List<Route> getAllRoutes() {
        List<Route> routes = new ArrayList<>();

        try (Connection conn = DBConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM routes")) {

            while (rs.next()) {
                Route route = new Route();
                route.setId(rs.getInt("id"));
                route.setSource(rs.getString("source"));
                route.setDestination(rs.getString("destination"));
                route.setDistance(rs.getDouble("distance"));
                route.setDuration(rs.getString("duration"));
                route.setFare(rs.getDouble("fare"));
                routes.add(route);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return routes;
    }
}
