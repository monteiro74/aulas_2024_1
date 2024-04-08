CREATE DATABASE IF NOT EXISTS `gps`;
USE `gps`;

CREATE TABLE IF NOT EXISTS `projetos` (
  `IdProjeto` int NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(100) DEFAULT NULL,
  `CustoEstimado` float(10,2) DEFAULT NULL,
  `IdResponsavel` int DEFAULT NULL,
  PRIMARY KEY (`IdProjeto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `projetos`;
INSERT INTO `projetos` (`IdProjeto`, `Descricao`, `CustoEstimado`, `IdResponsavel`) VALUES
	(1, 'Sistema Academico', NULL, NULL),
	(2, 'Site da faculdade', NULL, NULL),
	(3, 'app jogo do tigrinho', NULL, NULL);

CREATE TABLE IF NOT EXISTS `responsavel` (
  `IdResponsavel` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Foto` longblob,
  `Observacao` text,
  PRIMARY KEY (`IdResponsavel`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `responsavel`;
INSERT INTO `responsavel` (`IdResponsavel`, `Nome`, `Email`, `Foto`, `Observacao`) VALUES
	(1, 'ANA', NULL, NULL, NULL),
	(2, 'BILL', NULL, NULL, NULL),
	(3, 'BOB', NULL, NULL, NULL),
	(4, 'CLARA', NULL, NULL, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DELETE FROM `tarefas`;
INSERT INTO `tarefas` (`IdTarefa`, `Descricao`, `IdProjeto`, `IdResponsavel`, `DataInicio`, `DataFim`, `HoraInicio`, `HoraFim`, `Completo`, `Observacao`) VALUES
	(1, 'Analise de requisitos', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 'Entrevista com clientes', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 'Documentar requisitos', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 'Análise de requisitos', 1, 3, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, 'Modelagem de banco de dados', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 'Prototipação de interface', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
	(7, 'Teste do banco de dados', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL);