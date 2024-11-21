CREATE TABLE TypeUtil(
   id INT,
   libelle VARCHAR(50),
   PRIMARY KEY(id)
);

CREATE TABLE Intervenant(
   id INT,
   nomI VARCHAR(70),
   prenomI VARCHAR(70),
   profession VARCHAR(70),
   domaineComp VARCHAR(50),
   PRIMARY KEY(id)
);

CREATE TABLE Session(
   id INT,
   lieu VARCHAR(80),
   heureDebut TIME,
   heureFin TIME,
   statut VARCHAR(50),
   nombrePlaces INT,
   PRIMARY KEY(id)
);

CREATE TABLE DateForm(
   dateForm DATE,
   PRIMARY KEY(dateForm)
);

CREATE TABLE DomaineForm(
   id INT,
   nomDomaine VARCHAR(100),
   PRIMARY KEY(id)
);

CREATE TABLE Entreprise(
   id INT,
   nomAsso VARCHAR(100),
   numIcomEntrprise INT,
   nomInterl VARCHAR(80),
   prenomInterl VARCHAR(80),
   courriel VARCHAR(100),
   numTel INT,
   PRIMARY KEY(id)
);

CREATE TABLE Utilisateur(
   id INT,
   loginU VARCHAR(50),
   mdp VARCHAR(64),
   nom VARCHAR(70),
   prenom VARCHAR(70),
   adresse VARCHAR(80),
   ville VARCHAR(60),
   codePostal INT,
   fonction VARCHAR(60),
   id_entreprise INT NOT NULL,
   id_type INT NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_entreprise) REFERENCES Entreprise(id),
   FOREIGN KEY(id_type) REFERENCES TypeUtil(id)
);

CREATE TABLE Formation(
   id INT,
   nomFormation VARCHAR(50),
   publicVise VARCHAR(60),
   objectif TEXT,
   cout VARCHAR(50),
   contenu TEXT,
   id_1 INT NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_1) REFERENCES DomaineForm(id)
);

CREATE TABLE Inscrit(
   id INT,
   id_1 INT,
   PRIMARY KEY(id, id_1),
   FOREIGN KEY(id) REFERENCES Utilisateur(id),
   FOREIGN KEY(id_1) REFERENCES Session(id)
);

CREATE TABLE Intervient(
   id INT,
   id_1 INT,
   PRIMARY KEY(id, id_1),
   FOREIGN KEY(id) REFERENCES Formation(id),
   FOREIGN KEY(id_1) REFERENCES Intervenant(id)
);

CREATE TABLE A_lieu(
   id INT,
   id_1 INT,
   PRIMARY KEY(id, id_1),
   FOREIGN KEY(id) REFERENCES Formation(id),
   FOREIGN KEY(id_1) REFERENCES Session(id)
);

CREATE TABLE Quand(
   id INT,
   DateForm DATE,
   PRIMARY KEY(id, DateForm),
   FOREIGN KEY(id) REFERENCES Session(id),
   FOREIGN KEY(DateForm) REFERENCES DateForm(dateForm)
);



