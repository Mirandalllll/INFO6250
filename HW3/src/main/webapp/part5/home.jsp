<%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 10/17/20
  Time: 2:28 下午
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        form{
            margin-left: 42%;
            margin-right: 20%;

        }
        label{
            display: inline-block;
            width: 140px;
            text-align: right;
        }

        h1{
            text-align: center;
        }

        h3{
            text-align: center;
        }

        body{
            background-color: antiquewhite;
        }

        input[type=submit]  {
            margin-left:10%;
        }

    </style>
</head>
<body>
<h1>How many books do you want to add?</h1>

<form action="bookList.jsp" method="GET">
    <input type="text" name="amount">
<%--    <select name="option">--%>
<%--        <option value="Browse">Check Movie Details</option>--%>
<%--        <option value="Add">Add New Movie</option>--%>
<%--    </select><br/><br/>--%>
    <input type="submit" value="Submit" >
</form>
</body>
</html>

