<%--
  Created by IntelliJ IDEA.
  User: quanhaonan
  Date: 10/4/20
  Time: 4:04 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
    <title>xmltags</title>
</head>
<body>
<h3>x:out</h3>
<c:set var="vegetable">
    <vegetables>
        <vegetable>
            <name>onion</name>
            <price>40/kg</price>
        </vegetable>
        <vegetable>
            <name>Potato</name>
            <price>30/kg</price>
        </vegetable>
        <vegetable>
            <name>Tomato</name>
            <price>90/kg</price>
        </vegetable>
    </vegetables>
</c:set>
<x:parse xml="${vegetable}" var="output"/>
<b>Name of the vegetable is</b>:
<x:out select="$output/vegetables/vegetable[1]/name" /><br>
<b>Price of the Potato is</b>:
<x:out select="$output/vegetables/vegetable[2]/price" />

<h3>x:param</h3>
<c:import var="bookInfo" url="WEB-INF/novels.xml"/>

<x:parse xml="${bookInfo}" var="output"/>
<p>First Book title: <x:out select="$output/books/book[1]/name" /></p>
<p>First Book price: <x:out select="$output/books/book[1]/price" /></p>
<p>Second Book title: <x:out select="$output/books/book[2]/name" /></p>
<p>Second Book price: <x:out select="$output/books/book[2]/price" /></p>

<h3>x:if</h3>
<c:set var="vegetables">
    <vegetables>
        <vegetable>
            <name>onion</name>
            <price>40</price>
        </vegetable>
        <vegetable>
            <name>Potato</name>
            <price>30</price>
        </vegetable>
        <vegetable>
            <name>Tomato</name>
            <price>90</price>
        </vegetable>
    </vegetables>
</c:set>
<x:parse xml="${vegetables}" var="output"/>
<x:if select="$output/vegetables/vegetable/price < 100">
    Vegetables prices are very low.
</x:if>
<br>
</body>
</html>
