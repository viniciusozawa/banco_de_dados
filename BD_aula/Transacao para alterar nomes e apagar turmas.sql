#Transacao para alterar nomes e apagar turmas

BEGIN;

	SELECT * FROM turmas;
	
	UPDATE turmas SET nomeTurma = UPPER(nomeTurma) 
		WHERE nomeTurma LIKE "1INFO%";
	
	DELETE FROM turmas WHERE nomeTurma LIKE "%administração%";
	
COMMIT;

	SELECT * FROM turmas;
		