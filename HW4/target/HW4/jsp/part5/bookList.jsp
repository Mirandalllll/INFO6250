<%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 11/7/20
  Time: 4:26 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false"  language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Books</title>
</head>
<body>
<form:form action="book" method="post" modelAttribute="count">
    <table border="0.5">
        <thead>
        <th>ISBN</th>
        <th>Book Title</th>
        <th>Authors</th>
        <th>Price</th>
        </thead>
        <tbody>
        <c:forEach var="i" begin="0" end="${count - 1}">
            <tr>
                <td><input type="text" name="isbn${i}"></td>
                <td><input type="text" name="title${i}"></td>
                <td><input type="text" name="authors${i}"></td>
                <td><input type="text" name="price${i}"></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <input type="hidden" name="amount" value="${count}">
    <input type="submit" value="submit">
</form:form>
<a href="../index.jsp">Back to Navigation Page</a>

</body>
</html>
