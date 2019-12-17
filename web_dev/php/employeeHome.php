<?php include('header.php'); ?>
    <main>
        <section class="container black-text">
            <h4 class="center white-text">Welcome to the Employee Center Home Page!</h4>
            <form class="card blue-grey darken-1"  method='post'>
                <div class="center">
                <?php
                    if(isset($_SESSION['userId'])){
                        echo '<p>Signed in as Employee ' , $_SESSION['employeeLN'],', ', $_SESSION['employeeFN'],'</p>';
                        echo'<p>Employee since: ',$_SESSION['employeeHD'],' </p>';
			echo'<p>Today you are: ',$_SESSION['employeeAge'],' years old! </p>';
			echo'<p><button>Change Password</button></p>';

                    }else{
                        echo '<span class="card-title">You are logged out!, Please Sign in Again</span>';
                    }
                    ?>
                    <div class="card-action">
                        <a class="white-text" href="includes/logout.php">Logout</a>
                    </div>
                </div>
            </form>
        </section>
    <main>
<?php include('footer.php'); ?>
