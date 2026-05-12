<%-- 
    Document   : doLogin
    Created on : May 12, 2026, 2:31:23?PM
    Author     : shahputeraiskandar
--%>

<%@ page import="java.sql.*" %>
<%
    String user = request.getParameter("username");
    String pass = request.getParameter("password");

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish connection to lab6exercise database
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lab6exercise", "root", "admin");

        String sql = "SELECT * FROM userprofile WHERE username=? AND password=?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, user);
        pstmt.setString(2, pass);

        rs = pstmt.executeQuery();

        if (rs.next()) {
            // Validation succeeds: Save user details in the session and redirect
            session.setAttribute("username", rs.getString("username"));
            session.setAttribute("firstname", rs.getString("firstname"));
            session.setAttribute("lastname", rs.getString("lastname"));
            response.sendRedirect("main.jsp");
        } else {
            // Validation fails: Redirect to login with error message
            response.sendRedirect("login.jsp?msg=Invalid username or password..!");
        }
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    } finally {
        if (rs != null) {
            rs.close();
        }
        if (pstmt != null) {
            pstmt.close();
        }
        if (conn != null) {
            conn.close();
        }
    }
%>
