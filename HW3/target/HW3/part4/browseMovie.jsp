<%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 10/17/20
  Time: 12:43 下午
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Browse Movie</title>
    <style> body{font-size: 14pt; text-align: center; background-color: antiquewhite;}
    form{ margin-left: 0%; margin-right: 10%;}
    label{display: inline-block; width: 170px;text-align: center;} textarea{ margin-left: 40%;}
    input[type=radio]{text-align: center;}
    </style>
</head>
<body>
<h1> Searching User</h1><br>
<form action= "part4"  method= "post">
    <label> Keyword </label>
    <input type="text" name= "searchtext"><br /><br/>
    <input type="radio" name= "searchoption" value ="title">Search By Title <br><br/>
    <input type="radio" name= "searchoption" value ="actor">Search By Actor <br><br/>
    <input type="radio" name= "searchoption" value ="actress">Search By Actress <br><br/>

    <input type='hidden' name='option' value='browse'>
    <input align ="center" type= "submit" value= "Search Movies" >
</form>
</body>
</html>