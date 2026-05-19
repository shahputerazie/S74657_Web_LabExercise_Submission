<%-- 
    Document   : updateSubject
    Created on : May 19, 2026, 3:35:31 PM
    Author     : shahputeraiskandar
--%>
<%@page import="com.lab.bean.SubjectBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Update Subject</title>
    </head>
    <body>
        <h2>Update Subject Details</h2>

        <%
            SubjectBean subject = (SubjectBean) request.getAttribute("subject");
            if (subject == null) {
                response.sendRedirect(request.getContextPath() + "/SubjectServlet?action=view");
                return;
            }
        %>

        <form action="<%= request.getContextPath()%>/SubjectServlet" method="POST">
            <input type="hidden" name="action" value="update">
            <input type="hidden" name="id" value="<%= subject.getId()%>">

            <label>Subject Code:</label><br>
            <input type="text" name="subject_code" value="<%= subject.getSubjectCode()%>" required><br><br>

            <label>Subject Name:</label><br>
            <input type="text" name="subject_name" value="<%= subject.getSubjectName()%>" required><br><br>

            <input type="submit" value="Update Subject">
        </form>
        <br>
        <a href="<%= request.getContextPath()%>/SubjectServlet?action=view">Back to List</a>
        <br>
        <a href="<%= request.getContextPath()%>/LoginServlet">Logout</a>

    </body>
</html>