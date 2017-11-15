
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Engineering</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <jsp:include page ="navbar.html" flush ="true" />
        <h1>Hello Engineer!</h1>
        <div>
            <img src="assets/img/eng.jpg" alt="Mountain View">            
        </div>
        <div>
            <h3>Name: </h3>
            <span>${user.firstName}</span> <br>
            <h3>Last name </h3>
            <span>${user.lastName}</span> <br>
            <h3>Email: </h3>
            <span>${user.email}</span> <br>
        </div>
    </body>
</html>
