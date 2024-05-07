#
# Structure for table "versions_status"
#

DROP TABLE IF EXISTS `versions_status`;
CREATE TABLE `versions_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int DEFAULT '0',
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#
# Data for table "versions_status"
#

INSERT INTO `versions_status` VALUES (1,'Em_aberto',0,1,1),(2,'Feito',0,0,1);
