<?php
	$username = $_POST['username'];
	$password = $_POST['password'];
    $serverName="localhost";
	//$serverName = "db";
	$dBUsername = "root";
	//$dBpassword = "my-secret";
    $dBpassword = "";
    $dBName = "medBlue";
	$conn = mysqli_connect($serverName, $dBUsername, $dBpassword, $dBName);
        if(!$conn){
                      die("connection failed ".mysqli_connect_error);
	}
