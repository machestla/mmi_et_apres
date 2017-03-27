<?php
include("header.php");
include("../divers/connexion.php");
/*include("boutons.php");*/
?>

    <!--<div class="photo">
    <img src="../img/Audiovisuel.jpg">
</div>-->

    <div class="item active">
        <img src="../img/article.jpg" alt="img1" class="img-responsive" width="100%">
    </div>

    <?php
include("boutons.php");

?>
        <div class="articles-contenu">

            <div class="articles container-fluid">

                <?php
             $sql = "SELECT *, article.id AS ouvrelarticlestp FROM article JOIN auteur ON idAuteur=auteur.id JOIN tagdomaine ON idTagDomaine=tagdomaine.id JOIN tagmetier ON idTagMetier=tagmetier.id order by date desc";
    $query = $pdo->prepare($sql);
    $query->execute();
    while($line = $query->fetch()) {
        echo
           ' <div class="article col-md-4">
                <a href="articleseul.php?id='.$line['ouvrelarticlestp'].'">;
                    <!--php -->
                    <div class="contenu">
                    
                        <img src="'.$line['contenu_visuel'].'" />
                        <!--php-->
                        <div class="contenu-contenu">
                            <div class="contenu-date">
                                <p>'.$line['date'].'</p>
                                
                            </div>
                            <h4>'.$line['titre'].'</h4>
                            <!--php-->
                            <div class="resume">
                                <p>'.$line['contenu_txt'].'</p>
                            </div>
                            <div class="btn-suite">
                                <p>lire la suite</p>
                            </div>
                        </div>
                         <div class="cache-opaque">
                         </div>
                </a>
    
                 </div>
            </div>';
    }
        ?>



            </div>

            <?php
include('footer.php');
?>
