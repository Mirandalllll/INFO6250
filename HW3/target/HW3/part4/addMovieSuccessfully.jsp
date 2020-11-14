<%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 10/17/20
  Time: 12:41 下午
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" isELIgnored="false" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User Added</title>
    <style> body{font-size: 14pt; margin-left: 2%; margin-right: 2%; background-color: antiquewhite;}
    #clean{clear:left;}
    tr{white-space: nowrap;}
    td{white-space: nowrap; font-size: 20px; text-align: center;}
    </style>
</head>
<body>
<h1> 1 movie added successfully </h1><br><br/>

<table border = "1" width="60%">
    <thead>
    <th>Title</th>
    <th>Actor</th>
    <th>Actress</th>
    <th>Genre</th>
    <th>Year</th>

    </thead>
    <tbody>
    <c:set var="user" value="${requestScope.movie}"></c:set>
    <tr>
        <td><c:out value="${user.getTitle()}" /></td>
        <td><c:out value="${user.getActor()}" /></td>
        <td><c:out value="${user.getActress()}" /></td>
        <td><c:out value="${user.getGenre()}" /></td>
        <td><c:out value="${user.getYear()}" /></td>

    </tr>

    </tbody>
</table>
<br><br/>
<a href="home.jsp"> Click here to go to the home page </a>
</body>
</html>
