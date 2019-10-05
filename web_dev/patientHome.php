<?php include('header.php'); ?>
    <main>
	<section class="container black-text">
		<h4 class="center">Welcome to the Patient Home Page!</h4>
        <form class="card blue-grey lighten-1"  method='post'>
            <div class="center">
                <?php
                    if(isset($_SESSION['idUser'])){
                        echo '<span class="card-title">Signed in as Patient ' , $_SESSION['patientLN'],', ', $_SESSION['patientFN'],'</span>';
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
