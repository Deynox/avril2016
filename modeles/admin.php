<?php
if(!isset($_SESSION['key']) || $_SESSION['key'] != session_id()){
    header('Location: ../modeles/deco.php');
}
if($_SESSION['modifall'] == 1 || $_SESSION['deleteall'] == 1){
    $sql = "SELECT a.id,a.letitre,u.lelogin,a.util_id FROM article a INNER JOIN util u ON a.util_id = u.id GROUP BY a.id";
}else{
    $userid = $_SESSION['userid'];
    $sql ="SELECT a.id,a.letitre,u.lelogin,a.util_id FROM article a INNER JOIN util u ON a.util_id = u.id WHERE a.util_id = $userid";
}

if(isset($_GET['delete']) && ctype_digit($_GET['delete'])){
    $display = "";
    if(isset($_GET['delete']) && ctype_digit($_GET['delete']) && isset($_GET['delconf']) && ctype_digit($_GET['delconf']) && $_GET['delconf'] == 1){
        $auteur = $_SESSION['userid'];
        $compar = mysqli_query($mysqli,"SELECT a.util_id FROM article a WHERE a.id = $articleid AND a.util_id = $auteur");
        $compar2 = mysqli_fetch_assoc($compar);
        if($_SESSION['deleteall'] == 1 || $_SESSION['delete'] == 1 && $auteur == $compar2['util_id']){
            mysqli_query($mysqli,"DELETE FROM rubrique_has_article WHERE article_id=$articleid");
            mysqli_query($mysqli,"DELETE FROM article WHERE id=$articleid");
            header('Location: ./');
        }else{
            header('Location: ./');
        }
    }
}else{
    $display = "display:none";
}

$req_articles = mysqli_query($mysqli,$sql)or die(mysqli_error($mysqli));
$affiche_articles = mysqli_fetch_all($req_articles,MYSQLI_ASSOC);
$nb = mysqli_num_rows($req_articles);
?>
