<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: MX
  Date: 12/8/2020
  Time: 9:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value='css/buttons.css' />"/>
    <title>Title</title>
</head>
<body>

<div class="flex">
    <a href="demo" class="bttn">Rezepte</a>

<%--    <form action="demo" method="get">--%>
<%--        <input type="submit" name="Suche Rezepte" class="bttn"/>--%>
<%--    </form>--%>
</div>

<div class="searchOutput"></div>

<%--<c:out value="${label}"></c:out>--%>
<c:forEach items="${recipeList}" var="recipes">
    <br>
    <p>${recipes.get("name")}</p>
</c:forEach>
</body>
</html>
