# Structure for table "discussions_status"
#

DROP TABLE IF EXISTS `discussions_status`;
CREATE TABLE `discussions_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sort_order` int DEFAULT '0',
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#
# Data for table "discussions_status"
#

INSERT INTO `discussions_status` VALUES (1,'Aberto',0,1,1),(2,'Fechado',1,NULL,1);
