package com.drivesmart.controller;

import com.drivesmart.dao.SessionDAO;
import com.drivesmart.model.SessionBean;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ScheduleServlet")
public class ScheduleServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private SessionDAO sessionDAO;

    public void init() {
        sessionDAO = new SessionDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        List<SessionBean> sessionList = sessionDAO.getAllSessions();
        request.setAttribute("sessionList", sessionList);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("schedule.jsp");
        dispatcher.forward(request, response);
    }
}