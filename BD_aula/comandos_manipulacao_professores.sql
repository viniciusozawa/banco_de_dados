SHOW DATABASES;

USE aula2e;

SHOW TABLEs;

DESC professores;

INSERT INTO professores (nomeProfessor, formacaoProfessor) 
	VALUES("Cristina Almeida", "Ciencia da computação");

SELECT * FROM professores;


INSERT INTO professores (nomeProfessor) 
	VALUES("João Roberto Caixeta"), ("Paulize Ramos") , ("Vlander Verdade");

UPDATE professores SET formacaoProfessor = "Química" WHERE codProfessor = 3;

SELECT * FROM professores WHERE formacaoProfessor IS NULL;

SELECT nomeProfessor FROM professores WHERE formacaoProfessor IS not NULL;





































































































