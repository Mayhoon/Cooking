<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Image Galery</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
</head>

<style>
    <%@include file="/resources/styles/background.css" %>
    <%@include file="/resources/styles/galery.css" %>
    <%@include file="/resources/svg/stopwatch.svg" %>
</style>
<body>

<div class="container-fluid my-container">
    <div class="row justify-content-around align-items-top my-row">
        <c:forEach begin="0" end="${response.size()}" items="${response}" var="recipe" varStatus="loop">
        <c:if test="${loop.index mod 4 == 0 && loop.index != 0}">
    </div>
    <div class="row justify-content-around align-items-top my-row">
        </c:if>
        <div class="col-xs-12 col-md-8 col-lg-3 my-col">
            <div class="card">

                <img class="img-fluid card-img-top "
                     src="${recipe.image_url}"
                     alt="Card image">

                <div class="card-body card">
                    <div class="shadow-sm p-3 mb-4 bg-white rounded">
                        <h5 class="card-title">${recipe.recipe_name}</h5>
                        <p class="card-text text-muted text-left description">${recipe.description}</p>
                    </div>
                    <div class="d-flex align-items-center justify-content-between shadow-sm p-3 bg-white rounded">
                        <h7 class="card-text bi bi-clipboard-data" style="color:${recipe.hex_color}"> ${recipe.difficulty_desc}</h7>
                        <h7 class="card-text">${recipe.cooking_time} Minuten </h7>
                        <i class="bi bi-search"></i>
                    </div>
                </div>
            </div>
        </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
