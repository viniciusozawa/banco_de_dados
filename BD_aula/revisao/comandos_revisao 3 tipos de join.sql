
#transacao para inserie 4 alunos
BEGIN;
	INSERT INTO alunos VALUE(NULL, "Rodrigo");
	INSERT INTO alunos VALUE(NULL, "ana");
	INSERT INTO alunos VALUE(NULL, "rogerio");
	INSERT INTO alunos VALUE(NULL, "jeferson");
COMMIT;
	SELECT * FROM alunos;  

# mostrar somente o nome e a nota de cada aluno

SELECT a.nome, n.nota FROM alunos AS a 
	INNER JOIN notas AS n
	ON a.id = n.alunos_id;

#exibição dos dados da tabela á esqueda
#neste caso = notas
SELECT a.nome, n.nota FROM alunos AS a 
	LEFT JOIN notas AS n
	ON a.id = n.alunos_id;

#exibição dos dados da tabela á Direita
#neste caso = notas
SELECT a.nome, n.nota FROM alunos AS a 
	right JOIN notas AS n
	ON a.id = n.alunos_id;