<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        
        .dashboard-container {
            background: white;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 80%;
            max-width: 1000px;
            margin-top: 50px;
        }
        
        h1 {
            color: #3498db;
            text-align: center;
            margin-bottom: 30px;
        }
        
        .admin-info {
            background: #f8f9fa;
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 30px;
        }
        
        .info-row {
            display: flex;
            margin-bottom: 10px;
        }
        
        .info-label {
            font-weight: bold;
            width: 120px;
            color: #495057;
        }
        
        .info-value {
            color: #212529;
        }
        
        .dashboard-actions {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 15px;
            margin-bottom: 20px;
        }
        
        .action-btn {
            background: #3498db;
            color: white;
            border: none;
            padding: 12px 25px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s;
            text-align: center;
        }
        
        .action-btn:hover {
            background: #2980b9;
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(41, 128, 185, 0.3);
        }
        
        .admin-btn {
            background: #9b59b6;
        }
        
        .admin-btn:hover {
            background: #8e44ad;
            box-shadow: 0 5px 15px rgba(155, 89, 182, 0.3);
        }
        
        .danger-btn {
            background: #e74c3c;
        }
        
        .danger-btn:hover {
            background: #c0392b;
            box-shadow: 0 5px 15px rgba(231, 76, 60, 0.3);
        }
        
        .logout-btn {
            background: #e74c3c;
            margin-top: 30px;
        }
        
        .logout-btn:hover {
            background: #c0392b;
            box-shadow: 0 5px 15px rgba(231, 76, 60, 0.3);
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <h1>Admin Dashboard</h1>
        
        <div class="admin-info">
            <div class="info-row">
                <span class="info-label">Admin ID:</span>
                <span class="info-value">${admin.id}</span>
            </div>
            <div class="info-row">
                <span class="info-label">Name:</span>
                <span class="info-value">${admin.name}</span>
            </div>
            <div class="info-row">
                <span class="info-label">Email:</span>
                <span class="info-value">${admin.email}</span>
            </div>
                    </div>
        
        <div class="dashboard-actions">
            <a href="manageUsers" class="action-btn admin-btn">Manage Users</a>
            <a href="manageRoutes" class="action-btn admin-btn">Manage Routes</a>
            <a href="manageBookings" class="action-btn admin-btn">View All Bookings</a>
            <a href="reports.jsp" class="action-btn admin-btn">Generate Reports</a>
            <a href="systemSettings.jsp" class="action-btn admin-btn">System Settings</a>
            <a href="addAdmin.jsp" class="action-btn admin-btn">Add New Admin</a>
        </div>
        
        <div class="dashboard-actions">
            <a href="approvePending.jsp" class="action-btn">Approve Pending</a>
            <a href="viewFeedbacks" class="action-btn">View Feedbacks</a>
            <a href="emergencyAlerts.jsp" class="action-btn danger-btn">Emergency Alerts</a>
        </div>
        
        <div style="text-align: center; margin-top: 30px;">
            <a href="logout" class="action-btn logout-btn">Logout</a>
        </div>
    </div>
</body>
</html>