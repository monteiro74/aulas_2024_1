#
# Structure for table "extra_fields"
#

DROP TABLE IF EXISTS `extra_fields`;
CREATE TABLE `extra_fields` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `bind_type` varchar(64) NOT NULL DEFAULT '',
  `type` varchar(64) DEFAULT NULL,
  `sort_order` int DEFAULT '0',
  `active` tinyint(1) DEFAULT NULL,
  `display_in_list` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

#
# Data for table "extra_fields"
#

INSERT INTO `extra_fields` VALUES (1,'Resumo da revisão','projects','date',2,1,NULL),(2,'Projeto','projects','date',3,1,NULL),(3,'Desenvolvimento','projects','date',4,1,NULL),(4,'Teste de site','projects','date',5,1,NULL),(5,'Teste aceito pelo usuário','projects','date',6,1,NULL),(6,'Ir para producao','projects','date',7,NULL,1),(7,'Url_de_produção','projects','url',0,1,NULL),(8,'Url_de_teste_homologação','projects','url',1,1,NULL),(9,'Telefone','users','text',0,1,1);
