<?php

echo '<hr>';

$id = $_REQUEST["id"];

require_once "admin/models/Fotos.php";

$objFotos = new Fotos();

echo '<div class="container">
    <div class="row"><a name="galeria"></a>';

foreach ($objFotos->listarFotos($id) as $value) {
 echo '<img class="galeria-fotos" src="admin/' . $value['urlFoto'] . '">';
}

echo '</div>
    </div>';
