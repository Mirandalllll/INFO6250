<%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 10/17/20
  Time: 4:19 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@ page import="java.util.*"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>ViewCart</title>
</head>
<body>
    <c:set var="cart" value="${sessionScope.cart}" />
    <form action="part6" method="get">
        <table border="0.5" align="center">
            <c:if test="${cart !=null}">
                <c:forEach var="item" items="${cart.cart}">
                    <tr>
                        <td>
                            <p>${item.name}</p>
                        </td>
                        <td>
                            <input type="number" name="${item.name}" value="${item.count}">
                        </td>
                    </tr>
                </c:forEach>
            </c:if>
        </table>
        <div align="center">
            <input type="submit" name="Submit" value="Submit">
        </div>
    </form>
    <a href="home.jsp">Back to home Page</a>
</body>
</html>
