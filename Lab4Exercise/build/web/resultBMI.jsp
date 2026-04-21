<%-- 
    Document   : resultBMI
    Created on : Apr 21, 2026, 12:48:24?PM
    Author     : shahputeraiskandar
--%>

<%@ include file="partials/header.jsp" %>

<div class="card">
    <h2>BMI Result</h2>
    
    <div style="font-size: 1.2em; line-height: 1.8;">
        <p><strong>Your Body Mass Index (BMI):</strong> <%= request.getParameter("calculatedBmi") %></p>
        <p><strong>Health Category:</strong> <%= request.getParameter("bmiCategory") %></p>
    </div>
    
    <br>
    <a href="bmiCalculator.jsp" class="btn" style="text-decoration:none; color:black;">Back to Calculator</a>
</div>

<%@ include file="partials/footer.jsp" %>
