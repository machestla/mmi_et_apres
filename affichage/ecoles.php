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
    
    
$sql = "SELECT DISTINCT (type) FROM formation JOIN tagdomaine ON idTagDomaine=tagdomaine.id JOIN type ON idTagType=type.id JOIN tagregion ON idTagRegion=tagregion.id"; // 
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
    
    
$sql = "SELECT DISTINCT (region) FROM formation JOIN tagdomaine ON idTagDomaine=tagdomaine.id JOIN type ON idTagType=type.id JOIN tagregion ON idTagRegion=tagregion.id"; // 
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
            

           
            
         if(isset($_GET['domaine']) ||
            isset($_GET['type']) ||
            isset($_GET['region'])) {
             
	$sql = "SELECT *, formation.id AS idformation FROM formation JOIN tagdomaine ON idTagDomaine=tagdomaine.id JOIN tagregion ON idTagRegion=tagregion.id JOIN type ON idTagType=type.id WHERE domaine=? AND type=? AND region=?";  // 

	$query = $pdo->prepare($sql); // Etpae 1 : On prépare la requête
	
	$query->execute(array($_GET['domaine'],$_GET['type'],$_GET['region'])); // Etape 2 :On l'exécute. 
                       // Pas de paramètre dans la requête
	
	
	while($line = $query->fetch()) { // Etape 3 : on parcours le résultat
		echo
           ' <div class=" col-md-4">
           <h3>'.$line['NomEcole'].'</h3>
                <a class="lien-ecole" href="'.$line['Lien'].'">aller vers le site de l\'école</a>
                <p>'.$line['Ville'].'</p>
                <p>'.$line['region'].'</p>
                    <p>'.$line['domaine'].'</p>
                    <p>'.$line['type'].'</p>
                    </div>';    
    }

                }
    
          
             
                ?>






                <!--   <div class="padding-footer">

                </div>-->


                <!---->

                <!---->

                <?php
            
include('footer.php');
?>
