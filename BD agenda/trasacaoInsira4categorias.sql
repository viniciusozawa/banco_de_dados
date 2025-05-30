/*Criar uma trasacao que insira 4 caegorias*/

BEGIN;
	INSERT INTO categorias VALUES(NULL,"Familiares" );
	INSERTcategorias INTO categorias VALUES(NULL,"Amigos" );
	INSERT INTO categorias VALUES(NULL,"Colegas de Classe" );
	INSERT INTO categorias VALUES(NULL,"Comerciais" );
COMMIT;

	SELECT * FROM categorias;
	
#Selecionar os nomes de cada contato mostrando tambem o nome 
#de qual categoria cada um pertece

SELECT cont.nomeContato, cat.nome FROM contatos AS cont
	INNER JOIN categorias AS cat ON
	cont.categorias_codcategoria = cat.codcategoria	
	
SELECT cont.nomeContato , cont.email, cont.telefone, cat.nome FROM contatos AS cont
	INNER JOIN categorias AS cat ON
	cont.categorias_codcategoria = cat.codcategoria	
	
SELECT cont.nomeContato, cont.telefone FROM contatos AS cont
	WHERE cont.telefone IS NOT NULL
	
	
DELETE from contatos WHERE nomeContato LIKE "%j%";
SELECT * FROM contatos;

UPDATE categorias SET nome = UPPER(nome) #lower()