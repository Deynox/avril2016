-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 13 Avril 2016 à 13:41
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `avril2016`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `letitre` varchar(200) DEFAULT NULL,
  `ladesc` text,
  `ladate` timestamp NULL DEFAULT NULL,
  `util_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_article_util1_idx` (`util_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `letitre`, `ladesc`, `ladate`, `util_id`) VALUES
(1, 'Vie privée: la justice belge fait plier Facebook', 'coup de théâtre  ! La justice belge a ordonné ce lundi à Facebook d’arrêter sous 48 heures de «tracer» les internautes sans leur consentement, sous peine d’une astreinte de 250.000 euros par jour.\r\n\r\nLa décision, prise par le juge des référés du tribunal de première instance de Bruxelles, s’applique aux internautes qui ne sont pas membres du réseau social américain, et qui, contrairement à ceux qui ont ouvert un compte Facebook, n’ont pas autorisé Facebook à exploiter leurs données.\r\n\r\nElle fait suite à une plainte déposée par la Commission de la protection de la vie privée.\r\n\r\n\r\n48 heures\r\nLe juge a «ordonné au réseau social Facebook de cesser de tracer et enregistrer l’utilisation d’internet par des personnes qui surfent depuis la Belgique, dans les 48 heures après la communication de cette décision» aux parties, a indiqué le tribunal dans un communiqué.\r\n\r\n«Si Facebook ignorait cet ordre, il devrait s’acquitter d’une astreinte de 250.000 euros par 24 heures en faveur de la Commission de la protection de la vie privée», ajoute le communiqué.\r\n\r\nLe juge conteste l’utilisation par le réseau social des «cookies», ces micro-fichiers qui conservent les données ou habitudes des internautes et continuent de les pister.\r\n\r\nLes cookies visés\r\n«Facebook place des cookies qui retiennent qu’un internaute a visité une page Facebook, par exemple celle d’un ami, mais aussi qu’il a visité la page d’une chaîne de magasins, d’un parti politique, d’un groupe d’entraide ou d’une autre association», poursuit le communiqué.\r\n\r\n«Ainsi, ils conservent des cookies sur les intérêts éventuels et les préférences des internautes. Ces cookies continuent d’exister pendant deux ans et Facebook peut les consulter à chaque fois qu’un internaute arrive sur une page Facebook ou sur la page d’un site où il peut ‘liker’ ou recommander (le contenu) à d’autres utilisateurs de Facebook», explique encore le tribunal.\r\n\r\n«Le juge des référés a jugé qu’il s’agit de données personnelles, que Facebook peut seulement utiliser si l’internaute donne expressément son consentement, comme le prévoit la loi belge de protection de la vie privée», selon la même source.\r\n\r\n«Si l’internaute a un compte Facebook, on peut partir du principe qu’il a donné son consentement, mais si l’internaute n’a pas lui-même de compte Facebook, alors Facebook doit à l’avenir demander expressément son accord et aussi donner les explications nécessaires», a précisé le tribunal.\r\n\r\nUn précédent\r\nL’appel ne sera pas suspensif car il s’agit d’une procédure en référé et sera appliqué quoi qu’il en soit.\r\n\r\nUn précédent a donc été créé: chaque commission de la vie privée de chaque pays de l’UE pourra saisir son tribunal de première instance et entamer une procédure similaire.', '2016-04-13 07:41:14', 1),
(2, 'Vie privée : Seul Twitter décroche sa 6ème étoiles', 'La question de la vie privée est sensible dans un pays qui a instauré une loi comme le Patriot Act . Voté aux États-Unis il y a dix ans et récemment prolongé jusqu''en 2015 , il permet au gouvernement et aux autorités policières de mettre le nez à leur guise et sans dans -- entre autres -- toutes les archives de communications des citoyens américains. Le FBI, notamment, «peut mettre la main sur des conversations téléphoniques et électroniques de n''importe qui sans décision judiciaire, du moment qu''il estime ces informations pertinentes pour une enquête relative au terrorisme ou à l''espionnage» , rappelle l''Electronic Frontier Foundation (EFF), qui milite pour les libertés sur Internet.\r\n\r\nL''ONG a décidé d''étudier la façon dont les différentes entreprises majeures du web répondent à ces demandes d''informations personnelles émanant des gouvernements du monde entier. Twitter livre-t-il les noms et prénoms des internautes qui se cachent derrière des pseudonymes pour tweeter ? Amazon fournit-il les historiques d''achats de tous ses clients ? Évidemment, ils ne peuvent pas vraiment refuser... Mais ils peuvent au moins se montrer transparents, et informer les internautes qu''ils sont régulièrement approchés par les autorités pour balancer des données privées, par exemple. Ou bien tenter de restreindre le nombre de données quand le gouvernement exige un dossier disproportionné. Ce sont deux des six critères établis par l''EFF pour dresser son bilan :\r\n\r\n- L''entreprise exige-t-elle un mandat avant de livrer les données de ses clients, comme l''exige le quatrième amendement de la Constitution américaine ?\r\n\r\n- L''entreprise prévient-elle ses utilisateurs concernés par une enquête qu''elle a transmis leurs informations personnelles (sauf dans les cas où cela lui est interdit) ?\r\n\r\n- L''entreprise publie-t-elle des rapports de transparence , pour rendre publics leurs chiffres sur la masse de données qu''elles livrent chaque année ?\r\n\r\n- L''entreprise publie-t-elle sur son site des explications sur la façon dont elle répond aux demandes gouvernementales ?\r\n\r\n- L''entreprise défend-elle le droit à la vie privée de ses clients au tribunal ? «Pour gagner une étoile dans ce critère, les entreprises doivent tenir un registre public des interventions montrant qu''elles résistent aux exigences gouvernementales» lorsque celles-ci sont démesurées.\r\n\r\n- L''entreprise défend-elle la vie privée de ses clients auprès du Congrès ? L''EFF note ici l''implication de la société dans la Digital Due Process Coalition , coalition militant pour une modernisation des lois sur les données personnelles en ligne.\r\n\r\nLes 6 critères en tête de colonne, pas très lisibles, sont dans l''ordre indiqué dans notre article juste au-dessus du tableau.\r\n\r\nTableau tronqué pour supprimer les entreprises les moins connues en France. Le document complet est sur le site de l''EFF .\r\n\r\nLe grand gagnant est donc... Twitter (et Sonic.net, un fournisseur d''accès californien), qui gagne six étoiles sur les six critères notés. L''EFF se dit également «heureuse de constater qu plusieurs entreprises ont significativement amélioré leurs pratiques depuis notre évaluation de l''an dernier. Google et Twitter [...] ont gagné deux étoiles, et Microsoft trois. Foursquare, quant à lui, est passé de zéro à quatre étoiles en un an.»', '2016-04-13 07:46:29', 2),
(9, 'Respect de la vie priv&eacute;e', 'out le monde a droit au respect de sa vie priv&eacute;e et familiale, sauf dans les cas et aux conditions fix&eacute;s par la loi. (Constitution belge, article 22 (link is external)).\r\n\r\nLa l&eacute;gislation europ&eacute;enne va encore un peu plus loin: elle consid&egrave;re &eacute;galement le domicile et la correspondance comme priv&eacute;s. Aucune autorit&eacute; publique ne peut d&egrave;s lors s&#039;immiscer dans ce que :\r\n\r\nvous faites dans votre vie priv&eacute;e\r\nvous faites &agrave; votre domicile\r\nvous &eacute;crivez dans vos courriers ou courriels\r\nvous dites au t&eacute;l&eacute;phone\r\nIl existe toutefois quelques exceptions. Les pouvoirs publics peuvent s&#039;immiscer :\r\n\r\nlorsque la s&eacute;curit&eacute; nationale ou publique ou le bien-&ecirc;tre &eacute;conomique du pays sont mis en p&eacute;ril\r\npour pr&eacute;venir des d&eacute;sordres ou des faits d&eacute;lictueux\r\npour prot&eacute;ger la sant&eacute;, les bonnes m&oelig;urs ou les droits et libert&eacute;s d&#039;autrui\r\nMais votre vie priv&eacute;e est-elle r&eacute;ellement priv&eacute;e ?\r\n\r\nL&#039;usage de l&#039;ordinateur et d&#039;internet facilite votre vie au quotidien : gr&acirc;ce &agrave; eux, les entreprises et la fonction publique peuvent vous fournir des services de meilleure qualit&eacute;. Mais cette avanc&eacute;e technologique comporte quelques sacrifices : vous d&eacute;voilez des informations personnelles et vous devez renoncer &agrave; bien des &eacute;gards &agrave; votre vie priv&eacute;e.\r\n\r\nDans une soci&eacute;t&eacute; qui a introduit l&#039;internet, les cartes d&#039;identit&eacute; &eacute;lectroniques, les cartes de paiement, les cam&eacute;ras de surveillance, les GSM et les GPS, il est possible d&#039;enregistrer vos moindres faits et gestes. Ce que vous achetez &agrave; l&#039;aide de votre carte de paiement, l&#039;endroit d&#039;o&ugrave; vous appelez avec votre GSM, d&#039;o&ugrave; vous utilisez votre GPS, les sites web que vous visitez, en bref : tout ce que vous faites, peut &ecirc;tre retrac&eacute;. \r\n\r\nM&ecirc;me si vous &ecirc;tes extr&ecirc;mement prudent quant &agrave; la transmission de vos donn&eacute;es personnelles, il est de plus en plus difficile de savoir qui, pr&eacute;cis&eacute;ment, dispose de celles-ci. Vous ne contr&ocirc;lez plus vos propres donn&eacute;es et le risque d&#039;abus est donc extr&ecirc;mement important.\r\n\r\nPour cette raison, il est sage d&#039;analyser quelques-uns de ces aspects et de r&eacute;fl&eacute;chir &agrave; la mani&egrave;re de mieux prot&eacute;ger votre vie priv&eacute;e ainsi qu&#039;&agrave; vos droits lorsqu&#039;on y porte atteinte.\r\n\r\nPour plus d&#039;information, vous pouvez consulter le site de la Commission de la protection de la vie priv&eacute;e (link is external).', '2016-04-13 10:46:44', 4),
(10, 'La taxe kilom&eacute;trique sur les poussettes !', 'Face aux manifestations des routiers, le gouvernement n&rsquo;a pas c&eacute;d&eacute; et maintenu la fameuse taxe. Aujourd&rsquo;hui, ceux-ci ont d&eacute;cid&eacute; d&rsquo;&eacute;tendre la taxe &agrave; d&rsquo;autres v&eacute;hicules. Et ce sont les poussettes qui sont directement concern&eacute;es.\r\n\r\nEn effet, qu&rsquo;elles aient trois ou quatre roues, les voiturettes pour b&eacute;b&eacute; vont voir leurs promenades factur&eacute;es. Le prix : 0,20&euro; le kilom&egrave;tre !\r\n\r\nNous, &agrave; votre place, on apprendrait vite &agrave; b&eacute;b&eacute; de marcher.', '2016-04-13 11:00:58', 1),
(13, 'A lire ! - Ma vie est priv&eacute; !', 'Notre vie est elle encore priv&eacute;e ? De nos jours de moins en moins, il suffit d&#039;un clic sur internet pour savoir notre pays, encore un clic pour savoir notre ville et encore un autre pour savoir o&ugrave; on habite.\n\nDe plus tous ce que l&#039;on fait sur internet est surveiller et stocker dans des serveurs, ils savent tous ce que l&#039;on a fait depuis au minimum deux ans. Ils en savent plus sur vous que vous m&ecirc;me et ils gardent tous ces informations qui seront peut-&ecirc;tre un jours utiliser.\n\nMais certain site sorte du lot lorsque l&#039;on parle de viol de vie priv&eacute;e, dont Facebook. Bien que plus r&eacute;glementer en Europe il n&#039;en reste pas moins l&#039;un des plus gros site de viol de vie priv&eacute;e. Alors que vous pensez pouvoir poster vos photos de chaton en toute tranquillit&eacute; ou encore montrer votre nouvelle coupe de cheveux voila que Facebook passe et viol votre vie priv&eacute;e en r&eacute;v&eacute;lant vos photos a d&#039;autre que vos amis !\n\nA qui ? A des personnes haut placer, qui passe leurs journ&eacute;e a prendre un malin plaisir a violer vos vies priv&eacute;e, des personnes qui utilise des pr&eacute;textes tels que :&quot;C&#039;est pour la s&eacute;curit&eacute;&quot; ou encore &quot;Nous jetons un simple coup d&#039;oeil&quot;. Un simple coup d&#039;oeil ? Sur certain photo ils feront plus que jeter un simple coup d&#039;oeil. Faite attention a ce que vous poster, ils vous surveillent constamment.\n\nMais ces personnes haut placer ne sont pas les seules loin de l&agrave; ! Il y a pire bien pire...d&#039;autre viole notre vie priv&eacute;e sans cesses et en toute impunit&eacute; ! D&#039;autre vont voir vos photos facebook, vos vid&eacute;os, etc...ils vont m&ecirc;me encore plus loin dans le viol de votre vie priv&eacute;e...ils vont m&ecirc;me jusqu&#039;&agrave; utiliser vos toilettes !\n\n[img]images/alien.jpg', '2016-04-13 11:13:42', 4);

-- --------------------------------------------------------

--
-- Structure de la table `droit`
--

CREATE TABLE IF NOT EXISTS `droit` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `lintitule` varchar(80) DEFAULT NULL,
  `ecrit` tinyint(1) DEFAULT NULL,
  `modifie` tinyint(1) DEFAULT NULL,
  `modifie_tous` tinyint(1) DEFAULT NULL,
  `sup` tinyint(1) DEFAULT NULL,
  `sup_tous` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lintitule_UNIQUE` (`lintitule`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `droit`
--

INSERT INTO `droit` (`id`, `lintitule`, `ecrit`, `modifie`, `modifie_tous`, `sup`, `sup_tous`) VALUES
(1, 'Administrateur', 1, 1, 1, 1, 1),
(2, 'Modérateur', 1, 1, 1, 1, 0),
(3, 'Correcteur', 0, 0, 1, 0, 0),
(4, 'Rédacteur', 1, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `rubrique`
--

CREATE TABLE IF NOT EXISTS `rubrique` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lintitule` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lintitule_UNIQUE` (`lintitule`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `rubrique`
--

INSERT INTO `rubrique` (`id`, `lintitule`) VALUES
(1, 'Facebook'),
(3, 'Internet'),
(2, 'Twitter');

-- --------------------------------------------------------

--
-- Structure de la table `rubrique_has_article`
--

CREATE TABLE IF NOT EXISTS `rubrique_has_article` (
  `rubrique_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  KEY `fk_rubrique_has_article_rubrique1_idx` (`rubrique_id`),
  KEY `fk_rubrique_has_article_article1_idx` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `rubrique_has_article`
--

INSERT INTO `rubrique_has_article` (`rubrique_id`, `article_id`) VALUES
(1, 1),
(3, 1),
(2, 2),
(3, 2),
(3, 9),
(3, 13);

-- --------------------------------------------------------

--
-- Structure de la table `util`
--

CREATE TABLE IF NOT EXISTS `util` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lelogin` varchar(60) DEFAULT NULL,
  `lepass` varchar(45) DEFAULT NULL,
  `lemail` varchar(150) DEFAULT NULL,
  `droit_id` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lelogin_UNIQUE` (`lelogin`),
  KEY `fk_util_droit_idx` (`droit_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `util`
--

INSERT INTO `util` (`id`, `lelogin`, `lepass`, `lemail`, `droit_id`) VALUES
(1, 'Admin', 'admin', 'admin@monsite.com', 1),
(2, 'Modo', 'modo', 'modo@monsite.com', 2),
(3, 'Correcteur', 'correcteur', 'correcteur@monsite.com', 3),
(4, 'ecrivain', 'ecrivain', 'ecrivain@monsite.com', 4);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_article_util1` FOREIGN KEY (`util_id`) REFERENCES `util` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `rubrique_has_article`
--
ALTER TABLE `rubrique_has_article`
  ADD CONSTRAINT `fk_rubrique_has_article_rubrique1` FOREIGN KEY (`rubrique_id`) REFERENCES `rubrique` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rubrique_has_article_article1` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `util`
--
ALTER TABLE `util`
  ADD CONSTRAINT `fk_util_droit` FOREIGN KEY (`droit_id`) REFERENCES `droit` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
