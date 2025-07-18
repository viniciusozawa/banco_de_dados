
BEGIN;
	INSERT INTO ingredientes VALUES(NULL,'Farinha de trigo','Pães, bolos, massas, empanados','Kg',138);
	INSERT INTO ingredientes VALUES(NULL, 'Açúcar cristal','Bolos, sobremesas, bebidas','Kg', 90);
	INSERT INTO ingredientes VALUES(NULL,'Sal refinado', 'Temperos, cozimento em geral, conservas', 'Kg', 32);
	INSERT INTO ingredientes VALUES(NULL,'Creme de leite', 'Molhos, recheios, sobremesas, mousses', 'Unidade', 25);
	INSERT INTO ingredientes VALUES(NULL,'Leite integral', 'Bolos, cremes, molhos brancos', 'Litro', 28);

COMMIT;
	SELECT * FROM ingredientes;