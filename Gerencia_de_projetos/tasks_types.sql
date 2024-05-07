#
# Structure for table "tasks_types"
#

DROP TABLE IF EXISTS `tasks_types`;
CREATE TABLE `tasks_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int DEFAULT '0',
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#
# Data for table "tasks_types"
#

INSERT INTO `tasks_types` VALUES (1,'Taxa de mudança prioritária (taxa da hora $25.00)',0,1,1),(2,'Mudanças (taxa horária $15.00)',0,NULL,1),(3,'Defeitos (taxa hora $0.00)',0,NULL,1);
