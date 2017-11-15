<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Murach's Java Servlets and JSP</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <jsp:include page="navbar.html" flush="true" />
        <h1>Search for Email</h1>
        <p>To search our users list, enter email address below</p>
        <form action="emailList" method="post">
            <input type="hidden" name="action" value="search">
            <label>Email:</label>
            <input type="email" name="email" required><br>
            <label>&nbsp;</label>
            <input type="submit" value="Find" id="submit">
        </form>        
    </body>
</html>