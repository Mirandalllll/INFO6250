<%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 11/7/20
  Time: 4:41 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Music</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<div>Shop for CDs</div>
<hr/>
<div>
    <p align="right">[<a href="cart">View Cart</a>]</p>
</div>
<div>
    <form action="add" method="post">
        <input type="checkbox" name="music" value="I'm Going to Tell You a Secret by Madonna[$26.99]"/>
        I'm Going to Tell You a Secret by Madonna[$26.99]<br/>
        <input type="checkbox" name="music" value="Baby One More Time by Britney Spears[$10.95]"/>
        Baby One More Time by Britney Spears[$10.95]<br/>
        <input type="checkbox" name="music" value="Justified by Justin Timberlake[$9.97]"/>
        Justified by Justin Timberlake[$9.97]<br/>
        <input type="checkbox" name="music" value="Loose by Nelly Furtado[$13.98]"/>
        Loose by Nelly Furtado[$13.98]<br/>
        <input type="checkbox" name="music" value="Gold Digger by Kanye West[$27.99]"/>
        Gold Digger by Kanye West[$27.99]<br/>
        <input type="submit" name="submit" value="Add to Cart"/><br/>
    </form>
</div>
<a href="home">Back to home Page</a>

</body>
</html>