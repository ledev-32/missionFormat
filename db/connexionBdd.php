<?php
// --- Start a connexion with the database ---

/*
Host - Localhost
Database name - format
User - classic
Password - Azerty31
*/
try {
    $pdo = new PDO('mysql:host=localhost;dbname=format', 'classic', 'Azerty31');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    die('Erreur de connexion : ' . $e->getMessage());
}
?>