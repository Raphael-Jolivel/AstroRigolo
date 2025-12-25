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
  <a id="conne" href="./connectioncompte.php">se connecter</a>
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
<div class="space"></div>

<main class="page">
    <div class="form-container">
        <form action="traitement_inscription.php" method="POST">
            <h2>Formulaire d'inscription</h2>
            <div class="form-group">
                <label for="Nom"> Nom :</label>
                <input type="text" id="Nom" name="Nom" required>
            </div>
            <div class="form-group">
                <label for="Prenom">Prénom :</label>
                <input type="text" id="Prenom" name="Prenom" required>
            </div>
            <div class="form-group">
                <label for="Mail">Adresse email :</label>
                <input type="email" id="Mail" name="Mail" required>
            </div>
            <div class="form-group">
                <label for="mdp">Mot de passe :</label>
                <input type="password" id="mdp" name="mdp" required>
            </div>
            <div class="form-group">
                <label for="DDN">Date de naissance :</label>
                <input type="date" id="DDN" name="DDN" required>
            </div>
            <div class="form-group">
                <label for="Newsletter">S'inscrire à la newsletter</label>
                <input type="checkbox" id="Newsletter" name="Newsletter">
            </div>
            <button type="submit" class="btn-horoscope">Envoyer formulaire</button>
        </form>
    </div>
</main>


</body>
<footer>
    <p>©️2024 Raphaël au carré</p>
    <p>Tous droits réservés.</p>
    <a href="https://www.astro.fr/ ">En savoir plus ?</a>
</footer>



</html>