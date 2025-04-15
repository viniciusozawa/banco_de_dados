-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.2.0 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para aula2e
DROP DATABASE IF EXISTS `aula2e`;
CREATE DATABASE IF NOT EXISTS `aula2e` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `aula2e`;

-- Copiando estrutura para tabela aula2e.professores
DROP TABLE IF EXISTS `professores`;
CREATE TABLE IF NOT EXISTS `professores` (
  `codProfessor` int NOT NULL AUTO_INCREMENT,
  `nomeProfessor` varchar(300) NOT NULL,
  `formacaoProfessor` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`codProfessor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela aula2e.professores: ~0 rows (aproximadamente)
INSERT INTO `professores` (`codProfessor`, `nomeProfessor`, `formacaoProfessor`) VALUES
	(1, 'Cristina Almeida', 'Ciencia da computação'),
	(2, 'João Roberto Caixeta', NULL),
	(3, 'Paulize Ramos', 'Química'),
	(4, 'Vlander Verdade', NULL);

-- Copiando estrutura para tabela aula2e.professoresporturmas
DROP TABLE IF EXISTS `professoresporturmas`;
CREATE TABLE IF NOT EXISTS `professoresporturmas` (
  `professores_codProfessor` int NOT NULL,
  `turmas_codTurma` int NOT NULL,
  PRIMARY KEY (`professores_codProfessor`,`turmas_codTurma`),
  KEY `fk_professores_has_turmas_turmas1_idx` (`turmas_codTurma`),
  KEY `fk_professores_has_turmas_professores_idx` (`professores_codProfessor`),
  CONSTRAINT `fk_professores_has_turmas_professores` FOREIGN KEY (`professores_codProfessor`) REFERENCES `professores` (`codProfessor`),
  CONSTRAINT `fk_professores_has_turmas_turmas1` FOREIGN KEY (`turmas_codTurma`) REFERENCES `turmas` (`codTurma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela aula2e.professoresporturmas: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela aula2e.turmas
DROP TABLE IF EXISTS `turmas`;
CREATE TABLE IF NOT EXISTS `turmas` (
  `codTurma` int NOT NULL AUTO_INCREMENT,
  `nomeTurma` varchar(150) NOT NULL,
  `anoIngresso` year NOT NULL,
  PRIMARY KEY (`codTurma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela aula2e.turmas: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
