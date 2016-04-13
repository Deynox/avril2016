<?php
require_once "modeles/menu.php";
?>
<div id="menu">
    <a href="./">Accueil</a> -
    <?php
    foreach ($affiche_rub as $rub){ ?>
        <a href="?idrub=<?=$rub['id']?>"><?=$rub['lintitule']?></a> -
   <?php } ?>
    <form action="" method="post">
        <input type="text" name="login" placeholder="Login" />
        <input type="password" name="pass" placeholder="Mot de Passe" />
        <input name="formlogin" type="submit" value="Login"/>
        <span>
        <?php if(isset($error)){
            echo $error;
        } ?> 
        </span>
    </form>
</div>