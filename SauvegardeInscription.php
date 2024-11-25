<?php
    include("\connexionBdd.php");
    include_once "includes/utils.php";

    $user_id = $_SESSION['user_id'];

    $Formation="";
    $Session="";

    $dateInscrit = AnnéeAct();
    
    $Formation=$_POST["SelectForm"];
    $Session=$_POST["SelectSession"];  


    $SQLsel = ("SELECT count(id)
    from Inscrit
    where  dateInscrit like '' and id = '$MedicamenPres1';");


        $users = $pdo->query("SELECT count(id), pseudo FROM utilisateurs WHERE id != $user_id");



    $stmt = $pdo->prepare("SELECT count(id) FROM Inscrit WHERE dateInscrit like :dateIns and id = :id");
    $stmt-> bindParam(":dateIns",'%'.$dateInscrit.'%',':id', $user_id, PDO::PARAM_STR);
    $stmt->execute();
    $user = $stmt->fetch();

    if ($user && password_verify($mot_de_passe, $user['mot_de_passe'])) {
        $_SESSION['user_id'] = $user['id'];
        header('Location: index.php');
    } else {
        $erreur = "Identifiants incorrects";
    }
   
   $resultSQL1 = $connexion->query($SQLsel1) or die($SQLsel1.print_r($connexion->errorInfo(), true));
   $ligne1 = $resultSQL1->fetch();
   $medDepotlegal1 = $ligne1[0];
  


   if($offQte1 != "" or $offQte2 != ""){
    $reqSQL1 = "INSERT INTO `offrir` (`id`, `visMatricule`, `rapNum`, `medDepotlegal1`, `medDepotlegal2`,`offQte1`, `offQte2`)
    VALUES (NULL, '$VisMatricule', $rapNum, '$medDepotlegal1','$medDepotlegal2', '$offQte1', '$offQte2');";
      $connexion -> exec($reqSQL) or die("erreur requete sql");

    }

?>



