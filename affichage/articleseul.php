<?php
include('header.php');
include("../divers/connexion.php");
include("../divers/balises.php");
?>

    <div class="container-fluid contenu-article">
        <?php

if(isset($_GET['id'])){
  
   $sql = "SELECT * FROM article WHERE id=?";
    $query = $pdo->prepare($sql);
    $query->execute(array($_GET['id']));
    while($line = $query->fetch()) {
        
         if(isset($line['contenu_video'])){
         echo' <h1 class="tittle-grey">'.$line['titre'].'</h1>
<p class="date">'.$line['date'].'</p>

<div class="contenu-article">
    <div class="row">
        <div class=" col-md-6">
         
         <video class="photo-video" width="400" height="222" controls="controls">
        <source src="'.$line['contenu_video'].'" type="video/mp4" /> Ici l\'alternative à la vidéo : un lien de téléchargement, un message, etc.
    </video>
     </div>


        <div class="texte-article col-md-6">
            <p>'.$line['contenu_txt'].'</p>

        </div>

    </div>
</div>';
    }
     else{
         echo
           '<h1 class="tittle-grey">'.$line['titre'].'</h1>
<p class="date">'.$line['date'].'</p>

<div class="contenu-article">
    <div class="row">
        <div class=" pohto-video col-md-6">
            <img src="'.$line['contenu_visuel'].'">
        </div>


        <div class="texte-article col-md-6">
            <p>'.$line['contenu_txt'].'</p>

        </div>

    </div>
</div>';
     }

    }
    
   
}

  
   
?>

            <!--<div class="video">

    <video width="400" height="222" controls="controls">
        <source src="'.$line['contenu_video'].'" type="video/mp4" /> Ici l\'alternative à la vidéo : un lien de téléchargement, un message, etc.
    </video>-->

    </div>
