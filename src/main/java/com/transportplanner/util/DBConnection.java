
package com.transportplanner.util;

import java.sql.*;

public class DBConnection {

    private static final String URL =
        "jdbc:mysql://localhost:3306/Transportplannerweb?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";

    private static final String USER =
        System.getenv().getOrDefault("TRANSPORT_DB_USER", "root");

    private static final String PASSWORD =
        System.getenv("TRANSPORT_DB_PASSWORD");

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            if (PASSWORD == null || PASSWORD.isEmpty()) {
                throw new SQLException(
                    "Set the TRANSPORT_DB_PASSWORD environment variable."
                );
            }

            return DriverManager.getConnection(URL, USER, PASSWORD);

        } catch (ClassNotFoundException e) {
            throw new SQLException(
                "MySQL JDBC Driver not found. Check the project build path.", e
            );
        }
    }
}
