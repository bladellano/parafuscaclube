 <style>
    a[data-id] {
        font-family: 'Righteous', cursive;
        background-color: #000;
        color: #fff;
        font-size: 16px;
        padding: 6px;
        display: inline-block;
        margin-bottom: 4px;
        margin-top: 6px;
        width: 100%;
        text-transform: uppercase;
        -webkit-border-radius: 8px;
        border-radius: 8px;
        text-align: center;
        -webkit-transition: 0.5s;
        -moz-transition: 0.5s;
        -ms-transition: 0.5s;
        -o-transition: 0.5s;
        transition: 0.5s;
        text-decoration: none;
    }

    a[data-id]:hover {
        color: #888;
        text-decoration: none;
    }

    .galeria-fotos {
        width: 260px;
        height: 200px;
        float: left;
        border: 3px solid #e2ebee;
        margin: 10px;
    }

    @media screen and (max-width: 768px) {
        .galeria-fotos {
            width: 98%;
            height:250px;

        }
    }
 </style>

 <div class="container content-center">
     <h1>Album de Fotos</h1>

<?php

require_once "admin/models/Albuns.php";

$objAlbum = new Albuns();

$aAlbuns = $objAlbum->listarAlbuns();

echo '<div class="container">
	 			 <div class="row">';

foreach ($aAlbuns as $value) {
 echo '<div class="col-lg-3 col-md-4 col-xs-6 thumb">';
 echo '<a href="#" data-id="' . $value['idAlbum'] . '">' . $value['nomeAlbum'] . '</a>';
 echo '</div>';
}

echo '</div></div>';

?>

     <div id="result"></div>

 </div>
 <!--container-->

 <script>
$('a[data-id]').click(function (event) {

    let id = $(this).attr('data-id');

    $("#result").load("listar-fotos.php?id=" + id, function () {

        var url = window.location.href;

        location.replace(url + 'galeria');

    });

});
 </script>