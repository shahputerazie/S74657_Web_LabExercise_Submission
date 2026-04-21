<%-- 
    Document   : memberDirectory
    Created on : Apr 14, 2026, 11:48:07?AM
    Author     : shahputeraiskandar
--%>

<%@page import="java.util.ArrayList"%>
<%@include file="partials/header.jsp" %>

<h2>Committee Member Directory</h2>

<%
    ArrayList<String> committee = (ArrayList<String>) application.getAttribute("globalCommittee");

    if (committee == null) {
        committee = new ArrayList<String>();
        committee.add("Ahmad Zaki");
        committee.add("Siti Aminah");
        committee.add("Tan Wei Lun");
        committee.add("S. Priya");
        committee.add("Nurul Huda");
        application.setAttribute("globalCommittee", committee);
    }

    String newMember = request.getParameter("studentName");
    if (newMember != null && !newMember.trim().isEmpty()) {
        synchronized(committee) {
            committee.add(newMember);
        }
    }
%>

<table border="1" cellpadding="10">
    <tr>
        <th>No.</th>
        <th>Committee Member Name</th>
    </tr>
    <%
        for (int i = 0; i < committee.size(); i++) {
    %>
    <tr>
        <td><%= (i + 1)%></td>
        <td><%= committee.get(i)%></td>
    </tr>
    <% } %>
</table>

<br>
<a href="registerClub.jsp">Register another member</a>

<%@include file="partials/footer.jsp" %>
