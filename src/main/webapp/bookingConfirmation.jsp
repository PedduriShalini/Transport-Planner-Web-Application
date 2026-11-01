<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Booking Confirmation</title>
    <style>
        .confirmation-card { background: white; border-radius: 15px; 
                           padding: 30px; text-align: center;
                           box-shadow: 0 5px 15px rgba(0,0,0,0.1); }
        .success-icon { color: #2ecc71; font-size: 72px; margin-bottom: 20px; }
        .booking-details { text-align: left; margin: 30px 0; }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <div class="confirmation-card">
            <div class="success-icon">✓</div>
            <h1>Booking Confirmed!</h1>
            <p>Your ticket has been successfully booked.</p>
            
            <div class="booking-details">
                <div class="info-row">
                    <span class="info-label">Booking ID:</span>
                    <span class="info-value">${booking.id}</span>
                </div>
                <div class="info-row">
                    <span class="info-label">Route:</span>
                    <span class="info-value">${booking.route.source} to ${booking.route.destination}</span>
                </div>
                <div class="info-row">
                    <span class="info-label">Travel Date:</span>
                    <span class="info-value">${booking.travelDate}</span>
                </div>
                <div class="info-row">
                    <span class="info-label">Passengers:</span>
                    <span class="info-value">${booking.passengerCount}</span>
                </div>
                <div class="info-row">
                    <span class="info-label">Status:</span>
                    <span class="info-value" style="color: #2ecc71;">${booking.status}</span>
                </div>
            </div>
            
            <div style="margin-top: 30px;">
                <a href="myBookings.jsp" class="action-btn">View All Bookings</a>
                <a href="viewRoutes" class="action-btn" style="background: #3498db; margin-left: 10px;">
                    Book Another Ticket
                </a>
            </div>
        </div>
    </div>
</body>
</html>