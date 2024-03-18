<?php

require 'vendor/autoload.php';

$template = new \League\Plates\Engine('templates', 'tpl');

$url = 'https://freetestapi.com/api/v1/us-states?search='.$_GET['name'];
$url=str_replace(' ','%20',$url);
$ch = curl_init($url);


curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); 

$response = curl_exec($ch);

curl_close($ch);

$map = json_decode($response, true);


echo $template->render('state', [
    'name'=>strtoupper($_GET['name']),
    'id'=>$_GET['id'],
    'state_information'=> $map[0]
]);
