<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Registration</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: url('images/image1.jpg') no-repeat center center fixed;
        background-size: cover;
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 20px;
            
        }
        
        .register-container {
            background: white;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 100%;
            max-width: 500px;
            animation: fadeIn 0.6s ease-out;
        }
        
        h2 {
            color: #e74c3c;
            margin-bottom: 30px;
            text-align: center;
            font-size: 1.8rem;
        }
        
        .admin-notice {
            background: #fdebd0;
            color: #e67e22;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 20px;
            font-size: 0.9rem;
            text-align: center;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        label {
            display: block;
            margin-bottom: 8px;
            color: #34495e;
            font-weight: 500;
        }
        
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
            transition: all 0.3s;
        }
        
        input:focus {
            border-color: #e74c3c;
            outline: none;
            box-shadow: 0 0 0 3px rgba(231, 76, 60, 0.2);
        }
        
        .btn-register {
            width: 100%;
            padding: 12px;
            background: #e74c3c;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
            margin-top: 10px;
        }
        
        .btn-register:hover {
            background: #c0392b;
            transform: translateY(-2px);
        }
        
        .login-link {
            text-align: center;
            margin-top: 20px;
            color: #7f8c8d;
        }
        
        .login-link a {
            color: #e74c3c;
            text-decoration: none;
            font-weight: 500;
        }
        
        .error-message {
            color: #e74c3c;
            text-align: center;
            margin-bottom: 20px;
            padding: 10px;
            background: #fadbd8;
            border-radius: 5px;
        }
        
        .success-message {
            color: #27ae60;
            text-align: center;
            margin-bottom: 20px;
            padding: 10px;
            background: #d5f5e3;
            border-radius: 5px;
        }
        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="register-container">
        <h2>Admin Registration</h2>
        
        <div class="admin-notice">
            <i class="fas fa-shield-alt"></i> Admin registration requires verification
        </div>
        
        <% if (request.getParameter("error") != null) { %>
            <div class="error-message">
                Admin registration failed. Please try again.
                <% if (request.getParameter("error").equals("email")) { %>
                    <br>Email already exists.
                <% } %>
                <% if (request.getParameter("error").equals("auth")) { %>
                    <br>Invalid admin key.
                <% } %>
            </div>
        <% } %>
        
        <% if (request.getParameter("success") != null) { %>
            <div class="success-message">
                Admin account created successfully!
            </div>
        <% } %>
        
        <form action="registerAdmin" method="post">
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name" required 
                       placeholder="Enter admin full name">
            </div>
            
            <div class="form-group">
                <label for="email">Official Email</label>
                <input type="email" id="email" name="email" required 
                       placeholder="Enter admin email">
            </div>
            
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required 
                       placeholder="Create admin password">
            </div>
            
            <div class="form-group">
    <label>Admin Verification Key</label>
    <input type="password" name="adminKey" required>
    <small>Get this key from system administrator</small>
</div>
            
            
            <button type="submit" class="btn-register">Register Admin</button>
        </form>
        
        <div class="login-link">
            Already have an account? <a href="adminLogin.jsp">Login here</a>
        </div>
    </div>
    
    <!-- Font Awesome for icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</body>
</html>