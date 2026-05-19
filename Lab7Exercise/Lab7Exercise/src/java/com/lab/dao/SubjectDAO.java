/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lab.dao;

/**
 *
 * @author shahputeraiskandar
 */
import com.lab.bean.SubjectBean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SubjectDAO {

    // Helper method to get database connection
    private Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Update URL, username, and password below
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lab7_db", "root", "admin");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    // CREATE: Add new subject
    public boolean addSubject(SubjectBean subject) {
        boolean status = false;
        try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement("INSERT INTO registered_subjects (matric_no, subject_code, subject_name) VALUES (?, ?, ?)")) {
            ps.setString(1, subject.getMatricNo());
            ps.setString(2, subject.getSubjectCode());
            ps.setString(3, subject.getSubjectName());
            status = ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }

    // READ: Get all subjects for a specific student (Session Management)
    public List<SubjectBean> getSubjectsByMatric(String matricNo) {
        List<SubjectBean> list = new ArrayList<>();
        try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement("SELECT * FROM registered_subjects WHERE matric_no = ?")) {
            ps.setString(1, matricNo);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                SubjectBean s = new SubjectBean();
                s.setId(rs.getInt("id"));
                s.setMatricNo(rs.getString("matric_no"));
                s.setSubjectCode(rs.getString("subject_code"));
                s.setSubjectName(rs.getString("subject_name"));
                list.add(s);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    // READ: Get a single subject by ID (for the update form)
    public SubjectBean getSubjectById(int id) {
        SubjectBean subject = null;
        try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement("SELECT * FROM registered_subjects WHERE id = ?")) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                subject = new SubjectBean();
                subject.setId(rs.getInt("id"));
                subject.setMatricNo(rs.getString("matric_no"));
                subject.setSubjectCode(rs.getString("subject_code"));
                subject.setSubjectName(rs.getString("subject_name"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return subject;
    }

    // UPDATE: Update existing subject
    public boolean updateSubject(SubjectBean subject) {
        boolean status = false;
        try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement("UPDATE registered_subjects SET subject_code = ?, subject_name = ? WHERE id = ? AND matric_no = ?")) {
            ps.setString(1, subject.getSubjectCode());
            ps.setString(2, subject.getSubjectName());
            ps.setInt(3, subject.getId());
            ps.setString(4, subject.getMatricNo()); // Extra security layer
            status = ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }

    // DELETE: Delete subject
    public boolean deleteSubject(int id, String matricNo) {
        boolean status = false;
        try (Connection conn = getConnection(); PreparedStatement ps = conn.prepareStatement("DELETE FROM registered_subjects WHERE id = ? AND matric_no = ?")) {
            ps.setInt(1, id);
            ps.setString(2, matricNo); // Ensure users can only delete their own
            status = ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }
}
