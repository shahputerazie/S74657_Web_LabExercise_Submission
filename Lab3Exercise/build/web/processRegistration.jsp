<%-- 
    Document   : processRegistration
    Created on : Apr 14, 2026, 11:47:11?AM
    Author     : shahputeraiskandar
--%>

<%@include file="partials/header.jsp" %>
<h2>Registration Successful</h2>
<%
    String name = request.getParameter("studentName");
    String matric = request.getParameter("matricNo");
    String club = request.getParameter("club");
%>
<p><strong>Name:</strong> <%= name%></p>
<p><strong>Matric Number:</strong> <%= matric%></p>
<p><strong>Club Joined:</strong> <%= club%></p>
<%@include file="partials/footer.jsp" %>
