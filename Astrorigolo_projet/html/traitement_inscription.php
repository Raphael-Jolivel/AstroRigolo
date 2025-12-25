<?php
include 'connection.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $nom = isset($_POST['Nom']) ? trim($_POST['Nom']) : '';
    $prenom = isset($_POST['Prenom']) ? trim($_POST['Prenom']) : '';
    $mail = isset($_POST['Mail']) ? trim($_POST['Mail']) : '';
    $ddn = isset($_POST['DDN']) ? $_POST['DDN'] : '';
    $newsletter = isset($_POST['Newsletter']) ? 1 : 0;
    $mdp = isset($_POST['mdp']) ? password_hash($_POST['mdp'], PASSWORD_DEFAULT) : '';

    if ($nom && $prenom && $mail && $ddn && $mdp) {
        $sql = "SELECT ID_signes, Date_Debut, Date_Fin FROM signe";
        $signes = $conn->query($sql)->fetchAll(PDO::FETCH_ASSOC);

        $mois_jour = date('m-d', strtotime($ddn));
        $id_signe = null;
        foreach ($signes as $signe) {
            $debut = date('m-d', strtotime($signe['Date_Debut']));
            $fin = date('m-d', strtotime($signe['Date_Fin']));
            if ($debut <= $fin) {
                if ($mois_jour >= $debut && $mois_jour <= $fin) {
                    $id_signe = $signe['ID_signes'];
                    break;
                }
            } else {
                if ($mois_jour >= $debut || $mois_jour <= $fin) {
                    $id_signe = $signe['ID_signes'];
                    break;
                }
            }
        }

        $sql = "INSERT INTO utilisateur (Nom, Prenom, Mail, DDN, Newsletter, ID_Signe, mdp)
                VALUES (?, ?, ?, ?, ?, ?, ?)";
        $stmt = $conn->prepare($sql);
        $stmt->execute([$nom, $prenom, $mail, $ddn, $newsletter, $id_signe, $mdp]);

        header('Location: inscription_succes.php');
        exit;
    } else {
        echo "Veuillez remplir tous les champs obligatoires.";
    }
} else {
    echo "Formulaire non soumis.";
}
?>
