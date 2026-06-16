<%-- 
    Document   : index
    Created on : 16 Jun 2026, 2:57:58 PM
    Author     : MP2-4
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="partials/header.html" %>

<div class="container" style="text-align: center; margin-top: 30px;">
    <h2>Welcome to the Management Portal</h2>
    <p>Please select an operational module below to proceed:</p>
    
    <div class="nav-links" style="margin-top: 30px;">
        <a href="book_session.jsp" style="display: inline-block; padding: 15px 25px; background: #3498db; color: white; border-radius: 5px; text-decoration: none;">Go to Booking Form</a>
        <a href="ScheduleServlet" style="display: inline-block; padding: 15px 25px; background: #e67e22; color: white; border-radius: 5px; text-decoration: none;">View Centralized Schedule</a>
    </div>
</div>

<%@ include file="partials/footer.jsp" %>
