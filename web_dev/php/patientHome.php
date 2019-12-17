<?php include('header.php'); ?>
    <main>
	<section class="container black-text">
		<h4 class="center">Welcome to the Patient Home Page!</h4>
        <form class="card blue-grey lighten-1"  method='post'>
            <div class="center">
                <?php
                    if(isset($_SESSION['idUser'])){
                        echo '<p>Signed in as Patient ' , $_SESSION['patientLN'],', ', $_SESSION['patientFN'],'</p>';
                        echo'<p>DOB: ',$_SESSION['patientDOB'],'</p>';
			echo'<p>SSN: ',$_SESSION['patienSSN'],'</p>';
			echo'<p>MRN: ',$_SESSION['patientMRN'],'</p>';
			echo'<p>Current Balance: $',$_SESSION[''],'</p>';


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
