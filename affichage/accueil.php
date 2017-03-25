<?php
include('header.php');
include("../divers/connexion.php");
?>


    <!--

    <head>
        <link href="../css/style.css" rel="stylesheet" type="text/css" />
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
    </head>


    <body>

-->

    <div class="contenu-page">

        <!-- CAROUSSEL -->

        <div id="myCarousel" class="carousel slide">

            <!-- Indicateurs pour caroussel -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Mise en place du contenu pour le Caroussel -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="../img/Web.jpg" alt="img1" class="img-responsive" width="100%">
                </div>

                <div class="item">
                    <img src="../img/Communication.jpg" alt="img2" class="img-responsive" width="100%">
                </div>

                <div class="item">
                    <img src="../img/Audiovisuel.jpg" alt="img3" class="img-responsive" width="100%">
                </div>
            </div>

            <!-- Contrôles du Caroussel -->
            <a class="carousel-control left" href="#myCarousel" role="button" data-slide="prev">
                <span class="icon-prev"></span>
            </a>

            <a class="carousel-control right" href="#myCarousel" role="button" data-slide="next">
                <span class="icon-next"></span>
            </a>
        </div>


        <!-- Présentation articles -->
        <div class="tittle">
            <h1>Articles</h1></div>

        <div class="articles container-fluid">

            <?php
             $sql = "SELECT *, article.id AS ouvrelarticlestp FROM article JOIN auteur ON idAuteur=auteur.id JOIN tagdomaine ON idTagDomaine=tagdomaine.id JOIN tagmetier ON idTagMetier=tagmetier.id";
    $query = $pdo->prepare($sql);
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
        ?>



        </div>


        <div class="boutton-plus">
            <a href="articles.php">
                <!--php-->
                <button class="btn" type="button">Voir plus d'articles</button>
            </a>
        </div>

        <div class="tittle equipe">
            <h1>L'équipe</h1></div>

        <div class="equipe-presentation">


            <div class="equipe-presentation-item">

                <img src="../img/portrait/gwen.png" alt="Gwen">
                <div class="presentation-texte">
                    <h3 class="prenom">Gwendoline</h3>
                    <p class="paragraphe"><strong>En tant que chef de projet,</strong> je veille au bon fonctionnement de l’équipe et vérifie le respect des délais ainsi que l’avancée du projet. Passionnée par l’infographie et l’événementiel, je prend en charge la conception de la communication des différents événements mais m’occupe également de la communication avec les anciens étudiants.</p>
                </div>
                <div class="cache-opaque"></div>
            </div>

            <div class="equipe-presentation-item">

                <img src="../img/portrait/nion.png" alt="Nion">
                <div class="presentation-texte">
                    <h3 class="prenom">Marion</h3>
                    <p class="paragraphe"><strong>Pour ma part,</strong> j’ai été responsable de l’aspect graphique et audiovisuel lié au site, ces deux points étant des passions pour moi. J’ai donc eu la possibilité d’essayer de créer des designs sympathiques, mais aussi des vidéos qui se voulaient être agréables à regarder. En plus de ça, j’ai également pu travailler sur la rédaction de certains articles.</p>
                </div>
                <div class="cache-opaque"></div>
            </div>

            <div class="equipe-presentation-item">

                <img src="../img/portrait/mâche.png" alt="Mâche">
                <div class="presentation-texte">
                    <h3 class="prenom">Marie-Hélène</h3>
                    <p class="paragraphe"><strong>Hello,</strong> je suis M-H (like here &#8593;). J'ai participé au développement de ce site, à la création de son contenu ainsi qu'à l'organisation des évènements en parallèle. J'aime énormèment le développement web même si le CSS me donne la migraine (je préfère le PHP). Ce que j'aime dans la réalisation de ce projet, c'est l'interaction avec la sphère MMI.
                        <br/> Happy to help you, Mâche (M-H).</p>
                </div>
                <div class="cache-opaque"></div>
            </div>

            <div class="equipe-presentation-item">

                <img src="../img/portrait/chloé.png" alt="Chloé">
                <div class="presentation-texte">
                    <h3 class="prenom">Chloé</h3>
                    <p class="paragraphe"><strong>Hey !</strong> Moi c’est Chloé et c’est moi qui ai participé au développement de ce petit site ! Je suis passionnée par le digital et surtout par le développement web ! J’aime penser à l’ergonomie d’un site et examiner quels sont les besoins de l’utilisateur.
                        <!--Ce projet qui peut vraiment aider certaines personnes à choisir leur avenir grâce à des témoignages d’anciens étudiants concrets !-->
                    </p>
                </div>
                <div class="cache-opaque"></div>
            </div>




        </div>

        <div>

            <section class="formulaire">
                <div class="tittle titre-formulaire">
                    <h1>Nous contacter</h1></div>
                <form method="#" action="#">
                    <input type="text" name="email" placeholder="email" class="block email" />
                    <textarea name="message" class="message" rows="10" cols="50" placeholder="message" class="block"> </textarea>
                    <input type="submit" value="Envoyer" class="block btn envoyer" />
                </form>
            </section>
        </div>


        <?php
include('footer.php');
//    include("/header-footer/header.html");
?>
