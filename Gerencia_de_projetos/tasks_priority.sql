#
# Structure for table "tasks_priority"
#

DROP TABLE IF EXISTS `tasks_priority`;
CREATE TABLE `tasks_priority` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(64) DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#
# Data for table "tasks_priority"
#

INSERT INTO `tasks_priority` VALUES (1,'Urgente','prio_1.png',5,NULL,1),(2,'Alto','prio_2.png',4,NULL,1),(3,'Baixo','prio_4.png',1,NULL,1),(4,'Desconhecido',NULL,0,NULL,1),(5,'Medio','prio_3.png',2,1,1);
