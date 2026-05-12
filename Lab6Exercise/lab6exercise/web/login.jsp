<%-- 
    Document   : login
    Created on : May 12, 2026, 2:32:51?PM
    Author     : shahputeraiskandar
--%>

<!DOCTYPE html>
<html>
    <head>
        <title>User Login</title>
    </head>
    <body>
        <h2>System Login</h2>

        <%
            // Check for error messages passed via URL parameters
            String msg = request.getParameter("msg");
            if (msg != null) {
                out.println("<p style='color:red; font-weight:bold;'>" + msg + "</p>");
            }
        %>

        <form action="doLogin.jsp" method="POST">
            Username: <input type="text" name="username" required><br><br>
            Password: <input type="password" name="password" required><br><br>
            <input type="submit" value="Login">
        </form>
        <br>
        <a href="insertUser.html">Register a new user</a>
    </body>
</html>
