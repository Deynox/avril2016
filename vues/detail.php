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
			<?php if(isset($vide)){
				echo "<h2>$vide</h2>";
			}else{
				?>
				<div id="article2">
					<div class="titre"><?=$affiche_articles['letitre']?></div><br/>
					<div class="texte">
						<span class="soustitre">auteur : </span><?=$affiche_articles['lelogin']?></a><br/>
						<span class="soustitre">rubrique : </span><?=$affiche_articles['rub']?></a><br/>
					</div>
					<div class="texte2">
					<span class="soustitre">Description :</span><br/>
					<?php
						$texte = explode("[img]",$affiche_articles['ladesc']);
						echo nl2br($texte[0]);
						$img = explode("[img]",$affiche_articles['ladesc']);
						if(isset($img[1])){ ?>
							<img src="<?=$img[1]?>" style="max-width:670px;"/>
						<?php }	?>
					<br/><br/>
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
