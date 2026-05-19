/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.lab.controller;

/**
 *
 * @author shahputeraiskandar
 */
import com.lab.bean.SubjectBean;
import com.lab.dao.SubjectDAO;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SubjectServlet extends HttpServlet {

    private SubjectDAO subjectDAO;

    public void init() {
        subjectDAO = new SubjectDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("matric_no") == null) {
            // If no session, redirect to login page
            response.sendRedirect(request.getContextPath() + "/login.html");
            return;
        }

        String matricNo = (String) session.getAttribute("matric_no");
        String action = request.getParameter("action");
        if (action == null) {
            action = "view";
        }

        switch (action) {
            case "add":
                request.getRequestDispatcher("/subject/registerSubject.jsp").forward(request, response);
                break;

            case "insert":
                SubjectBean newSubject = new SubjectBean();
                newSubject.setMatricNo(matricNo);
                newSubject.setSubjectCode(request.getParameter("subject_code"));
                newSubject.setSubjectName(request.getParameter("subject_name"));
                subjectDAO.addSubject(newSubject);
                response.sendRedirect("SubjectServlet?action=view");
                break;

            case "edit":
                int idToEdit = Integer.parseInt(request.getParameter("id"));
                SubjectBean existingSubject = subjectDAO.getSubjectById(idToEdit);
                if (existingSubject != null && existingSubject.getMatricNo().equals(matricNo)) {
                    request.setAttribute("subject", existingSubject);
                    request.getRequestDispatcher("/subject/updateSubject.jsp").forward(request, response);
                } else {
                    response.sendRedirect("SubjectServlet?action=view");
                }
                break;

            case "update":
                SubjectBean updatedSubject = new SubjectBean();
                updatedSubject.setId(Integer.parseInt(request.getParameter("id")));
                updatedSubject.setMatricNo(matricNo);
                updatedSubject.setSubjectCode(request.getParameter("subject_code"));
                updatedSubject.setSubjectName(request.getParameter("subject_name"));
                subjectDAO.updateSubject(updatedSubject);
                response.sendRedirect("SubjectServlet?action=view");
                break;

            case "delete":
                int idToDelete = Integer.parseInt(request.getParameter("id"));
                subjectDAO.deleteSubject(idToDelete, matricNo);
                response.sendRedirect("SubjectServlet?action=view");
                break;

            case "view":
            default:
                List<SubjectBean> list = subjectDAO.getSubjectsByMatric(matricNo);
                request.setAttribute("subjectList", list);
                request.getRequestDispatcher("/subject/viewSubjects.jsp").forward(request, response);
                break;
        }
    }
}
