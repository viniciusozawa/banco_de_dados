
BEGIN;
	SELECT * FROM autores;
	INSERT INTO autores VALUE(NULL, "Joanne Rowling", "Britânica");
	INSERT INTO autores VALUE(NULL, "Rick Riordan", "Americano");
	
COMMIT;
	SELECT * FROM autores;  



UPDATE autores SET nome = UPPER(nome);


SELECT a.nome , l.titulo FROM autores AS a
	INNER JOIN livros AS l
	ON a.codAutor = l.autores_codAutor;

	
DELETE FROM livros AS l WHERE l.titulo LIKE "%p%";