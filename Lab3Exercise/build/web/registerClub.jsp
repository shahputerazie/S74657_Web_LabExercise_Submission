<%-- 
    Document   : registerClub
    Created on : Apr 14, 2026, 11:46:20?AM
    Author     : shahputeraiskandar
--%>

<%@include file="partials/header.jsp" %>
<h2>Club Registration Form</h2>
<form action="memberDirectory.jsp" method="POST">
    Student Name: <input type="text" name="studentName" required><br><br>
    Matric Number: <input type="text" name="matricNo" required><br><br>
    Selected Club: 
    <select name="club">
        <option value="Computer Science Club">Computer Science Club</option>
        <option value="Mathematics Society">Mathematics Society</option>
        <option value="Tech Innovators">Tech Innovators</option>
    </select><br><br>
    <input type="submit" value="Register">
</form>
<%@include file="partials/footer.jsp" %>
