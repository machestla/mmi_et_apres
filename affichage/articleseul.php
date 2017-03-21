<?php
include('header.php');
include("../divers/connexion.php");
include("../divers/balises.php");


if(isset($_GET['id'])){
  
   $sql = "SELECT * FROM article WHERE id=?";
    $query = $pdo->prepare($sql);
    $query->execute(array($_GET['id']));
    while($line = $query->fetch()) {
        echo
           '<h1 class="tittle">'.$line['titre'].'</h1>
<p class="date">'.$line['date'].'</p>

<div class="contenu-article container-fluid">
    <div class="row">
        <div class="photo-video col-md-6">
            <img src="'.$line['contenu_visuel'].'">
        </div>


        <div class="texte-article col-md-6">
            <p>'.$line['contenu_txt'].'</p>

        </div>

    </div>
</div>';
    }
}

   
?>
