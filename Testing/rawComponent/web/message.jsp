<%-- 
    Document   : message
    Created on : May 17, 2026, 12:22:42 PM
    Author     : shahputeraiskandar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Message"%>
<jsp:useBean id="messageBean" class="model.Message" scope="request" />
<jsp:setProperty name="messageBean" property="msg" value="Welcome to CSE3023, Dr Wan's class" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <p><jsp:getProperty name="messageBean" property="msg" /></p>
    </body>
</html>
