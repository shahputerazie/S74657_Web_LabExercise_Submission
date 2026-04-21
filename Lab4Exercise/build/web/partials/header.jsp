<%-- 
    Document   : header
    Created on : Apr 21, 2026, 12:47:15 PM
    Author     : shahputeraiskandar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>UMT BMI Calculator System</title>
        <style>
            body {
    font-family: 'Segoe UI', Tahoma, sans-serif;
    background-color: #f4f7f6;
    margin: 0;
    padding: 20px;
    }
            .container {
    width: 100%;
    max-width: 800px;
    margin: 0 auto;
    }
            .nav {
    background: #6f42c1;
    padding: 15px;
    border-radius: 8px;
    margin-bottom: 20px;
    }
            .nav a {
    color: white;
    text-decoration: none;
    margin-right: 20px;
    font-weight: bold;
    }
            .nav a:hover {
    text-decoration: underline;
    }
            .card {
    background: #ffffff;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.1);
    margin-bottom: 20px;
    }
            h2 {
    color: #6f42c1;
    border-bottom: 2px solid #6f42c1;
    padding-bottom: 10px;
    }
            .form-group {
    margin-bottom: 15px;
    }
            label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
    color: #555;
    }
            input[type="number"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
    box-sizing: border-box;
    }
            .btn {
    padding: 10px 20px;
    background: #e0e0e0;
    color: #333;
    border: 1px solid #adadad;
    cursor: pointer;
    border-radius: 4px;
    font-weight: bold;
    }
            .btn:hover {
    background: #d0d0d0;
    }
            table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 15px;
    }
            th, td {
    border: 1px solid #ddd;
    padding: 12px;
    text-align: left;
    }
            th {
    background-color: #6f42c1;
    color: white;
    }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="nav">
                <a href="bmiCalculator.jsp">BMI Calculator</a>
                <a href="healthInfo.jsp">Health Information</a>
            </div>
