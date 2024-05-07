#
# Structure for table "projects_types"
#

DROP TABLE IF EXISTS `projects_types`;
CREATE TABLE `projects_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int DEFAULT '0',
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#
# Data for table "projects_types"
#

INSERT INTO `projects_types` VALUES (2,'Novo_sistema',1,1),(3,'Suporte',0,1),(4,'Projeto_interno',2,1);
