<%-- 
    Document   : subjectInfo
    Created on : Apr 21, 2026, 12:41:01 PM
    Author     : shahputeraiskandar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Subject Information</title>
    </head>
    <body>

        <h3>Calling SubjectInfo.jsp Page</h3>

        <p>Code: <%= request.getParameter("code")%></p>
        <p>Subject: <%= request.getParameter("subject")%></p>
        <p>Credit: <%= request.getParameter("credit")%></p>

    </body>
</html>
