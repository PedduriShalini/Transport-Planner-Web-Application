<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>View Routes</title>
    <style>
        .error { color: red; }
        table { border-collapse: collapse; width: 100%; }
        th, td { padding: 8px; text-align: left; border: 1px solid #ddd; }
    </style>
</head>
<body>

    <h2>Available Routes</h2>
    	
    <%-- Error Message --%>
    <c:if test="${not empty error}">
        <p class="error">${error}</p>
    </c:if>
    
    <%-- Routes Table --%>
    <c:choose>
        <c:when test="${empty routes}">
            <p>No routes available.</p>
        </c:when>
        <c:otherwise>
            <table>
                <tr>
                    <th>Source</th>
                    <th>Destination</th>
                    <th>Distance</th>
                    <th>Duration</th>
                </tr>
                <c:forEach items="${routes}" var="route">
                    <tr>
                        <td><c:out value="${route.source}"/></td>
                        <td><c:out value="${route.destination}"/></td>
                        <td><c:out value="${route.distance}"/></td>
                        <td><c:out value="${route.duration}"/></td>
                    </tr>
                </c:forEach>
            </table>
        </c:otherwise>
    </c:choose>

</body>
</html>