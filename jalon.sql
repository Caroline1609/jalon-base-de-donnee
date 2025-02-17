CREATE DATABASE jalon;


CREATE TABLE vol (

    id INT PRIMARY KEY AUTO_INCREMENT not null,
    destination VARCHAR(255),
    tarif DECIMAL(85,22),
    nbPlaceTotal INT,
    nbPlaceOccupee INT

    );

INSERT INTO vol (id, destination, tarif, nbPlaceTotal, nbPlaceOccupee) VALUES

(1,"France", 300, 100, 16),
(2,"Australie", 500, 200, 50),
(3,"Bretagne", 30, 250, 85),
(4,"Pole nord", 140, 487, 10),
(5,"Poudlard", 380, 400, 5),
(6,"Espagne", 147, 800, 90),
