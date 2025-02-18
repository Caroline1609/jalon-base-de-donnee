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
    age INT not null,
    prixfinal DECIMAL(5.6)

);

CREATE TABLE CompteBancaire(
    id INT PRIMARY KEY AUTO_INCREMENT not null,
    num_compte VARCHAR(20) UNIQUE,
    proprietaire VARCHAR(50) not null,
    solde DECIMAL(5.6) not null,
    decouvert INT not null
);


CREATE TABLE personne(
    id INT PRIMARY KEY AUTO_INCREMENT not null,
    nom VARCHAR(255) not null,
    prenom VARCHAR(255) not null,
    date_naissance DATE not null,
    sexe ENUM ('HOMME', 'FEMME') not null,
    revenu DECIMAL(6,1) not null,
    autre_revenu DECIMAL(6,1) not null

);


INSERT INTO vol (destination, tarif, nbPlaceTotal, nbPlaceOccupee) VALUES

    ('France', 300, 100, 16),
    ('Australie', 500, 200, 50),
    ('Bretagne', 30, 250, 85),
    ('Pole nord', 140, 487, 10),
    ('Poudlard', 380, 400, 5),
    ('Espagne', 147, 800, 90);

INSERT INTO reservation(nom,prenom,business, age, prixfinal) VALUES

('DUPON', 'MARTIN', FALSE, 25, 2500),
('CETIN', 'HULYA', TRUE, 35, 2500),
('DE BRITO', 'JESSY', TRUE, 30, 2500),
('DEL', 'MICHAEL', FALSE, 20, 2500),
('GEHIN', 'FREDERIC', TRUE, 4, 2500),
('ALEMANY', 'JUSTIN', FALSE, 24, 2500);

INSERT INTO comptebancaire(num_compte, proprietaire, solde, decouvert) VALUES

('2541CM475', 'Hulya', 2500, -500),
('28ED64015', 'Bruno', 1000, -200),
('9824TR210', 'Caroline', 2500, -500),
('1520FG856', 'Mickael', 2500, -400);

INSERT INTO personne(nom, prenom, date_naissance, sexe, revenu, autre_revenu) VALUES

('BIEHLER', 'CAROLINE', 2000-09-16, 2 , 2500, 100),
('CETIN', 'HULYA', 1990-01-19, 2, 580, 500),
('DE BRITO', 'JESSY', 1991-05-19, 1, 150, 500),
('ALEMANY', 'JUSTIN', 1990-01-19, 1, 85, 500);



SELECT * FROM vol WHERE destination LIKE 'Espagne';

SELECT   * FROM    comptebancaire WHERE   proprietaire LIKE '%Bruno%';

SELECT  * FROM    comptebancaire WHERE   solde > 1000;

