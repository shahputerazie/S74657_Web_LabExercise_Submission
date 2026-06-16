<%-- 
    Document   : schedule
    Created on : 16 Jun 2026, 2:44:34 PM
    Author     : MP2-4
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.drivesmart.model.SessionBean" %>
<%@ include file="partials/header.html" %>

<div class="container" style="margin-top: 30px;">
    <div class="nav-links" style="text-align: left;"><a href="index.jsp">&larr; Back to Main Menu</a></div>
    <h2>Centralized Schedule Dashboard (Real-Time)</h2>
    
    <table>
        <thead>
            <tr>
                <th>Session ID</th>
                <th>Student Name</th>
                <th>Branch Location</th>
                <th>Lesson Type</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<SessionBean> list = (List<SessionBean>) request.getAttribute("sessionList");
                if (list != null && !list.isEmpty()) {
                    for (SessionBean sessionItem : list) {
            %>
                        <tr>
                            <td><%= sessionItem.getSessionId() %></td>
                            <td><%= sessionItem.getStudentName() %></td>
                            <td><%= sessionItem.getBranchLocation() %></td>
                            <td><%= sessionItem.getLessonType() %></td>
                            <td><span style="background-color: #d4edda; color: #155724; padding: 4px 8px; border-radius: 4px; font-size: 14px;"><%= sessionItem.getStatus() %></span></td>
                        </tr>
            <%
                    }
                } else {
            %>
                    <tr>
                        <td colspan="5" style="text-align: center; color: #7f8c8d;">No booked sessions found at this time.</td>
                    </tr>
            <%
                }
            %>
        </tbody>
    </table>
</div>

<%@ include file="partials/footer.jsp" %>
