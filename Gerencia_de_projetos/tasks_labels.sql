#
# Structure for table "tasks_labels"
#

DROP TABLE IF EXISTS `tasks_labels`;
CREATE TABLE `tasks_labels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int DEFAULT '0',
  `default_value` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#
# Data for table "tasks_labels"
#

INSERT INTO `tasks_labels` VALUES (1,'Tarefa',0,1,1),(2,'Bug',1,NULL,1),(3,'Idea',2,NULL,1),(4,'Problema',4,NULL,1),(5,'Citar',3,NULL,1),(6,'Mudança',0,NULL,1),(7,'Plugar',0,NULL,1);
