<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
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

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="author" content="colorlib.com">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="icon" type="image/png" href="/resources/images/favicon-96x96.png">

<%--    <%@include file="/resources/javascript/searchRecipe.js" %>--%>

</head>

<style>
    <%@include file="/resources/styles/search.css" %>
    <%@include file="/resources/styles/background.css" %>
</style>

<body>

<script>
    let searchbar, time, recipeType;

    function saveFormValues() {
        searchbar = $("#searchField").val();
        time = $("#timeSelect").val();
        recipeType = $("#recipeTypeSelect").val();
    }

    $(document).ready(function () {
        let searchbar = $("#searchField").val();
        let time = $("#timeSelect").val();
        let recipeType = $("#recipeTypeSelect").val();

        $("#searchField").on("input", function() {
            formChange();
        });
    });

    function formChange() {
        queryDB();
        // saveFormValues();
    }

    $( ".searchField" ).val().change(function() {

    });

    function queryDB() {
        let searchbar = $("#searchField").val();
        let time = $("#timeSelect").val();
        let recipeType = $("#recipeTypeSelect").val();

        console.log(searchbar);
        console.log(time);
        console.log(recipeType);

        $.ajax({
            type: "GET",
            url: "searchServlet",
            dataType: "json",
            data: {
                input: searchbar,
                cookingTime: time,
                type: recipeType
            },
            success(data) {
                $("#recipeAmountText").text(data + " Rezepte gefunden");
            }
        });
        return false;
    }

</script>


<form id="form" action="galery">
    <div class="container-fluid">
        <div class="row justify-content-center my-row first-row">
            <div class="col-md-4">
                <div class="card-body my-card">
                    <div class="shadow-sm p-3 bg-white rounded">
                        <div class="input-group rounded">
                            <input id="searchField" type="text" class="form-control rounded"
                                   placeholder="Rezept suchen"
                                   aria-label="Search"
                                   aria-describedby="search-addon" name="userInput">
                            <button type="submit" class="submitButton" onclick="submit()">
                                <span class="input-group-text border-0" id="search-addon">
                                    <i class="bi bi-search"></i>
                                </span>
                            </button>
                        </div>
                          <p id="recipeAmountText" class="card-text text-center font-weight-bold recipeAmountText">${recipeAmount}</p>
                    </div>
                </div>
            </div>
        </div>


        <div class="row justify-content-center my-row third-row">
            <div class="col-md-4 my-col">
                <div class="card-body my-card">
                    <div class="shadow-sm p-3 bg-white rounded">
                        <div class="recipeSelectDiv">
                            <p class="font-weight-bold recipetype">Rezeptart:</p>
                            <select id="recipeTypeSelect" class="form-select my-select"
                                    aria-label="Default select example" name="recipeTypeSelection" onchange="formChange()">
                                <option value="1">Vegetarisch</option>
                                <option value="2">Vegan</option>
                                <option value="3">Fleisch</option>
                                <option value="0" selected>Egal</option>
                            </select>
                        </div>

                        <div class="timeSelectDiv">
                            <p class="font-weight-bold time">Zeit:</p>
                            <select id="timeSelect" class="form-select my-select" aria-label="Default select example"
                                    name="time" onchange="formChange()">
                                <option value="5">> 5</option>
                                <option value="15">> 15</option>
                                <option value="30">> 30</option>
                                <option value="50">> 50</option>
                                <option value="10000" selected>Egal</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

</body>
</html>