<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>

<head>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="author" content="colorlib.com">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet" />

</head>

<style>
    <%@include file="/resources/styles/main.css" %>
    <%@include file="/resources/styles/background.css" %>
<%--    <%@include file="/resources/javascript/extention/choices.js" %>--%>
<%--    <%@include file="/resources/javascript/extention/select.js" %>--%>
    <%@include file="resources/javascript"
</style>

<body>
<div class="s007">
    <form action="galery">
        <div class="inner-form">
            <div class="basic-search">
                <div class="input-field">
                    <div class="icon-wrap">
                        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="20" height="20" viewBox="0 0 20 20">
                            <path d="M18.869 19.162l-5.943-6.484c1.339-1.401 2.075-3.233 2.075-5.178 0-2.003-0.78-3.887-2.197-5.303s-3.3-2.197-5.303-2.197-3.887 0.78-5.303 2.197-2.197 3.3-2.197 5.303 0.78 3.887 2.197 5.303 3.3 2.197 5.303 2.197c1.726 0 3.362-0.579 4.688-1.645l5.943 6.483c0.099 0.108 0.233 0.162 0.369 0.162 0.121 0 0.242-0.043 0.338-0.131 0.204-0.187 0.217-0.503 0.031-0.706zM1 7.5c0-3.584 2.916-6.5 6.5-6.5s6.5 2.916 6.5 6.5-2.916 6.5-6.5 6.5-6.5-2.916-6.5-6.5z"></path>
                        </svg>
                    </div>
                    <input id="search" type="text" placeholder="Suchen..." />
                    <div class="result-count">
                        <span>108 </span>Rezepte</div>
                </div>
            </div>
            <div class="row">
                <div class="card"></div>

                <div class="card-body card">
                    <div class="shadow-sm p-3 mb-4 bg-white rounded">
                        <h5 class="card-title  card-title">${recipe.recipe_name}</h5>
                        <p class="card-text text-muted text-left description">${recipe.description}</p>
                    </div>
                    <div class="d-flex align-items-center justify-content-between shadow-sm p-3 bg-white rounded">
                        <%--                        <h7 class="card-text medium mb-0">--%>
                        <%--                            <h7 class="fa fa-picture-o"></h7>--%>
                        <%--                        </h7>--%>
                        <h7 class="card-text bi bi-clipboard-data" style="color:${recipe.hex_color}"> ${recipe.difficulty_desc}</h7>
                        <%--                        <h7 class="card-text">${recipe.id}</h7>--%>
                        <h7 class="card-text">${recipe.cooking_time} Minuten </h7>
                    </div>
                </div>
            </div>
<%--            <div class="advance-search">--%>
<%--                <span class="desc">Ergebnisse filtern</span>--%>
<%--                <div class="row">--%>
<%--                    <div class="input-field">--%>
<%--                        <div class="input-select">--%>
<%--                            <select data-trigger="" name="choices-single-defaul">--%>
<%--                                <option placeholder="" value="">ACCESSORIES</option>--%>
<%--                                <option>ACCESSORIES</option>--%>
<%--                                <option>SUBJECT B</option>--%>
<%--                                <option>SUBJECT C</option>--%>
<%--                            </select>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="input-field">--%>
<%--                        <div class="input-select">--%>
<%--                            <select data-trigger="" name="choices-single-defaul">--%>
<%--                                <option placeholder="" value="">COLOR</option>--%>
<%--                                <option>GREEN</option>--%>
<%--                                <option>SUBJECT B</option>--%>
<%--                                <option>SUBJECT C</option>--%>
<%--                            </select>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="input-field">--%>
<%--                        <div class="input-select">--%>
<%--                            <select data-trigger="" name="choices-single-defaul">--%>
<%--                                <option placeholder="" value="">SIZE</option>--%>
<%--                                <option>SIZE</option>--%>
<%--                                <option>SUBJECT B</option>--%>
<%--                                <option>SUBJECT C</option>--%>
<%--                            </select>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>

                <div class="row second">
                    <div class="input-field">
                        <button type="submit" class="btn-search">Suchen</button>
                        <button type="reset" class="btn-delete" id="delete">Löschen</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
</body>
</html>