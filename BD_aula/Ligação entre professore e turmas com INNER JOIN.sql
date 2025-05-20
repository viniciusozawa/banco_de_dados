
#Ligação entre professore e turmas com INNER JOIN
SELECT p.nomeProfessor , t.nomeTurma
FROM professores AS p 
	INNER JOIN turmas AS t
	INNER JOIN professoresporturmas AS ppt 
	ON ppt.professores_codProfessor = p.codProfessor
	AND
	ppt.turmas_codTurma = t.codTurma;                  