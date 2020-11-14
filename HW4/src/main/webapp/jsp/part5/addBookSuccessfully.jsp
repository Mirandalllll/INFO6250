<%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 11/7/20
  Time: 4:24 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Success</title>
</head>
<body>
<c:set var="books" value="${books}"/>
<h2>${books.size()} books added Successfully!</h2>
<a href="home">GO back to home page</a>
</body>
<a href="../index.jsp">Back to Navigation Page</a>

</html>
