<?php
if(!isset($_SESSION['key']) || $_SESSION['key'] != session_id()){
    header('Location: ../modeles/deco.php');
}
if(isset($_POST['formajout']) && $_POST['formajout'] == "Poster" && isset($_POST['titre']) && isset($_POST['texte']) && $_SESSION['ecriture'] == 1){
    
    $auteur = $_SESSION['userid'];
    $titre = htmlentities(strip_tags(trim($_POST['titre'])),ENT_QUOTES);
    $texte = htmlentities(strip_tags(trim($_POST['texte'])),ENT_QUOTES);
    if(isset($_POST['rubri'])){
        $rubri = $_POST['rubri'];
    }
    $sql = "INSERT INTO article (letitre,ladesc,ladate,util_id) VALUES ('$titre','$texte',NOW(),$auteur)";
    mysqli_query($mysqli,$sql);
    $derarticle = mysqli_insert_id($mysqli);

    $sql2 = "INSERT INTO rubrique_has_article (article_id,rubrique_id) VALUES ";

    if(isset($rubri)){
        $i1 = count($rubri);
        if($i1){
            $i1--;
            $e1=0;
            while($e1<=$i1){
                $sql2 .="($derarticle,$rubri[$e1]),";
                $e1++;
            }
        }
        $sql2 = substr($sql2,0,-1);
        mysqli_query($mysqli,$sql2);
    }
    $ajoutok = "Article ajouté !";
}elseif(isset($_POST['formmodif']) && $_POST['formmodif'] == "Modifier" && isset($_POST['titre']) && isset($_POST['texte'])){

    $auteur = $_SESSION['userid'];
    $compar = mysqli_query($mysqli,"SELECT a.util_id FROM article a WHERE a.id = $articleid AND a.util_id = $auteur");
    $compar2 = mysqli_fetch_assoc($compar);
    if($_SESSION['modifall'] == 1 || $_SESSION['modif'] == 1 && $auteur == $compar2['util_id']){
        $auteur = $_SESSION['userid'];
        $titre = htmlentities(strip_tags(trim($_POST['titre'])),ENT_QUOTES);
        $texte = htmlentities(strip_tags(trim($_POST['texte'])),ENT_QUOTES);
        if(isset($_POST['rubri'])){
            $rubri = $_POST['rubri'];
        }
        $sql = "UPDATE article SET letitre='$titre', ladesc='$texte' WHERE id=$articleid";
        mysqli_query($mysqli,$sql);
        $sql2 = "INSERT INTO rubrique_has_article (article_id,rubrique_id) VALUES ";
        if(isset($rubri)){
            $i1 = count($rubri);
            if($i1){
                $i1--;
                $e1=0;
                while($e1<=$i1){
                    $sql2 .="($articleid,$rubri[$e1]),";
                    $e1++;
                }
            }
            $sql2 = substr($sql2,0,-1);
            mysqli_query($mysqli,"DELETE FROM rubrique_has_article WHERE article_id=$articleid");
            mysqli_query($mysqli,$sql2);
        }
        $modifok = "Article modifié !";
}}

if($action == "ajout" && $_SESSION['ecriture'] == 1){
    $pageaff = "ajout";
    $sql = "SELECT r.id,r.lintitule FROM rubrique r";
    $req_rub = mysqli_query($mysqli,$sql)or die(mysqli_error($mysqli));
    $affiche_rub = mysqli_fetch_all($req_rub,MYSQLI_ASSOC);
}elseif($action == "modifier"){
    $auteur = $_SESSION['userid'];
    $compar = mysqli_query($mysqli,"SELECT a.util_id FROM article a WHERE a.id = $articleid AND a.util_id = $auteur");
    $compar2 = mysqli_fetch_assoc($compar);
    if($_SESSION['modifall'] == 1 || $_SESSION['modif'] == 1 && $auteur == $compar2['util_id']){
        $pageaff = "modif";
        $user = $_SESSION['userid'];

        $sql = "SELECT r.id,r.lintitule FROM rubrique r";
        $req_rub = mysqli_query($mysqli,$sql)or die(mysqli_error($mysqli));
        $affiche_rub = mysqli_fetch_all($req_rub,MYSQLI_ASSOC);

        $sql2 = "SELECT a.letitre,a.ladesc FROM article a WHERE a.id = $articleid";
        $req_article = mysqli_query($mysqli,$sql2)or die(mysqli_error($mysqli));
        $affiche_article = mysqli_fetch_assoc($req_article);

        $sql3 = "SELECT rha.rubrique_id FROM rubrique_has_article rha WHERE rha.article_id = $articleid";
        $compare1 = mysqli_query($mysqli,$sql3)or die(mysqli_error($mysqli));
        $compare2 = mysqli_fetch_all($compare1);
        $compare_test = array();
        for($i=0;$i<count($compare2);$i++){
            $compare_test[$i] = $compare2[$i][0];
        }

    }else{
        header('Location: ./');
    }
}else{
    header('Location: ./');
}
?>
