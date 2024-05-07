#
# Structure for table "projects_status"
#

DROP TABLE IF EXISTS `projects_status`;
CREATE TABLE `projects_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int DEFAULT '0',
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#
# Data for table "projects_status"
#

INSERT INTO `projects_status` VALUES (1,'Aberto',0,0,1),(2,'Em_espera',1,0,1),(3,'Fechado',2,0,1),(4,'Cancelado',3,1,1);
