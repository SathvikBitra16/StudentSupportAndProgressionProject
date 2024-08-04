<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "oracle.jdbc.driver.OracleDriver";
String connectionUrl = "jdbc:oracle:thin:@localhost:1521/orcl";
String userid = "system";
String password = "password";
try {
    Class.forName(driver);
} catch (ClassNotFoundException e) {
    e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="dash.css" type="text/css" media="all" />
    <style>
        body {
            background: linear-gradient(115deg, #56d8e4 10%, #9f01ea 90%);
        }
        .student-details {
            margin: 20px auto;
            padding: 20px;
            max-width: 600px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #f9f9f9;
        }
        h1 {
            background-color: #00FFFF;
            color: black;
            padding: 20px;
            text-align: center;
            margin: 0;
        }
    </style>
</head>
<body>
<div class="navbar">
    <a href="homepage.html">Home</a>
    <a href="dashboard.html">Dashboard</a>
    <a href="careerCompass.html">Career Compass</a>
</div><br><br>
<h1>STUDENT DETAILS</h1>

<div class="student-details">
<%
try {
    connection = DriverManager.getConnection(connectionUrl, userid, password);
    statement = connection.createStatement();
    String sql = "SELECT * FROM it18 WHERE REGISTERID = '" + id + "'";
    resultSet = statement.executeQuery(sql);
    if (resultSet.next()) {
%>
    <p><strong>REGISTER ID:</strong> <%=resultSet.getString("REGISTERID") %></p>
    <p><strong>NAME:</strong> <%=resultSet.getString("NAME") %></p>
    <p><strong>BRANCH:</strong> <%=resultSet.getString("BRANCH") %></p>
    <p><strong>STATUS:</strong> <%=resultSet.getString("STATUS") %></p>
    <p><strong>SELECTIONS:</strong> <%=resultSet.getString("OFFERS") %></p>
    <p><strong>COMPANY1:</strong> <%=resultSet.getString("COMPANY1") %></p>
    <p><strong>COMPANY2:</strong> <%=resultSet.getString("COMPANY2") %></p>
    <p><strong>COMPANY3:</strong> <%=resultSet.getString("COMPANY3") %></p>
    <p><strong>COMPANY4:</strong> <%=resultSet.getString("COMPANY4") %></p>
    <p><strong>COMPANY5:</strong> <%=resultSet.getString("COMPANY5") %></p>
    <p><strong>COMPANY6:</strong> <%=resultSet.getString("COMPANY6") %></p>
<%
    } else {
%>
    <p>No student found with the provided REGISTER ID.</p>
<%
    }
    connection.close();
} catch (Exception e) {
    e.printStackTrace();
}
%>
</div>
</body>
</html>
