<?php 
    session_save_path("../sessions");
    session_start();

    include_once("../class/Utilisateur.php");
    include("../db/connexionBdd.php");

    // --- Récupération des données du formulaire ---
    if (isset($_POST["login"])) {
        $login = $_POST["login"];
        $password = $_POST["mdp"];

        // --- Création d'un objet Utilisateur pour la connexion ---
        $newUser = new User($pdo);


        // --- Utilisation de la méthode login() pour se connecter ---
        $user = $newUser->login($login,$password);
        if ($user != false) {
            $_SESSION["userId"] = $user["id"];
            $_SESSION["userType"] = $user["id_type"];
            header("Location: ../Acceuil.php");
        }
        else {header("Location: ../index.php");}
    }







?>