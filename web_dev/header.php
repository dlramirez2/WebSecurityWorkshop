<?php session_start(); ?>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8">
        <meta name="description" content="medBlue healthcare company">
        <meta name=viewport content="width=device-width, initial-scale=1">
        <title> medBlue </title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">        <style type="text/css">
        .brand{
        background: #63aabs !important;
        }
        .brand-text{
        color: black !important;
        }
        #loginForm{
        max-width:480 px;
        margin: 20px auto;
        padding: 20px;
        }
        #incName{
            margin-left: 50px;
        }
        input[type=search] {
        background: #ededed url(https://static.tumblr.com/ftv85bp/MIXmud4tx/search-icon.png) no-repeat 9px center;border: solid 1px #ccc;
        padding: 9px 10px 9px 32px;
        width: 55px;

            -webkit-border-radius: 10em;
            -moz-border-radius: 10em;
            border-radius: 10em;

            -webkit-transition: all .5s;
            -moz-transition: all .5s;
        transition: all .5s;
        }
        #searchForm input[type=search] {
        width: 15px;
        padding-left: 10px;
        color: transparent;
        cursor: pointer;
        margin-right: 20px;}
        #searchForm input[type=search]:hover {
        background-color: #fff;
        }
        #searchForm input[type=search]:focus {
        width: 130px;
        padding-left: 32px;
        color: #000;
        background-color: #fff;
        cursor: auto;
        }
        #searchForm input:-moz-placeholder {
        color: red;
        }
        #searchForm input::-webkit-input-placeholder {
        color: transparent;
        }
</style>
</head>
        <body class="grey lighten-1">
                <nav class="waves-effect waves-light teal">
                        <div class="nav-wrapper">
                                <div class="col s12">
                                <a href="index.php" class="brand-logo" id="incName"><i class="medium material-icons">local_hospital</i>Welcome to medBlue, a Healthcare Company</a>
                                </div>
                                <ul id="nav-mobile" class="right hide-on-med-and-down">
                                        <?php
                                            if(isset($_SESSION['idUser'])|| isset($_SESSION['userId'])){
                                                echo'<li><a href="includes/logout.php">Logout</a></li>';
                                            }else{
                                                echo '<li><a href="login.php">Patient Login</a></li><li><a href="employeelogin.php">Employee Login</a></li>';
                                            }
                                        ?>
                                        <li><a href="index.php">Home</a></li>
                                        <li>
                                            <form action="search.php" id="searchForm" method="post">
                                                <input type="search" name="search">
                                            </form>
                                        </li>

                                </ul>
                        </div>
                </nav>
