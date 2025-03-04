-- création de la base de données
CREATE DATABASE AuthentificationAdminCinema

-- utilisation de la base de données
USE AuthentificationAdminCinema

-- création de la table Users pour stocker les informations des clients
CREATE TABLE Users (
idUser INTEGER PRIMARY KEY ,
admin BOOLEAN,
pseudo VARCHAR(50),
name VARCHAR(100),
surname VARCHAR(100),
password VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL UNIQUE
)

--création de la table cinéma
CREATE TABLE Cinemas (
idCinema INTEGER PRIMARY KEY 
name VARCHAR(100)
)

--création table association entre cinema et user
CREATE TABLE associative (
Users_idUser INTEGER,
Cinemas_idCinema INTEGER,
PRIMARY KEY (Users_idUser, Cinemas_idCinema),
FOREIGN KEY Users_idUser REFERENCES Users(idUser),
FOREIGN KEY Cinemas REFERENCES Cinemas(idCinema)
)

--création de la table salle
CREATE TABLE Salles (
idSalle INTEGER PRIMARY KEY 
numSalle INTEGER,
nombrePlace: INTEGER,
FOREIGN KEY idSalle REFERENCES Séances (idSeance),
FOREIGN KEY idSalle REFERENCES Cinemas (idCinema)
)

--création de la table séance
CREATE TABLE Seances (
idSeance integer PRIMARY KEY ,
nomFilm VARCHAR(100),
datefilm DATE,
horaireFilm TIME,
tarif VARCHAR(10)

)

--insertion de données factice utilisateur
INSERT INTO Users (admin, pseudo, name, surname, password, email) VALUES ('oui', 'alicia123','forest', 'alice', 'mdp123', 'alice.forest@example.fr')
INSERT INTO Users (admin, pseudo, name, surname, password, email) VALUES ('non', 'alicia123', 'campagn', 'blaise', 'mdp123', 'blaise.campagn@example.fr')
INSERT INTO Users (admin, pseudo, name, surname, password, email) VALUES ('non', 'alicia123', 'ocean', 'beatrice', 'mdp123', 'beatrice.ocean@example.fr')
INSERT INTO Users (admin, pseudo, name, surname, password, email) VALUES ('non','alicia123', 'montagn', 'Matthias', 'mdp123', 'Matthias.montagn@example.fr')
INSERT INTO Users (admin, pseudo, name, surname, password, email) VALUES ('non','alicia123', 'mer', 'Jacques', 'mdp123', 'Jacques.mer@example.fr')

--insertion de données factice dans la table cinema
INSERT INTO Cinemas (name) VALUES ('grandouest')
INSERT INTO Cinemas (name) VALUES ('pleinsud')

--insertion de données factice dans la table salles
INSERT INTO Salles (numSalle, nombrePlace) VALUES (1, 250)
INSERT INTO Salles (numSalle, nombrePlace) VALUES (2, 120)
INSERT INTO Salles (numSalle, nombrePlace) VALUES (3, 360)
INSERT INTO Salles (numSalle, nombrePlace) VALUES (4, 150)
INSERT INTO Salles (numSalle, nombrePlace) VALUES (5, 180)
INSERT INTO Salles (numSalle, nombrePlace) VALUES (6, 190)
INSERT INTO Salles (numSalle, nombrePlace) VALUES (7, 200)

--insertion de données factice dans la table Seances
INSERT INTO Seances (nomFilm, datefilm, horaireFilm, tarif) VALUES ('le premier', '20/05/2002', 08:00, 9.20)
INSERT INTO Seances (nomFilm, datefilm, horaireFilm, tarif) VALUES ('le deuxième', '21/05/2002', 08:00, 9.20)
INSERT INTO Seances (nomFilm, datefilm, horaireFilm, tarif) VALUES ('le troisième', '22/05/2002', 08:00, 9.20)
INSERT INTO Seances (nomFilm, datefilm, horaireFilm, tarif) VALUES ('le premier', '20/05/2002', 10:00, 7.60)
INSERT INTO Seances (nomFilm, datefilm, horaireFilm, tarif) VALUES ('le troisième', '20/05/2002', 08:00, 5.90)
INSERT INTO Seances (nomFilm, datefilm, horaireFilm, tarif) VALUES ('le dernier', '20/05/2002', 14:00, 9.20)