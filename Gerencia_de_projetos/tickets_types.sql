#
# Structure for table "tickets_types"
#

DROP TABLE IF EXISTS `tickets_types`;
CREATE TABLE `tickets_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#
# Data for table "tickets_types"
#

INSERT INTO `tickets_types` VALUES (1,'Reportar um erro',1,'1'),(2,'Solicitar uma mudança',0,'1'),(3,'Levantar um problema',3,'1'),(4,'Fazer uma pergunta',2,'1');
