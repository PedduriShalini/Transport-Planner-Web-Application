<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Users</title>
    <style>
        /* Your existing dashboard styles */
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
               background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
               margin: 0; padding: 0; min-height: 100vh; }
        .dashboard-container { background: white; border-radius: 15px; 
                             box-shadow: 0 10px 30px rgba(0,0,0,0.1);
                             padding: 40px; width: 90%; max-width: 1200px; 
                             margin: 50px auto; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { padding: 12px; text-align: left; border-bottom: 1px solid #ddd; }
        th { background-color: #f8f9fa; }
        .action-btn { padding: 6px 12px; border-radius: 4px; text-decoration: none;
                    margin-right: 5px; font-size: 14px; }
        .edit-btn { background: #3498db; color: white; }
        .delete-btn { background: #e74c3c; color: white; }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <h1>Manage Users</h1>
        
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                        <td>${user.email}</td>
                        <td>
                            <a href="editUser?id=${user.id}" class="action-btn edit-btn">Edit</a>
                            <a href="deleteUser?id=${user.id}" class="action-btn delete-btn" 
                               onclick="return confirm('Are you sure?')">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
        <div style="margin-top: 30px;">
            <a href="addUser.jsp" class="action-btn" style="background: #2ecc71;">Add New User</a>
        </div>
    </div>
</body>
</html>