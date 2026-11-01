<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Transport Route Planner</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html, body {
            height: 100%;
            font-family: 'Poppins', sans-serif;
            scroll-behavior: smooth;
            background-color: #f9f9f9;
        }

        .hero {
            height: 100vh;
            background: url('images/background.png') no-repeat center center fixed;
            background-size: cover;
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: white;
            overflow: hidden;
        }

        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            background: rgba(0, 0, 0, 0.5); /* semi-transparent dark overlay */
            backdrop-filter: blur(3px);
        }

        .hero-content {
            position: relative;
            z-index: 1;
            animation: fadeIn 2s ease-in-out;
        }

        .hero h1 {
            font-size: 3.5rem;
            margin-bottom: 15px;
            text-shadow: 2px 2px 8px rgba(0, 0, 0, 0.7);
        }

        .hero p {
            font-size: 1.2rem;
            margin-bottom: 40px;
            color: #f0f0f0;
        }

        .scroll-down {
            display: inline-block;
            font-size: 1.2rem;
            padding: 10px 20px;
            border: 2px solid white;
            border-radius: 25px;
            color: white;
            text-decoration: none;
            transition: 0.3s;
        }

        .scroll-down:hover {
            background: white;
            color: black;
        }

        @keyframes fadeIn {
            0% { opacity: 0; transform: translateY(20px); }
            100% { opacity: 1; transform: translateY(0); }
        }

        .login-section {
            padding: 100px 20px;
            background: linear-gradient(to bottom right, #ffffff, #e8f0ff);
            text-align: center;
        }

        .login-section h2 {
            font-size: 2rem;
            margin-bottom: 40px;
            color: #333;
        }

        .login-options {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 30px;
        }

        .btn {
            padding: 15px 35px;
            border: none;
            border-radius: 40px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        }

        .btn-user {
            background: #3498db;
            color: white;
        }

        .btn-user:hover {
            background: #2d89c2;
            transform: scale(1.05);
        }

        .btn-admin {
            background: #e74c3c;
            color: white;
        }

        .btn-admin:hover {
            background: #c0392b;
            transform: scale(1.05);
        }

        /* Responsive */
        @media (max-width: 768px) {
            .hero h1 {
                font-size: 2.5rem;
            }

            .login-options {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>

    <!-- Hero Section -->
    <section class="hero">
        <div class="overlay"></div>
        <div class="hero-content">
            <h1>Welcome to Transport Route Planner</h1>
            <p>Plan your journeys efficiently and effortlessly</p>
            <a href="#login" class="scroll-down">↓ Scroll to Login</a>
        </div>
    </section>

    <!-- Login Section -->
    <section class="login-section" id="login">
        <h2>Login to Continue</h2>
        <div class="login-options">
            <a href="userLogin.jsp" class="btn btn-user">User Login</a>
            <a href="adminLogin.jsp" class="btn btn-admin">Admin Login</a>
        </div>
    </section>

</body>
</html>
