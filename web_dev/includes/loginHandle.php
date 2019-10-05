<?php
  if(isset($_POST['submit'])){
    require 'db-handle.php';
    $username = htmlspecialchars( $_POST['username']);
    $password = htmlspecialchars($_POST['password']);
   //check that user has inputted something for both fields
    if(empty($username) || empty($password)){
	header("Location: ../login.php?error=emptyfields");
	exit();
   //check for valid username
    }elseif (!preg_match('/[a-zA-Z0-9]+$/',$username)){
        header("Location: ../login.php?error=invalidUserName");
        exit();
    }else{
        $sql = "SELECT * FROM medBlue.medBlueP WHERE userID=?;"; //check this statement
        $stmt = mysqli_stmt_init($conn);
	if(!mysqli_stmt_prepare($stmt,$sql)){
        header("Location: ../login.php?error=sqlerror");
		exit();
	}else{
		mysqli_stmt_bind_param($stmt,'s',$username);
		mysqli_stmt_execute($stmt);
		$result = mysqli_stmt_get_result($stmt);
		if($row = mysqli_fetch_assoc($result)){
			$hashPass = hash('sha256',$password);
			if($hashPass != $row['pwdUser']){
				header("Location: ../login.php?error=wrongpassword");
				exit();
			}else if ($hashPass == $row['pwdUser']){
				//login user to database
                session_start();
                $_SESSION['idUser']=$row['userID']; //check that this has correct variable for row
                $_SESSION['patientLN'] = $row['LastName'];
                $_SESSION['patientFN'] = $row['FirstName'];
                $_SESSION['patientMN'] = $row['MiddleName'];
                header("Location: ../patientHome.php?login=success"); //change to patientHome
			}else{
				header("Location: ../login.php?error=loginerror");
				exit();
			}
		}else{
			header("Location: ../login.php?error=nouser");
			exit();
		}
	}
    }
  }//end of submit if statement
  else{
      header("Location: ../login.php");
      exit();

  }
