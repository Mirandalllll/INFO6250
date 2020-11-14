<%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 11/7/20
  Time: 3:48 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  isELIgnored="false" language="java" %>
<html>
<head>
    <title>Browse Movie</title>
    <style> body{font-size: 14pt; text-align: center; background-color: antiquewhite;}
    form{ margin-left: 0%; margin-right: 10%;}
    label{display: inline-block; width: 170px;text-align: center;} textarea{ margin-left: 40%;}
    input[type=radio]{text-align: center;}
    </style>
</head>
<body>
<h1> Search Movie</h1>
<form action="browseMovie" method="post">
    <label>Keyword: </label>
    <input type="text" name="keyword"><br/>
    <input type="radio" name="search" value="title">Search By Title<br/>
    <input type="radio" name="search" value="actor">Search By Actor<br/>
    <input type="radio" name="search" value="actress">Search By Actress<br/>
    <%--        <input type="submit" name="submit" value="Search Movies">--%>
    <%--    <input type='hidden' name='option' value='browse'>--%>
    <input align ="center" type= "submit" value= "Search User" >
</form>
<a href="../index.jsp">Back to Navigation Page</a>

</body>
</html>
