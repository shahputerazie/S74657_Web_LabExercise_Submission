<%-- 
    Document   : processInsuranceQuo
    Created on : Apr 21, 2026, 12:44:16 PM
    Author     : shahputeraiskandar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Insurance Quotation Result</title>
    </head>
    <body>
        <h2>Insurance Quotation Result</h2>
        <div class="card">

            <%
                // Retrieve form data
                String icno = request.getParameter("icno");
                String name = request.getParameter("name");
                String coverage = request.getParameter("coverage");
                String ncdStr = request.getParameter("ncd");

                double price = 0;
                double ncd = 0;

                try {
                    price = Double.parseDouble(request.getParameter("price"));
                    if (ncdStr != null) {
                        ncd = Double.parseDouble(ncdStr);
                    }
                } catch (Exception e) {
                    price = 0;
                    ncd = 0;
                }

                // Business Logic
                double rate = 0;
                String coverageDisplay = "";

                if ("comprehensive".equals(coverage)) {
                    rate = 0.05; // 5%
                    coverageDisplay = "Comprehensive";
                } else {
                    rate = 0.03; // 3%
                    coverageDisplay = "Third Party";
                }

                // Base insurance calculation
                double insurance = price * rate;

                // Apply NCD discount
                double discount = insurance * ncd;
                double afterNCD = insurance - discount;

                // Add 8% SST
                double sst = afterNCD * 0.08;
                double finalAmount = afterNCD + sst;

                // Format NCD for display (e.g., 0.55 -> 55)
                int displayNCD = (int) Math.round(ncd * 100);
            %>

            <div class="result-group">
                <label>IC No:</label>
                <p><%= icno%></p>
            </div>
            <div class="result-group">
                <label>Name:</label>
                <p><%= name%></p>
            </div>
            <div class="result-group">
                <label>Market Price (RM):</label>
                <p><%= String.format("%.2f", price)%></p>
            </div>
            <div class="result-group">
                <label>Coverage Type:</label>
                <p><%= coverageDisplay%></p>
            </div>
            <div class="result-group">
                <label>NCD:</label>
                <p><%= displayNCD%>%</p>
            </div>

            <hr style="border: 1px solid #ddd; margin: 20px 0;">

            <div class="result-group-flex">
                <label>Base Insurance:</label>
                <p>RM <%= String.format("%.2f", insurance)%></p>
            </div>
            <div class="result-group-flex">
                <label>NCD Discount:</label>
                <p>RM <%= String.format("%.2f", discount)%></p>
            </div>
            <div class="result-group-flex">
                <label>After NCD:</label>
                <p>RM <%= String.format("%.2f", afterNCD)%></p>
            </div>
            <div class="result-group-flex">
                <label>SST (8%):</label>
                <p>RM <%= String.format("%.2f", sst)%></p>
            </div>
            <div class="result-group-flex" style="margin-top: 15px; font-size: 1.1em;">
                <label><strong>Final Insurance Amount:</strong></label>
                <p><strong>RM <%= String.format("%.2f", finalAmount)%></strong></p>
            </div>

            <br>
            <button onclick="history.back()" class="btn btn-submit">Back</button>
        </div>
    </body>
</html>