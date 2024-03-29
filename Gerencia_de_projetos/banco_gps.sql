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


-- Copiando estrutura do banco de dados para gps
CREATE DATABASE IF NOT EXISTS `gps` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gps`;

-- Copiando estrutura para tabela gps.projetos
DROP TABLE IF EXISTS `projetos`;
CREATE TABLE IF NOT EXISTS `projetos` (
  `IdProjeto` int NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(100) DEFAULT NULL,
  `CustoEstimado` float(10,2) DEFAULT NULL,
  `IdResponsavel` int DEFAULT NULL,
  PRIMARY KEY (`IdProjeto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela gps.projetos: ~3 rows (aproximadamente)
DELETE FROM `projetos`;
INSERT INTO `projetos` (`IdProjeto`, `Descricao`, `CustoEstimado`, `IdResponsavel`) VALUES
	(1, 'Sistema Academico', NULL, NULL),
	(2, 'Site da faculdade', NULL, NULL),
	(3, 'app jogo do tigrinho', NULL, NULL);

-- Copiando estrutura para tabela gps.responsavel
DROP TABLE IF EXISTS `responsavel`;
CREATE TABLE IF NOT EXISTS `responsavel` (
  `IdResponsavel` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Foto` longblob,
  `Observacao` text,
  PRIMARY KEY (`IdResponsavel`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela gps.responsavel: ~4 rows (aproximadamente)
DELETE FROM `responsavel`;
INSERT INTO `responsavel` (`IdResponsavel`, `Nome`, `Email`, `Foto`, `Observacao`) VALUES
	(1, 'ANA', NULL, NULL, NULL),
	(2, 'BILL', NULL, NULL, NULL),
	(3, 'BOB', NULL, NULL, NULL),
	(4, 'CLARA', NULL, NULL, NULL);

-- Copiando estrutura para tabela gps.tarefas
DROP TABLE IF EXISTS `tarefas`;
CREATE TABLE IF NOT EXISTS `tarefas` (
  `IdTarefa` int NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(100) DEFAULT NULL,
  `IdProjeto` int DEFAULT NULL,
  `IdResponsavel` int DEFAULT NULL,
  `DataInicio` date DEFAULT NULL,
  `DataFim` date DEFAULT NULL,
  `HoraInicio` time DEFAULT NULL,
  `HoraFim` time DEFAULT NULL,
  `Completo` int DEFAULT NULL,
  `Observacao` text,
  PRIMARY KEY (`IdTarefa`),
  KEY `projeto_tem_tarefas` (`IdProjeto`),
  CONSTRAINT `projeto_tem_tarefas` FOREIGN KEY (`IdProjeto`) REFERENCES `projetos` (`IdProjeto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela gps.tarefas: ~3 rows (aproximadamente)
DELETE FROM `tarefas`;
INSERT INTO `tarefas` (`IdTarefa`, `Descricao`, `IdProjeto`, `IdResponsavel`, `DataInicio`, `DataFim`, `HoraInicio`, `HoraFim`, `Completo`, `Observacao`) VALUES
	(1, 'Analise de requisitos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 'Entrevista com clientes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 'Documentar requisitos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
