<%-- 
    Document   : main
    Created on : May 12, 2026, 2:36:11?PM
    Author     : shahputeraiskandar
--%>

<%
    // Security check: Ensure the user is actually logged in before displaying the page
    if (session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Main Dashboard</title>
    </head>
    <body>
        <h2>Welcome to the Main Page!</h2>
        <div style="border: 1px solid #000; padding: 15px; width: 300px;">
            <p><strong>Username:</strong> <%= session.getAttribute("username")%></p>
            <p><strong>First Name:</strong> <%= session.getAttribute("firstname")%></p>
            <p><strong>Last Name:</strong> <%= session.getAttribute("lastname")%></p>
        </div>
        <br>
        <a href="login.jsp">Logout</a>
    </body>
</html>
