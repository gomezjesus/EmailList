
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Business</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <jsp:include page ="navbar.html" flush ="true" />
        <h1>Hello Business Man!</h1>
        <div>
            <img src="assets/img/business.jpg" alt="Mountain View">
            <h3>Name: </h3>
            <span>${user.firstName}</span> <br>
            <h3>Last name </h3>
            <span>${user.lastName}</span> <br>
            <h3>Email: </h3>
            <span>${user.email}</span> <br>
        </div>
    </body>
</html>
