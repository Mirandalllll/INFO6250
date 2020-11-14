<%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 10/17/20
  Time: 4:18 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Shop for Books</title>
</head>
<body>
<div>Shop for Books</div>
<hr/>
<div>
    <p align="right">[<a href="cart.jsp">View Cart</a>]</p>
</div>
<div>
    <form action="part6" method="post">
        <input type="checkbox" name="books" value="Java Servlet Programming[$29.95]"/>
        Java Servlet Programming[$29.95]<br/>
        <input type="checkbox" name="books" value="Oracle Database Programming[$48.95]"/>
        Oracle Database Programming[$48.95]<br/>
        <input type="checkbox" name="books" value="System Analysis and Design With UML[$14.95]"/>
        System Analysis and Design With UML[$14.95]<br/>
        <input type="checkbox" name="books" value="Object Oriented Software Engineering[$35.99]"/>
        Object Oriented Software Engineering[$35.99]<br/>
        <input type="checkbox" name="books" value="Java Web Services[$27.99]"/>
        Java Web Services[$27.99]<br/>
        <input type="submit" name="submit" value="Add to Cart"/><br/>
    </form>
</div>
<a href="home.jsp">Back to home Page</a>

</body>
</html>
