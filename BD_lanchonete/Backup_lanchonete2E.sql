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

-- Copiando dados para a tabela lanchonete2e2025.cargo: ~0 rows (aproximadamente)
INSERT INTO `cargo` (`codCargo`, `nomeCargo`, `salarioInicial`, `funcoes`) VALUES
	(1, 'Gerente', 4300.1, 'Administrar funcionários e controlar o estoque'),
	(2, 'Auxiliar de limpeza', 900.56, 'Limpeza da lanchonete e áreas afins.'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela lanchonete2e2025.cliente: ~0 rows (aproximadamente)

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

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
