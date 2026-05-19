<%-- 
    Document   : vehicleForm
    Created on : May 17, 2026, 12:35:46 PM
    Author     : shahputeraiskandar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Enter Vehicle Information</h1>
        <form method="post" action="vehicleDisplay.jsp">
            <p>Owner :</p>
            <input type="text" id="owner">

            <p>Plate No :</p>
            <input type="text" id="plateNo">

        </form>    
    </body>
</html>
