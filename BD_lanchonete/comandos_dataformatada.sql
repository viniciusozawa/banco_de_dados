INSERT INTO funcionario(nomeFuncionario, cpf, datanasc, telefones, cargo_codcargo)
	VALUES("Felipe Teixeira", "036.432.231-20","2007-08-19", "(35)98811-1234",1) 
	
	
INSERT INTO funcionario(nomeFuncionario, cpf, datanasc, telefones, cargo_codcargo)
	VALUES("Otaviano", "000.000.000-20","1900-02-21", "(35)90294-1234",2) 
	
SELECT * FROM funcionario;

#criar uma view que mostre o nome de cada funcionario seu cpg e dara de nascimento foermatado,
#sendo esperado dias mes ano com 4 digitos
CREATE VIEW vi_nascimentoFuncionario AS
SELECT f.nomefuncionario,f.cpf,
DATE_FORMAT(f.datanasc,"%d/%m/%Y") AS Data_Nascimento
FROM funcionario AS f 


#criar uma view que mostre o nome do funcionario, sua data de nascimento formatada e o calculo da sua idade
CREATE VIEW vi_idadeFuncionarios as
SELECT f.nomefuncionario, DATE_FORMAT(f.datanasc, "%d/%m/%Y") AS nascimento, 
FLOOR(DATEDIFF(CURDATE(),f.datanasc)/365) AS idade
FROM funcionario AS f;

SELECT * FROM vi_idadeFuncionarios;

SELECT CURDATE();

CREATE VIEW vi_funcionarioCargo AS
SELECT f.codfuncionatio,  f.cpf, f.nomefuncionario, c.nomecargol FROM funcionario AS f
	INNER JOIN cargo AS c on f.cargo_codcargo = c.codcargo
