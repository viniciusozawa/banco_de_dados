CREATE DATABASE exercicio2E;

SHOW DATABASES;

USE exercicio2e;
#Criar a tabela Cliente com 3 atributos(campos)
#Definar quais campos serao obrigatorios(not null)
#indicar qual será a chave primaria, usando primary key	
CREATE TABLE cliente(
	
	codCliente INT NOT NULL AUTO_INCREMENT,
	nomeCliente VARCHAR(250) NOT NULL,
	emailCliente VARCHAR(300),
	PRIMARY KEY(codCliente)
	
);
DESC cliente;
#usando o workbrench é possivel obter o MER pelo menu database reverse engineer, na mesma porta usanda no heidi
