<?php
$sql = "SELECT a.id,a.letitre,a.ladesc,a.ladate,u.lelogin,GROUP_CONCAT('<a href=\"?idrub=',ru.id,'\">',ru.lintitule,'</a>' SEPARATOR ', ') as rub FROM article a LEFT JOIN rubrique_has_article rha ON rha.article_id = a.id LEFT JOIN rubrique ru ON rha.rubrique_id = ru.id INNER JOIN util u ON u.id = a.util_id  WHERE a.id = $idarticle";

$req_articles = mysqli_query($mysqli,$sql)or die(mysqli_error($mysqli));
$affiche_articles = mysqli_fetch_assoc($req_articles);

if(empty($affiche_articles['id'])){
    $vide = "Cet article n'existe pas.";
}
?>
