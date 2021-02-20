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

    <%@include file="/resources/javascript/searchRecipe.js" %>

    <link rel="icon" type="image/png" href="/resources/images/favicon-96x96.png">
</head>

<style>
    <%@include file="/resources/styles/search.css" %>
    <%@include file="/resources/styles/background.css" %>

</style>

<body>

<script>
    let searchbar, time, recipeType;

    function saveFormValues() {
        searchbar = $('searchField').val();
        time = $('timeSelect').val();
        recipeType = $('recipeTypeSelect').val();
    }

    $(document).ready(function () {
        saveFormValues();

        $('#form').on('submit', function() {
            alert('You submitted the form!');
            window.location.href = 'http://localhost:8081/Kochen_war/galery.jsp';
            // $.post('/galery.jsp', { searchbar: searchbar, time: time, recipeType:recipeType } );
        });

    });

    function formChange() {
        saveFormValues();
        queryDB()
    }

    function queryDB() {
        // let list = [searchbar, time, recipeType];
        // let test = "Max";

        // $.ajax({
        //     url: 'getMatchingResults',
        //     data: {
        //         time: test
        //     },
        //     success: function (responseText) {
        //         console.log(responseText);
        //     }
        // });

        $.ajax({
            type: "GET",
            url: "weRobot",
            dataType: "json",
            data: {
                time: 'time',
                test: 'eintest'
            },
            success(data) {
                console.log(data);
            }
        }).done(function (data) {
            alert("done");
        });

        return false;
    }

    function submit() {
        $.ajax({
            type: "GET",
            url: "searchGalery",
            dataType: "json",
            data: {
                searchbar: searchbar,
                time: time,
                test: recipeType
            },
            success(data) {
                console.log(data);
            }
        })
    }


</script>



<form id="form">
    <div class="container-fluid">
        <div class="row justify-content-center my-row first-row">
            <div class="col-md-4">
                <div class="card-body my-card">
                    <div class="shadow-sm p-3 bg-white rounded">
                        <div class="input-group rounded">
                            <input id="searchField" type="search" class="form-control rounded"
                                   placeholder="Rezept suchen"
                                   aria-label="Search"
                                   aria-describedby="search-addon"/>
                            <button type="submit" class="submitButton" onclick="submit()">
                                <span class="input-group-text border-0" id="search-addon">
                                    <i class="bi bi-search"></i>
                                </span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="row justify-content-center my-row second-row">
            <div class="col-md-4 my-col">
                <div class="card-body my-card">
                    <div class="shadow-sm p-3 bg-white rounded">
                        <div class="recipeSelectDiv">
                            <p class="font-weight-bold recipetype">Rezeptart:</p>
                            <select id="recipeTypeSelect" class="form-select my-select"
                                    aria-label="Default select example" onchange="formChange()">
                                <option value="vegetarian">Vegetarisch</option>
                                <option value="vegan">Vegan</option>
                                <option value="meat">Fleisch</option>
                                <option value="all" selected>Egal</option>
                            </select>
                        </div>

                        <div class="timeSelectDiv">
                            <p class="font-weight-bold time">Zeit:</p>
                            <select id="timeSelect" class="form-select my-select" aria-label="Default select example"
                                    onchange="formChange()">
                                <option value="5">> 5</option>
                                <option value="15">> 15</option>
                                <option value="30">> 30</option>
                                <option value="50">> 50</option>
                                <option value="all" selected>Egal</option>
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