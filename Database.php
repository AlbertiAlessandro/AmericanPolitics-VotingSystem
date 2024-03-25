<?php

require 'vendor/autoload.php';
require_once 'conf/config.php';
use Model\AmericaRepository;
$template = new \League\Plates\Engine('templates', 'tpl');
$candidato='';
$stato='';
$anno='';

if( isset($_GET['Anno'])){

    $candidato = $_GET['Candidato'];
    $stato = $_GET['Stato'];
    $anno=$_GET['Anno'];
    if($anno!='') {
        if ($candidato != '') {
            if ($stato != '') {
                $result=Model\AmericaRepository::query7($candidato,$stato,$anno);
            }
            else{
                $result=\Model\AmericaRepository::query4($anno,$candidato);
            }
        }
        else if($stato!=''){
            $result=Model\AmericaRepository::query5($anno,$stato);
        }else{
            $result = \Model\AmericaRepository::query1($anno);
        }
    }
    else if($candidato!=''){
        if($stato!=''){
            $result=\Model\AmericaRepository::query6($candidato,$stato);
        }
        else{

        $result=\Model\AmericaRepository::query2($candidato);
        }
    }
    else if($stato!=''){
        $result=\Model\AmericaRepository::query3($stato);
    }
    else{
        $result=\Model\AmericaRepository::query0();
    }
// Controlla se ci sono risultati
    if (!empty($result)) {
        foreach ($result as $row) {
            // Stampa i valori delle colonne all'interno di una riga della tabella
            echo "<tr><td>" . $row["year"] . "</td><td>" . $row["name"] . "</td>"."<td>". $row["stato"]. "</td>"."<td>". $row["vote"]. "</td></tr>";
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