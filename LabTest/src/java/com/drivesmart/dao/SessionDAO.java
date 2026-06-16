package com.drivesmart.dao;

import com.drivesmart.model.SessionBean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SessionDAO {

    private String jdbcURL = "jdbc:mysql://localhost:3306/drivesmart_db?useSSL=false&serverTimezone=UTC";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public boolean bookSession(SessionBean session) {
        String sql = "INSERT INTO training_Sessions (student_name, branch_location, lesson_type, status) VALUES (?, ?, ?, ?)";
        boolean rowInserted = false;

        try (Connection conn = getConnection();
                PreparedStatement statement = conn.prepareStatement(sql)) {

            statement.setString(1, session.getStudentName());
            statement.setString(2, session.getBranchLocation());
            statement.setString(3, session.getLessonType());
            statement.setString(4, session.getStatus());

            rowInserted = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowInserted;
    }

    public List<SessionBean> getAllSessions() {
        List<SessionBean> listSessions = new ArrayList<>();
        String sql = "SELECT * FROM training_Sessions ORDER BY branch_location ASC";

        try (Connection conn = getConnection();
                PreparedStatement statement = conn.prepareStatement(sql);
                ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                int id = resultSet.getInt("session_id");
                String name = resultSet.getString("student_name");
                String branch = resultSet.getString("branch_location");
                String type = resultSet.getString("lesson_type");
                String status = resultSet.getString("status");

                SessionBean session = new SessionBean(id, name, branch, type, status);
                listSessions.add(session);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listSessions;
    }
}
