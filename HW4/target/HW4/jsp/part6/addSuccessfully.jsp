<%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 11/7/20
  Time: 4:42 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add Successfully</title>
</head>
<body>
<c:set var = "items" value="${sessionScope.items}"/>
<c:choose>
    <c:when test="${items != null}">
        <h2>The following item has been added to your shopping cart successfully</h2>
        <c:forEach var="name" items="${items}">
            <p>${name}</p>
        </c:forEach>
    </c:when>
    <c:otherwise>
        <h2>Please add items to your cart</h2>
    </c:otherwise>
</c:choose>
<p>
    [<a href="cart">View Cart</a>]
    [<a href="books">Go to Books Page</a>]
    [<a href="music">Go to Music Page</a>]
    [<a href="computers">Go to Computers Page</a>]
</p>
</body>
<a href="../index.jsp">Back to Navigation Page</a>

</html>
s