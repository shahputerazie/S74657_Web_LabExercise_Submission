<%-- 
    Document   : book_session
    Created on : 16 Jun 2026, 2:44:08 PM
    Author     : MP2-4
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="partials/header.html" %>

<div class="container" style="max-width: 500px; margin: 30px auto;">
    <div class="nav-links" style="text-align: left;"><a href="index.jsp">&larr; Back to Main Menu</a></div>
    <h2>Book a New Driving Lesson</h2>
    
    <form action="BookSessionServlet" method="POST">
        <div class="form-group">
            <label for="student_name">Student Full Name:</label>
            <input type="text" id="student_name" name="student_name" required placeholder="Enter student name">
        </div>
        
        <div class="form-group">
            <label for="branch_location">Branch Location:</label>
            <select id="branch_location" name="branch_location" required>
                <option value="">-- Select Branch --</option>
                <option value="Kuala Lumpur">Kuala Lumpur</option>
                <option value="Penang">Penang</option>
                <option value="Johor">Johor</option>
            </select>
        </div>
        
        <div class="form-group">
            <label for="lesson_type">Lesson Type:</label>
            <select id="lesson_type" name="lesson_type" required>
                <option value="">-- Select Type --</option>
                <option value="Manual Car">Manual Car</option>
                <option value="Automatic Car">Automatic Car</option>
                <option value="Motorcycle">Motorcycle</option>
            </select>
        </div>
        
        <button type="submit">Submit Booking</button>
    </form>
</div>

<%@ include file="partials/footer.jsp" %>
