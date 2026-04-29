<%-- 
    Document   : task1
    Created on : Apr 29, 2026, 2:13:32 PM
    Author     : shahputeraiskandar
--%>

<%@page import="com.lab.bean.StudentBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <title>Task 1: Scriptlet & Bean</title>
        <h2>Student Information (Using Scriptlet)</h2>
        <%
        // Instantiating the bean
            StudentBean student = new StudentBean();
            student.setName("Ahmad Ali");
            student.setMatricNo("S123456");
        %>
        <p><strong>Name:</strong> <%= student.getName()%></p>
        <p><strong>Matric No:</strong> <%= student.getMatricNo()%></p>
    </body>
</html>
