/*Soli Deo Gloria!*/

DROP DATABASE clicker;

CREATE DATABASE clicker;
USE clicker;

CREATE TABLE Personagem (
idPersonagem INT,
nivel INT,
xp INT,
xpParaUpar INT,
vidaMax INT,
dano INT,
ChanceCritica INT,
MultiplicadorCritico INT,
pode_roubar_vida BOOLEAN,
roubo_de_vida DOUBLE,
pontos_Status INT,
dinheiro INT,
idInventario INT);

ALTER TABLE Personagem
CHANGE COLUMN idPersonagem idPersonagem INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY(idPersonagem),
CHANGE COLUMN idInventario idInventario INT NOT NULL,
ADD CONSTRAINT Personagem_idPersonagem_Inventario
FOREIGN KEY (idInventario)
REFERENCES Inventario(idInventario);

CREATE TABLE Inventario (idInvantario INT);
ALTER TABLE Inventario
CHANGE COLUMN idInventario idInventario INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY(idInventario);

CREATE TABLE Minion (
idMinion INT,



DESC Personagem;
