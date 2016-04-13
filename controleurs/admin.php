<?php
    if(empty($_GET)){
        require_once "modeles/admin.php";
        $title .= "Administration";
        require_once "vues/admin.php";
    }elseif(isset($_GET['new']) && ctype_digit($_GET['new'])){
        $action = "ajout";
        $title .= "Ajouter un article.";
        require_once "modeles/adminarticle.php";
        require_once "vues/adminarticle.php";
    }elseif(isset($_GET['edit']) && ctype_digit($_GET['edit'])){
        $action = "modifier";
        $articleid = $_GET['edit'];
        require_once "modeles/adminarticle.php";
        require_once "vues/adminarticle.php";
    }elseif(isset($_GET['delete']) && ctype_digit($_GET['delete'])){
        $articleid = $_GET['delete'];
        require_once "modeles/admin.php";
        require_once "vues/admin.php";
    }
?>