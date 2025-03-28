CREATE DATABASE exercicio2E_2025;

SHOW DATABASES;

USE exercicio2E_2025;

CREATE TABLE cliente(
	codCliente INT NOT NULL AUTO_INCREMENT,
	nomeCliente VARCHAR(250) NOT NULL,
	emailCliente VARCHAR(250),
	PRIMARY KEY(codCliente)
);

SHOW TABLES;

DESC cliente;

INSERT INTO cliente VALUES(NULL, "Maria Teixeira", "maria@gmail.com");
UPDATE cliente SET nomeCliente = "João Alves", emailCliente = "joao@gmail.com" WHERE codCliente = 2;
INSERT INTO cliente(nomeCliente) VALUES("Fabrício pereira");
SELECT * FROM cliente;

DELETE from cliente WHERE codCliente = 4;
SELECT * FROM cliente;
