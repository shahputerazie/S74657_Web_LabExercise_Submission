<%-- 
    Document   : feeCalculator
    Created on : Apr 14, 2026, 11:47:43?AM
    Author     : shahputeraiskandar
--%>

<%@include file="partials/header.jsp" %>
<h2>Membership Fee Calculator</h2>
<form method="GET">
    Number of Activities Joined: <input type="number" name="numActivities">
    <input type="submit" value="Calculate Fee">
</form>

<%
    String input = request.getParameter("numActivities");
    if (input != null) {
        int count = Integer.parseInt(input);
        double totalFee = count * 10.00; 
%>
<h3>Total Fee: RM <%= String.format("%.2f", totalFee)%></h3>
<%
    }
%>
<%@include file="partials/footer.jsp" %>
