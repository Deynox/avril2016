<?php
$sql = "SELECT id,lintitule FROM rubrique ORDER BY lintitule ASC";

$req_rubrique = mysqli_query($mysqli,$sql)or die(mysqli_error($mysqli));

if(!mysqli_num_rows($req_rubrique)){

    $vide = "Pas d'articles.";
}else{
    $affiche_rub = mysqli_fetch_all($req_rubrique,MYSQLI_ASSOC);
}
?>
