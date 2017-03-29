<?php
include('header.php');
include("../divers/connexion.php");
/*include('boutons.php');*/
?>



    <head>
        <meta charset="utf-8" />
        <link href="../css/style.css" rel="stylesheet" type="text/css" />
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
        <title>Écoles</title>

    </head>



    <body>
        <div class="item active">
            <img src="../img/ecoles.jpg" alt="img1" class="img-responsive" width="100%">
        </div>

        <form action="#" method="get" class="form-choix">
            <form action="#" method="get" class="form-choix">
                <select name='domaine'>

                    <?php
    
    
$sql = "SELECT DISTINCT (domaine) FROM formation JOIN tagdomaine ON idTagDomaine=tagdomaine.id JOIN type ON idTagType=type.id JOIN tagregion ON idTagRegion=tagregion.id"; // 
	$query = $pdo->prepare($sql); 
	
                
	$query->execute(); 
	
	
	while($line = $query->fetch()) {
		$domaine = $line['domaine'];
        echo "<option>$domaine</option>";
        
	}       

    
    ?>

                </select>







                <select name='type'>
                    <?php
    
    
$sql = "SELECT DISTINCT * FROM formation JOIN tagdomaine ON idTagDomaine=tagdomaine.id JOIN type ON idTagType=type.id JOIN tagregion ON idTagRegion=tagregion.id"; // 
	$query = $pdo->prepare($sql); 
	
                
	$query->execute(); 
	
	
	while($line = $query->fetch()) {
		$type = $line['type'];
        echo "<option>$type</option>";
        
	}       

    
    ?>

                </select>


                <select name='region'>
                    <?php
    
    
$sql = "SELECT DISTINCT * FROM formation JOIN tagdomaine ON idTagDomaine=tagdomaine.id JOIN type ON idTagType=type.id JOIN tagregion ON idTagRegion=tagregion.id"; // 
	$query = $pdo->prepare($sql); 
	
                
	$query->execute(); 
	
	
	while($line = $query->fetch()) {
		$region = $line['region'];
        echo "<option>$region</option>";
        
	}       

    
    ?>

                </select>





                <input type='submit' class="btn" />
            </form>


            <?php
            
            /*************************domaine*****************************/
            
         if(isset($_GET['domaine'])) {
	$sql = "SELECT *, formation.id AS idformation FROM formation JOIN tagdomaine ON idTagDomaine=tagdomaine.id JOIN tagregion ON idTagRegion=tagregion.id JOIN type ON idTagType=type.id WHERE domaine=?";  // 

	$query = $pdo->prepare($sql); // Etpae 1 : On prépare la requête
	
	$query->execute(array($_GET['domaine'])); // Etape 2 :On l'exécute. 
                       // Pas de paramètre dans la requête
	
	
	while($line = $query->fetch()) { // Etape 3 : on parcours le résultat
		echo
           ' <div class=" col-md-4">
           <h3>'.$line['NomEcole'].'</h3>
                <a href="'.$line['Lien'].'">aller vers le site de l\'école</a>
                <p>'.$line['Ville'].'</p>
                <p>'.$line['region'].'</p>
                    <p>'.$line['domaine'].'</p>
                    <p>'.$line['type'].'</p>
                    </div>';    
    }

                }
        
              /*  <!---------------------------fin domaine---------------------------->*/




               /* <!-------------------------type----------------------------------->*/
                
            elseif(isset($_GET['type'])) {
	$sql = "SELECT *, formation.id AS idformation FROM formation JOIN tagdomaine ON idTagDomaine=tagdomaine.id JOIN tagregion ON idTagRegion=tagregion.id JOIN type ON idTagType=type.id WHERE type=?";  // 

	$query = $pdo->prepare($sql); // Etpae 1 : On prépare la requête
	
	$query->execute(array($_GET['type'])); // Etape 2 :On l'exécute. 
                       // Pas de paramètre dans la requête
	
	
	while($line = $query->fetch()) { // Etape 3 : on parcours le résultat
		echo
           ' <div class=" col-md-4">
           <h3>'.$line['NomEcole'].'</h3>
                <a href="'.$line['Lien'].'">aller vers le site de l\'école</a>
                <p>'.$line['Ville'].'</p>
                <p>'.$line['region'].'</p>
                    <p>'.$line['domaine'].'</p>
                     <p>'.$line['type'].'</p>
                    
                    </div>';    
    }

                }
                

               /* <!-------------------------------fin type------------------------->

                <!--------------------------------region---------------------------------->*/


                
            elseif(isset($_GET['region'])) {
	$sql = "SELECT *, formation.id AS idformation FROM formation JOIN tagdomaine ON idTagDomaine=tagdomaine.id JOIN tagregion ON idTagRegion=tagregion.id JOIN type ON idTagType=type.id WHERE region=?";  // 

	$query = $pdo->prepare($sql); // Etpae 1 : On prépare la requête
	
	$query->execute(array($_GET['region'])); // Etape 2 :On l'exécute. 
                       // Pas de paramètre dans la requête
	
	
	while($line = $query->fetch()) { // Etape 3 : on parcours le résultat
		echo
           ' <div class=" col-md-4">
           <h3>'.$line['NomEcole'].'</h3>
                <a href="'.$line['Lien'].'">aller vers le site de l\'école</a>
                <p>'.$line['Ville'].'</p>
                <p>'.$line['region'].'</p>
                    <p>'.$line['domaine'].'</p>
                     <p>'.$line['type'].'</p>
                    
                    </div>';    
    }

                }
                ?>

                <!------------------------------fin region-------------------------------->








                <!---->

                <!---->

                <?php
include('footer.php');
?>
