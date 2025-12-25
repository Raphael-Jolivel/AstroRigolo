<?php session_start(); ?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <title>«AstroRigolo»</title>
    <link rel="stylesheet" href="../style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
        <div class="vertfonce">
            <div id="Taureau" class="page">
                <div class="texte">
                    <?php
                    include("connection.php");
                    $id_signes = 2;
                    $stmt = $conn->prepare("SELECT Traits_Typiques, Description, Titre, Titre2, Resume  FROM signe WHERE id_signes = ?");
                    $stmt->execute([$id_signes]);
                    $signe = $stmt->fetch(PDO::FETCH_ASSOC);
                    echo "<h3><strong>" . $signe['Titre'] . "</strong></h3>";
                    echo $signe['Description'];
                    ?>
                </div>
                <img src="../img/Taureau.webp" alt="Taureau">
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
                <button class="btn-horoscope" data-signe="2">Voir ma prédiction</button>
                <div class="phrase-container"></div>
            </div>
        </div>
        <div class="maron">
            <div id="Vierge" class="page">
                <div class="texte">
                <?php
                    $id_signes = 6;
                    $stmt->execute([$id_signes]);
                    $signe = $stmt->fetch(PDO::FETCH_ASSOC);
                    echo "<h3><strong>" . $signe['Titre'] . "</strong></h3>";
                    echo $signe['Description'];
                    ?>
                </div>
                <img src="../img/Vierge.webp" alt="Vierge">
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
                <button class="btn-horoscope" data-signe="6">Voir ma prédiction</button>
                <div class="phrase-container"></div>
            </div>
        </div>
        <div class="vertfonce">
            <div id="Capricorne" class="page">
                <div class="texte">
                <?php
                    $id_signes = 10;
                    $stmt->execute([$id_signes]);
                    $signe = $stmt->fetch(PDO::FETCH_ASSOC);
                    echo "<h3><strong>" . $signe['Titre'] . "</strong></h3>";
                    echo $signe['Description'];
                    ?>
                </div>
                <img src="../img/Capricorne.webp" alt="Capricorne">
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
                <button class="btn-horoscope" data-signe="10">Voir ma prédiction</button>
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