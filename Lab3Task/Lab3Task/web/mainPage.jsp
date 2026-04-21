<%-- 
    Document   : mainPage
    Created on : Apr 14, 2026, 11:38:13 AM
    Author     : shahputeraiskandar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Main Page</title>
    </head>
    <body>
        <%@ include file="headerPage.jsp" %>

        <div style="padding: 20px;">
            <h2>Using JSP Include directive</h2>
            <p>
                Java Server Page (JSP) is a technology for controlling the content 
                or appearance of Web pages through the use of servlets...
            </p>
        </div>

        <%@ include file="footerPage.jsp" %>
    </body>
</html>
