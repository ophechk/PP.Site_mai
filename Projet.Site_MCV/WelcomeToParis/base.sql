CREATE TABLE Client(
   Id_Client COUNTER,
   nom_client VARCHAR(50),
   prenom_client VARCHAR(50),
   date_naiss_client DATE,
   civilite_client VARCHAR(50),
   adresse_client VARCHAR(50),
   ville_client VARCHAR(50),
   mail VARCHAR(50),
   login VARCHAR(50),
   mdp VARCHAR(50),
   PRIMARY KEY(Id_Client)
);

CREATE TABLE Billets(
   Id_Billets INT,
   nom_evenement VARCHAR(50),
   PRIMARY KEY(Id_Billets)
);

CREATE TABLE commande(
   Id_Client INT,
   Id_Billets INT,
   Dates DATE,
   PRIMARY KEY(Id_Client, Id_Billets),
   FOREIGN KEY(Id_Client) REFERENCES Client(Id_Client),
   FOREIGN KEY(Id_Billets) REFERENCES Billets(Id_Billets)
);

CREATE TABLE Réserver(
   Id_Client INT,
   Id_Billets INT,
   PRIMARY KEY(Id_Client, Id_Billets),
   FOREIGN KEY(Id_Client) REFERENCES Client(Id_Client),
   FOREIGN KEY(Id_Billets) REFERENCES Billets(Id_Billets)
);
