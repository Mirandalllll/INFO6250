<%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 10/4/20
  Time: 10:36 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>SQL Tag</title>
</head>
<body>
<!--sql:setDataSource -->
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/student?useSSL=false&serverTimezone=UTC"
                   user="root"  password="1234"/>


<!--sql:query -->
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/jdbc:mysql://localhost:3306/student?useSSL=false&serverTimezone=UTC"
                   user="root"  password="1234"/>

<sql:query dataSource="${db}" var="rs">
    SELECT * from Students;
</sql:query>

<table border="2" width="100%">
    <tr>
        <th>Student ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>
    </tr>
    <c:forEach var="table" items="${rs.rows}">
        <tr>
            <td><c:out value="${table.id}"/></td>
            <td><c:out value="${table.First_Name}"/></td>
            <td><c:out value="${table.Last_Name}"/></td>
            <td><c:out value="${table.Age}"/></td>
        </tr>
    </c:forEach>
</table>

<!--sql:update -->
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/jdbc:mysql://localhost:3306/student?useSSL=false&serverTimezone=UTC"
                   user="root"  password="1234"/>
<sql:update dataSource="${db}" var="count">
    INSERT INTO Students VALUES (154,'Nasreen', 'jaha', 25);
</sql:update>

<sql:query dataSource="${db}" var="rs">
    SELECT * from Students;
</sql:query>

<table border="2" width="100%">
    <tr>
        <th>Student ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>
    </tr>
    <c:forEach var="table" items="${rs.rows}">
        <tr>
            <td><c:out value="${table.id}"/></td>
            <td><c:out value="${table.First_Name}"/></td>
            <td><c:out value="${table.Last_Name}"/></td>
            <td><c:out value="${table.Age}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
CREATE USER 'hbstudent'@'localhost' IDENTIFIED by 'hbstudent';

GRANT ALL PRIVILEGES ON * . * TO 'hbstudent'@'localhost';