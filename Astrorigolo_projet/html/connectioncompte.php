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
        <a id="cree" href="./creationcompte.php">crée un compte</a>
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
            <form action="conect_compt.php" method="post">
                <h2>Connection</h2>
                <?php
                if (isset($_GET['error'])) {
                    if ($_GET['error'] == 1) {
                        echo "Email ou mot de passe incorrect.<br><br>";
                    } elseif ($_GET['error'] == 2) {
                        echo "Veuillez remplir tous les champs.<br><br>";
                    }
                }
                ?>
                <div class="form-group">
                    <label for="mail">Adresse email :</label>
                    <input type="email" id="mail" name="mail" required>
                </div>
                <div class="form-group">
                    <label for="mdp">Mot de passe :</label>
                    <input type="password" id="mdp" name="mdp" required>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn-horoscope">Se connecter</button>
                </div>
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