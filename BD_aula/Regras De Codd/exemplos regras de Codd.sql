#1 Regra de Informações em tabelas

SELECT * FROM professores;
SELECT * FROM turmas;

SELECT nomeProfessor FROM professores ORDER BY nomeProfessor;

SELECT nomeProfessor FROM professores ORDER BY nomeProfessor DESC;


#2 Regra do acesso garantido
	#Mostrar apenas as turmas de informatica 
	#Like foi usado para aplicar filtro usando %
	# % significa qualquer conjunto de caracteres 
	#NOT LIKE serviu para  não mostrar turmas com a palavra informações
SELECT * FROM turmas WHERE nomeTurma LIKE "%INFO%"
AND nomeTurma NOT LIKE "%informa";

SELECT * FROM professores WHERE nomeProfessor LIKE "%caixeta%";

#3 Tratamento de valores Nulos

SELECT * FROM professores AS p WHERE p.formacaoProfessor IS NULL;
SELECT * FROM professores AS p WHERE p.formacaoProfessor IS not NULL;

SELECT * FROM professores AS p WHERE p.formacaoProfessor IS NOT NULL AND p.nomeProfessor LIKE "%z%";

#4 Catalogo relacional ativo
DESC professores;
DESC turmas;

#5 Inserçã,exclusão e alteração em Bloco

INSERT INTO turmas VALUES 
(NULL, "1° Zootecnia",2025),
(NULL, "2° Zootecnia",2024);

UPDATE turmas SET nomeTurma = UPPER(nomeTurma) WHERE nomeTurma LIKE "%zootecnia%";


DELETE FROM turmas WHERE nomeTurma LIKE "%agronomia%";

