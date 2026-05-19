<%-- 
    Document   : registerSubject
    Created on : May 19, 2026, 3:33:59 PM
    Author     : shahputeraiskandar
--%><%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register Subject</title>
</head>
<body>
    <h2>Register New Subject</h2>
    
<%
    // Verify session
    if (session.getAttribute("matric_no") == null) {
        response.sendRedirect(request.getContextPath() + "/login.html");
        return;
    }
%>
    
    <form action="<%= request.getContextPath()%>/SubjectServlet" method="POST">
        <input type="hidden" name="action" value="insert">
        
        <label>Subject Code:</label><br>
        <input type="text" name="subject_code" required><br><br>
        
        <label>Subject Name:</label><br>
        <input type="text" name="subject_name" required><br><br>
        
        <input type="submit" value="Register Subject">
    </form>
    <br>
    <a href="<%= request.getContextPath() %>/SubjectServlet?action=view">Back to List</a>
</body>
</html>
