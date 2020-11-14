<%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 11/7/20
  Time: 4:43 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>View Cart</title>
</head>
<body>
<c:set var="cart" value="${sessionScope.cart}"/>
<h2 align="center"> View Your Cart</h2>
<form action="update" method="post">
    <table  align="center">
        <c:if test="${cart != null}">
            <c:forEach var="item" items="${cart.cart}">
                <tr>
                    <td>
                            ${item.name}
                    </td>
                    <td>
                        <input type="text" name="${item.name}" value="${item.count}"/>
                    </td>
                </tr>

            </c:forEach>
        </c:if>
    </table>
    <input name="hidd" type="hidden" value="1">
    <br>
    <div align="center">
        <input type="submit" name="Submit" value="Submit">
    </div>
</form>
<p>
    <%--        [<a href="ViewCart.jsp">View Cart</a>]--%>
    [<a href="books">Go to Books Page</a>]
    [<a href="music">Go to Music Page</a>]
    [<a href="computers">Go to Computers Page</a>]
</p>
<a href="../index.jsp">Back to Navigation Page</a>

</body>
</html>
