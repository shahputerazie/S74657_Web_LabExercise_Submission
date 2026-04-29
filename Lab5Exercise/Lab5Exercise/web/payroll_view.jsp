<%-- 
    Document   : payroll_view
    Created on : Apr 29, 2026, 2:48:10 PM
    Author     : shahputeraiskandar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Payroll Display System</title>
    </head>
    <body>
        <h2>Employee Payroll Details</h2>
        <table border="1" cellpadding="8" style="border-collapse: collapse;">
            <thead>
                <tr style="background-color: lightgray;">
                    <th>Employee ID</th>
                    <th>Name</th>
                    <th>Department</th>
                    <th>Basic Salary (RM)</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${employeeList}" var="employee">
                    <tr>
                        <td><c:out value="${employee.empId}" /></td>
                        <td><c:out value="${employee.name}" /></td>
                        <td><c:out value="${employee.department}" /></td>
                        <td><c:out value="${employee.basicSalary}" /></td>
                        <td>
                            <c:choose>
                                <c:when test="${employee.basicSalary >= 3000}">
                                    <strong>Senior</strong>
                                </c:when>
                                <c:otherwise>
                                    Junior
                                </c:otherwise>
                            </c:choose>
                            </td>
                            </tr>
                </c:forEach>
        </tbody>
    </table>
</body>
</html>
