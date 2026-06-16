package com.drivesmart.controller;

import com.drivesmart.dao.SessionDAO;
import com.drivesmart.model.SessionBean;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BookSessionServlet")
public class BookSessionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private SessionDAO sessionDAO;

    public void init() {
        sessionDAO = new SessionDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String studentName = request.getParameter("student_name");
        String branchLocation = request.getParameter("branch_location");
        String lessonType = request.getParameter("lesson_type");
        String defaultStatus = "Booked";

        SessionBean newSession = new SessionBean();
        newSession.setStudentName(studentName);
        newSession.setBranchLocation(branchLocation);
        newSession.setLessonType(lessonType);
        newSession.setStatus(defaultStatus);

        sessionDAO.bookSession(newSession);
        
        response.sendRedirect("ScheduleServlet");
    }
}