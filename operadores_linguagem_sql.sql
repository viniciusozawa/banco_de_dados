#operadores da linguagem sql
#pesquisar categorias com codCategoria dentro do conjunto 2,4,6
SELECT * FROM categoria AS c
WHERE c.codCategoria IN(2, 4, 6);
#pesquisar categorias com codCategoria fora do conjunto 2,4,6
SELECT * FROM categoria AS c
WHERE c.codCategoria not IN(2, 4, 6);


#filtrar as categorias no limite 3 E 5 , incluindo eles
SELECT * FROM categoria AS c
WHERE c.codCategoria BETWEEN 3 AND 5;