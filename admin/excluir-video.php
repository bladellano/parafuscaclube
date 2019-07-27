<?php 

require_once "models/Videos.php";

$objVideo = new Videos();

echo $objVideo->excluirVideo($_POST['id']);


