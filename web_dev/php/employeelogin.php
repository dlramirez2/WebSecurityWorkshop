<?php include('header.php'); ?>
    <main>
    <section class="container black-text">
        <h4 class="center"> Employee Login </h4>
	<!-- Changing POST to GET -->
        <form class="white" action="includes/employeeloginHandle.php" method="POST" id="loginForm">
            <label>Username: </label>
            <input type="text" name="username" >
            <label>Password: </label>
            <input type="password" name="password" >
            <?php
                if(isset($_GET['error'])){
                    if($_GET['error'] == "emptyfields"){
                       echo'<div class="red-text">Please fill in all fields</div>';

                    }elseif($_GET['error'] == "invalidUserName"){
                        echo'<div class="red-text">Invalid User Name</div>';
                    }elseif($_GET['error'] == "sqlerror" || $_GET['error'] == "loginerror"){
                        echo'<div class="red-text">Error Starting System</div>';
                    }else{
                        echo'<div class="red-text">Invalid Username or Password</div>';
                    }
                }
            ?>
            <div class="center">
                <input type="submit" name="submitE" value="submit" class="btn brand z-depth-0">
            </div>
        </form>
    </section>
    </main>
<?php include('footer.php'); ?>
