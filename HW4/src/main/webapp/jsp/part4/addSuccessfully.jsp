<%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 11/7/20
  Time: 3:57 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Movie Added</title>
    <style> body{font-size: 14pt; margin-left: 2%; margin-right: 2%; background-color: antiquewhite;}
    #clean{clear:left;}
    tr{white-space: nowrap;}
    td{white-space: nowrap; font-size: 20px; text-align: center;}
    </style>
</head>
<body>
<h1> 1 Movie added successfully </h1><br><br/>

<table border = "1" width="60%">
    <thead>
    <th>Title</th>
    <th>Actor</th>
    <th>Actress</th>
    <th>Genre</th>
    <th>Year</th>
    </thead>
    <tbody>
    <%--    <c:set var="movie" value="${requestScope.movieInstance}"></c:set>--%>
    <%--    <c:out value="${movie}"></c:out>--%>
    <tr>
        <td>${Movie.title}</td>
        <td>${Movie.actor}</td>
        <td>${Movie.actress}</td>
        <td>${Movie.genre}</td>
        <td>${Movie.year}</td>
    </tr>
    </tbody>
</table>
<br><br/>
<a href="home"> Click here to go to the main page </a>
<a href="../index.jsp">Back to Navigation Page</a>

</body>
</html>
