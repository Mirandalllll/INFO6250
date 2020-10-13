<%@ page import="java.util.Enumeration" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 10/7/20
  Time: 12:19 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show</title>
</head>
<body>
    <%
        response.setContentType("text/html");
        Enumeration<String> em = request.getParameterNames();
        PrintWriter print = response.getWriter();
        while(em.hasMoreElements()){
            String name = em.nextElement();
            print.println(name+" is: ");
            print.println(request.getParameter(name));
            print.println("<br>");
        }
    %>
</body>
</html>
