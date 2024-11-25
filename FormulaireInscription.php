<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

    <link href="Css/style.css" rel="stylesheet">
 
    <title>FORMAT</title>
    
</head>

<body>
    <header>
        <h1>FORMAT</h1>
    </header>
    <form id="formInscription" action="SauvegardeInscription.php" method="post">
    <legend> RENSEIGNEMENTS CONCERNANT LE DIPLÔME REQUIS </legend>
    
    <label class="titre" >PRODUIT 1 : </label>          
          <select name="SelectForm" id="SelectForm" class="zone" required>
            <option value=""> - Sélectionner - </option>
            <option value=""></option>
            <option value=""></option>
            <option value=""></option>
            <option value=""></option>
            <option value=""></option>
            <option value=""></option>
          </select>

    <label class="titre" >PRODUIT 2 : </label>
    <select name="SelectSession" id="SelectSession" class="zone" required>
            <option value=""> - Sélectionner - </option>
            <option value=""></option>
            <option value=""></option>
            <option value=""></option>
            <option value=""></option>
            <option value=""></option>
            <option value=""></option>
    </select>

    <div class="button-container">
        <input type="submit" value="CONFIRMER VOTRE CANDIDATURE" />
    </div>

    </form>
</body>
<footer>
		

    </footer>

    <?php /*
        require('ConnexionBdd.php');
        $reqSQL="Select id, nomFormation from Formation";
        $result=$connexion->query($reqSQL);
        $ligne=$result->fetch();
        while($ligne!=false)
        {
            $idForm=$ligne["id"];
            $nomFormation=$ligne["nomFormation"];
            echo "<option value='$idForm'>$nomFormation</option>";
            $ligne=$result->fetch();
        }
        */
        ?>
</html>


<?php
        /*require('ConnexionBdd.php');
        $reqSQL="Select medNomcommercial from medicament";
        $result=$connexion->query($reqSQL);
        $ligne=$result->fetch();
        while($ligne!=false)
        {
            $famCode=$ligne["famCode"];
            $Med=$ligne["medNomcommercial"];
            echo "<option value='$famCode'>$Med</option>";
            $ligne=$result->fetch();
        }*/
        ?>
