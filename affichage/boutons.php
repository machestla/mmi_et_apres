<?php
include("../divers/connexion.php"); // On se connecte à la base
?>

    <html lang="fr">

    <head>
        <meta charset="utf-8" />
        <title>Articles</title>

    </head>



    <body>


        <form action="#" method="get">
            <select name='domaine'>

                <?php
    
    
$sql = "SELECT DISTINCT * FROM formation JOIN tagdomaine ON idTagDomaine=tagdomaine.id JOIN type ON idTagType=type.id JOIN tagregion ON idTagRegion=tagregion.id"; // 
	$query = $pdo->prepare($sql); 
	
                
	$query->execute(); 
	
	
	while($line = $query->fetch()) {
		$domaine = $line['domaine'];
        echo "<option>$domaine</option>";
        
	}       

    
    ?>

            </select>







            <!--<select name='region'><option>$region</option></select>
-->
            <input type='submit' />
        </form>


        <?php
         if(isset($_GET['domaine'])) {
	$sql = "SELECT * FROM article JOIN tagdomaine ON idTagDomaine=tagdomaine.id WHERE domaine=?"; // 

	$query = $pdo->prepare($sql); // Etpae 1 : On prépare la requête
	
	$query->execute(array($_GET['domaine'])); // Etape 2 :On l'exécute. 
                       // Pas de paramètre dans la requête
	
	
	while($line = $query->fetch()) { // Etape 3 : on parcours le résultat
		echo '<p>'.$line['domaine'].'</p>';
	} 
                }
        ?>


            <!--<div class="bouton-choix">
    <p>
        <input type="submit" value="Communication" class="choix " />
    </p>
    <p>
        <input type="submit" value="Audiovisuel" class="choix" />
    </p>
    <p>
        <input type="submit" value="Web" class="choix" />
    </p>

</div>-->

    </body>

    </html>
