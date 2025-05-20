
#trasação para inserir 3 professores por turmas
BEGIN;
	SELECT * FROM professoresporturmas;
	INSERT INTO professoresporturmas VALUES(NULL, 2,5);
	INSERT INTO professoresporturmas VALUES(NULL, 3,5);
	INSERT INTO professoresporturmas VALUES(NULL, 4,5);
	
COMMIT;
	
	SELECT * FROM professoresporturmas;