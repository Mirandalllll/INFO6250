<%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 11/7/20
  Time: 3:30 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>User-Form</title>
</head>
<body>
<form:form action="processForm" modelAttribute="User">
    Email:<form:input path="email"></form:input>
    <br><br>
    Password:<form:password path="password"></form:password>
    <br><br>
    Confirm:<form:password path="confirmPassword"></form:password>
    <br><br>
    Upload Your Picture:<form:input path="pic"></form:input>
    <br><br>
    Gender:<form:radiobutton path="gender" value="Male"/>
    Male
    <form:radiobutton path="gender" value="Female"/>
    Female
    <br><br>
    Select Country:<form:select path="country">
    <form:option value="UK">UK</form:option>
    <form:option value="US">US</form:option>
</form:select>
    <br><br>
    Hobby:<form:checkbox path="hobby" value="Cricket"/>
    Cricket
    <form:checkbox path="hobby" value="Football"/>
    Football
    <br><br>
    Address:<form:textarea path="address"></form:textarea>
    <input type="submit" value="submit">
</form:form>
</body>
</html>
