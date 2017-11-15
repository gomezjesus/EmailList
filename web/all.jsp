<%-- 
    Document   : all
    Created on : Oct 18, 2017, 5:03:08 PM
    Author     : chuy_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
        <title>Display All Members</title>
    </head>
    <body>
        <jsp:include page="navbar.html" flush="true" />
        <h1>All Members</h1>       
        <div class="table-separation">
            <table>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Area</th>
                    <th>Email Address</th>
                </tr>
                <c:forEach var="user" items="${users}" >
                    <tr>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>${user.area}</td>
                        <td>${user.email}</td>
                    </tr>   
                </c:forEach>

            </table>
        </div>

    </body>
</html>
