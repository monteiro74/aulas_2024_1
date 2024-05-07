#
# Structure for table "tasks_status"
#

DROP TABLE IF EXISTS `tasks_status`;
CREATE TABLE `tasks_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `group` varchar(64) NOT NULL DEFAULT '',
  `sort_order` int DEFAULT '0',
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#
# Data for table "tasks_status"
#

INSERT INTO `tasks_status` VALUES (1,'Aberto','open',0,1,1),(2,'Suspenso','closed',6,NULL,1),(3,'Aguardando atribuição','open',0,NULL,1),(4,'Re-aberto','open',2,NULL,1),(5,'Feito?','done',1,NULL,1),(6,'Pago','closed',5,NULL,1),(7,'Completado','closed',4,NULL,1),(8,'Perdido','closed',7,NULL,1);
