CREATE DATABASE IF NOT EXISTS Albuns;

USE Albuns;

CREATE TABLE Artistas(
	Artista_id INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50)
)ENGINE = InnoDB;

CREATE TABLE Estilo_musical(
	estilo_id INT PRIMARY KEY AUTO_INCREMENT,
    nome  VARCHAR(50)
)ENGINE = InnoDB;

CREATE TABLE Album ( 
 Album_id INT PRIMARY KEY AUTO_INCREMENT,
 Nome VARCHAR(50),
 Titulo VARCHAR(100),
 Preço DOUBLE,
 Artista_id INT NOT NULL,
 estilo_id INT NOT NULL,
 FOREIGN KEY (Artista_id) REFERENCES Artistas(Artista_id),
 FOREIGN KEY (estilo_id) REFERENCES Estilo_musical(estilo_id)
 )ENGINE = InnoDB;
 
 CREATE TABLE Cancao (
 Cancao_id INT PRIMARY KEY AUTO_INCREMENT,
 Nome VARCHAR(50),
 Album_id INT NOT NULL,
 FOREIGN KEY (Album_id) REFERENCES Album(Album_id)
 ) ENGINE = InnoDB;
 