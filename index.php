<html>
<head>
  <title>connexion</title>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<<<<<<< HEAD
  <link href="Css/style.css" rel="stylesheet">
=======
  <link href="style.css" rel="stylesheet">
>>>>>>> 5cba17b2d0e3670050538c814bcd3ffd1f1166c8

  <script type="text/javascript"> 
    function verifChamps()
    {
<<<<<<< HEAD
      if (document.getElementById('userMatricule').value=='' || document.getElementById('mdp').value=='')

      {
        alert("Remplir tous les champs");
        return false;
      }
      return true;
=======
      if (document.getElementById('login').value=='' || document.getElementById('mdp').value=='') {
        alert("Remplir tous les champs");
        return false;
      }
>>>>>>> 5cba17b2d0e3670050538c814bcd3ffd1f1166c8
    }
  </script>


</head>

<body bgcolor="#FFFFFF" text="#000000" link="#CC0000">
<header>
<<<<<<< HEAD
        <h1>FORMAT</h1>
=======
        <h1>FORMA</h1>
>>>>>>> 5cba17b2d0e3670050538c814bcd3ffd1f1166c8
</header>
<div align="center">
  <p><font face="Comic Sans MS" color="#000066" size="4">Pour pouvoir acc&eacute;der
    &agrave; certaines parties du site il est n&eacute;cessaire de vous identifier.</font></p> 
<<<<<<< HEAD
  <p><img src="logo.jpg" width="168" height="148"></p>

  <form method="POST" action="AccueilAuthentification.php" name="identification" onSubmit="return verifChamps()">
      
      <div width="53%"><font face="Comic Sans MS" size="3" color="#000099">Votre
        identifiant</font></div>
        <input type="text" name="userMatricule" id="userMatricule" size="25" maxlength="25">
=======

  <form method="POST" action="includes/connexion.php" name="connexio" onSubmit="return verifChamps()">
      
      <div width="53%"><font face="Comic Sans MS" size="3" color="#000099">Votre
        identifiant</font></div>
        <input type="text" name="login" id="login" size="25" maxlength="25">
>>>>>>> 5cba17b2d0e3670050538c814bcd3ffd1f1166c8
      
      
      
      <div width="53%"><font face="Comic Sans MS" size="3" color="#000099">Votre
        mot de passe</font></div>
        <input type="password" name="mdp" id="mdp" size="8" maxlength="8">
      
    <div align="center">
      <p> <font face="Comic Sans MS">
        <input type="submit" name="validation" value="Demande de connexion"> </font></p>

        <a href="Acceuil.php">Test</a>
<BR><BR><BR>
    </div>
  </form>
  </div>
</body>
<footer></footer>
</html>
