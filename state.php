<?php

require 'vendor/autoload.php';

$template = new \League\Plates\Engine('templates', 'tpl');


echo $template->render('state', [
    'name'=>strtoupper($_GET['name']),
    'id'=>$_GET['id'],
]);
