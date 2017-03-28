<?php
include('header.php');
include("../divers/connexion.php");
include('boutons.php');
?>

    <?php
                
    $sql = "SELECT *, formation.id AS idformation FROM formation JOIN tagdomaine ON idTagDomaine=tagdomaine.id JOIN tagregion ON idTagRegion=tagregion.id JOIN type ON idTagType=type.id";
    $query = $pdo->prepare($sql);
    $query->execute();
    while($line = $query->fetch()) {
        echo
           ' <div class=" col-md-4">
           <h3>'.$line['NomEcole'].'</h3>
                <a href="'.$line['Lien'].'">aller vers le site de l\'école</a>
                <p>'.$line['Ville'].'</p>
                <p>'.$line['region'].'</p>
                    
                    </div>';    
    }
                ?>

        <!---->

        <!---->

        <?php
include('footer.php');
?>
