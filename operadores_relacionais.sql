#Operadores Relacionais

SELECT * FROM categoria c WHERE c.codCategoria = 4;


#Opções para representar categoria com cod diferente de 4
SELECT * FROM categoria c WHERE c.codCategoria != 4;

SELECT * FROM categoria c WHERE c.codCategoria <> 4;

SELECT * FROM categoria c WHERE c.codCategoria > 4;

SELECT * FROM categoria c WHERE c.codCategoria >= 4;

SELECT * FROM categoria c WHERE c.codCategoria < 4;

SELECT * FROM categoria c WHERE c.codCategoria <= 4;