<?php
$sql = "SELECT a.id,a.letitre,SUBSTRING(a.ladesc,1,300) as texte,u.lelogin,(SELECT GROUP_CONCAT('<a href=\"?idrub=',r2.id,'\">',r2.lintitule,'</a>' SEPARATOR ', ') FROM rubrique r2 INNER JOIN rubrique_has_article rha2 ON rha2.rubrique_id = r2.id WHERE rha2.article_id = a.id AND r2.id != $idrub) as rub FROM article a INNER JOIN rubrique_has_article rha ON rha.article_id = a.id INNER JOIN rubrique r ON rha.rubrique_id = r.id INNER JOIN util u ON u.id = a.util_id WHERE r.id = $idrub";

$req_rubrique = mysqli_query($mysqli,$sql)or die(mysqli_error($mysqli));
$affiche_rubrique = mysqli_fetch_all($req_rubrique,MYSQLI_ASSOC);

$nb = mysqli_num_rows($req_rubrique);

?>
