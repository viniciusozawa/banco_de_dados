CREATE DATABASE exercicio2E;

SHOW DATABASES;

USE exercicio2e;

CREATE TABLE cliente(
	
	codCliente INT NOT NULL AUTO_INCREMENT,
	nomeCliente VARCHAR(250) NOT NULL,
	emailCliente VARCHAR(300),
	PRIMARY KEY(codCliente)
	
);
DESC cliente;