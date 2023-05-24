-- MariaDB dump 10.19  Distrib 10.4.20-MariaDB, for osx10.10 (x86_64)
--
-- Host: 127.0.0.1    Database: lpoo_vendas_jpa_springboot_gradle
-- ------------------------------------------------------
-- Server version	10.4.20-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `situacao` bit(1) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` VALUES (1,'Ana','','Silva'),(2,'Rafael','','Dias'),(3,'Aline Marisa','\0','Vaz'),(4,'Aline','','Dias');

--
-- Table structure for table `itens`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itens` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quantidade` int(11) DEFAULT NULL,
  `situacao` bit(1) DEFAULT NULL,
  `total_item` double DEFAULT NULL,
  `pedido_id` bigint(20) DEFAULT NULL,
  `produto_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdxsx2902y778v5yy9d8dkjn6n` (`pedido_id`),
  KEY `FKr016ru8uflu796o6kx0igbnxj` (`produto_id`),
  CONSTRAINT `FKdxsx2902y778v5yy9d8dkjn6n` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  CONSTRAINT `FKr016ru8uflu796o6kx0igbnxj` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itens`
--

INSERT INTO `itens` VALUES (1,10,'',128,1,1),(2,10,'',98,1,2);

--
-- Table structure for table `pedidos`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data_criacao` date DEFAULT NULL,
  `data_modificacao` date DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL CHECK (`estado` between 0 and 4),
  `forma_pagamento` varchar(255) DEFAULT NULL,
  `situacao` bit(1) DEFAULT NULL,
  `total_pedido` double DEFAULT NULL,
  `cliente_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg7202lk0hwxn04bmdl2thth5b` (`cliente_id`),
  CONSTRAINT `FKg7202lk0hwxn04bmdl2thth5b` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

INSERT INTO `pedidos` VALUES (1,'2023-05-24','2023-05-24',0,'visa débito','',226,1);

--
-- Table structure for table `produtos`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `estoque` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `situacao` bit(1) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

INSERT INTO `produtos` VALUES (1,'Café em pó tradicional Igaçu lata 400g',65,'Café','',12.8),(2,'Erva Mate Pura Folha 1kg',60,'Erva Mate','',9.8),(3,'Prenda',70,'Chá Preto','',3.2),(4,'Arroz Camil branco polido tipo 1 pacote 5kg',100,'Arroz','',10.9),(5,'Feijão Tordilho pacote 1kg',100,'Feijão','\0',6.8);
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-24 15:16:10
