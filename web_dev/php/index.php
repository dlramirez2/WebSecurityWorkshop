<?php
    include('header.php');
?>
<main>
<div align="middle" class="">
<img class="center"src="MedPic.jpg" width="500" height="300" alt="healthy">
</div>
<?php
    if(isset($_SESSION['idUser']) || isset($_SESSION['userId'])){
        echo '<p class="login-status">You are logged in!</p>';
    }else{
        echo '<p class="login-status">You are logged out!</p>';
    }
    ?>
</main>
<?php include('footer.php'); ?>
