<%-- 
    Document   : bmiCalculator
    Created on : Apr 21, 2026, 12:47:55?PM
    Author     : shahputeraiskandar
--%>

<%@ include file="partials/header.jsp" %>

<div class="card">
    <h2>BMI Calculator</h2>
    <form action="processBMI.jsp" method="POST">
        <div class="form-group">
            <label>Weight (kg):</label>
            <input type="number" step="0.01" name="weight" placeholder="Enter weight in kg" required>
        </div>
        <div class="form-group">
            <label>Height (cm):</label>
            <input type="number" step="0.01" name="height" placeholder="Enter height in Centimeters" required>
        </div>
        <button type="submit" class="btn">Calculate</button>
        <button type="reset" class="btn">Clear</button>
    </form>
</div>

<%@ include file="partials/footer.jsp" %>

