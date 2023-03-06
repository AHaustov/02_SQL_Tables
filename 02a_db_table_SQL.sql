/* ------  Strukturen ----- */

/* Kommentar 1 */
#  Kommentar 2
-- Kommentar 3

/* Datenbanken auf Server anzeigen */

/* Falls vorhanden wird boo gelรถscht */

DROP DATABASE IF EXISTS boo;

/* Falls boo nicht exisitert, wird es neu angelegt */

CREATE DATABASE IF NOT EXISTS boo;

SHOW DATABASES;

/* Geht in die Datenbank boo */

USE boo;

/* Zeigt alle Tabellen in boo an */

SHOW TABLES;

DROP TABLE IF EXISTS coworkers;

CREATE TABLE coworkers
(
	firstName VARCHAR(20),
	location VARCHAR(20),
	age INT,
	computer VARCHAR(20)
);

SHOW TABLES;

DESCRIBE coworkers;

/* Dateneingabe */

INSERT INTO coworkers(firstName,location,age,computer) VALUES ("Max","office",35,"PC");
INSERT INTO coworkers(firstName,location,age,computer) VALUES ("Gani","Pool",36,"iPad");
INSERT INTO coworkers(firstName,location,age,computer) VALUES ("Sohrab","Bett",26,"Mac");

#SELECT * FROM coworkers;

#SELECT * FROM coworkers WHERE location = "pool";

/* Inhalte sortieren */

SELECT 
  firstName AS "Name",
  location AS "Ort",
  age AS "Alter"
FROM coworkers
#WHERE age >= 35 || location="Pool"
ORDER BY age
;