<?php

if(isset($_GET['Valider'])) { // Le formulaire a été soumis
	if((!isset($_GET['email'])) || filter_var($_GET['email'], FILTER_VALIDATE_EMAIL)==false) {
		$goodForm = false; // Now, it is not good
		$error = "Mail invalide";
	}

    
    ?>










    <!--formulaire mache-->


    <?php
        if(isset($_GET['valider'])) { //Si on clique sur le bouton d'envoie de message
            if(!empty($_POST['email']) && filter_var($_GET['email'], FILTER_VALIDATE_EMAIL) && !empty($_POST['message'])) {
                $sql = "INSERT INTO mail (id, adresse, message) VALUES(NULL, ?, ?)";
                $query = $pdo -> prepare($sql);
                $query -> execute(array($_POST['email'], $_POST['message']));
            };
//            if(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)){
//                echo '<script>
//                    $(document).ready(function() {
//                        $(".submit").on("click",function() {
//                            var url = $(this).prop("href");
//                            $("#form").load(url);
//                            event.preventDefault();
//                        });
//                    });
//                    alert("Veuillez correctement renseigner votre adresse email");
//                    </script>';
//            }; // Si le champ de l'email ne contient pas une écriture de type "email", prévenir l'utilisateur
//            if(empty($_POST['message'])){ // Si le champ de l'email ne contient pas une écriture de type "email",
//                echo '<script>
//                    $(document).ready(function() {
//                        $(".submit").on("click",function() {
//                            var url = $(this).prop("href");
//                            $("#form").load(url);
//                            event.preventDefault();
//                        });
//                    });
//                    alert("Et votre message ? On veut savoir !");
//                    </script>';// le préciser à l'utilisateur.
//            };
        }
        ?>

        <?php
