package com.lab.controller;

import com.lab.bean.Employee;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PayrollServlet", urlPatterns = {"/PayrollServlet"})
public class PayrollServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Employee> list = new ArrayList<>();

        Employee e1 = new Employee();
        e1.setEmpId("EMP001");
        e1.setName("Ahmad Ali");
        e1.setDepartment("IT");
        e1.setBasicSalary(3500.00);

        Employee e2 = new Employee();
        e2.setEmpId("EMP002");
        e2.setName("Siti Aminah");
        e2.setDepartment("Human Resources");
        e2.setBasicSalary(2800.00);

        Employee e3 = new Employee();
        e3.setEmpId("EMP003");
        e3.setName("Muthusamy");
        e3.setDepartment("Finance");
        e3.setBasicSalary(4200.00);

        Employee e4 = new Employee();
        e4.setEmpId("EMP004");
        e4.setName("John Doe");
        e4.setDepartment("Marketing");
        e4.setBasicSalary(2900.00);

        Employee e5 = new Employee();
        e5.setEmpId("EMP005");
        e5.setName("Jane Doe");
        e5.setDepartment("Operations");
        e5.setBasicSalary(3100.00);

        list.add(e1);
        list.add(e2);
        list.add(e3);
        list.add(e4);
        list.add(e5);

        request.setAttribute("employeeList", list);

        RequestDispatcher rd = request.getRequestDispatcher("payroll_view.jsp");
        rd.forward(request, response);
    }
}
