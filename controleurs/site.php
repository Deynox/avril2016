<?php
if(isset($_POST['formlogin']) && $_POST['formlogin'] == "Login"){
    require_once "modeles/connect.php";
}

if(empty($_GET)){
    require_once "modeles/acceuil.php";
    $title .= "Acceuil";
    require_once "vues/acceuil.php";
}elseif(isset($_GET['idarticle']) && ctype_digit($_GET['idarticle'])){
    $idarticle = $_GET['idarticle'];
    require_once "modeles/detail.php";
    $title .= "Détail";
    require_once "vues/detail.php";
}elseif(isset($_GET['idrub']) && ctype_digit($_GET['idrub'])){
    $idrub = $_GET['idrub'];
    require_once "modeles/rubrique.php";
    $title .= "Détail";
    require_once "vues/rubrique.php";
}
?>