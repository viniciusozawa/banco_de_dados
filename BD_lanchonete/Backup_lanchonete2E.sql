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

-- Copiando estrutura para tabela lanchonete2e2025.cargo
DROP TABLE IF EXISTS `cargo`;
CREATE TABLE IF NOT EXISTS `cargo` (
  `codCargo` int NOT NULL AUTO_INCREMENT,
  `nomeCargo` varchar(150) NOT NULL,
  `salarioInicial` float NOT NULL,
  `funcoes` mediumtext,
  PRIMARY KEY (`codCargo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela lanchonete2e2025.cargo: ~2 rows (aproximadamente)
INSERT INTO `cargo` (`codCargo`, `nomeCargo`, `salarioInicial`, `funcoes`) VALUES
	(1, 'Gerente', 4300.1, 'Administrar funcionários e controlar o estoque'),
	(2, 'Auxiliar de limpeza', 970.56, 'Limpeza da lanchonete e áreas afins.'),
	(3, 'Balconista', 1804, 'Realizar o processo de Venda');

-- Copiando estrutura para tabela lanchonete2e2025.categoria
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `codCategoria` int NOT NULL AUTO_INCREMENT,
  `nomeCategoria` varchar(300) NOT NULL,
  PRIMARY KEY (`codCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela lanchonete2e2025.categoria: ~0 rows (aproximadamente)

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela lanchonete2e2025.cliente: ~0 rows (aproximadamente)
INSERT INTO `cliente` (`codCliente`, `nomeCliente`, `dataNascimento`, `telefones`, `email`, `endereco`, `bairro`, `cidade`, `cep`, `estado`, `cpf`) VALUES
	(1, 'Cliente à vista', NULL, NULL, NULL, NULL, NULL, 'Machado', '37.750-000', 'MG', NULL),
	(2, 'Márcia Silva', NULL, NULL, NULL, NULL, NULL, 'Machado', '37.750-000', 'MG', NULL),
	(3, 'Patrick Pereira', '2000-08-23', NULL, NULL, 'Rua Bejamin, 23', 'Jardim', 'Alfenas', '37.215-012', 'MG', NULL),
	(4, 'Roseli', NULL, NULL, NULL, NULL, NULL, 'Machado', '37.750-000', 'MG', '023.102.843-13');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela lanchonete2e2025.funcionario: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela lanchonete2e2025.ingredientes
DROP TABLE IF EXISTS `ingredientes`;
CREATE TABLE IF NOT EXISTS `ingredientes` (
  `codIngredientes` int NOT NULL AUTO_INCREMENT,
  `nomeIngredientes` varchar(100) NOT NULL,
  `principaisUsos` varchar(2000) DEFAULT NULL,
  `mediaCompra` varchar(50) DEFAULT NULL,
  `estoqueIngrediente` float DEFAULT NULL,
  PRIMARY KEY (`codIngredientes`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela lanchonete2e2025.ingredientes: ~5 rows (aproximadamente)
INSERT INTO `ingredientes` (`codIngredientes`, `nomeIngredientes`, `principaisUsos`, `mediaCompra`, `estoqueIngrediente`) VALUES
	(1, 'Farinha de trigo', 'Pães, bolos, massas, empanados', 'Kg', 138),
	(2, 'Açúcar cristal', 'Bolos, sobremesas, bebidas', 'Kg', 90),
	(4, 'Creme de leite', 'Molhos, recheios, sobremesas, mousses', 'Unidade', 47),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela lanchonete2e2025.itensvenda: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela lanchonete2e2025.log
DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `idlog` int NOT NULL AUTO_INCREMENT,
  `acao` varchar(600) NOT NULL,
  `tabela` varchar(45) NOT NULL,
  `dataHora` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario` varchar(50) NOT NULL,
  PRIMARY KEY (`idlog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela lanchonete2e2025.log: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela lanchonete2e2025.marca
DROP TABLE IF EXISTS `marca`;
CREATE TABLE IF NOT EXISTS `marca` (
  `codMarca` int NOT NULL AUTO_INCREMENT,
  `nomeMarca` varchar(150) NOT NULL,
  PRIMARY KEY (`codMarca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela lanchonete2e2025.marca: ~0 rows (aproximadamente)

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela lanchonete2e2025.produto: ~0 rows (aproximadamente)

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela lanchonete2e2025.venda: ~0 rows (aproximadamente)

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
	`Nascimento` VARCHAR(1) NULL COLLATE 'utf8mb4_general_ci',
	`cpf` VARCHAR(1) NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view lanchonete2e2025.vi_idadecliestes
DROP VIEW IF EXISTS `vi_idadecliestes`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vi_idadecliestes` (
	`nomeCliente` VARCHAR(1) NOT NULL COLLATE 'utf8mb3_general_ci',
	`Data_Nascimento` VARCHAR(1) NULL COLLATE 'utf8mb4_general_ci',
	`Idade` BIGINT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view lanchonete2e2025.vi_ingredientes_bolos
DROP VIEW IF EXISTS `vi_ingredientes_bolos`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vi_ingredientes_bolos` (
	`nomeIngredientes` VARCHAR(1) NOT NULL COLLATE 'utf8mb3_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view lanchonete2e2025.vi_ingredientes_estoque_abaixo
DROP VIEW IF EXISTS `vi_ingredientes_estoque_abaixo`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vi_ingredientes_estoque_abaixo` (
	`nomeIngredientes` VARCHAR(1) NOT NULL COLLATE 'utf8mb3_general_ci',
	`mediaCompra` VARCHAR(1) NULL COLLATE 'utf8mb3_general_ci',
	`estoqueIngrediente` FLOAT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view lanchonete2e2025.vi_totalclientes
DROP VIEW IF EXISTS `vi_totalclientes`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vi_totalclientes` (
	`Total de Clientes` BIGINT NOT NULL
) ENGINE=MyISAM;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vi_cargos_altos_salarios`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vi_cargos_altos_salarios` AS select `c`.`nomeCargo` AS `nomeCargo` from `cargo` `c` where (`c`.`salarioInicial` > 2000)
;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vi_cargos_ordenados_salario`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vi_cargos_ordenados_salario` AS select `c`.`nomeCargo` AS `nomeCargo`,`c`.`salarioInicial` AS `salarioInicial` from `cargo` `c` order by `c`.`salarioInicial`
;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vi_clientesexternos`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vi_clientesexternos` AS select `c`.`nomeCliente` AS `nomeCliente`,`c`.`endereco` AS `endereco`,`c`.`bairro` AS `bairro`,`c`.`cidade` AS `cidade`,`c`.`cep` AS `cep` from `cliente` `c` where (`c`.`cidade` <> 'Machado')
;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vi_dadosclientes`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vi_dadosclientes` AS select `c`.`nomeCliente` AS `nomeCliente`,date_format(`c`.`dataNascimento`,'%d/%m/%Y') AS `Nascimento`,`c`.`cpf` AS `cpf` from `cliente` `c` where ((`c`.`dataNascimento` is not null) or (`c`.`cpf` is not null))
;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vi_idadecliestes`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vi_idadecliestes` AS select `c`.`nomeCliente` AS `nomeCliente`,date_format(`c`.`dataNascimento`,'%d/%m/%Y') AS `Data_Nascimento`,floor(((to_days(curdate()) - to_days(`c`.`dataNascimento`)) / 365)) AS `Idade` from `cliente` `c` where (`c`.`dataNascimento` is not null)
;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vi_ingredientes_bolos`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vi_ingredientes_bolos` AS select `ingredientes`.`nomeIngredientes` AS `nomeIngredientes` from `ingredientes` where (`ingredientes`.`principaisUsos` like '%bolos%')
;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vi_ingredientes_estoque_abaixo`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vi_ingredientes_estoque_abaixo` AS select `i`.`nomeIngredientes` AS `nomeIngredientes`,`i`.`mediaCompra` AS `mediaCompra`,`i`.`estoqueIngrediente` AS `estoqueIngrediente` from `ingredientes` `i` where (`i`.`estoqueIngrediente` < 30)
;

-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vi_totalclientes`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vi_totalclientes` AS select count(0) AS `Total de Clientes` from `cliente` `c`
;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
