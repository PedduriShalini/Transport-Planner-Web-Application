<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.transportplanner.model.Route" %>

<%
    List<Route> routeList = (List<Route>) request.getAttribute("routeList");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book Your Journey</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <div class="card shadow p-4 mx-auto" style="max-width: 500px;">
        <h3 class="text-center mb-4">Book Your Journey</h3>

        <form action="BookTicketServlet" method="post">
            <!-- Route Selection -->
            <div class="mb-3">
                <label for="route" class="form-label">Select Route</label>
                <select name="routeId" id="route" class="form-select" required>
                    <option value="">-- Select Route --</option>
                    <%
                        if (routeList != null) {
                            for (Route route : routeList) {
                    %>
                        <option value="<%= route.getId() %>">
                            <%= route.getSource() %> &rarr; <%= route.getDestination() %> (&#8377;<%= route.getFare() %>)
                        </option>
                    <%
                            }
                        }
                    %>
                </select>
            </div>

            <!-- Travel Date -->
            <div class="mb-3">
                <label for="date" class="form-label">Travel Date</label>
                <input type="date" name="travelDate" id="date" class="form-control" required>
            </div>

            <!-- Passenger Name -->
            <div class="mb-3">
                <label for="name" class="form-label">Passenger Name</label>
                <input type="text" name="passengerName" id="name" class="form-control" required>
            </div>

            <!-- Submit Button -->
            <button type="submit" class="btn btn-primary w-100">Confirm Booking</button>
        </form>
    </div>
</div>
</body>
</html>
