<%-- 
    Document   : processBMI
    Created on : Apr 21, 2026, 2:28:14 PM
    Author     : shahputeraiskandar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String weightStr = request.getParameter("weight");
    String heightStr = request.getParameter("height");
    
    double weight = 0;
    double heightCm = 0;
    double heightM = 0;
    double bmi = 0;
    String category = "";
    
    try {
        weight = Double.parseDouble(weightStr);
        heightCm = Double.parseDouble(heightStr);
        
        if (heightCm > 0) {
            
            heightM = heightCm / 100.0;
            
            bmi = weight / (heightM * heightM);
            
            if (bmi < 18.5) {
                category = "Underweight";
            } else if (bmi <= 25.0) {
                category = "Normal";
            } else {
                category = "Overweight";
            }
        } else {
            category = "Invalid (Height cannot be zero)";
        }
    } catch (Exception e) {
            category = "Invalid Input";
        }

        String formattedBMI = String.format("%.2f", bmi);
%>

<jsp:forward page="resultBMI.jsp">
    <jsp:param name="calculatedBmi" value="<%= formattedBMI%>" />
    <jsp:param name="bmiCategory" value="<%= category%>" />
</jsp:forward>