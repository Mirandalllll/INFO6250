<%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 10/17/20
  Time: 4:18 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add Successfully</title>
</head>
<body>
    <c:set var="arr" value="${sessionScope.arr}"/>
    <c:choose >
        <c:when test="${arr != null}">
            <h1>You Have added those items successfully</h1>
            <c:forEach var="it" items="${arr}">
                <p>${it}</p>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <h1>Please Add Items</h1>
        </c:otherwise>
    </c:choose>
    <p>
        [<a href="cart.jsp">View Cart</a>]
        [<a href="books.jsp">Go to Books Page</a>]
        [<a href="music.jsp">Go to Music Page</a>]
        [<a href="computers.jsp">Go to Computers Page</a>]
    </p>
<br>
    <a href="home.jsp">Back to home Page</a>
</body>
</html>
