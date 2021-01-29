<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Kochbuch</title>
    <link href="https://fonts.googleapis.com/css?family=Fjalla+One" rel="stylesheet">
</head>

<style>
    <%@include file="/css/background.css" %>
    <%@include file="/css/search.css" %>
</style>
<body>
<div id="buttons">
    <form action="/search">
        <button type="submit" name="action" class="border braten button">Braten</button>
        <button type="submit" name="action" class="border suppe button ">Suppe</button>
        <button type="submit" name="action" class="border fisch button">Fisch</button>
        <button type="submit" name="action" class="border vegetarisch button ">Vegetarisch</button>
    </form>
</div>

</body>
</html>
