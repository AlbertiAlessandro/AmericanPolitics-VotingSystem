<?php

require 'vendor/autoload.php';

$template = new \League\Plates\Engine('templates', 'html');





echo $template->render('mappa/UnitedStatesOfAmerica', [

]);
