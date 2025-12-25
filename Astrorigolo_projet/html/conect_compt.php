<?php
session_start();
include("connection.php");

if (isset($_POST['mail'], $_POST['mdp'])) {
    $mail = $_POST['mail'];
    $mdp = $_POST['mdp'];

    $stmt = $conn->prepare("SELECT mdp, Nom, Prenom, ID_Signe FROM utilisateur WHERE Mail = ?");
    $stmt->execute([$mail]);
    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($user && password_verify($mdp, $user['mdp'])) {
        $_SESSION['Mail'] = $_POST['mail'];
        $_SESSION['Nom'] = $user['Nom'];
        $_SESSION['prenom'] = $user['Prenom'];
        $_SESSION['id_signe'] = $user['ID_Signe'];
        header("Location: aceuil.php");
        exit;
    } else {
        header("Location: connectioncompte.php?error=1");
        exit;
    }
} else {
    header("Location: connectioncompte.php?error=2");
    exit;
}
?>