CREATE DATABASE sante;

CREATE TABLE patients (
    id_patient INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender ENUM('Male', 'Female') NOT NULL,
    contact_number VARCHAR(15),
    email VARCHAR(100),
    address TEXT
);

CREATE TABLE produit (
    id_produit INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100) NOT NULL,
    description TEXT,
    prix DECIMAL(10, 2) NOT NULL,
    quantite_en_stock INT NOT NULL
);

CREATE TABLE commandes (
    id_commande INT PRIMARY KEY AUTO_INCREMENT,
    id_patient INT,
    date_commande DATETIME NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_patient) REFERENCES patients(id_patient)
);

CREATE TAB