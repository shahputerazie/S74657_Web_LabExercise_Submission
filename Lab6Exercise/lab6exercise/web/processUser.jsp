<%-- 
    Document   : processUser
    Created on : May 12, 2026, 2:30:47?PM
    Author     : shahputeraiskandar
--%>

<%@ page import="java.sql.*" %>
<%
    // Retrieve form data
    String user = request.getParameter("username");
    String pass = request.getParameter("password");
    String fName = request.getParameter("firstname");
    String lName = request.getParameter("lastname");

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // Load the MySQL JDBC Driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish connection to lab6exercise database
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lab6exercise", "root", "admin");

        // Prepare SQL statement
        String sql = "INSERT INTO userprofile (username, password, firstname, lastname) VALUES (?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, user);
        pstmt.setString(2, pass);
        pstmt.setString(3, fName);
        pstmt.setString(4, lName);

        // Execute update
        int result = pstmt.executeUpdate();

        if (result > 0) {
            out.println("<h3>Registration Successful!</h3>");
            out.println("<a href='login.jsp'>Click here to login</a>");
        } else {
            out.println("<h3>Registration Failed! Please try again.</h3>");
            out.println("<a href='insertUser.html'>Back to Registration</a>");
        }
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    } finally {
        if (pstmt != null) {
            pstmt.close();
        }
        if (conn != null) {
            conn.close();
        }
    }
%>
