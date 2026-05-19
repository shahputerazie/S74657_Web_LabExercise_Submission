<%-- 
    Document   : dashboard
    Created on : May 19, 2026, 4:09:57 PM
    Author     : shahputeraiskandar
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Student Dashboard</title>
    </head>
    <body>
        <%
            if (session.getAttribute("matric_no") == null) {
                response.sendRedirect("login.html");
                return;
            }
        %>

        <h2>Welcome to Student Dashboard</h2>
        <p>Logged in as Matric No: <strong><%= session.getAttribute("matric_no")%></strong></p>

        <hr>

        <h3>Modules</h3>
        <ul>
            <li><a href="<%= request.getContextPath()%>/SubjectServlet?action=view">Manage My Subjects</a></li>
        </ul>

        <br><br>
        <a href="<%= request.getContextPath()%>/LoginServlet">Logout</a>

    </body>
</html>