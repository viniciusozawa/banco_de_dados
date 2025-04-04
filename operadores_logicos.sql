#Operadores Lógicos

#Buscar as categorias cujo cod seja igual a 2 ou igual 4
SELECT * FROM categoria AS cat
WHERE cat.codCategoria = 2 OR cat.codCategoria = 4;

#Filtrar as categorias cujo cod seja maior que 2 E menor que 6
SELECT * FROM categoria AS cat
WHERE cat.codCategoria > 2 AND cat.codCategoria < 6;

#Selecionar as categorias cujo Não seja maior que 2 nem menor que 6
SELECT * FROM categoria AS cat
WHERE not(cat.codCategoria > 2 AND cat.codCategoria < 6);











