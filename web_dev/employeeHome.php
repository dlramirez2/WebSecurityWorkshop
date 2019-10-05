<?php include('header.php'); ?>
    <main>
        #PEPEGA
        <section class="container black-text">
            <h4 class="center white-text">Welcome to the Employee Center Home Page!</h4>
            <form class="card blue-grey darken-1"  method='post'>
                <div class="center">
                <?php
                    if(isset($_SESSION['userId'])){
                        echo '<span class="card-title">Signed in as Employee ' , $_SESSION['employeeLN'],', ', $_SESSION['employeeFN'],'</span>';
                        echo'<p>I am a very simple card. I am good at containing small bits of information.I am convenient because I require little markup to use effectively.</p>';

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
