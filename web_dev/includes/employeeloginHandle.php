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
        $sql = "SELECT * FROM medBlue.medBlueE WHERE UserName=?;"; //check this statement
        $stmt = mysqli_stmt_init($conn);
        if(!mysqli_stmt_prepare($stmt,$sql)){
                header("Location: ../employeelogin.php?error=mysqlerror");
		exit();
        }else{
                mysqli_stmt_bind_param($stmt,'s',$username);
                mysqli_stmt_execute($stmt);
                $result = mysqli_stmt_get_result($stmt);
                if($row = mysqli_fetch_assoc($result)){
                        $hashPass = hash('sha256',$password);
                        if($hashPass != $row['pwdEmployee']){
                            header("Location: ../employeelogin.php?error=wrongpwd");
                            exit();
                        }else if ($hashPass == $row['pwdEmployee']){
                            //login user to database
                            session_start();
                            $_SESSION['userId']= $row['UserName'];
                            $_SESSION['employeeLN']= $row['LastName'];
                            $_SESSION['employeeFN']= $row['FirstName'];
                            header("Location: ../employeeHome.php?login=success");
                        }else{
                            header("Location: ../employeelogin.php?error=loginerror");
                            exit();
                        }
                }else{
                        header("Location: ../employeelogin.php?error=nouser");
                        exit();
                }
        }
    }
  } //end of submit if statement
    else{
        header("Location: ../employeelogin.php");
        exit();
        
    }
