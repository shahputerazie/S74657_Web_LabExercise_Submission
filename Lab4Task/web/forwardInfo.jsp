<%-- 
    Document   : forwardInfo
    Created on : Apr 21, 2026, 12:42:24 PM
    Author     : shahputeraiskandar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Using jsp:forward to display user info</title>
    </head>
    <body>
        <h2>Using jsp:forward to display user info</h2>

        <div class="card">
            <h3 class="form-title">Forwarded Info</h3>

            <%
                // Retrieve the forwarded parameters
                String name = request.getParameter("uname");
                String email = request.getParameter("email");
                String nationality = request.getParameter("nationality");
                String background = request.getParameter("background");
            %>

            <p>Name: <%= name%></p>
            <p>Email: <%= email%></p>
            <p>Nationality: <%= nationality%></p>
            <p>Background: <%= background%></p>
        </div>
    </body>
</html>