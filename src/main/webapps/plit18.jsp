<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String rno = request.getParameter("rno");
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
PreparedStatement preparedStatement = null;
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
        #download-button {
            position: absolute;
            top: 20px;
            right: 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 5px;
        }
        .student-block {
            margin: 20px auto;
            padding: 20px;
            max-width: 600px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #f9f9f9;
        }
        .student-block:nth-child(odd) {
            background-color: #f0f0f0;
        }
        h1 {
            background-color: #00FFFF;
            color: black;
            padding: 20px;
            text-align: center;
            margin: 0; /* Remove default margin */
        }
    </style>
</head>
<body>
<div class="navbar">
    <a href="homepage.html">Home</a>
    <a href="dashboard.html">Dashboard</a>
    <a href="careerCompass.html">Career Compass</a>
</div><br><br>
<h1>PLACEMENT PORTAL</h1>

<%
try {
    connection = DriverManager.getConnection(connectionUrl, userid, password);
    String sql = "SELECT * FROM it18 WHERE REGISTERID = ?";
    preparedStatement = connection.prepareStatement(sql);
    preparedStatement.setString(1, rno);
    resultSet = preparedStatement.executeQuery();
    
    while (resultSet.next()) {
%>
<div class="student-block">
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
</div>
<%
    }
} catch (SQLException e) {
    e.printStackTrace();
} finally {
    try {
        if (resultSet != null) resultSet.close();
        if (preparedStatement != null) preparedStatement.close();
        if (connection != null) connection.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
%>

<form action="downloadit18.jsp" method="post">
    <button id="download-button" type="submit" name="download">Download</button>
</form>

</body>
</html>
