<?php

require 'vendor/autoload.php';

$template = new \League\Plates\Engine('templates', 'tpl');
$Candidato='';
$Stato='';
$Anno='';

if( isset($_GET['Anno'])){

$Candidato = $_GET['Candidato'];
$Stato = $_GET['Stato'];
$Anno=$_GET['Anno'];



$result = array(
    array("colonna1" => $Candidato, "colonna2" => "valore1B"),
    array("colonna1" => $Stato, "colonna2" => "valore2B"),
    array("colonna1" => $Anno, "colonna2" => "valore3B")
);

// Controlla se ci sono risultati
if (!empty($result)) {
    foreach ($result as $row) {
        // Stampa i valori delle colonne all'interno di una riga della tabella
        echo "<tr><td>" . $row["colonna1"] . "</td><td>" . $row["colonna2"] . "</td></tr>";
    }
    echo "</table>";
} else {
    echo "Nessun risultato trovato.";
}
}
else{
echo $template->render('Database', [

]);
}
