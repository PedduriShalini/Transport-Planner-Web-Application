<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Profile</title>
    <style>
        body { font-family: 'Segoe UI', sans-serif; background: #f5f7fa; margin: 0; padding: 0; }
        .container { max-width: 600px; margin: 50px auto; background: white; padding: 30px; border-radius: 10px; box-shadow: 0 0 20px rgba(0,0,0,0.1); }
        h1 { color: #2c3e50; text-align: center; margin-bottom: 30px; }
        .form-group { margin-bottom: 20px; }
        label { display: block; margin-bottom: 8px; font-weight: 600; color: #34495e; }
        input { width: 100%; padding: 12px; border: 1px solid #ddd; border-radius: 5px; font-size: 16px; }
        .btn { background: #3498db; color: white; border: none; padding: 12px 20px; border-radius: 5px; cursor: pointer; font-size: 16px; width: 100%; }
        .btn:hover { background: #2980b9; }
        .success { color: #27ae60; text-align: center; margin-bottom: 20px; }
        .error { color: #e74c3c; text-align: center; margin-bottom: 20px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>Edit Your Profile</h1>
        
        <c:if test="${not empty success}">
            <div class="success">${success}</div>
        </c:if>
        
        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>
        
        <form action="updateProfile" method="post">
            <div class="form-group">
                <label>Full Name</label>
                <input type="text" name="name" value="${user.name}" required>
            </div>
            
            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" value="${user.email}" required>
            </div>
            
            <div class="form-group">
                <label>Current Password (for verification)</label>
                <input type="password" name="currentPassword" required>
            </div>
            
            <div class="form-group">
                <label>New Password (leave blank to keep current)</label>
                <input type="password" name="newPassword">
            </div>
            
            <div class="form-group">
                <label>Confirm New Password</label>
                <input type="password" name="confirmPassword">
            </div>
            
            <button type="submit" class="btn">Update Profile</button>
        </form>
    </div>
</body>
</html>