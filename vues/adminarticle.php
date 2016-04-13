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
			<?php require "menu-co.php"; ?>
		</div>
		<div id="contener">
			<div id="BlockGauche">
			<?php if(isset($vide)){
				echo "<h2>$vide</h2>";
			}else{
			?>
				<div id="article2">
					<div class="texte2">
						<?php
						if($pageaff == "ajout" && !isset($ajoutok)){ ?>
							<form id="ajouter" action="" method="POST">
								Titre :	<br/>
								<input type="text" name="titre" placeholder="Le titre" /><br/>
								Rubrique :<br/>
								<?php foreach($affiche_rub AS $affichage) { ?>
									<?=$affichage['lintitule']?><input type="checkbox" name="rubri[]" value="<?=$affichage['id']?>" />								<?php }?><br/>
								Contenu :<br/>
								<textarea name="texte" placeholder="votre texte"></textarea><br/>
								<input name="formajout" type="submit" value="Poster"/>
							</form>
						<?php }elseif($pageaff == "ajout" && isset($ajoutok)){
							echo "$ajoutok";
						}	?>

						<?php
						if($pageaff == "modif" && !isset($modifok)){ ?>
							<form id="modif" action="" method="POST">
								Titre :	<br/>
								<input type="text" name="titre" placeholder="Le titre" value="<?=$affiche_article['letitre']?>" /><br/>
								Autre auteur :<br/>
								<?php foreach($affiche_rub AS $affichage) { ?>
									<?=$affichage['lintitule']?><input type="checkbox" name="rubri[]" value="<?=$affichage['id']?>"  <?php if(in_array($affichage['id'],$compare_test)){echo 'checked="checked"';} ?>/>
								<?php }?><br/>
								Contenu :<br/>
								<textarea name="texte" placeholder="votre texte"><?=$affiche_article['ladesc']?></textarea><br/>
								<input name="formmodif" type="submit" value="Modifier"/>
							</form>
						<?php }elseif($pageaff == "modif" && isset($modifok)){
							echo "$modifok";
						}	?>
						
					</div>
				</div>
			<?php } ?>
			</div>
			<div id="BlockDroite">
			</div>
		</div>
	</div>
</body>
</html>
