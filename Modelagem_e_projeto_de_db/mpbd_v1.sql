-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.30 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para mpbd
DROP DATABASE IF EXISTS `mpbd`;
CREATE DATABASE IF NOT EXISTS `mpbd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mpbd`;

-- Copiando estrutura para tabela mpbd.alunos
DROP TABLE IF EXISTS `alunos`;
CREATE TABLE IF NOT EXISTS `alunos` (
  `IdAluno` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) DEFAULT NULL,
  `Sexo` varchar(1) DEFAULT NULL,
  `DataNascimento` date DEFAULT NULL,
  `Curso` int DEFAULT NULL,
  `DataMatricula` date DEFAULT NULL,
  `DataFormatura` date DEFAULT NULL,
  `Foto` longblob,
  `Observacao` text,
  PRIMARY KEY (`IdAluno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela mpbd.alunos: ~0 rows (aproximadamente)
DELETE FROM `alunos`;
INSERT INTO `alunos` (`IdAluno`, `Nome`, `Sexo`, `DataNascimento`, `Curso`, `DataMatricula`, `DataFormatura`, `Foto`, `Observacao`) VALUES
	(1, 'ANA', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 'BETH', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 'CLARA', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 'BILL', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, 'BOB', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- Copiando estrutura para tabela mpbd.cursos
DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos` (
  `IdCurso` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) DEFAULT NULL,
  `Faculdade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela mpbd.cursos: ~0 rows (aproximadamente)
DELETE FROM `cursos`;

-- Copiando estrutura para tabela mpbd.pets
DROP TABLE IF EXISTS `pets`;
CREATE TABLE IF NOT EXISTS `pets` (
  `IdPets` int NOT NULL AUTO_INCREMENT,
  `Apelido` varchar(50) DEFAULT NULL,
  `Raca` varchar(50) DEFAULT NULL,
  `Valor` float(10,2) DEFAULT NULL,
  `Foto` longblob,
  PRIMARY KEY (`IdPets`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela mpbd.pets: ~0 rows (aproximadamente)
DELETE FROM `pets`;

-- Copiando estrutura para tabela mpbd.racas
DROP TABLE IF EXISTS `racas`;
CREATE TABLE IF NOT EXISTS `racas` (
  `IdRaca` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdRaca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela mpbd.racas: ~0 rows (aproximadamente)
DELETE FROM `racas`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
