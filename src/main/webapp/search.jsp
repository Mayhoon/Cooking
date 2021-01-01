<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Chakra+Petch:wght@700&display=swap" rel="stylesheet">
    <style><%@include file="/css/search.css"%></style>

    <title>Title</title>
</head>
<body>

<div class="searchheader">
    <form action="/search/getRecipes">
        <input type="text" id="searchfield" name="searchfield" class="inputField border font" onchange="">
        <input type="submit" value="Suchen" name="action" class="searchbutton border font"/>
    </form>
</div>


<%--    <c:out value="${recipeList.name}"/>--%>

<c:out value="${response}"></c:out>
<%--<c:forEach items="${recipeList}" var="recipes">--%>
<%--    <div class="searchOutputBlock font border">--%>
<%--    <img src="images/langosch.jpg" class="image border">--%>
<%--    <p class="recipename">Bratkatoffeln mit Apfelringen</p>--%>
<%--    <p class="time">Dauer: {Wert} minuten</p>--%>
<%--    <p class="url font"><a href="https://www.lecker.de/langosch-selber-machen-so-geht-das-grundrezept-76776.html" class="font url"/>Zur Website</p>--%>
<%--    </div>--%>
<%--</c:forEach>--%>
</body>
</html>
