<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Routes</title>
    <style>
        /* Reuse your dashboard styles */
        .search-box { margin-bottom: 20px; }
        .search-box input { padding: 10px; width: 300px; border-radius: 4px; border: 1px solid #ddd; }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <h1>Manage Routes</h1>
        
        <div class="search-box">
            <input type="text" placeholder="Search routes...">
        </div>
        
        <table>
            <thead>
                <tr>
                    <th>Route ID</th>
                    <th>Source</th>
                    <th>Destination</th>
                    <th>Distance (km)</th>
                    <th>Duration</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${routes}" var="route">
                    <tr>
                        <td>${route.id}</td>
                        <td>${route.source}</td>
                        <td>${route.destination}</td>
                        <td>${route.distance}</td>
                        <td>${route.duration}</td>
                        <td>
                            <a href="editRoute?id=${route.id}" class="action-btn edit-btn">Edit</a>
                            <a href="deleteRoute?id=${route.id}" class="action-btn delete-btn"
                               onclick="return confirm('Delete this route?')">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
        <div style="margin-top: 30px;">
            <a href="addRoute.jsp" class="action-btn" style="background: #2ecc71;">Add New Route</a>
        </div>
    </div>
</body>
</html>