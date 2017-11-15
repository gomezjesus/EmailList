<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Murach's Java Servlets and JSP</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <jsp:include page="navbar.html" flush="true" />
        <h1>Join our email list, PLEASE :)</h1>
        <p>To join our email list, enter your name and
            email address below.</p>
        <form action="emailList" method="post">
            <input type="hidden" name="action" value="add">
            <label>Email:</label>
            <input type="email" name="email" required><br>
            <label>First Name:</label>
            <input type="text" name="firstName" required><br>
            <label>Last Name:</label>
            <input type="text" name="lastName" required><br>
            <label>Area:</label>
            <select name="area">
                <option value = "Business">Business</option>
                <option value="Engineering">Engineering</option>
                <option value="Architecture">Architecture</option>
            </select>
            <br>
            <label>&nbsp;</label>
            <input type="submit" value="Join Now" id="submit">

        </form>
    </body>
</html>