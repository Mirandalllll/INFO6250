<%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 10/5/20
  Time: 12:46 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show Excel</title>
</head>
<body>
<form action="showExcel" method="post" >
    <label>Upload Your Excel File</label>
    <input type="file" accept="application/vnd.ms-excel" name="file"><br>
    <input type="submit" value="submit">

</form>
</body>
</html>
