#trasacao para alterar os nomes de algumas turmas

BEGIN;
	SELECT * FROM turmas;
	
	UPDATE turmas set nomeTurma = LOWER(nomeTurma) 
		WHERE nomeTurma LIKE "1INFO%"; 
	
	UPDATE turmas set nomeTurma = LOWER(nomeTurma) 
		WHERE nomeTurma LIKE "%Administração%"; 
COMMIT;

	SELECT * FROM turmas;		
