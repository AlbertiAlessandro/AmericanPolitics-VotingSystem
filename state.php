<?php

require 'vendor/autoload.php';

$template = new \League\Plates\Engine('templates', 'tpl');

// URL dell'API a cui fare la richiesta
$url = 'https://api.example.com/data';

// Inizializza una nuova risorsa cURL
$ch = curl_init($url);

// Imposta le opzioni per la richiesta cURL
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); // Imposta CURLOPT_RETURNTRANSFER su true per ottenere il risultato come stringa anziché stamparlo direttamente
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); // Disabilita la verifica SSL. Attenzione: da evitare in produzione senza una valida configurazione di sicurezza.
// Altre opzioni possono includere l'impostazione di header aggiuntivi, autenticazione, ecc.

// Esegui la richiesta cURL e ottieni il risultato
$response = curl_exec($ch);

// Controlla se c'è stato un errore durante la richiesta
if ($response === false) {
    echo 'Errore cURL: ' . curl_error($ch);
} else {
    // Gestisci la risposta dell'API (es. stampa o elabora i dati)
    echo $response;
}

// Chiudi la risorsa cURL
curl_close($ch);


echo $template->render('state', [
    'name'=>strtoupper($_GET['name']),
    'id'=>$_GET['id'],
]);
