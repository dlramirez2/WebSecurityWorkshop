<?php
    include('header.php');
?>
<main>
<?php
    if(isset($_SESSION['idUser']) || isset($_SESSION['userId'])){
        echo '<p class="login-status">You are logged in!</p>';
    }else{
        echo '<p class="login-status">You are logged out!</p>';
    }
    ?>
</main>
<?php include('footer.php'); ?>
