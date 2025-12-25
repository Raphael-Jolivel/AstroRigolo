<?php session_start(); ?>
<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="UTF-8" />
  <title>«AstroRigolo»</title>
  <link rel="stylesheet" href="../style.css" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <script type="text/javascript" src="../js/script.js"></script>
</head>

<header>
  <div id="conn">
    <?php if (isset($_SESSION['prenom'])): ?>
      <a id="profil" href="profil.php"><?= htmlspecialchars($_SESSION['prenom']); ?></a>
      <a id="cree" href="deconnection.php">Se déconnecter</a>
    <?php else: ?>
      <a id="conne" href="connectioncompte.php">Se connecter</a>
      <a id="cree" href="creationcompte.php">crée un compte</a>
    <?php endif; ?>
  </div>

  <h1>Bienvenue sur AstroRigolo</h1>
  <nav>
    <a id="zone_menu" href="./aceuil.php"><img id="menu" src="../img/home icone.webp" alt="Icône de menu" /></a>
    <a href="./feu.php">Feu</a>
    <a href="./terre.php">Terre</a>
    <a href="./air.php">Air</a>
    <a href="./eau.php">Eau</a>
  </nav>
</header>


<body>
  <section class="space"></section>
  <div id="roue">
    <img id="expication" src="../img/204220_rev_1198.png" usemap="#map1" alt="" />
  </div>
  <map name="map1">
    <area target="" alt="Poissons" title="Poissons" href="eau.php#Poissons"
      coords="232,185,262,186,293,58,244,52,196,61" shape="poly" />
    <area target="" alt="Verseau" title="Verseau" href="air.php#Verseau" coords="264,184,290,198,378,105,340,76,294,58"
      shape="poly" />
    <area target="" alt="Capricorne" title="Capricorne" href="terre.php#Capricorne"
      coords="291,200,306,225,431,188,413,146,381,106" shape="poly" />
    <area target="" alt="Sagittaire" title="Sagittaire" href="feu.php#Sagittaire"
      coords="307,226,309,257,434,287,439,233,432,191" shape="poly" />
    <area target="" alt="Scorpion" title="Scorpion" href="eau.php#Scorpion"
      coords="306,258,293,285,388,375,416,332,433,289" shape="poly" />
    <area target="" alt="Balance" title="Balance" href="air.php#Balance"
      coords="293,286,266,301,303,425,350,406,387,377" shape="poly" />
    <area target="" alt="Vierge" title="Vierge" href="terre.php#Vierge" coords="265,303,234,303,204,429,255,435,301,426"
      shape="poly" />
    <area target="" alt="Lion" title="Lion" href="feu.php#Lion" coords="232,304,205,289,117,383,159,413,202,430"
      shape="poly" />
    <area target="" alt="Cancer" title="Cancer" href="eau.php#Cancer" coords="204,288,189,261,65,297,84,342,116,381"
      shape="poly" />
    <area target="" alt="Gémeaux" title="Gémeaux" href="air.php#Gémeaux" coords="189,261,189,229,64,200,57,246,65,297"
      shape="poly" />
    <area target="" alt="Taureau" title="Taureau" href="terre.php#Taureau"
      coords="189,228,203,200,109,113,81,153,64,199" shape="poly" />
    <area target="" alt="Bélier" title="Bélier" href="feu.php#Bélier" coords="231,187,206,200,110,111,152,78,193,62"
      shape="poly" />
  </map>

  <section class="bleu">
    <h1>Qu'est-ce que l'astrologie ?</h1>
    <p id="Accueil">
      L'astrologie, c'est un peu comme lire les SMS secrets des étoiles. En
      étudiant la position des planètes, du Soleil et de la Lune au moment de
      votre naissance, elle prétend révéler pourquoi vous êtes accro au
      chocolat, pourquoi vous ne supportez pas qu'on touche à vos affaires, ou
      encore pourquoi vous envoyez des messages à votre ex à 2h du matin. Plus
      qu’un simple guide cosmique, c’est un moyen de comprendre vos petites
      bizarreries, d’avoir une excuse pour vos décisions douteuses et, soyons
      honnêtes, de vérifier si vous êtes vraiment compatible avec ce
      mystérieux "Scorpion" sur Tinder. Allez, laissez les étoiles vous
      raconter leur version de votre histoire !
    </p>
  </section>
</body>

<footer>
  <p>©️2024 Raphaël au carré</p>
  <p>Tous droits réservés.</p>
  <a href="https://www.astro.fr/ ">En savoir plus ?</a>
</footer>

</html>