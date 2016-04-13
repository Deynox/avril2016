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
			<div id="anti-clic" style="<?=$display?>"></div>
			<div id="confir_del" style="<?=$display?>">
				Voulez-vous vraiment supprimer cette article ?<br/>
				<a href="?delete=<?=$articleid?>&delconf=1">Oui</a> / <a href="./">Non</a>
			</div>
			<div id="BlockGauche">
				<div id="article2">
					<div class="texte2">
						<span class="soustitre"><a href="?new=1">Ajouter un article.</a></span></br>
						<br/>
						<?php if($nb == 0){
							echo "<h2>Pas encore d'article</h2>";
						}else{
						?>
						<table style="border:1px solid black;width:670px;">
							<tr>
								<td style="width:150px;">Auteur</td>
								<td style="width:390px;">Titre</td>
								<td style="width:60px;">Editer</td>
								<td style="width:70px;">Suprimer</td>
							</tr>

						<?php
							foreach($affiche_articles AS $aff){ ?>
							<tr>
								<td><?= $aff['lelogin'] ?></td>
								<td><?= $aff['letitre'] ?></td>
								<td><?php if($_SESSION['modifall'] == 1){ ?>
										<a href="?edit=<?=$aff['id'] ?>">o</a>
								<?php	}elseif($_SESSION['modif'] == 1 && $_SESSION['userid'] == $aff['util_id']){?>
										<a href="?edit=<?=$aff['id'] ?>">o</a>
									<?php	}
									?></td>
									<td><?php if($_SESSION['deleteall'] == 1){ ?>
											<a href="?delete=<?=$aff['id'] ?>">x</a>
										<?php }elseif($_SESSION['delete'] == 1 && $_SESSION['userid'] == $aff['util_id']){ ?>
											<a href="?delete=<?=$aff['id'] ?>">x</a>
										<?php }
										?>
									</td>
								</tr>
						<?php } }?>
						</table>
					</div>
				</div>
			</div>
			<div id="BlockDroite">
			</div>
		</div>
	</div>
</body>
</html>
