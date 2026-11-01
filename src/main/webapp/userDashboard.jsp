<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Dashboard</title>
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
            max-width: 800px;
            margin-top: 50px;
        }
        
        h1 {
            color: #3498db;
            text-align: center;
            margin-bottom: 30px;
        }
        
        .user-info {
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
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            gap: 15px;
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
            min-width: 180px;
        }
        
        .action-btn:hover {
            background: #2980b9;
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(41, 128, 185, 0.3);
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
        <h1>Welcome to Your Dashboard</h1>
        
        <div class="user-info">
            <div class="info-row">
                <span class="info-label">User ID:</span>
                <span class="info-value">${user.id}</span>
            </div>
            <div class="info-row">
                <span class="info-label">Name:</span>
                <span class="info-value">${user.name}</span>
            </div>
            <div class="info-row">
                <span class="info-label">Email:</span>
                <span class="info-value">${user.email}</span>
            </div>
        </div>
        
        <div class="dashboard-actions">
            <a href="viewRoutes" class="action-btn">View Available Routes</a>
            <a href="bookTicket.jsp" class="action-btn">Book a Ticket</a>
            <a href="myBookings.jsp" class="action-btn">My Bookings</a>
            <a href="editProfile.jsp" class="action-btn">Edit Profile</a>
        </div>
        
        <div style="text-align: center; margin-top: 30px;">
            <a href="logout" class="action-btn logout-btn">Logout</a>
        </div>
    </div>
</body>
</html>