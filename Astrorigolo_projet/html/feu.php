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
  <section>
    <div class="rouge">
      <div id="Belier" class="page">
        <div class="texte">
          <?php
          include("connection.php");
          $id_signes = 1;
          $stmt = $conn->prepare("SELECT Traits_Typiques, Description, Titre, Titre2, Resume  FROM signe WHERE id_signes = ?");
          $stmt->execute([$id_signes]);
          $signe = $stmt->fetch(PDO::FETCH_ASSOC);
          echo "<h3><strong>" . $signe['Titre'] . "</strong></h3>";
          echo $signe['Description'];
          ?>
        </div>
        <img src="../img/Bélier.webp" alt="Bélier" />
      </div>
      <div class="texte">
        <?php
        echo "<strong>" . $signe['Titre2'] . "</strong>";
        echo '<ul>';
        $traits = $signe['Traits_Typiques'];
        $traits = preg_split('/\r\n|\r|\n/', $traits);
        foreach ($traits as $trait) {
          if (!empty($trait)) {
            echo "<li>$trait</li>";
          }
        }
        echo "</ul>";
        echo $signe['Resume'];
        ?>
        <br><br>
        <button class="btn-horoscope" data-signe="1">Voir ma prédiction</button>
        <div class="phrase-container"></div>

      </div>
    </div>
    <div class="jaune">
      <div id="Lion" class="page">
        <div class="texte">
          <?php
          $id_signes = 5;
          $stmt->execute([$id_signes]);
          $signe = $stmt->fetch(PDO::FETCH_ASSOC);
          echo "<h3><strong>" . $signe['Titre'] . "</strong></h3>";
          echo $signe['Description'];
          ?>
        </div>
        <img src="../img/Lion.webp" alt="Lion" />
      </div>
      <div class="texte">
        <?php
        echo "<strong>" . $signe['Titre2'] . "</strong>";
        echo '<ul>';
        $traits = $signe['Traits_Typiques'];
        $traits = preg_split('/\r\n|\r|\n/', $traits);
        foreach ($traits as $trait) {
          if (!empty($trait)) {
            echo "<li>$trait</li>";
          }
        }
        echo "</ul>";
        echo $signe['Resume'];
        ?>
        <br><br>
        <button class="btn-horoscope" data-signe="5">Voir ma prédiction</button>
        <div class="phrase-container"></div>
      </div>
    </div>
    <div class="rouge">
      <div id="Sagittaire" class="page">
        <div class="texte">
          <?php
          $id_signes = 9;
          $stmt->execute([$id_signes]);
          $signe = $stmt->fetch(PDO::FETCH_ASSOC);
          echo "<h3><strong>" . $signe['Titre'] . "</strong></h3>";
          echo $signe['Description'];
          ?>
        </div>
        <img src="../img/Sagittaire.webp" alt="Sagittaire" />
      </div>
      <div class="texte">
        <?php
        echo "<strong>" . $signe['Titre2'] . "</strong>";
        echo '<ul>';
        $traits = $signe['Traits_Typiques'];
        $traits = preg_split('/\r\n|\r|\n/', $traits);
        foreach ($traits as $trait) {
          if (!empty($trait)) {
            echo "<li>$trait</li>";
          }
        }
        echo "</ul>";
        echo $signe['Resume'];
        ?>
        <br><br>
        <button class="btn-horoscope" data-signe="9">Voir ma prédiction</button>
        <div class="phrase-container"></div>
      </div>
    </div>
  </section>
</body>

<footer>
  <p>©️2024 Raphaël au carré</p>
  <p>Tous droits réservés.</p>
  <a href="https://www.astro.fr/ ">En savoir plus ?</a>
</footer>

</html>