CREATE DATABASE revisao2e;

#criando a tebela alunos
CREATE TABLE alunos(
	id int PRIMARY KEY,
	nome VARCHAR(300)                                
		
);
#exibir o catalogo relacional ativo da tabela alun0os
DESC alunos;                                         

#graficamente , alteramos o id para ser autoIncremento
#e desmarcamos "permitir null "do nome

#insercao em blocos (sem trasacao)

INSERT INTO alunos(nome) VALUES("Lucia silva"),
("patricia alves") , ("Roseli teixeira");

SELECT * FROM alunos;    

#insercao em blocos(com traducao)

BEGIN;
	INSERT INTO alunos(nome) VALUES("a");
	INSERT INTO alunos(nome) VALUES("c");
	INSERT INTO alunos(nome) VALUES("b");
	
	COMMIT;
	
SELECT * FROM alunos;

#criar tabela notas

CREATE TABLE notas(
	idAluno INT,
	nota DECIMAL(3,1)
);

#inserimos graficamente a nota para um aluno 
#Criar um relatorio o id do aluno seu id , seu nome e nota

SELECT a.id , a.nome , n.nota FROM alunos AS a 
	INNER JOIN notas AS n 
	ON a.id = n.idAluno;
	



	
	
	
	                       