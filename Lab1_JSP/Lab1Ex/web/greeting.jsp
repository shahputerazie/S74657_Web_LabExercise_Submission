<%-- 
    Document   : greeting
    Created on : Apr 2, 2026, 8:36:06 PM
    Author     : shahputeraiskandar
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Greeting Page</title>
    
    <meta http-equiv="refresh" content="5">
    
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
    </style>
</head>
<body>

    <h2>Hello, <%= request.getAttribute("userName") %>!</h2>

    <p><strong>Current Date and Time:</strong> <%= new Date() %></p>

</body>
</html>