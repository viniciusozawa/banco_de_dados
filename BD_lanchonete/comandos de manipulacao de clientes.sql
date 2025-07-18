
INSERT INTO cliente(nomeCliente) VALUES("Cliente à vista");


INSERT INTO cliente(nomeCliente) VALUES("Márcia Silva"), ("Patrick Pereira");

INSERT INTO cliente(nomeCliente, cpf) VALUES("Roseli","023.102.843-13");


UPDATE cliente SET dataNascimento = "2000-08-23" WHERE codCliente = 3;


#selecionar apenas o nome, a data de nascomento e calcular 
#a idade apenas dos clientes que infoemara o nascimento
#criar uma view vi_idadeClientes com o resultado

CREATE VIEW vi_idadeCliestes AS
SELECT c.nomeCliente, DATE_FORMAT(c.dataNascimento, "%d/%m/%Y")
AS Data_Nascimento,
FLOOR(DATEDIFF(CURDATE(),c.dataNascimento)/365) AS Idade 
FROM cliente AS c WHERE c.dataNascimento IS NOT NULL;
 

SELECT * FROM cliente;	

/*criar uma view chamada vi_clientesExternas que mostre o nome
o endereco o bairo a cidadde e o cep´apenas os clientes que não moram em Machado*/
CREATE VIEW vi_clientesExternos AS
SELECT c.nomeCliente, c.endereco, c.bairro, c.cidade,
c.cep FROM cliente AS c WHERE c.cidade != "Machado";


/*Criar uma view chamada vi_dadosClientes que mostra o nome dos clientes que informam 
a data de nascimento formatada e o cpf desde que um desses 2 campós esteja preenchido*/
CREATE VIEW vi_dadosClientes AS 
SELECT c.nomeCliente, DATE_FORMAT(c.dataNascimento, "%d/%m/%Y") 
AS Nascimento, c.cpf from cliente AS c WHERE c.dataNascimento IS NOT NULL OR c.cpf IS NOT null


/*Criar um`log`a vi_totalCrientes que mostre apenas o total de clientes cadas
trados. Colocar o rotulo apelido = total de clientes 
*/
CREATE VIEW vi_totalClientes AS 
SELECT COUNT(*) AS  "Total de Clientes" FROM cliente AS c;










