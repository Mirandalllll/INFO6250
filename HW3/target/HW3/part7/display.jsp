<%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 10/17/20
  Time: 5:07 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@taglib prefix="sh" uri="tag" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Display CSV</title>
</head>
<body>
<%--    <c:set />--%>
<%--    <p>csv</p>--%>
<%--    ${requestScope.fileName}--%>
<%--    ${requestScope.path}--%>
<%--<sh:show name="${requestScope.fileName}" path="${requestScope.path}"/>--%>
<sh:show fileName="${requestScope.fileName}" filePath="${requestScope.path}"/>
</body>
</html>
