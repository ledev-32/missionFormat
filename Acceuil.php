<<<<<<< HEAD
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

    <nav>
        <a href="FormulaireInscription.php"> Inscription</a>
        <a href="PrixGoMarket.html"></a>
        <a href="AvisGoMarket.html"></a>
    </nav>

    <section>
        <h2>Bienvenue sur le site de FORMAT</h2>
        <p> Nous proposons des fruits, légumes et aussi la petite épicerie à des prix imbattables.
		<br>
		Nous récupérons les invendus dans les grandes surfaces tous les jours.</p>
		<img src="imageC_GO.MARKET.jpg" alt="Image d'accueil" class="normal-image">
    </section>

    <footer>
		

    </footer>

</body>
=======
<?php 
    session_save_path("sessions");
    session_start();

    if (!isset($_SESSION["userId"])) {header("Location: ../index.php");} 
?>



<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

    <link href="style.css" rel="stylesheet">
 
    <title>FORMAT</title>
    
</head>
<body>

    <header>
        <h1>FORMAT</h1>
    </header>

    <nav>
        <?php if($_SESSION["userType"] == 0) {echo "<a href='formations/creer/creerForma.php'>Créer une formation</a>";}?>
        <a href="logout.php">Se déconnecter</a>
    </nav>

    <section>
        <h2>Bienvenue sur le site de FORMAT</h2>
        <p> Nous proposons des fruits, légumes et aussi la petite épicerie à des prix imbattables.
		<br>
		Nous récupérons les invendus dans les grandes surfaces tous les jours.</p>
    </section>

    <footer>
		

    </footer>

</body>
>>>>>>> 5cba17b2d0e3670050538c814bcd3ffd1f1166c8
</html>