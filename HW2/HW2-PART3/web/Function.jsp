<%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 10/4/20
  Time: 6:35 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Using JSTL Functions</title>
</head>
<body>
<!--fn:contains() Function-->
<c:set var="String" value="Welcome to javatpoint"/>

<c:if test="${fn:contains(String, 'javatpoint')}">
<p>Found javatpoint string<p>
    </c:if>

    <c:if test="${fn:contains(String, 'JAVATPOINT')}">
<p>Found JAVATPOINT string<p>
    </c:if>

        -----------------------------------------------------
        <!--fn:containsIgnoreCase() Function-->
        <c:set var="String" value="Welcome to javatpoint"/>

        <c:if test="${fn:containsIgnoreCase(String, 'javatpoint')}">
<p>Found javatpoint string<p>
    </c:if>

    <c:if test="${fn:containsIgnoreCase(String, 'JAVATPOINT')}">
<p>Found JAVATPOINT string<p>
    </c:if>

        -----------------------------------------------------
        <!--fn:endsWith() Function-->
        <c:set var="String" value="Welcome to JSP programming"/>

        <c:if test="${fn:endsWith(String, 'programming')}">
<p>String ends with programming<p>
    </c:if>

    <c:if test="${fn:endsWith(String, 'JSP')}">
<p>String ends with JSP<p>
    </c:if>

</body>
</html>
