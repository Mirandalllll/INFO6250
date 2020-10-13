<%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 10/4/20
  Time: 6:26 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>Core Tag</title>
  </head>
  <body>
  <h2>
    C:Out
  </h2>
  <c:out value="${'Welcome to javaTpoint'}"/>
<%--  -------------------------------------------------------%>
  <h2>
    C:set
  </h2>
<%--  -------------------------------------------------------%>
  <c:set var="Income" scope="session" value="${4000*4}"/>
  <c:out value="${Income}"/>
  <h2>
    C:if
  </h2>
<%--  -------------------------------------------------------%>
  <c:set var="income" scope="session" value="${4000*4}"/>
  <c:if test="${income > 8000}">
  <p>My income is: <c:out value="${income}"/><p>
    </c:if>
  </body>
</html>
