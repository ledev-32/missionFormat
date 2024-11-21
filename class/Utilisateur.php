<?php 
class User {
    // --- Properties ---
    private $pdo; // --- PDO module for the database connection
    private $login; // --- Login of the user
    private $password; // --- Password of the user
    private $responsability; // --- Responsability of the user
    // ============================================================================================


    // --- Constructor ---
    public function __construct($pdo, $login = null, $password = null, $responsability = null) {
        $this->pdo = $pdo;
        $this->login = $login;
        $this->password = $password;
        $this->responsability = $responsability;
    }
    // ============================================================================================

    // --- Methods ---

    // --- --- login ---
    // --- --- Input parameters : login and password of the user
    // --- --- Role : Verify the identify from the database
    // --- --- Output : user (all informations) or null (in case of issue)
    public function login($login,$password) {
        // Collect all informations about the user in the database
        $stmt = $this->pdo->prepare("SELECT * FROM utilisateur WHERE loginU = :loginU");
        $stmt->bindParam(":loginU",$login,PDO::PARAM_STR);
        $stmt->execute();
        $user = $stmt->fetch();

        // Hash the password given in the input parameters with the sha256 algo
        $hash = hash('sha256',$password);

        // Check if the hash is the same in the database
        // If it the same, return the informations
        if ($user && $hash === $user["mdp"]) {
            return $user;
        }
        // Or return NULL
        return null;
    }
    // ============================================================================================

}
?>