#Comandos de manipulação de cargos

DESC cargo;

INSERT INTO cargo(nomeCargo, salarioInicial)
	VALUES("Gerente", 4300.10);

INSERT INTO cargo(nomeCargo, salarioInicial)
	VALUES("Balconista", 1804);

INSERT INTO cargo
	VALUES(NULL, "Auxiliar de limpeza", 900.56, "Limpeza da lanchonete e áreas afins.");

UPDATE cargo SET funcoes = "Realizar o processo de Venda" WHERE codCargo = 3;

SELECT * FROM cargo WHERE funcoes IS null;


UPDATE cargo SET funcoes = "Administrar funcionários e controlar o estoque" 
WHERE codCargo = 1;

SELECT c.nomeCargo AS "Nome do cargo", FORMAT(c.salarioInicial,2) AS "Sálario inicial" FROM cargo AS c



