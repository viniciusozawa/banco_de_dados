-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.42 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para lanchonete2e2025
DROP DATABASE IF EXISTS `lanchonete2e2025`;
CREATE DATABASE IF NOT EXISTS `lanchonete2e2025` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lanchonete2e2025`;

-- Copiando estrutura para tabela lanchonete2e2025.auditoria
DROP TABLE IF EXISTS `auditoria`;
CREATE TABLE IF NOT EXISTS `auditoria` (
  `codAuditoria` int NOT NULL AUTO_INCREMENT,
  `acao` varchar(600) NOT NULL,
  `tabela` varchar(40) NOT NULL,
  `dataHora` datetime NOT NULL,
  `usuario` varchar(50) NOT NULL,
  PRIMARY KEY (`codAuditoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela lanchonete2e2025.auditoria: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela lanchonete2e2025.cargo
DROP TABLE IF EXISTS `cargo`;
CREATE TABLE IF NOT EXISTS `cargo` (
  `codCargo` int NOT NULL AUTO_INCREMENT,
  `nomeCargo` varchar(150) NOT NULL,
  `salarioInicial` float NOT NULL,
  `funcoes` mediumtext,
  PRIMARY KEY (`codCargo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela lanchonete2e2025.cargo: ~3 rows (aproximadamente)
INSERT INTO `cargo` (`codCargo`, `nomeCargo`, `salarioInicial`, `funcoes`) VALUES
	(1, 'Gerente', 4500.75, 'Administrar funcionários e controlar o estoque'),
	(2, 'Balconista', 1804, 'Realizar o processo de venda'),
	(3, 'Auxiliar de limpeza', 980, 'Limpeza da lanchonete e áreas afins.');

-- Copiando estrutura para tabela lanchonete2e2025.categoria
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `codCategoria` int NOT NULL AUTO_INCREMENT,
  `nomeCategoria` varchar(300) NOT NULL,
  PRIMARY KEY (`codCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela lanchonete2e2025.categoria: ~0 rows (aproximadamente)
INSERT INTO `categoria` (`codCategoria`, `nomeCategoria`) VALUES
	(2, 'Chocolate'),
	(3, 'salgado');

-- Copiando estrutura para tabela lanchonete2e2025.cliente
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `codCliente` int NOT NULL AUTO_INCREMENT,
  `nomeCliente` varchar(300) NOT NULL,
  `dataNascimento` date DEFAULT NULL,
  `telefones` varchar(300) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `bairro` varchar(150) DEFAULT NULL,
  `cidade` varchar(150) DEFAULT 'Machado',
  `cep` varchar(50) DEFAULT '37.750-000',
  `estado` char(2) DEFAULT 'MG',
  `cpf` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela lanchonete2e2025.cliente: ~6 rows (aproximadamente)
INSERT INTO `cliente` (`codCliente`, `nomeCliente`, `dataNascimento`, `telefones`, `email`, `endereco`, `bairro`, `cidade`, `cep`, `estado`, `cpf`) VALUES
	(1, 'Cliente à vista', NULL, NULL, NULL, NULL, NULL, 'Machado', '37.750-000', 'MG', NULL),
	(2, 'Márcia Silva', NULL, NULL, NULL, NULL, NULL, 'Machado', '37.750-000', 'MG', NULL),
	(3, 'Patrick Pereira', '1980-12-05', NULL, NULL, 'Rua das Flores, 23', 'Jardim Primavera', 'Alfenas', '37.135-248', 'MG', NULL),
	(4, 'Roseli Xavier', NULL, NULL, NULL, NULL, NULL, 'Machado', '37.750-000', 'MG', '023.040.999-77'),
	(5, 'Yuji', '2023-03-12', 'tt', 'tt', 'tt', 'tt', 'Paraguaçu', 'tt', 'tt', 'tt'),
	(6, 'j', NULL, NULL, NULL, NULL, NULL, 'Machado', '37.750-000', 'MG', NULL),
	(7, 'd', NULL, NULL, NULL, NULL, NULL, 'Machado', '37.750-000', 'MG', NULL);

-- Copiando estrutura para tabela lanchonete2e2025.funcionario
DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE IF NOT EXISTS `funcionario` (
  `codFuncionario` int NOT NULL AUTO_INCREMENT,
  `nomeFuncionario` varchar(300) NOT NULL,
  `carteiraTrabalho` varchar(150) DEFAULT NULL,
  `cpf` varchar(20) NOT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `orgaoExpedidor` varchar(20) DEFAULT NULL,
  `dataExpedicao` date DEFAULT NULL,
  `dataNascimento` date NOT NULL,
  `dataContratacao` date DEFAULT NULL,
  `dataDemissao` date DEFAULT NULL,
  `telefones` varchar(300) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `endereco` varchar(150) DEFAULT NULL,
  `bairro` varchar(150) DEFAULT NULL,
  `cidade` varchar(150) DEFAULT 'Machado',
  `cep` varchar(50) DEFAULT '37.750-000',
  `estado` char(2) DEFAULT 'MG',
  `salarioAtual` float DEFAULT NULL,
  `cargo_codCargo` int NOT NULL,
  PRIMARY KEY (`codFuncionario`,`cargo_codCargo`),
  KEY `fk_funcionario_cargo1_idx` (`cargo_codCargo`),
  CONSTRAINT `fk_funcionario_cargo1` FOREIGN KEY (`cargo_codCargo`) REFERENCES `cargo` (`codCargo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela lanchonete2e2025.funcionario: ~2 rows (aproximadamente)
INSERT INTO `funcionario` (`codFuncionario`, `nomeFuncionario`, `carteiraTrabalho`, `cpf`, `rg`, `orgaoExpedidor`, `dataExpedicao`, `dataNascimento`, `dataContratacao`, `dataDemissao`, `telefones`, `email`, `endereco`, `bairro`, `cidade`, `cep`, `estado`, `salarioAtual`, `cargo_codCargo`) VALUES
	(1, 'Felipe Teixeira', NULL, '036.777.888-45', NULL, NULL, NULL, '1969-04-18', NULL, NULL, '(35)98811-1234', NULL, NULL, NULL, 'Machado', '37.750-000', 'MG', NULL, 1),
	(2, 'Márcia Alves', NULL, '999.888.888-45', NULL, NULL, NULL, '1978-12-20', NULL, NULL, '(35)3295-4545', NULL, NULL, NULL, 'Machado', '37.750-000', 'MG', NULL, 2);

-- Copiando estrutura para tabela lanchonete2e2025.ingrediente
DROP TABLE IF EXISTS `ingrediente`;
CREATE TABLE IF NOT EXISTS `ingrediente` (
  `codIngrediente` int NOT NULL AUTO_INCREMENT,
  `nomeIngrediente` varchar(100) NOT NULL,
  `principaisUsos` varchar(2000) DEFAULT NULL,
  `medidaCompra` varchar(50) DEFAULT NULL,
  `estoqueIngrediente` float DEFAULT NULL,
  PRIMARY KEY (`codIngrediente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela lanchonete2e2025.ingrediente: ~5 rows (aproximadamente)
INSERT INTO `ingrediente` (`codIngrediente`, `nomeIngrediente`, `principaisUsos`, `medidaCompra`, `estoqueIngrediente`) VALUES
	(1, 'Farinha de trigo', '	Pães, bolos, massas, empanados', 'Kg', 138),
	(2, 'Açúcar cristal', 'Bolos, sobremesas, bebidas', 'Kg', 90),
	(3, 'Sal refinado', 'Temperos, cozimento em geral, conservas', 'Kg', 32),
	(4, 'Creme de leite', 'Molhos, recheios, sobremesas, mousses', 'Unidade', 25),
	(5, 'Leite integral', 'Bolos, cremes, molhos brancos', 'Litro', 28);

-- Copiando estrutura para tabela lanchonete2e2025.itensvenda
DROP TABLE IF EXISTS `itensvenda`;
CREATE TABLE IF NOT EXISTS `itensvenda` (
  `codItensVenda` int NOT NULL AUTO_INCREMENT,
  `venda_codVenda` int NOT NULL,
  `produto_codProduto` int NOT NULL,
  `quantVenda` float NOT NULL,
  PRIMARY KEY (`codItensVenda`,`venda_codVenda`,`produto_codProduto`),
  KEY `fk_venda_has_produto_produto1_idx` (`produto_codProduto`),
  KEY `fk_venda_has_produto_venda1_idx` (`venda_codVenda`),
  CONSTRAINT `fk_venda_has_produto_produto1` FOREIGN KEY (`produto_codProduto`) REFERENCES `produto` (`codProduto`),
  CONSTRAINT `fk_venda_has_produto_venda1` FOREIGN KEY (`venda_codVenda`) REFERENCES `venda` (`codVenda`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela lanchonete2e2025.itensvenda: ~0 rows (aproximadamente)
INSERT INTO `itensvenda` (`codItensVenda`, `venda_codVenda`, `produto_codProduto`, `quantVenda`) VALUES
	(1, 1, 4, 3),
	(2, 1, 5, 2),
	(3, 2, 4, 1);

-- Copiando estrutura para tabela lanchonete2e2025.marca
DROP TABLE IF EXISTS `marca`;
CREATE TABLE IF NOT EXISTS `marca` (
  `codMarca` int NOT NULL AUTO_INCREMENT,
  `nomeMarca` varchar(150) NOT NULL,
  PRIMARY KEY (`codMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela lanchonete2e2025.marca: ~6 rows (aproximadamente)
INSERT INTO `marca` (`codMarca`, `nomeMarca`) VALUES
	(1, 'Bauducco'),
	(2, 'Papel'),
	(3, 'Elma chips'),
	(4, 'Coca-Cola'),
	(5, 'Lacta'),
	(6, 'Nestle');

-- Copiando estrutura para procedure lanchonete2e2025.proc_ajustesPrecoProdutos
DROP PROCEDURE IF EXISTS `proc_ajustesPrecoProdutos`;
DELIMITER //
CREATE PROCEDURE `proc_ajustesPrecoProdutos`(
	IN `opcaoEntrada` VARCHAR(50),
	IN `margemDesejada` DECIMAL(4,1),
	IN `Param3` INT
)
BEGIN
	if( opcaoEntrada = "aumentar" ) then
		UPDATE produto SET precoVenda = 
			precovenda + ( precoVenda * margemDesejada/100);
		
		ELSE IF ( opcaoEntrada = "diminuir" ) then
			UPDATE produto SET precoVenda = 
				precovenda - ( precoVenda * margemDesejada/100);
				
				
		END if;
	
	END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure lanchonete2e2025.proc_alomundo
DROP PROCEDURE IF EXISTS `proc_alomundo`;
DELIMITER //
CREATE PROCEDURE `proc_alomundo`()
BEGIN
	SELECT "alo mudo";
	
	
	
END//
DELIMITER ;

-- Copiando estrutura para procedure lanchonete2e2025.proc_alteraCategoria
DROP PROCEDURE IF EXISTS `proc_alteraCategoria`;
DELIMITER //
CREATE PROCEDURE `proc_alteraCategoria`(
	IN `codigoEntrada` INT,
	IN `nomeEntrada` VARCHAR(150)
)
BEGIN
	SELECT COUNT(*) INTO @contador FROM categoria AS c WHERE c.codCategoria = codigoEntrada;
	
	if(@contador)
		then 
			UPDATE categoria SET nomeCategoria = nomeEntrada WHERE codCategoria = codigoEntrada;
			SELECT nomeCategoria AS "Categoria Alterado" FROM categoria;
		ELSE
			SELECT "Erro ao encontrar o código da Categoria" AS "ERRO";
	END if;
	
	
END//
DELIMITER ;

-- Copiando estrutura para procedure lanchonete2e2025.proc_alteraCliente
DROP PROCEDURE IF EXISTS `proc_alteraCliente`;
DELIMITER //
CREATE PROCEDURE `proc_alteraCliente`(
	IN `codAlterar` INT,
	IN `entradaDataNasc` DATE,
	IN `entradaTelefone` VARCHAR(300),
	IN `entradaEmail` VARCHAR(150),
	IN `entradaEndereco` VARCHAR(150),
	IN `entradaBairro` VARCHAR(150),
	IN `entradaCidade` VARCHAR(150),
	IN `entradaCep` VARCHAR(50),
	IN `entradaEstado` CHAR(2),
	IN `entradaCpf` VARCHAR(20)
)
BEGIN
	SELECT COUNT(*) INTO @contador FROM cliente WHERE codCliente = codAlterar;
	if (@contador)
		then
			UPDATE cliente AS c SET c.dataNascimento = entradaDataNasc, c.telefones = entradaTelefone ,
			c.email = entradaEmail , c.endereco = entradaEndereco, c.bairro = entradaBairro, 
			c.cidade = entradaCidade, c.cep = entradaCep, c.estado = entradaEstado, c.cpf = entradaCpf
			WHERE c.codCliente = codAlterar;
		
		else
			SELECT "Produto não encontrado" AS ERRO;	
	END if;
	SELECT * FROM cliente;
END//
DELIMITER ;

-- Copiando estrutura para procedure lanchonete2e2025.proc_alterarProduto
DROP PROCEDURE IF EXISTS `proc_alterarProduto`;
DELIMITER //
CREATE PROCEDURE `proc_alterarProduto`(
	IN `codAlterar` INT,
	IN `nomeMarca` VARCHAR(150),
	IN `quantEstoqueAlterar` FLOAT,
	IN `quantMinimaAlterar` FLOAT,
	IN `precoCustoAlterar` DECIMAL(6,2),
	IN `precoVendaAlterar` DECIMAL(6,2),
	IN `margemLucroAlterar` DECIMAL(4,1),
	IN `validadeAlterar` DATE,
	IN `qualMarca` INT,
	IN `qualCategoria` INT
)
BEGIN
	SELECT COUNT(*) INTO @contador FROM produto WHERE codProduto = codAlterar;
	if (@contador)
		then
			UPDATE produto SET nomeProduto = nomeAlterarl, quantEstoque = quantEstoqueAlterar,
			quantMinima = quanrMinimaAlterar, precoCusto = precoCustoAlterar, precoVenda = precoVendaAlterar,
			margemLucro = margemLucroAlterar, validade = validadeAlterar, marca_codMargem = qualMarca,
			categoria_codCategoria = qualCategoria WHERE codProduto = codAlterar;
		
		else
			SELECT "Produto não encontrado" AS ERRO;	
	END if;
	SELECT * FROM produto;
	
END//
DELIMITER ;

-- Copiando estrutura para procedure lanchonete2e2025.proc_aluno
DROP PROCEDURE IF EXISTS `proc_aluno`;
DELIMITER //
CREATE PROCEDURE `proc_aluno`()
BEGIN
	SELECT "alo mundo";
END//
DELIMITER ;

-- Copiando estrutura para procedure lanchonete2e2025.proc_apagaCategoria
DROP PROCEDURE IF EXISTS `proc_apagaCategoria`;
DELIMITER //
CREATE PROCEDURE `proc_apagaCategoria`(
	IN `codigoEntrada` INT
)
BEGIN
	SELECT COUNT(*) INTO @contador FROM categoria AS c WHERE c.codCategoria = codigoEntrada;
	
	if(@contador)
		then 
			delete from categoria WHERE codCategoria = codigoEntrada;
			SELECT "Categoria apagado com sucesso" AS "Categoria";
		ELSE
			SELECT "Erro ao encontrar o código da Categoria" AS "ERRO";
	END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure lanchonete2e2025.proc_deletaMarca
DROP PROCEDURE IF EXISTS `proc_deletaMarca`;
DELIMITER //
CREATE PROCEDURE `proc_deletaMarca`(
	IN `codApagar` INT
)
BEGIN
	SELECT COUNT(*) INTO @contador FROM marca WHERE codMarca = codApagar;
	if( @contador = 1)
		then 
			DELETE FROM marca WHERE codMarca = codApagar;
			SELECT "Marca apagada com sucesso!" AS mensagem;
		ELSE 
			#@SELECT "Marca não encontrada para apagar" AS "ERRO";
			signal SQLSTATE '45000' SET MESSAGE_TEXT= "Marca não encontrada";
	END if;
	
END//
DELIMITER ;

-- Copiando estrutura para procedure lanchonete2e2025.proc_imprimeFrase
DROP PROCEDURE IF EXISTS `proc_imprimeFrase`;
DELIMITER //
CREATE PROCEDURE `proc_imprimeFrase`(IN frase VARCHAR(300))
BEGIN
	SELECT frase AS mensagem;
END//
DELIMITER ;

-- Copiando estrutura para procedure lanchonete2e2025.proc_insereCategroria
DROP PROCEDURE IF EXISTS `proc_insereCategroria`;
DELIMITER //
CREATE PROCEDURE `proc_insereCategroria`(
	IN `entrada_Nome` VARCHAR(150)
)
BEGIN
	INSERT INTO categoria(nomeCategoria) VALUES(entrada_Nome);
	SELECT * FROM categoria;
END//
DELIMITER ;

-- Copiando estrutura para procedure lanchonete2e2025.proc_insereClientes
DROP PROCEDURE IF EXISTS `proc_insereClientes`;
DELIMITER //
CREATE PROCEDURE `proc_insereClientes`(
	IN `entradaNome` VARCHAR(150)
)
BEGIN
	INSERT INTO cliente(nomeCliente) VALUES(entradaNome);
	SELECT * FROM cliente;
END//
DELIMITER ;

-- Copiando estrutura para procedure lanchonete2e2025.proc_insereMarca
DROP PROCEDURE IF EXISTS `proc_insereMarca`;
DELIMITER //
CREATE PROCEDURE `proc_insereMarca`(
	IN `entrada_nomeMarca` VARCHAR(150)
)
BEGIN
	INSERT INTO marca(nomeMarca) VALUES(entrada_nomeMarca);
END//
DELIMITER ;

-- Copiando estrutura para procedure lanchonete2e2025.proc_insereProduto
DROP PROCEDURE IF EXISTS `proc_insereProduto`;
DELIMITER //
CREATE PROCEDURE `proc_insereProduto`(
	IN `entradaNome` VARCHAR(150),
	IN `entradaPrecoVenda` DECIMAL(6,2),
	IN `entradaMarcaCod` INT,
	IN `entradaCategoriaCod` INT
)
    COMMENT 'insere produto preenchendo apenas os campos obrigatórios'
BEGIN
	INSERT INTO produto(nomeProduto, precoVenda, marca_codMarca, categoria_codCategoria)
	VALUES(entradaNome, entradaPrecoVenda, entradaMarcaCod, entradaCategoriaCod);
END//
DELIMITER ;

-- Copiando estrutura para procedure lanchonete2e2025.proc_media
DROP PROCEDURE IF EXISTS `proc_media`;
DELIMITER //
CREATE PROCEDURE `proc_media`(
	IN `nota1` FLOAT,
	IN `nota2` FLOAT,
	IN `nota3` FLOAT,
	OUT `resultado` DECIMAL(3,1)
)
BEGIN
	SET resultado = (nota1 + nota2 + nota3) /3;
	
	
END//
DELIMITER ;

-- Copiando estrutura para procedure lanchonete2e2025.proc_quadrado
DROP PROCEDURE IF EXISTS `proc_quadrado`;
DELIMITER //
CREATE PROCEDURE `proc_quadrado`(
	INOUT `numero` INT
)
BEGIN
	SET numero = numero * numero;
END//
DELIMITER ;

-- Copiando estrutura para procedure lanchonete2e2025.proc_relatoriosCliente
DROP PROCEDURE IF EXISTS `proc_relatoriosCliente`;
DELIMITER //
CREATE PROCEDURE `proc_relatoriosCliente`(
	IN `tipoRelatorio` INT
)
BEGIN
	if( tipoRelatorio = 1 ) then
		
		SELECT c.codCliente, c.nomeCliente, c.email , DATE_FORMAT(c.dataNascimento,"%d/%m/%Y") 
		AS Data_Nascimento FROM cliente AS c;
		
		ELSE IF ( tipoRelatorio = 2 ) then
			
			SELECT c.nomeCliente, c.telefones, c.cidade , c.estado FROM cliente AS c;
			
		
			ELSE if(tipoRelatorio = 3 )then
				SELECT c.codCliente, c.nomeCliente, c.cidade , c.estado , c.cep, c.telefones 
				FROM cliente AS c WHERE c.cidade = "Paraguaçu";
				
				else
					SELECT "Erro: ao encontrar sua opção" AS mensagem;
			END if;	
				
		END if;
	
	END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure lanchonete2e2025.proc_relatoriosProdutos
DROP PROCEDURE IF EXISTS `proc_relatoriosProdutos`;
DELIMITER //
CREATE PROCEDURE `proc_relatoriosProdutos`(
	IN `opcaoEntrada` VARCHAR(150)
)
BEGIN
	if (opcaoEntrada = "simples") 
		then
			SELECT p.nomeProduto, p.precoVenda from produto AS p;
		ELSE IF (opcaoEntrada = "personalizado")
			then
				SELECT p.nomeProduto, p.precoVenda, m.nomeMarca, c.nomeCategoria  FROM produto AS p
				INNER JOIN marca AS m ON p.marca_codMarca = m.codMarca 
				INNER JOIN categoria AS c ON p.categoria_codCategoria = c.codCategoria;
			ELSE IF (opcaoEntrada = "estoque")
				then
					SELECT p.codProduto, p.nomeProduto, p.quantEstoque, p.quantMinima FROM produto AS p;
				ELSE	if (opcaoEntrada = "abaixoEstoque")
					then
						SELECT p.nomeProduto FROM produto AS p WHERE p.quantEstoque < p.quantMinima;
					ELSE IF (opcaoEntrada = "vigilanciaSanitaria")
						then
							SELECT p.codProduto, p.nomeProduto, DATE_FORMAT(p.validade,"%d/%m/%y") FROM produto AS p;
						ELSE IF (opcaoEntrada = "total")
							then
							SELECT COUNT(*) AS totalProdutos FROM produto;
							else
								SELECT "opacao invalida";
						END if;
					END if;
				END if;
			END if;
		END if;
	END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure lanchonete2e2025.proc_updateMarca
DROP PROCEDURE IF EXISTS `proc_updateMarca`;
DELIMITER //
CREATE PROCEDURE `proc_updateMarca`(
	IN `codAlter` INT,
	IN `nomeAlter` INT
)
BEGIN
	
	SELECT COUNT(*) INTO @existe FROM marca WHERE codMarca = codAlter;
	
	if (@existe)
		then UPDATE marca SET nomeMarca = nomeAlter WHERE codMarca = codAlter;
		ELSE SELECT "Marca não encontrada" AS ERRO;
	END if;
	
	SELECT * FROM marca;
END//
DELIMITER ;

-- Copiando estrutura para tabela lanchonete2e2025.produto
DROP TABLE IF EXISTS `produto`;
CREATE TABLE IF NOT EXISTS `produto` (
  `codProduto` int NOT NULL AUTO_INCREMENT,
  `nomeProduto` varchar(150) NOT NULL,
  `quantEstoque` float DEFAULT NULL,
  `quantMinima` float DEFAULT NULL,
  `precoCusto` decimal(6,2) DEFAULT NULL,
  `precoVenda` decimal(6,2) NOT NULL,
  `margemLucro` decimal(4,1) DEFAULT NULL,
  `validade` date DEFAULT NULL,
  `marca_codMarca` int NOT NULL,
  `categoria_codCategoria` int NOT NULL,
  PRIMARY KEY (`codProduto`,`marca_codMarca`,`categoria_codCategoria`),
  KEY `fk_produto_marca_idx` (`marca_codMarca`),
  KEY `fk_produto_categoria1_idx` (`categoria_codCategoria`),
  CONSTRAINT `fk_produto_categoria1` FOREIGN KEY (`categoria_codCategoria`) REFERENCES `categoria` (`codCategoria`),
  CONSTRAINT `fk_produto_marca` FOREIGN KEY (`marca_codMarca`) REFERENCES `marca` (`codMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela lanchonete2e2025.produto: ~2 rows (aproximadamente)
INSERT INTO `produto` (`codProduto`, `nomeProduto`, `quantEstoque`, `quantMinima`, `precoCusto`, `precoVenda`, `margemLucro`, `validade`, `marca_codMarca`, `categoria_codCategoria`) VALUES
	(4, 'Coxinha Frango', 20, 10, 5.00, 8.50, NULL, '2025-09-21', 2, 3),
	(5, 'prestigio', 10, 5, 10.00, 20.00, NULL, '2025-09-14', 6, 2);

-- Copiando estrutura para tabela lanchonete2e2025.venda
DROP TABLE IF EXISTS `venda`;
CREATE TABLE IF NOT EXISTS `venda` (
  `codVenda` int NOT NULL AUTO_INCREMENT,
  `dataHora` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `formaPagamento` enum('PIX','Dinheiro','Cartão de Crédito','Cartão de Débito','Ticket Alimentação','Convênio','Cheque') NOT NULL,
  `cliente_codCliente` int NOT NULL,
  `funcionario_codFuncionario` int NOT NULL,
  PRIMARY KEY (`codVenda`,`cliente_codCliente`,`funcionario_codFuncionario`),
  KEY `fk_venda_cliente1_idx` (`cliente_codCliente`),
  KEY `fk_venda_funcionario1_idx` (`funcionario_codFuncionario`),
  CONSTRAINT `fk_venda_cliente1` FOREIGN KEY (`cliente_codCliente`) REFERENCES `cliente` (`codCliente`),
  CONSTRAINT `fk_venda_funcionario1` FOREIGN KEY (`funcionario_codFuncionario`) REFERENCES `funcionario` (`codFuncionario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela lanchonete2e2025.venda: ~0 rows (aproximadamente)
INSERT INTO `venda` (`codVenda`, `dataHora`, `formaPagamento`, `cliente_codCliente`, `funcionario_codFuncionario`) VALUES
	(1, '2025-09-19 07:21:32', 'PIX', 4, 1),
	(2, '2025-09-19 07:22:42', 'Cartão de Débito', 3, 2);

-- Copiando estrutura para view lanchonete2e2025.vi_cargos_altos_salarios
DROP VIEW IF EXISTS `vi_cargos_altos_salarios`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vi_cargos_altos_salarios` (
	`nomeCargo` VARCHAR(1) NOT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view lanchonete2e2025.vi_cargos_ordenados_salario
DROP VIEW IF EXISTS `vi_cargos_ordenados_salario`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vi_cargos_ordenados_salario` (
	`codCargo` INT NOT NULL,
	`nomeCargo` VARCHAR(1) NOT NULL COLLATE 'utf8mb3_general_ci',
	`salarioInicial` FLOAT NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view lanchonete2e2025.vi_clientesexternos
DROP VIEW IF EXISTS `vi_clientesexternos`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vi_clientesexternos` (
	`nomeCliente` VARCHAR(1) NOT NULL COLLATE 'utf8mb3_general_ci',
	`endereco` VARCHAR(1) NULL COLLATE 'utf8mb3_general_ci',
	`bairro` VARCHAR(1) NULL COLLATE 'utf8mb3_general_ci',
	`cidade` VARCHAR(1) NULL COLLATE 'utf8mb3_general_ci',
	`cep` VARCHAR(1) NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view lanchonete2e2025.vi_dadosclientes
DROP VIEW IF EXISTS `vi_dadosclientes`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vi_dadosclientes` (
	`nomeCliente` VARCHAR(1) NOT NULL COLLATE 'utf8mb3_general_ci',
	`nascimento` VARCHAR(1) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`cpf` VARCHAR(1) NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view lanchonete2e2025.vi_idadeclientes
DROP VIEW IF EXISTS `vi_idadeclientes`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vi_idadeclientes` (
	`nomeCliente` VARCHAR(1) NOT NULL COLLATE 'utf8mb3_general_ci',
	`nascimento` VARCHAR(1) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`idade` BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view lanchonete2e2025.vi_idadefuncionarios
DROP VIEW IF EXISTS `vi_idadefuncionarios`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vi_idadefuncionarios` (
	`nomeFuncionario` VARCHAR(1) NOT NULL COLLATE 'utf8mb3_general_ci',
	`nascimento` VARCHAR(1) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`idade` BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view lanchonete2e2025.vi_informacoesfuncionarios
DROP VIEW IF EXISTS `vi_informacoesfuncionarios`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vi_informacoesfuncionarios` (
	`codFuncionario` INT NOT NULL,
	`cpf` VARCHAR(1) NOT NULL COLLATE 'utf8mb3_general_ci',
	`nomeFuncionario` VARCHAR(1) NOT NULL COLLATE 'utf8mb3_general_ci',
	`nomeCargo` VARCHAR(1) NOT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view lanchonete2e2025.vi_ingredientes_bolo
DROP VIEW IF EXISTS `vi_ingredientes_bolo`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vi_ingredientes_bolo` (
	`nomeIngrediente` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_0900_ai_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view lanchonete2e2025.vi_ingredientes_estoque_baixo
DROP VIEW IF EXISTS `vi_ingredientes_estoque_baixo`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vi_ingredientes_estoque_baixo` (
	`nomeIngrediente` VARCHAR(1) NOT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`medidaCompra` VARCHAR(1) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`estoqueIngrediente` FLOAT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view lanchonete2e2025.vi_nascimentofuncionarios
DROP VIEW IF EXISTS `vi_nascimentofuncionarios`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vi_nascimentofuncionarios` (
	`nomeFuncionario` VARCHAR(1) NOT NULL COLLATE 'utf8mb3_general_ci',
	`cpf` VARCHAR(1) NOT NULL COLLATE 'utf8mb3_general_ci',
	`nascimento` VARCHAR(1) NULL COLLATE 'utf8mb4_0900_ai_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view lanchonete2e2025.vi_totalclientes
DROP VIEW IF EXISTS `vi_totalclientes`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vi_totalclientes` (
	`Total de Clientes` BIGINT NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view lanchonete2e2025.vi_total_a_pagar
DROP VIEW IF EXISTS `vi_total_a_pagar`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vi_total_a_pagar` (
	`venda_codVenda` INT NOT NULL,
	`Valor Final` VARCHAR(1) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vi_cargos_altos_salarios`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vi_cargos_altos_salarios` AS select `cargo`.`nomeCargo` AS `nomeCargo` from `cargo` where (`cargo`.`salarioInicial` > 2000)
;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vi_cargos_ordenados_salario`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vi_cargos_ordenados_salario` AS select `cargo`.`codCargo` AS `codCargo`,`cargo`.`nomeCargo` AS `nomeCargo`,`cargo`.`salarioInicial` AS `salarioInicial` from `cargo` order by `cargo`.`salarioInicial`
;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vi_clientesexternos`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vi_clientesexternos` AS select `c`.`nomeCliente` AS `nomeCliente`,`c`.`endereco` AS `endereco`,`c`.`bairro` AS `bairro`,`c`.`cidade` AS `cidade`,`c`.`cep` AS `cep` from `cliente` `c` where (`c`.`cidade` <> 'Machado')
;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vi_dadosclientes`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vi_dadosclientes` AS select `c`.`nomeCliente` AS `nomeCliente`,date_format(`c`.`dataNascimento`,'%d/%m/%Y') AS `nascimento`,`c`.`cpf` AS `cpf` from `cliente` `c` where ((`c`.`dataNascimento` is not null) or (`c`.`cpf` is not null))
;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vi_idadeclientes`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vi_idadeclientes` AS select `c`.`nomeCliente` AS `nomeCliente`,date_format(`c`.`dataNascimento`,'%d/%m/%Y') AS `nascimento`,floor(((to_days(curdate()) - to_days(`c`.`dataNascimento`)) / 365)) AS `idade` from `cliente` `c` where (`c`.`dataNascimento` is not null)
;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vi_idadefuncionarios`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vi_idadefuncionarios` AS select `f`.`nomeFuncionario` AS `nomeFuncionario`,date_format(`f`.`dataNascimento`,'%d/%m/%Y') AS `nascimento`,floor(((to_days(curdate()) - to_days(`f`.`dataNascimento`)) / 365)) AS `idade` from `funcionario` `f`
;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vi_informacoesfuncionarios`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vi_informacoesfuncionarios` AS select `f`.`codFuncionario` AS `codFuncionario`,`f`.`cpf` AS `cpf`,`f`.`nomeFuncionario` AS `nomeFuncionario`,`c`.`nomeCargo` AS `nomeCargo` from (`funcionario` `f` join `cargo` `c` on((`f`.`cargo_codCargo` = `c`.`codCargo`)))
;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vi_ingredientes_bolo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vi_ingredientes_bolo` AS select `ingrediente`.`nomeIngrediente` AS `nomeIngrediente` from `ingrediente` where (`ingrediente`.`principaisUsos` like '%bolos%')
;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vi_ingredientes_estoque_baixo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vi_ingredientes_estoque_baixo` AS select `ingrediente`.`nomeIngrediente` AS `nomeIngrediente`,`ingrediente`.`medidaCompra` AS `medidaCompra`,`ingrediente`.`estoqueIngrediente` AS `estoqueIngrediente` from `ingrediente` where (`ingrediente`.`estoqueIngrediente` < 30)
;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vi_nascimentofuncionarios`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vi_nascimentofuncionarios` AS select `f`.`nomeFuncionario` AS `nomeFuncionario`,`f`.`cpf` AS `cpf`,date_format(`f`.`dataNascimento`,'%d/%m/%Y') AS `nascimento` from `funcionario` `f`
;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vi_totalclientes`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vi_totalclientes` AS select count(0) AS `Total de Clientes` from `cliente` `c`
;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vi_total_a_pagar`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vi_total_a_pagar` AS select `i`.`venda_codVenda` AS `venda_codVenda`,format(sum((`i`.`quantVenda` * `p`.`precoVenda`)),2) AS `Valor Final` from (((`venda` `v` join `itensvenda` `i` on((`v`.`codVenda` = `i`.`venda_codVenda`))) join `produto` `p` on((`p`.`codProduto` = `i`.`produto_codProduto`))) join `cliente` `c` on((`c`.`codCliente` = `v`.`cliente_codCliente`))) group by `i`.`venda_codVenda`,`c`.`nomeCliente`
;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
