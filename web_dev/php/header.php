<?php session_start(); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>MedBlue</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <div id="container">
            <div id="nav-bar">
		<a href="index.php" id="incName">
                	<h1>Medblue</h1>
                	<h2>HealthCare Company</h2>
		</a>
                <ul>
                    <li><a href="login.php">Patient Login</a></li>
                    <li><a href="employeelogin.php">Employee Login</a></li>
		    <li><a href="aboutJS.php">JavaScript Tutorial</a></li>
                    <div id="Search">
                        <form action="search.php" method="POST">
                            <input type="text" name="search" placeholder="Search...">
                            <button style="width:80px;height:30px" type="submit">Submit</button>
                        </form>
                    </div>
                </ul>
		<?php
	if(isset($_SESSION['idUser'])|| isset($_SESSION['userId'])){
		echo'<li><a href="includes/logout.php">Logout</a></li>';
	}
?>
    
            </div>
	
        </div>
    </header>
    
                                    
                                        
                                </ul>
                        </div>
                </nav>
