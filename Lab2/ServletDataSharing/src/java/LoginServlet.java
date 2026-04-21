/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author shahputeraiskandar
 */
public class LoginServlet extends HttpServlet { 
    
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        
        
        if(user.equals("Ahmad") && pass.equals("4567")){
            
            
            request.setAttribute("accountType", "Premium Student");
            request.setAttribute("email", "ahmad@siswa.edu.my");
            
            RequestDispatcher rd = request.getRequestDispatcher("AccountServlet");
            rd.forward(request, response);
            
        } else if (user.equals("Siti") && pass.equals("1234")){
            
            request.setAttribute("accountType", "Standard Student");
            request.setAttribute("email", "siti@siswa.edu.my");
            
            RequestDispatcher rd = request.getRequestDispatcher("AccountServlet");
            rd.forward(request, response);
            
        } else {
            
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<h3 style=;color:red'>Login Failed! Invalid credentials.</h3>");

            out.println("<a href='login.html'>Try Again</a>");
        }
        
        
    }

    
}
