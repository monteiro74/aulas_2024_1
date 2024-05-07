#
# Structure for table "tickets_status"
#

DROP TABLE IF EXISTS `tickets_status`;
CREATE TABLE `tickets_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `group` varchar(64) DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `default_value` int DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#
# Data for table "tickets_status"
#

INSERT INTO `tickets_status` VALUES (1,'Novo','open',0,1,'1'),(2,'Aberto','open',1,NULL,'1'),(3,'Aguardando Atribuição','open',3,NULL,'1'),(4,'Re-aberto','open',2,NULL,'1'),(5,'Resolvido','closed',4,NULL,'1'),(6,'Cancelado','closed',7,NULL,'1'),(7,'Consertado','closed',6,NULL,'1'),(8,'Fechado','closed',5,NULL,'1');
