<%-- 
    Document   : healthInfo
    Created on : Apr 21, 2026, 12:48:44?PM
    Author     : shahputeraiskandar
--%>

<%@page import="java.util.ArrayList" %>
<%@ include file="partials/header.jsp" %>

<div class="card">
    <h2>Health Information: BMI Categories</h2>

    <%
        ArrayList<String[]> categoryList = new ArrayList<String[]>();
        categoryList.add(new String[]{"Underweight", "Less than 18.5"});
        categoryList.add(new String[]{"Normal", "18.5 to 25.0"});
        categoryList.add(new String[]{"Overweight", "More than 25.0"});
    %>

    <table>
        <tr>
            <th>Health Category</th>
            <th>BMI Range</th>
        </tr>
        <%
            for (String[] cat : categoryList) {
        %>
        <tr>
            <td><%= cat[0]%></td>
            <td><%= cat[1]%></td>
        </tr>
        <%
            }
        %>
    </table>
</div>

<%@ include file="partials/footer.jsp" %>
