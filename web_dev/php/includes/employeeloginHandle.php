<?php
  if(isset($_POST['submitE'])){
    require 'employee-db.php';
    $username = $_POST['username'];
    $password = $_POST['password'];
    //check that user has inputted something for both fields
    if(empty($username) || empty($password)){
    	header("Location: ../employeelogin.php?error=emptyfields");
        exit();
   //check for valid username
    }elseif (!preg_match('/[a-zA-Z0-9]+$/',$username)){
      	header("Location: ../employeelogin.php?error=invalidUserName");
        exit();
    }else{
        $sql = "SELECT * FROM medBlue.medBlueE WHERE UserName='".$username."' AND pwdEmployee='".$password."';"; //check this statement
        $stmt = mysqli_query($conn,$sql);
        if($stmt===false){
                header("Location: ../employeelogin.php?error=mysqlerror");
		exit();
        }
	$row = mysqli_fetch_array($stmt,MYSQLI_ASSOC);
	if($row){
		session_start();
		$_SESSION['userId']= $row['UserName'];
		$_SESSION['employeeLN']= $row['LastName'];
		$_SESSION['employeeFN']= $row['FirstName'];
		$_SESSION['employeeHD']= $row['HireDate'];
		$_SESSION['employeeAge']= $row['Age'];
                header("Location: ../employeeHome.php?login=success");
	}else{
		header("Location: ../employeelogin.php?error=nouser");
                exit();
        }
    }
  } //end of submit if statement
  else{
	header("Location: ../employeelogin.php");
	exit();
  }
