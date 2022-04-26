DROP DATABASE IF EXISTS exo1_bdd;
CREATE DATABASE exo1_bdd;

CREATE TABLE Personne(
    per_num INT AUTO_INCREMENT,
    per_nom VARCHAR(30) NOT NULL,
    per_prenom VARCHAR(30) NOT NULL,
    per_adresse VARCHAR(255) NOT NULL,
    per_ville VARCHAR(50) NOT NULL,
    PRIMARY KEY(per_num)
);

CREATE TABLE Groupe(
    gro_num INT AUTO_INCREMENT,
    gro_libelle VARCHAR(50) NOT NULL,
    PRIMARY KEY(gro_num)
);

CREATE TABLE Appartient(
    per_num INT NOT NULL,
    gro_num INT NOT NULL,
    PRIMARY KEY(per_num, gro_num),
    FOREIGN KEY(per_num) REFERENCES Personne(per_num),
    FOREIGN KEY(gro_num) REFERENCES Groupe(gro_num)
);