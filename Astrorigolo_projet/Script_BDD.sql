-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 19 mai 2025 à 15:32
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `base_projet_web`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `ID_cat` int NOT NULL,
  `Intitule` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_cat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`ID_cat`, `Intitule`) VALUES
(1, 'Feu'),
(2, 'Terre'),
(3, 'Air'),
(4, 'Eau');

-- --------------------------------------------------------

--
-- Structure de la table `phrases`
--

DROP TABLE IF EXISTS `phrases`;
CREATE TABLE IF NOT EXISTS `phrases` (
  `ID_phrases` int NOT NULL AUTO_INCREMENT,
  `Contenu` text NOT NULL,
  `ID_Signe` int NOT NULL,
  `nom_phrases` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`ID_phrases`),
  KEY `ID_signe` (`ID_Signe`)
) ENGINE=InnoDB AUTO_INCREMENT=1112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `phrases`
--

INSERT INTO `phrases` (`ID_phrases`, `Contenu`, `ID_Signe`, `nom_phrases`) VALUES
(109, 'Vous allez foncer tête baissée dans une nouvelle aventure... pour réaliser que c\'était une file d\'attente.', 1, 'phrase-1-belier'),
(110, 'Une dispute avec votre grille-pain pourrait changer votre vision du monde.', 1, 'phrase-2-belier'),
(111, 'Aujourd\'hui, vous serez tellement motivé que même votre chat se sentira paresseux à côté de vous.', 1, 'phrase-3-belier'),
(112, 'Vous allez tenter de résoudre un problème avec votre énergie débordante, mais finirez par créer trois nouveaux problèmes.', 1, 'phrase-4-belier'),
(113, 'Quelqu’un vous dira de ralentir, et vous répondrez en courant encore plus vite.', 1, 'phrase-5-belier'),
(114, 'Vous serez tellement compétitif aujourd’hui que vous défierez même votre propre ombre.', 1, 'phrase-6-belier'),
(115, 'Vous allez tenter de résoudre un problème en force… même si cela implique d\'essayer d\'ouvrir une porte coulissante en la poussant.', 1, 'phrase-7-belier'),
(116, 'Quelqu’un essayera de vous calmer, mais vous prendrez ça comme un défi personnel pour aller encore plus vite.', 1, 'phrase-8-belier'),
(117, 'Vous serez tellement motivé aujourd’hui que vous envisagerez de courir un marathon… jusqu’à ce que vous réalisiez qu’il faut s’entraîner.', 1, 'phrase-9-belier'),
(118, 'Vous découvrirez une passion cachée pour collectionner des tasses... mais uniquement celles qui sont ébréchées.', 2, 'phrase-1-taureau'),
(119, 'Votre amour pour la nourriture atteindra un nouveau sommet : vous envisagerez de marier un chef étoilé.', 2, 'phrase-2-taureau'),
(120, 'Une sieste imprévue changera le cours de votre journée (et peut-être de votre vie)', 2, 'phrase-3-taureau'),
(121, 'Vous découvrirez un nouveau restaurant et envisagerez immédiatement d’y déménager.', 2, 'phrase-4-taureau'),
(122, 'Une dispute avec un coussin trop dur pourrait devenir l’événement marquant de votre journée.', 2, 'phrase-5-taureau'),
(123, 'Vous défendrez avec passion l’importance des siestes comme si c’était une cause mondiale.', 2, 'phrase-6-taureau'),
(124, 'Vous trouverez une chaise si confortable que vous envisagerez de ne plus jamais la quitter.', 2, 'phrase-7-taureau'),
(125, 'Une odeur de nourriture dans la rue pourrait changer vos plans pour toute la journée.', 2, 'phrase-8-taureau'),
(126, 'Vous refuserez catégoriquement de partager votre dessert, même avec votre meilleur ami.', 2, 'phrase-9-taureau'),
(127, 'Vous aurez une conversation fascinante avec vous-même, mais personne ne saura qui a gagné.', 3, 'phrase-1-gemeaux'),
(128, 'Votre curiosité vous mènera à Googler \"peut-on manger des cactus ?\" Spoiler : oui, mais avec prudence.', 3, 'phrase-2-gemeaux'),
(129, 'Vous changerez d’avis trois fois sur ce que vous voulez manger ce soir.', 3, 'phrase-3-gemeaux'),
(130, 'Vous commencerez une conversation sur la météo et terminerez en discutant de théories du complot intergalactiques.', 3, 'phrase-4-gemeaux'),
(131, 'Aujourd’hui, vous changerez de tenue trois fois avant de sortir… pour finalement rester chez vous.', 3, 'phrase-5-gemeaux'),
(132, 'Votre téléphone aura du mal à suivre votre rythme entre les messages, les appels et les recherches Google improbables.', 3, 'phrase-6-gemeaux'),
(133, 'Vous commencerez à lire un livre… mais finirez par regarder trois vidéos YouTube sur des sujets totalement différents.', 3, 'phrase-7-gemeaux'),
(134, 'Une conversation anodine se transformera en débat passionné sur un sujet que vous venez juste de découvrir.', 3, 'phrase-8-gemeaux'),
(135, 'Vous aurez tellement d’idées aujourd’hui que vous en oublierez la moitié avant de pouvoir les noter.', 3, 'phrase-9-gemeaux'),
(136, 'Vous allez pleurer devant une publicité pour des croquettes pour chiens... même si vous n\'avez pas de chien.', 4, 'phrase-1-cancer'),
(137, 'Quelqu\'un complimentera votre maison, et vous envisagerez sérieusement de leur donner un tour complet, placards inclus.', 4, 'phrase-2-cancer'),
(138, 'Une couverture moelleuse deviendra votre meilleur allié cette semaine.', 4, 'phrase-3-cancer'),
(139, 'Vous retrouverez un objet sentimental que vous aviez perdu… mais il s’avérera appartenir à quelqu’un d’autre.', 4, 'phrase-4-cancer'),
(140, 'Une chanson nostalgique vous fera pleurer… même si c’est le générique d’un dessin animé.', 4, 'phrase-5-cancer'),
(141, 'Vous préparerez un repas pour quelqu’un… et mangerez la moitié avant de le lui offrir.', 4, 'phrase-6-cancer'),
(142, 'Vous serez ému(e) par un film… même si c’est une comédie légère avec des chiens qui dansent.', 4, 'phrase-7-cancer'),
(143, 'Quelqu’un vous demandera comment vous allez, et vous répondrez avec une dissertation émotionnelle complète.', 4, 'phrase-8-cancer'),
(144, 'Vous envisagerez sérieusement d’adopter une plante juste pour avoir quelqu’un d’autre à protéger.', 4, 'phrase-9-cancer'),
(145, 'Vous recevrez enfin l’attention que vous méritez... de la part d’un pigeon curieux.', 5, 'phrase-1-lion'),
(146, 'Votre charisme sera si puissant aujourd\'hui que même les plantes sembleront se tourner vers vous.', 5, 'phrase-2-lion'),
(147, 'Vous envisagerez sérieusement d\'ajouter \"influenceur\" à votre CV après avoir convaincu quelqu\'un d\'acheter un stylo.', 5, 'phrase-3-lion'),
(148, 'Vous passerez devant un miroir et penserez : \"Wow, je devrais être célèbre.\"', 5, 'phrase-4-lion'),
(149, 'Une simple remarque deviendra une opportunité pour vous de raconter votre histoire héroïque préférée.', 5, 'phrase-5-lion'),
(150, 'Aujourd’hui, même les objets inanimés sembleront admirer votre prestance.', 5, 'phrase-6-lion'),
(151, 'Vous aurez l’impression que tout le monde vous regarde aujourd’hui… même si c’est juste parce que vous avez du ketchup sur le visage.', 5, 'phrase-7-lion'),
(152, 'Vous complimenterez quelqu’un, puis réaliserez que c’était surtout pour qu’il/elle vous retourne le compliment.', 5, 'phrase-8-lion'),
(153, 'Une simple remarque deviendra une opportunité pour briller et raconter votre anecdote préférée.', 5, 'phrase-9-lion'),
(154, 'Vous ferez une liste pour organiser vos listes, puis oublierez où vous l’avez rangée.', 6, 'phrase-1-vierge'),
(155, 'Une miette sur le sol pourrait déclencher une crise existentielle.', 6, 'phrase-2-vierge'),
(156, 'Aujourd\'hui, votre perfectionnisme atteindra son apogée : même vos chaussettes seront parfaitement alignées.', 6, 'phrase-3-vierge'),
(157, 'Vous corrigerez une faute dans un e-mail… que personne n’aurait remarqué sauf vous.', 6, 'phrase-4-vierge'),
(158, 'Une pile de documents mal rangée pourrait provoquer une crise existentielle.', 6, 'phrase-5-vierge'),
(159, 'Vous nettoierez quelque chose qui était déjà propre, juste pour être sûr.', 6, 'phrase-6-vierge'),
(160, 'Vous passerez tellement de temps à organiser un tiroir que vous oublierez pourquoi vous l’avez ouvert au départ.', 6, 'phrase-7-vierge'),
(161, 'Une tâche anodine deviendra une mission digne d’un expert en optimisation.', 6, 'phrase-8-vierge'),
(162, 'Vous remarquerez un détail que personne n’a vu et passerez la journée à y penser.', 6, 'phrase-9-vierge'),
(163, 'Vous passerez 30 minutes à choisir entre deux parfums de glace... pour finalement prendre les deux.', 7, 'phrase-1-balance'),
(164, 'Une décision importante sera prise : \"Netflix ou Disney+ ?\" La réponse pourrait changer votre soirée.', 7, 'phrase-2-balance'),
(165, 'Vous serez si charmant(e) aujourd’hui qu’un inconnu pourrait vous offrir un café... ou au moins un sourire.', 7, 'phrase-3-balance'),
(166, 'Vous passerez 15 minutes à choisir un filtre Instagram… pour finalement ne rien poster.', 7, 'phrase-4-balance'),
(167, 'Un compliment inattendu illuminera votre journée, même si c’est \"j’aime vos lacets\".', 7, 'phrase-5-balance'),
(168, 'Vous hésiterez tellement entre deux options que quelqu’un choisira à votre place.', 7, 'phrase-6-balance'),
(169, 'Vous hésiterez tellement entre deux options qu’un serveur ou vendeur prendra la décision pour vous.', 7, 'phrase-7-balance'),
(170, 'Une situation banale deviendra un dilemme philosophique sur l’équilibre parfait dans la vie.', 7, 'phrase-8-balance'),
(171, 'Vous serez tellement charmant(e) aujourd’hui qu’on pourrait vous demander si vous êtes une célébrité.', 7, 'phrase-9-balance'),
(172, 'Votre regard intense fera fuir quelqu’un dans un ascenseur… mais c’était peut-être juste l’odeur de leur sandwich au thon.', 8, 'phrase-1-scorpion'),
(173, 'Vous découvrirez un secret… mais il s\'agit simplement du mot de passe Wi-Fi du voisin.', 8, 'phrase-2-scorpion'),
(174, 'Une vengeance subtile consistera à déplacer légèrement les objets sur le bureau d\'un collègue.', 8, 'phrase-3-scorpion'),
(175, 'Vous découvrirez un secret… mais déciderez de ne jamais le révéler juste pour garder l’aura mystérieuse.', 8, 'phrase-4-scorpion'),
(176, 'Votre intensité naturelle fera croire à quelqu’un que vous complotez… alors que vous réfléchissiez simplement à quoi manger ce soir.', 8, 'phrase-5-scorpion'),
(177, 'Vous envisagerez sérieusement d’apprendre la télépathie pour ne plus avoir à expliquer vos pensées.', 8, 'phrase-6-scorpion'),
(178, 'Votre charisme sera si intense aujourd’hui que même les machines à café sembleront fonctionner mieux en votre présence.', 8, 'phrase-7-scorpion'),
(179, 'Vous découvrirez un mystère… mais déciderez de ne pas le résoudre juste pour garder le suspense vivant.', 8, 'phrase-8-scorpion'),
(180, 'Une personne tentera de lire dans vos pensées, mais se heurtera à un mur d’énigmes.', 8, 'phrase-9-scorpion'),
(181, 'Vous planifierez un voyage épique… jusqu’à ce que vous réalisiez que votre budget ne couvre qu’un trajet en bus local.', 9, 'phrase-1-sagittaire'),
(182, 'Votre optimisme sera contagieux : même votre plante mourante reprendra vie temporairement.', 9, 'phrase-2-sagittaire'),
(183, 'Une blague improvisée pourrait devenir la meilleure chose que vous ayez jamais dite.', 9, 'phrase-3-sagittaire'),
(184, 'Une blague que vous ferez sera tellement drôle que vous rirez plus fort que tout le monde.', 9, 'phrase-4-sagittaire'),
(185, 'Vous planifierez un voyage autour du monde… mais commencerez par explorer le rayon international du supermarché.', 9, 'phrase-5-sagittaire'),
(186, 'Aujourd’hui, vous serez tellement optimiste que même une file d’attente semblera une opportunité d’aventure.', 9, 'phrase-6-sagittaire'),
(187, 'Vous proposerez une sortie spontanée à vos amis, mais finirez par explorer seul(e)… et adorerez ça.', 9, 'phrase-7-sagittaire'),
(188, 'Une blague improvisée sera tellement drôle que vous envisagerez une carrière dans le stand-up.', 9, 'phrase-8-sagittaire'),
(189, 'Votre optimisme sera contagieux : même les nuages gris sembleront plus lumineux autour de vous.', 9, 'phrase-9-sagittaire'),
(190, 'Une réunion ennuyeuse deviendra soudainement intéressante grâce à vos calculs mentaux sur combien coûte chaque minute perdue.', 10, 'phrase-1-capricorne'),
(191, 'Vous envisagerez sérieusement d\'investir dans des actions... avant de réaliser que vous parliez de chaussettes en laine.', 10, 'phrase-2-capricorne'),
(192, 'Votre productivité sera telle que même votre ordinateur demandera une pause.', 10, 'phrase-3-capricorne'),
(193, 'Vous trouverez une nouvelle méthode pour organiser vos tâches… et passerez plus de temps à l’organiser qu’à les faire.', 10, 'phrase-4-capricorne'),
(194, 'Quelqu’un dira \"relax\", et cela deviendra votre plus grand défi de la journée.', 10, 'phrase-5-capricorne'),
(195, 'Vous envisagerez sérieusement d’écrire un livre intitulé \"La Productivité selon moi\".', 10, 'phrase-6-capricorne'),
(196, 'Vous établirez un plan détaillé pour votre journée… et serez frustré(e) si quelqu’un ose le perturber.', 10, 'phrase-7-capricorne'),
(197, 'Une tâche simple deviendra une opportunité pour montrer votre expertise et impressionner tout le monde.', 10, 'phrase-8-capricorne'),
(198, 'Votre sérieux naturel fera croire à quelqu’un que vous êtes en train de planifier quelque chose d’énorme… alors que vous réfléchissez juste au dîner.', 10, 'phrase-9-capricorne'),
(199, 'Vous aurez une idée révolutionnaire… qui impliquera probablement des licornes et des panneaux solaires.', 11, 'phrase-1-verseau'),
(200, 'Quelqu’un dira que vous êtes \"trop original\", et ce sera le plus beau compliment de la journée.', 11, 'phrase-2-verseau'),
(201, 'Une discussion sur les extraterrestres pourrait devenir étrangement sérieuse.', 11, 'phrase-3-verseau'),
(202, 'Une idée farfelue traversera votre esprit… et deviendra rapidement votre nouveau projet favori.', 11, 'phrase-4-verseau'),
(203, 'Quelqu’un dira que vous êtes \"différent\", et vous le prendrez comme la meilleure des éloges.', 11, 'phrase-5-verseau'),
(204, 'Vous tenterez de convaincre vos amis d’essayer une activité étrange, comme faire du yoga avec des chèvres.', 11, 'phrase-6-verseau'),
(205, 'Une idée farfelue traversera votre esprit, et elle deviendra immédiatement votre nouvelle obsession créative.', 11, 'phrase-7-verseau'),
(206, 'Quelqu’un dira \"ça ne marchera jamais\", et cela suffira pour que vous prouviez le contraire avec brio.', 11, 'phrase-8-verseau'),
(207, 'Aujourd’hui, vos amis pourraient avoir du mal à suivre vos pensées… mais ils adoreront quand même essayer.', 11, 'phrase-9-verseau'),
(208, 'Vous rêverez d’une vie sous-marine, mais réaliserez que l’eau froide n’est pas vraiment votre truc.', 12, 'phrase-1-poissons'),
(209, 'Une chanson triste à la radio pourrait provoquer une réflexion profonde… sur pourquoi il n’y a plus de chips dans le placard.', 12, 'phrase-2-poissons'),
(210, 'Aujourd’hui, tout le monde semblera comprendre vos émotions sauf votre cafetière.', 12, 'phrase-3-poissons'),
(211, 'Vous passerez dix minutes à rêvasser avant de réaliser que vous teniez toujours une cuillère vide devant votre bol de céréales.', 12, 'phrase-4-poissons'),
(212, 'Une discussion profonde avec votre animal de compagnie pourrait devenir le point culminant de votre journée.', 12, 'phrase-5-poissons'),
(213, 'Aujourd’hui, tout ce que vous toucherez semblera magique… sauf peut-être vos clés, que vous perdrez encore.', 12, 'phrase-6-poissons'),
(214, 'Vous confondrez rêve et réalité pendant quelques secondes, mais cela rendra votre journée encore plus intéressante.', 12, 'phrase-7-poissons'),
(215, 'Une chanson entendue par hasard déclenchera une réflexion profonde sur le sens de la vie… ou sur ce que vous allez manger ce soir.', 12, 'phrase-8-poissons'),
(216, 'Aujourd’hui, tout semblera poétique, même les embouteillages ou les files d’attente.', 12, 'phrase-9-poissons');

-- --------------------------------------------------------

--
-- Structure de la table `signe`
--

DROP TABLE IF EXISTS `signe`;
CREATE TABLE IF NOT EXISTS `signe` (
  `ID_signes` int NOT NULL,
  `Intitule` varchar(30) NOT NULL,
  `Description` text,
  `Traits_Typiques` text,
  `Date_Debut` date NOT NULL,
  `Date_Fin` date NOT NULL,
  `ID_Categorie` int NOT NULL,
  `Titre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Titre2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Resume` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`ID_signes`),
  KEY `ID_categorie` (`ID_Categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `signe`
--

INSERT INTO `signe` (`ID_signes`, `Intitule`, `Description`, `Traits_Typiques`, `Date_Debut`, `Date_Fin`, `ID_Categorie`, `Titre`, `Titre2`, `Resume`) VALUES
(1, 'Bélier', 'Le Bélier, c’est l’ami qui fonce tête baissée dans toutes les situations… littéralement. Premier signe du zodiaque, il est aussi le premier à se lancer dans des idées folles, comme organiser un road trip à minuit ou défier un escalier en courant (spoiler : l’escalier gagne souvent). Avec son énergie débordante et sa passion, il est impossible de l’ignorer. Mais attention, il a la patience d’un feu rouge à 3h du matin : inexistante. Côté humour, le Bélier adore les blagues directes, parfois un peu trop. Il est du genre à rire aux éclats quand quelqu’un trébuche (désolé, c’est nerveux). Mais ne vous inquiétez pas : s’il vous blesse avec une remarque un peu trop franche, il s’excusera... après avoir fini de rigoler.', 'Fonceur : Il préfère demander pardon que demander la permission.\nCourageux : Rien ne lui fait peur… sauf peut-être l’idée de rester assis trop longtemps.\nNaïf : Il croit encore que \"ça va passer\" quand il force sur un meuble qui ne rentre pas dans l\'ascenseur.\nColérique : Attention si vous lui prenez la dernière part de pizza.', '2025-03-21', '2025-04-19', 1, 'Bélier : Le bulldozer du zodiaque', 'Traits typiques du Bélier :\n', 'Bref, le Bélier est un feu d’artifice ambulant : explosif, lumineux et toujours prêt à mettre l’ambiance (ou à tout casser). Avec lui, on ne s’ennuie jamais… mais mieux vaut avoir une trousse de secours à portée de main !'),
(2, 'Taureau', 'Le Taureau, c’est le roi des plaisirs simples : un bon repas, une sieste bien méritée et un plaid tout doux, voilà son idée du paradis. Mais attention, ne confondez pas son calme apparent avec de la paresse : il est juste en train de réfléchir (ou de planifier son prochain goûter). Et si jamais vous essayez de le faire bouger contre sa volonté, préparez-vous à affronter un mur... ou plutôt une montagne. Le Taureau est aussi flexible qu’un rocher. Côté humour, il adore les blagues qui tournent autour de la nourriture (parce que oui, tout finit toujours par parler de ça avec lui). Il est aussi du genre à rire doucement dans son coin, mais si vous le voyez éclater de rire, c’est que la blague était vraiment bonne… ou qu’il a pensé à un dessert.', 'Gourmand : Si vous cherchez le Taureau dans une fête, il est probablement près du buffet.\nTêtu : Convaincre un Taureau ? Bonne chance. Même les arguments logiques rebondissent sur lui comme sur un trampoline.\nLoyal : Une fois qu’il vous aime, c’est pour la vie… sauf si vous mangez son dernier morceau de gâteau.\nPragmatique : Il ne croit que ce qu’il peut toucher… ou manger.', '2025-04-20', '2025-05-20', 2, 'Taureau : L’épicurien têtu du zodiaque', 'Traits typiques du Taureau :', 'En résumé, le Taureau est une force tranquille avec un cœur en or (et un estomac en béton). Avec lui, la vie est douce, stable et toujours accompagnée d’un bon repas. Mais si vous voulez éviter les conflits, ne touchez pas à sa couverture préférée ou à sa réserve secrète de chocolat !'),
(3, 'Gémeaux', 'Le Gémeaux, c’est ce pote qui commence une histoire sur son week-end et finit par débattre sur l’existence des extraterrestres… tout ça en une seule phrase. Maître incontesté de la conversation (et de la digression), il a toujours quelque chose à dire, même quand personne n’écoute. Avec lui, c’est simple : on ne s’ennuie jamais, mais on peut parfois se demander où il trouve toute cette énergie (et pourquoi il parle si vite). Côté humour, le Gémeaux adore les jeux de mots, les blagues absurdes et les situations cocasses. Il est capable de transformer une panne d’ascenseur en un stand-up improvisé. Mais attention : il peut aussi vous sortir une vanne si subtile que vous ne la comprendrez qu’une heure plus tard.', 'Curieux : Il veut tout savoir sur tout… sauf sur ce qu’il doit faire demain.\nÉnergique : Il est partout à la fois, comme un enfant après trois chocolats chauds.\nIndécis : Il hésitera entre deux options… pour finalement choisir une troisième.\nSociable : Une soirée sans parler à au moins 10 personnes ? Impossible.', '2025-05-21', '2025-06-20', 3, 'Gémeaux : Le moulin à paroles du zodiaque', 'Traits typiques du Gémeaux :', 'En résumé, le Gémeaux est un vent frais qui souffle sur le zodiaque : imprévisible, drôle et toujours prêt à lancer une nouvelle idée (ou trois). Avec lui, la vie est une conversation sans fin… mais attention à ne pas perdre le fil !'),
(4, 'Cancer', 'Le Cancer, c’est le champion olympique des émotions. Il peut pleurer devant une pub pour des mouchoirs, rire aux éclats en regardant un dessin animé, puis s’énerver parce que quelqu’un a oublié de lui dire bonjour… tout ça en moins de 10 minutes. Mais ne vous laissez pas tromper par sa carapace : sous ses airs de petit crabe sensible se cache un cœur immense, prêt à tout pour protéger ceux qu’il aime (et son plaid préféré). Côté humour, le Cancer adore les blagues douces et un peu nostalgiques. Mais attention : si vous faites une blague sur lui, il rira peut-être… puis y repensera pendant trois jours en se demandant si vous étiez sérieux.', 'Émotif : Il ressent tout à 200 %, même quand il s’agit d’un film où le chien retrouve son maître.\nProtecteur : Il est toujours là pour ses proches… avec des cookies et des câlins à la clé.\nCasanier : Sa maison est son royaume, et son canapé est son trône.\nNostalgique : Il garde encore les tickets de cinéma de son premier rendez-vous… même si c’était en 2005.\n', '2025-06-21', '2025-07-22', 4, 'Cancer : L’émotif du zodiaque (et fier de l’être)', 'Traits typiques du Cancer :\n\n', 'En résumé, le Cancer est une boule d’amour sur pattes (ou plutôt sur pinces). Avec lui, préparez-vous à des soirées cocooning, des discussions profondes et peut-être quelques larmes… mais toujours accompagnées d’un bon chocolat chaud et d’une couverture bien moelleuse !'),
(5, 'Lion', 'Le Lion, c’est le Beyoncé du zodiaque : toujours prêt à briller, à captiver l’attention et à recevoir des applaudissements… même quand il raconte comment il a brûlé ses pâtes. Charismatique et flamboyant, il entre dans une pièce comme s’il montait sur scène, et il est convaincu que tout le monde est là pour lui (spoiler : ce n’est pas toujours vrai, mais chut, ne brisez pas son rêve). Avec lui, la vie est un spectacle permanent, et devinez qui est la vedette ? Exactement. Côté humour, le Lion adore les blagues où il peut être au centre de l’attention (même s’il est la cible de la blague). Il rit fort, aime qu’on rie avec lui (ou de lui), et si vous l’ignorez… préparez-vous à un drame digne d’un Oscar.', 'Charismatique : Il attire les regards partout où il va, même au supermarché.\nGénéreux : Il vous offrira tout… sauf la dernière part de gâteau.\nDramatique : Une simple éraflure sur sa voiture ? \"C’est une tragédie grecque !\"\nConfiant : Même quand il a tort, il a raison.', '2025-07-23', '2025-08-22', 1, 'Lion : La star du zodiaque (et il le sait)', 'Traits typiques du Lion :\n', 'En résumé, le Lion est un soleil ambulant : chaleureux, lumineux et parfois un peu écrasant. Avec lui, attendez-vous à des éclats de rire, des moments mémorables et beaucoup (beaucoup) de selfies. Mais attention : oubliez de complimenter sa nouvelle coupe de cheveux, et vous pourriez déclencher une éclipse émotionnelle !'),
(6, 'Vierge', 'La Vierge, c’est ce pote qui repasse ses draps, range ses stylos par couleur et fait des listes… pour organiser ses autres listes. Obsédé(e) par l’ordre et les détails, il/elle peut repérer une miette sur votre tapis à trois mètres de distance (et se battre intérieurement pour ne pas la ramasser). Mais sous cette façade ultra-organisée se cache un cœur en or, toujours prêt à aider… à condition que vous suiviez ses instructions à la lettre. Côté humour, la Vierge adore les blagues intelligentes et bien construites. Par contre, évitez les blagues trop \"improvisées\" : elle risque de passer plus de temps à corriger votre punchline qu’à rire.', 'Organisé(e) : Son placard ressemble à une publicité pour IKEA.\nPragmatique : Il/elle a toujours une solution… même si vous n’avez pas encore posé la question.\nCritique : Si quelque chose cloche, vous pouvez être sûr(e) qu’il/elle le remarquera (et vous le dira).\nDiscret(ète) : Pas besoin d’être au centre de l’attention, sauf si c’est pour montrer son nouveau classeur parfaitement étiqueté.', '2025-08-23', '2025-09-22', 2, 'Vierge : Le perfectionniste du zodiaque (et fier de l’être)', 'Traits typiques de la Vierge :\n', 'En résumé, la Vierge est un(e) perfectionniste adorable avec un radar intégré pour détecter le chaos. Avec elle/lui, tout est sous contrôle (ou presque), et même si elle/il peut parfois vous donner l’impression d’être dans un audit permanent, c’est toujours avec les meilleures intentions… et souvent avec un soupçon d’humour pince-sans-rire !'),
(7, 'Balance', 'La Balance, c’est ce pote qui passe 20 minutes à choisir entre deux parfums de glace… pour finalement prendre un sorbet. Maître de l’hésitation, il/elle veut toujours que tout soit parfait et équilibré, ce qui peut transformer une simple question (\"Pizza ou sushi ?\") en débat philosophique. Mais grâce à son charme naturel et son sourire irrésistible, on lui pardonne tout (même ses retards causés par une crise existentielle devant son dressing). Côté humour, la Balance adore les blagues légères et élégantes. Elle rit facilement, surtout si la blague est bien tournée… mais attention : une blague trop \"brute\" pourrait la faire grimacer (avec style, évidemment).', 'Indécis(e) : Choisir entre deux options est pour elle/lui un défi digne d’une épreuve olympique.\nSociable : Elle/il adore être entouré(e) de gens… mais seulement si tout le monde s’entend bien.\nDiplomate : Elle/il pourrait négocier la paix entre deux chats qui se battent pour un coussin.\nEsthète : Tout doit être beau, harmonieux… et Instagrammable', '2025-09-23', '2025-10-22', 3, 'Balance : L\'indécis(e) charmant(e) du zodiaque', 'Traits typiques de la Balance :\n', 'En résumé, la Balance est un(e) artiste de la vie, toujours à la recherche de l’équilibre parfait (et du filtre parfait pour ses photos). Avec elle/lui, attendez-vous à des discussions passionnées sur des sujets improbables et à des moments remplis de charme et d’élégance. Mais si vous êtes pressé(e), mieux vaut choisir pour elle/lui… sinon vous risquez d’attendre longtemps !'),
(8, 'Scorpion', 'Le Scorpion, c’est ce pote qui vous fixe avec un regard perçant et vous donne l’impression qu’il connaît tous vos secrets… même ceux que vous n’avez jamais avoués. Maître du mystère et de l’intensité, il peut transformer une simple discussion sur la météo en une analyse profonde de l’existence humaine. Avec lui, tout est passionné : il aime fort, déteste fort, et mange même ses chips avec une intensité dramatique. Côté humour, le Scorpion adore les blagues subtiles et sarcastiques. Mais attention : si vous essayez de le taquiner, soyez prêt(e) à recevoir une réplique cinglante qui vous fera réfléchir pendant trois jours. Oui, il est comme ça.', 'Mystérieux : Il/elle sait tout sur vous, mais vous ne savez toujours pas son deuxième prénom.\nPassionné(e) : Quand il/elle aime quelque chose (ou quelqu’un), c’est à 300 %.\nVengeur(se) : Si vous mangez son dernier morceau de chocolat, préparez-vous à des représailles… subtiles mais efficaces.\nLoyal : Une fois dans son cercle restreint, il/elle est là pour vous à vie (mais ne trahissez jamais sa confiance).', '2025-10-23', '2025-11-21', 4, 'Scorpion : L’intense mystérieux du zodiaque\n', 'Traits typiques du Scorpion :\n', 'En résumé, le Scorpion est un mélange explosif de mystère, d’émotion et de sarcasme bien dosé. Avec lui/elle, la vie est un roman noir captivant avec des rebondissements inattendus. Mais n’oubliez pas : si vous jouez avec un Scorpion, il/elle a toujours le dernier mot… et souvent le dernier regard intense !\n\n'),
(9, 'Sagittaire', 'Le Sagittaire, c’est ce pote qui propose un road trip à l’autre bout du pays… alors qu’il n’a même pas fait le plein d’essence. Toujours prêt(e) à explorer, découvrir et rire, il/elle est une véritable boule d’énergie et d’enthousiasme. Mais attention : il/elle a aussi la délicatesse d’un éléphant dans un magasin de porcelaine. Si vous voulez une vérité brutale, demandez à un Sagittaire : il/elle vous la servira avec un grand sourire. Côté humour, le Sagittaire adore les blagues absurdes et les situations improbables. Il/elle est souvent le premier à rire, même si la blague est sur lui/elle. Et si vous partez dans un fou rire ensemble, préparez-vous à ne plus pouvoir respirer.\n\n', 'Aventurier(e) : Il/elle rêve de voyager dans le monde entier… mais oublie souvent où il/elle a mis son passeport.\nOptimiste : Même sous une pluie battante, il/elle dira que \"ça fait partie de l’aventure\".\nFranc(he) : Il/elle dira toujours ce qu’il pense… même si ça pique un peu.\nIndépendant(e) : Il/elle adore être entouré(e), mais a besoin de sa liberté comme d’air.', '2025-11-22', '2025-12-21', 1, 'Sagittaire: L’aventurier(e) optimiste du zodiaque', 'Traits typiques du Sagittaire :\n', 'En résumé, le Sagittaire est une tornade joyeuse qui rend chaque moment plus excitant (et souvent imprévisible). Avec lui/elle, attendez-vous à des aventures spontanées, des fous rires incontrôlables et des vérités honnêtes… parfois un peu trop honnêtes. Mais au fond, c’est ce qui fait tout son charme !Optimiste : Même sous une pluie battante, il/elle dira que \"ça fait partie de l’aventure\".\nFranc(he) : Il/elle dira toujours ce qu’il pense… même si ça pique un peu.\nIndépendant(e) : Il/elle adore être entouré(e), mais a besoin de sa liberté comme d’air.'),
(10, 'Capricorne', 'Le Capricorne, c’est ce pote qui a un plan pour tout : sa carrière, ses vacances, et même comment plier ses chaussettes de manière optimale. Sérieux et ambitieux, il/elle grimpe la montagne de la vie comme une chèvre agile… mais avec un attaché-case. Toujours concentré(e) sur ses objectifs, le Capricorne a parfois du mal à se détendre, sauf si \"se détendre\" implique de lire un livre sur la gestion du temps. Côté humour, le Capricorne est un maître de l’humour sec et pince-sans-rire. Il/elle peut balancer une réplique hilarante avec un visage si sérieux que vous ne savez pas tout de suite si c’était une blague ou une critique subtile (spoiler : c’était probablement les deux).\nTraits typiques du Capricorne :', 'Ambitieux(se) : Même enfant, il/elle jouait au Monopoly comme si sa vie en dépendait.\nResponsable : Si vous cherchez quelqu’un pour organiser une soirée ou gérer une crise, appelez un Capricorne\nTêtu(e) : Convaincre un Capricorne ? Bonne chance. Même les murs sont plus flexibles.\nPragmatique : Les rêves, c’est bien beau, mais il faut aussi payer les factures.', '2025-12-22', '2026-01-19', 2, 'Capricorne : Le PDG du zodiaque (même en pyjama)', 'Traits typiques du Capricorne :\n\n', 'En résumé, le Capricorne est une force tranquille avec une détermination à toute épreuve. Avec lui/elle, la vie est bien organisée,productive et pleine d’humour subtil. Mais attention : ne touchez pas à son agenda ou à son plan quinquennal… sauf si vous voulez déclencher une petite révolution !'),
(11, 'Verseau', 'Le Verseau, c’est ce pote qui semble toujours vivre dans une dimension parallèle. Visionnaire, original(e) et un peu excentrique, il/elle est capable de débattre sur des sujets comme \"Comment les licornes pourraient sauver le climat\" tout en portant des chaussettes dépareillées (par choix, évidemment). Avec lui/elle, attendez-vous à des idées révolutionnaires… mais ne comptez pas trop sur lui/elle pour arriver à l’heure. Côté humour, le Verseau adore les blagues absurdes et les situations complètement décalées. Il/elle rit de tout ce qui sort de l’ordinaire, surtout si ça implique des concepts futuristes ou des théories farfelues. Et si vous ne comprenez pas sa blague ? Pas grave, il/elle vous expliquera avec passion (et un PowerPoint si nécessaire).', 'Original(e) : Il/elle a probablement inventé un mot ou une danse que personne ne comprend encore.\nVisionnaire : Toujours 10 ans en avance… sauf quand il s’agit de payer ses factures.\nIndépendant(e) : Il/elle adore être entouré(e), mais uniquement si on le/la laisse faire ce qu’il/elle veut.\nHumaniste : Toujours prêt(e) à sauver le monde… ou au moins à signer une pétition en ligne.', '2026-01-20', '2026-02-18', 3, 'Verseau : L’extraterrestre génial du zodiaque', 'Traits typiques du Verseau :\n', 'En résumé, le Verseau est un esprit libre et créatif qui rend la vie plus intéressante (et parfois un peu confuse). Avec lui/elle, attendez-vous à des conversations fascinantes, des idées folles et beaucoup d’imprévu. Mais surtout, ne soyez pas surpris(e) si un jour il/elle décide de construire une machine pour parler aux plantes… parce que pourquoi pas ?'),
(12, 'Poissons', 'Le Poissons, c’est ce pote qui peut passer 30 minutes à fixer un coucher de soleil en murmurant : \"C’est tellement beau…\" tout en oubliant qu’il a laissé son café sur le feu. Émotif(ve), créatif(ve) et toujours un peu dans la lune (ou dans l’eau, plutôt), il/elle vit dans un monde parallèle où tout est poésie, magie et licornes invisibles. Mais ne vous y trompez pas : sous ses airs de doux rêveur(se) se cache une âme ultra-empathique prête à vous écouter pendant des heures… même si vous parlez de votre collection de timbres. Côté humour, le Poissons adore les blagues douces et un peu absurdes, surtout si elles ont une touche d’imaginaire. Il/elle est aussi capable de rire de lui/elle-même, comme lorsqu’il/elle oublie pourquoi il/elle est entré(e) dans une pièce (spoiler : c’était probablement pour rêvasser). ', 'Rêveur(se) : Il/elle a toujours une idée brillante… mais oublie souvent de la noter.\nÉmotif(ve) : Peut pleurer devant un dessin animé ou en écoutant une chanson triste à la radio.\nCréatif(ve) : Toujours en train d’écrire, dessiner ou imaginer des scénarios improbables.\nEmpathique : Si vous êtes triste, il/elle est triste aussi… et vous proposera un câlin (ou deux).', '2026-02-19', '2026-03-20', 4, 'Poissons : Le rêveur aquatique du zodiaque\n', 'Traits typiques du Poissons :', 'En résumé, le Poissons est une âme douce et imaginative qui transforme la vie en conte de fées (parfois un peu chaotique). Avec lui/elle, attendez-vous à des moments pleins d’émotions, des idées farfelues et peut-être quelques oublis… mais toujours avec beaucoup d’amour et de magie !');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `ID_utilisateur` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Mail` varchar(100) NOT NULL,
  `DDN` date NOT NULL,
  `Newsletter` tinyint(1) DEFAULT '0',
  `ID_Signe` int DEFAULT NULL,
  `mdp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`ID_utilisateur`),
  UNIQUE KEY `Mail` (`Mail`),
  KEY `ID_signes` (`ID_Signe`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`ID_utilisateur`, `Nom`, `Prenom`, `Mail`, `DDN`, `Newsletter`, `ID_Signe`, `mdp`) VALUES
(1, 'Raphael', 'JOLIVEL', 'jolivelraphael@gmail.com', '2006-07-09', 1, 4, '$2y$10$S7OXmq.5t0uN5zkvenWhEu2fcga2nxbb21YFPR/uPVOEqcadEG9jm'),
(2, 'Frin', 'Raphaël', 'raphaelfrin@gmail.com', '2004-02-04', 0, 11, '$2y$10$PxV5yvMcgE1chqM6zgXdTeMI7oiB2XQbJofLJJVgZ.HsW6MId.saW'),
(3, 'Ciao', 'Kombucha', 'boisson@gmail.com', '2005-05-12', 0, 2, '$2y$10$RtMb8jGWMYzrfuY.ZXzwK.DCZV2BgidmcourJXen.Sdj6xQ4MpxFy');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `phrases`
--
ALTER TABLE `phrases`
  ADD CONSTRAINT `ID_signe` FOREIGN KEY (`ID_Signe`) REFERENCES `signe` (`ID_signes`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `signe`
--
ALTER TABLE `signe`
  ADD CONSTRAINT `ID_categorie` FOREIGN KEY (`ID_Categorie`) REFERENCES `categorie` (`ID_cat`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `ID_signes` FOREIGN KEY (`ID_Signe`) REFERENCES `signe` (`ID_signes`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
