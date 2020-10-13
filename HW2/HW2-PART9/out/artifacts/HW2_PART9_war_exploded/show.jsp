<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 10/7/20
  Time: 8:00 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show Part9</title>
</head>
<body>
    <%
        Map<String,String[]> map = request.getParameterMap();

        for(Map.Entry<String,String[]> en : map.entrySet()){
            String name = en.getKey();
            String[] value = en.getValue();
            out.println("<h3>");
            out.println(name);
            out.println("</h3>");
            for(String s: value){
                out.println(s);
                out.println("&#9");
            }
            out.println("<br>");
        }
    %>
</body>
</html>
