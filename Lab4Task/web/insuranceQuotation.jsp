<%-- 
    Document   : insuranceQuotation
    Created on : Apr 21, 2026, 12:43:57 PM
    Author     : shahputeraiskandar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insurance Quotation</title>
</head>
<body>
    <h2>Insurance Quotation</h2>
    <div class="card">
        <h3 class="form-title">Insurance Calculation</h3>
        <form action="processInsuranceQuo.jsp" method="POST">
            <div class="form-group">
                <label>IC No*</label>
                <input type="text" name="icno" placeholder="e.g. 888888-08-8888" required>
            </div>
            <div class="form-group">
                <label>Name*</label>
                <input type="text" name="name" placeholder="Key-in name" required>
            </div>
            <div class="form-group">
                <label>Market Price* (RM)</label>
                <input type="number" step="0.01" name="price" placeholder="Value" required>
            </div>
            <div class="form-group">
                <label>Coverage Type</label>
                <select name="coverage">
                    <option value="third_party">Third Party</option>
                    <option value="comprehensive">Comprehensive</option>
                </select>
            </div>
            <div class="form-group">
                <label>No Claims Discount (NCD)</label>
                <select name="ncd">
                    <option value="0.0">0%</option>
                    <option value="0.10">10%</option>
                    <option value="0.25">25%</option>
                    <option value="0.30">30%</option>
                    <option value="0.3833">38.33%</option>
                    <option value="0.45">45%</option>
                    <option value="0.55">55%</option>
                </select>
            </div>
            <div class="button-group">
                <button type="submit" class="btn btn-submit">Submit</button>
                <button type="reset" class="btn btn-cancel">Cancel</button>
            </div>
        </form>
    </div>
</body>
</html>