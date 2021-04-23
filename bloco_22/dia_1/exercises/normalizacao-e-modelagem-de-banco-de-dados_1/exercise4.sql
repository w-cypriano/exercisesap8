CREATE DATABASE IF NOT EXISTS ZOO;

USE ZOO;

CREATE TABLE Animais (
animal_id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
especie VARCHAR(50),
sexo BOOLEAN,
idade INT,
localizacao VARCHAR(20),
cuidador_id INT NOT NULL,
FOREIGN KEY(cuidador_id) REFERENCES Cuidadores(cuidador_id)
) ENGINE = InnoDB;

CREATE TABLE Cuidadores(
cuidador_id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
gerente_id INT NOT NULL,
FOREIGN KEY (gerente_id) REFERENCES Gerentes(gerente_id)
)ENGINE = InnoDB;

CREATE TABLE Gerentes(
gerente_id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50)
)ENGINE = InnoDB;


