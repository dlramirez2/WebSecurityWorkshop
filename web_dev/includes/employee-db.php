<?php
        $username = $_POST['username'];
        $password = $_POST['password'];
        $serverName = "localhost";
        $dBUsername = "root";
        $dBpassword = "";
        $dBName = "medBlue";
        $conn = mysqli_connect($serverName, $dBUsername, $dBpassword, $dBName);
        if(!$conn){
                      die("connection failed ".mysqli_connect_error);
        }
