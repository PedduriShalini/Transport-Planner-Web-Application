<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Bookings</title>
    <style>
        body { font-family: 'Segoe UI', sans-serif; background: #f5f7fa; margin: 0; padding: 20px; }
        .container { max-width: 1000px; margin: 0 auto; }
        h1 { color: #2c3e50; text-align: center; margin-bottom: 30px; }
        table { width: 100%; border-collapse: collapse; background: white; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
        th, td { padding: 12px 15px; text-align: left; border-bottom: 1px solid #ddd; }
        th { background: #3498db; color: white; }
        tr:hover { background: #f5f5f5; }
        .no-bookings { text-align: center; padding: 30px; color: #7f8c8d; }
        .action-btn { color: #3498db; text-decoration: none; }
        .action-btn:hover { text-decoration: underline; }
    </style>
</head>
<body>
    <div class="container">
        <h1>My Bookings</h1>
        
        <c:choose>
            <c:when test="${empty bookings}">
                <div class="no-bookings">
                    <p>You haven't made any bookings yet.</p>
                    <a href="bookTicket.jsp" class="action-btn">Book a Ticket Now</a>
                </div>
            </c:when>
            <c:otherwise>
                <table>
                    <thead>
                        <tr>
                            <th>Booking ID</th>
                            <th>Route</th>
                            <th>Travel Date</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${bookings}" var="booking">
                            <tr>
                                <td>${booking.id}</td>
                                <td>${booking.route.source} to ${booking.route.destination}</td>
                                <td>${booking.travelDate}</td>
                                <td>${booking.status}</td>
                                <td>
                                    <a href="viewBooking?id=${booking.id}" class="action-btn">Details</a>
                                    <c:if test="${booking.cancellable}">
                                        | <a href="cancelBooking?id=${booking.id}" class="action-btn">Cancel</a>
                                    </c:if>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:otherwise>
        </c:choose>
    </div>
</body>
</html>