<%-- 
    Document   : viewSubjects
    Created on : May 19, 2026, 3:35:09 PM
    Author     : shahputeraiskandar
--%>

<%@page import="java.util.List"%>
<%@page import="com.lab.bean.SubjectBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>My Subjects</title>
    </head>
    <body>
        <h2>My Registered Subjects</h2>
        <p>Logged in as: <%= session.getAttribute("matric_no")%></p>

        <a href="<%= request.getContextPath()%>/SubjectServlet?action=add">Register New Subject</a>
        <br><br>

        <table border="1" cellpadding="8">
            <tr>
                <th>ID</th>
                <th>Subject Code</th>
                <th>Subject Name</th>
                <th>Actions</th>
            </tr>

            <%
                List<SubjectBean> subjectList = (List<SubjectBean>) request.getAttribute("subjectList");
                if (subjectList != null && !subjectList.isEmpty()) {
                    for (SubjectBean subject : subjectList) {
            %>
            <tr>
                <td><%= subject.getId()%></td>
                <td><%= subject.getSubjectCode()%></td>
                <td><%= subject.getSubjectName()%></td>
                <td>
                    <a href="<%= request.getContextPath()%>/SubjectServlet?action=edit&id=<%= subject.getId()%>">Edit</a> | 
                    <a href="<%= request.getContextPath()%>/SubjectServlet?action=delete&id=<%= subject.getId()%>" onclick="return confirm('Are you sure you want to delete this subject?');">Delete</a>
                </td>
            </tr>
            <%
                }
            } else {
            %>
            <tr>
                <td colspan="4" align="center">No subjects registered yet.</td>
            </tr>
            <%
                }
            %>
        </table>
        <br>
        <a href="<%= request.getContextPath()%>/LoginServlet">Logout</a>
    </body>
</html>