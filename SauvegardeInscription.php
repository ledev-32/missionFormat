<?php
    include("\connexionBdd.php");
    include_once "class/Compteur.php"
     
    $user_id = $_SESSION['user_id'];

    $Formation="";
    $Session="";

    
    $Formation=$_POST["SelectForm"];
    $Session=$_POST["SelectSession"];  


    $SQLsel = ("SELECT count(id)
    from Inscrit
    where  dateInscrit like '' and id = '$MedicamenPres1';");


        $users = $pdo->query("SELECT id, pseudo FROM utilisateurs WHERE id != $user_id");
            while ($user = $users->fetch()) {
                $selected = ($user['id'] == $destinataire_id) ? 'selected="selected"' : '';
                echo "<option value='{$user['id']}' $selected>{$user['pseudo']} </option>";
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