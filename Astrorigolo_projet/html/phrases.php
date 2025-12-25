<?php
include("connection.php");
if (isset($_POST['id_signe'])) {
    $id_signe = intval($_POST['id_signe']);

    $phr = $conn->prepare("SELECT Contenu FROM phrases WHERE id_Signe = ?");
    $phr->execute([$id_signe]);
    $phrases = $phr->fetchAll(PDO::FETCH_COLUMN);

    if ($phrases) {
        $phraseAleatoire = $phrases[array_rand($phrases)];
        echo $phraseAleatoire;
    } else {
        echo "Aucune phrase trouvée.";
    }
} else {
    echo "ID du signe manquant.";
}
?>