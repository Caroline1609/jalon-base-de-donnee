CREATE DATABASE jalon;

USE jalon;


CREATE TABLE vol (

    id INT PRIMARY KEY AUTO_INCREMENT not null,
    destination VARCHAR(255),
    tarif DECIMAL(5,2),
    nbPlaceTotal INT,
    nbPlaceOccupee INT

    );

CREATE TABLE reservation(

    id INT PRIMARY KEY AUTO_INCREMENT not null,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    business BOOLEAN not null,
    age INT not null

);

CREATE TABLE CompteBancaire(
    id INT PRIMARY KEY AUTO_INCREMENT not null,
    num_compte VARCHAR(20) UNIQUE,
    proprietaire VARCHAR(50),
    solde DECIMAL(5,6),
    decouvert INT
);


CREATE TABLE personne(
    id INT PRIMARY KEY AUTO_INCREMENT not null,
    nom VARCHAR(255),
    prenom VARCHAR(255),
    date_naissance DATE,
    sexe BOOLEAN,
    revenu DECIMAL(6,1),
    autre_revenu DECIMAL(6,1)

);


INSERT INTO vol (destination, tarif, nbPlaceTotal, nbPlaceOccupee) VALUES

    ('France', 300, 100, 16),
    ('Australie', 500, 200, 50),
    ('Bretagne', 30, 250, 85),
    ('Pole nord', 140, 487, 10),
    ('Poudlard', 380, 400, 5),
    ('Espagne', 147, 800, 90);

INSERT INTO reservation(nom,prenom,business, age) VALUES

('DUPON', 'MARTIN', FALSE, 25),
('CETIN', 'HULYA', TRUE, 35),
('DE BRITO', 'JESSY', TRUE, 30),
('DEL', 'MICHAEL', FALSE, 20),
('GEHIN', 'FREDERIC', TRUE, 4),
('ALEMANY', 'JUSTIN', FALSE, 24);
