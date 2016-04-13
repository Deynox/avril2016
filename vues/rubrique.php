<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><?=$title?></title>
	<link rel="stylesheet" href="vues/style.css">
</head>
<body>
	<div id="warper">
		<div id="header">
			<?php require "menu.php"; ?>
		</div>
		<div id="contener">
			<div id="BlockGauche">
			<?php if($nb == 0){
				echo "<h2>Pas d'article.</h2>";
			}else{
			foreach($affiche_rubrique AS $aff){
				?>
				<div id="article">
					<div class="titre"><?=$aff['letitre']?></div><br/>
					<div class="texte">
						<span class="soustitre">auteur : </span><?=$aff['lelogin']?></a><br/>
						<span class="soustitre">rubrique : </span><?=$aff['rub']?></a><br/>
					</div>
					<div class="texte2">
					<span class="soustitre">Description :</span><br/>
					<?=$aff['texte']?>
					<br/><br/>
					<a href="?idarticle=<?=$aff['id']?>">[Détails]</a>
					</div>
				</div>
			<?php }} ?>
			</div>
			<div id="BlockDroite">
			</div>
		</div>
	</div>
</body>
</html>
