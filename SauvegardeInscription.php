<?php
    include("\connexionBdd.php"); 

    $Formation="";
    $Session="";

  
    $Formation=$_POST["SelectForm"];
    $Session=$_POST["SelectSession"];  


    $SQLsel1 = ("SELECT medDepotlegal
    from medicament
    where  medNomcommercial = '$MedicamenPres1';");
   
   $resultSQL1 = $connexion->query($SQLsel1) or die($SQLsel1.print_r($connexion->errorInfo(), true));
   $ligne1 = $resultSQL1->fetch();
   $medDepotlegal1 = $ligne1[0];
  


   if($offQte1 != "" or $offQte2 != ""){
    $reqSQL1 = "INSERT INTO `offrir` (`id`, `visMatricule`, `rapNum`, `medDepotlegal1`, `medDepotlegal2`,`offQte1`, `offQte2`)
    VALUES (NULL, '$VisMatricule', $rapNum, '$medDepotlegal1','$medDepotlegal2', '$offQte1', '$offQte2');";
      $connexion -> exec($reqSQL) or die("erreur requete sql");

    }

?>