<?php

include("../divers/connexion.php");
?>
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />

    <!--<div class="button">
        <button type="button" class="btn">Audiovisuel</button>
        <button type="button" class="btn">Communication</button>
        <button type="button" class="btn">Web</button>
    </div>-->

    <div class="button">

        <form method="get" action="">

            <input type="submit" name="all" value="tout" class="btn float" />
        </form>

        <form method="get" action="">

            <input type="submit" name="audiovisuel" value="Audiovisuel" class="btn float" />
        </form>

        <form method="get" action="">

            <input type="submit" name="communication" value="Communication" class="btn float" />
        </form>

        <form method="get" action="">

            <input type="submit" name="web" value="web" class="btn float" />
        </form>
    </div>

    <?php

if(!empty($_GET['all'])){
    
    $sql = "SELECT *, article.id AS ouvrelarticlestp FROM article JOIN auteur ON idAuteur=auteur.id JOIN tagdomaine ON idTagDomaine=tagdomaine.id JOIN tagmetier ON idTagMetier=tagmetier.id";
    
    
$query = $pdo->prepare($sql); // Etpae 1 : On prépare la requête
	
	$query->execute();
    
    while($line = $query->fetch()) {
        
             echo
           ' <div class="article col-md-4">
                <a href="articleseul.php?id='.$line['ouvrelarticlestp'].'">
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
}


if(!empty($_GET['audiovisuel'])){
    
    $sql = "SELECT *, article.id AS ouvrelarticlestp FROM article JOIN auteur ON idAuteur=auteur.id JOIN tagdomaine ON idTagDomaine=tagdomaine.id JOIN tagmetier ON idTagMetier=tagmetier.id WHERE domaine='audiovisuel'";
    
    
$query = $pdo->prepare($sql); // Etpae 1 : On prépare la requête
	
	$query->execute();
    
    while($line = $query->fetch()) {
        
             echo
           ' <div class="article col-md-4">
                <a href="articleseul.php?id='.$line['ouvrelarticlestp'].'">
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
}
    

if(!empty($_GET['communication'])){

    
    $sql = "SELECT *, article.id AS ouvrelarticlestp FROM article JOIN auteur ON idAuteur=auteur.id JOIN tagdomaine ON idTagDomaine=tagdomaine.id JOIN tagmetier ON idTagMetier=tagmetier.id WHERE domaine='communication'";
    
    
$query = $pdo->prepare($sql); // Etpae 1 : On prépare la requête
	
	$query->execute();
    
    while($line = $query->fetch()) {
        
             echo
           ' <div class="article col-md-4">
                <a href="articleseul.php?id='.$line['ouvrelarticlestp'].'">
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
}


if(!empty($_GET['web'])){
    
    $sql = "SELECT *, article.id AS ouvrelarticlestp FROM article JOIN auteur ON idAuteur=auteur.id JOIN tagdomaine ON idTagDomaine=tagdomaine.id JOIN tagmetier ON idTagMetier=tagmetier.id WHERE domaine='web'";
    
    
$query = $pdo->prepare($sql); // Etpae 1 : On prépare la requête
	
	$query->execute();
    
    while($line = $query->fetch()) {
        
             echo
           ' <div class="article col-md-4">
                <a href="articleseul.php?id='.$line['ouvrelarticlestp'].'">
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
}




        ?>
