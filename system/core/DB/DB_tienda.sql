CREATE DATABASE  IF NOT EXISTS `db_tienda` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_tienda`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: db_tienda
-- ------------------------------------------------------
-- Server version	5.7.29-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `table_caracteristica`
--

DROP TABLE IF EXISTS `table_caracteristica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_caracteristica` (
  `caract_id` int(11) NOT NULL AUTO_INCREMENT,
  `caract_idProduct` int(11) DEFAULT NULL,
  `caract_item` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`caract_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_caracteristica`
--

LOCK TABLES `table_caracteristica` WRITE;
/*!40000 ALTER TABLE `table_caracteristica` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_caracteristica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_categoria`
--

DROP TABLE IF EXISTS `table_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_categoria` (
  `categ_id` int(11) NOT NULL AUTO_INCREMENT,
  `categ_nombre` varchar(45) DEFAULT NULL,
  `categ_status` char(1) DEFAULT NULL,
  PRIMARY KEY (`categ_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_categoria`
--

LOCK TABLES `table_categoria` WRITE;
/*!40000 ALTER TABLE `table_categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_contacto_producto`
--

DROP TABLE IF EXISTS `table_contacto_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_contacto_producto` (
  `contacto_id` int(11) NOT NULL AUTO_INCREMENT,
  `contacto_idProducto` int(11) DEFAULT NULL,
  `contacto_nombre` varchar(45) DEFAULT NULL,
  `contacto_apellido` varchar(45) DEFAULT NULL,
  `contacto_direccion` varchar(45) DEFAULT NULL,
  `contacto_tlf` varchar(45) DEFAULT NULL,
  `contacto_tlf2` varchar(45) DEFAULT NULL,
  `contacto_email` varchar(45) DEFAULT NULL,
  `contacto_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`contacto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_contacto_producto`
--

LOCK TABLES `table_contacto_producto` WRITE;
/*!40000 ALTER TABLE `table_contacto_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_contacto_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_log`
--

DROP TABLE IF EXISTS `table_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_idUser` int(11) DEFAULT NULL,
  `log_descripcion` text CHARACTER SET utf8,
  `log_comando` text CHARACTER SET utf8,
  `log_fecha` date DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_idUser_idx` (`log_idUser`),
  CONSTRAINT `log_idUser` FOREIGN KEY (`log_idUser`) REFERENCES `table_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_log`
--

LOCK TABLES `table_log` WRITE;
/*!40000 ALTER TABLE `table_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_menu`
--

DROP TABLE IF EXISTS `table_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_menu` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci,
  `icono` text COLLATE utf8_spanish_ci,
  `status` int(11) DEFAULT NULL,
  `page_menu_open` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `page_link` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_menu`
--

LOCK TABLES `table_menu` WRITE;
/*!40000 ALTER TABLE `table_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_menu_sub_menu`
--

DROP TABLE IF EXISTS `table_menu_sub_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_menu_sub_menu` (
  `id_menu_sub_menu` int(11) NOT NULL AUTO_INCREMENT,
  `id_menu` int(11) DEFAULT NULL,
  `id_sub_menu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_menu_sub_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_menu_sub_menu`
--

LOCK TABLES `table_menu_sub_menu` WRITE;
/*!40000 ALTER TABLE `table_menu_sub_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_menu_sub_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_producto`
--

DROP TABLE IF EXISTS `table_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_producto` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_img` text,
  `product_nombre` varchar(45) DEFAULT NULL,
  `product_descripcion` text,
  `product_categoria` varchar(45) DEFAULT NULL,
  `product_precio` double DEFAULT NULL,
  `product_condicion` char(1) DEFAULT NULL,
  `product_status` char(1) DEFAULT NULL,
  `product_fechaPublicacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_producto`
--

LOCK TABLES `table_producto` WRITE;
/*!40000 ALTER TABLE `table_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_roles`
--

DROP TABLE IF EXISTS `table_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_roles` (
  `rol_id` int(11) NOT NULL AUTO_INCREMENT,
  `rol_name` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rol_descripcion` text COLLATE utf8_spanish_ci,
  `rol_status` int(11) DEFAULT NULL,
  PRIMARY KEY (`rol_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_roles`
--

LOCK TABLES `table_roles` WRITE;
/*!40000 ALTER TABLE `table_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_roles_sub_menu`
--

DROP TABLE IF EXISTS `table_roles_sub_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_roles_sub_menu` (
  `id_rol_sub_menu` int(11) NOT NULL AUTO_INCREMENT,
  `id_rol` int(11) DEFAULT NULL,
  `id_sub_menu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_rol_sub_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_roles_sub_menu`
--

LOCK TABLES `table_roles_sub_menu` WRITE;
/*!40000 ALTER TABLE `table_roles_sub_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_roles_sub_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_sub_menu`
--

DROP TABLE IF EXISTS `table_sub_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_sub_menu` (
  `id_sub_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_sub_menu` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_spanish_ci,
  `url` text COLLATE utf8_spanish_ci,
  `status` int(11) DEFAULT NULL,
  `page_link_activo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_sub_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_sub_menu`
--

LOCK TABLES `table_sub_menu` WRITE;
/*!40000 ALTER TABLE `table_sub_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_sub_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_timeline`
--

DROP TABLE IF EXISTS `table_timeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_timeline` (
  `time_id` int(11) NOT NULL AUTO_INCREMENT,
  `time_idUser` int(11) DEFAULT NULL,
  `time_codigo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `time_fecha` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `time_inicio` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `time_fin` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`time_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_timeline`
--

LOCK TABLES `table_timeline` WRITE;
/*!40000 ALTER TABLE `table_timeline` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_timeline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_user`
--

DROP TABLE IF EXISTS `table_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_ci` int(11) DEFAULT NULL,
  `user_nick` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_pass` text COLLATE utf8_spanish_ci,
  `user_nombres` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_apellidos` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_email` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_tlf` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_rol` int(11) DEFAULT NULL,
  `user_status` int(11) DEFAULT NULL,
  `user_img` text COLLATE utf8_spanish_ci,
  `user_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_ruta` text COLLATE utf8_spanish_ci,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_user`
--

LOCK TABLES `table_user` WRITE;
/*!40000 ALTER TABLE `table_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_user_rol`
--

DROP TABLE IF EXISTS `table_user_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_user_rol` (
  `id_usuario_rol` int(11) NOT NULL AUTO_INCREMENT,
  `user_nick` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_rol` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_usuario_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_user_rol`
--

LOCK TABLES `table_user_rol` WRITE;
/*!40000 ALTER TABLE `table_user_rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_user_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_carga_menu`
--

DROP TABLE IF EXISTS `v_carga_menu`;
/*!50001 DROP VIEW IF EXISTS `v_carga_menu`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_carga_menu` AS SELECT 
 1 AS `login`,
 1 AS `nombres`,
 1 AS `apellidos`,
 1 AS `rol_id`,
 1 AS `rol_name`,
 1 AS `id_menu`,
 1 AS `nombre_menu`,
 1 AS `icono`,
 1 AS `page_menu_open`,
 1 AS `page_link`,
 1 AS `id_sub_menu`,
 1 AS `nombre_sub_menu`,
 1 AS `url`,
 1 AS `page_link_activo`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_carga_menu`
--

/*!50001 DROP VIEW IF EXISTS `v_carga_menu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_carga_menu` AS (select `a`.`user_nick` AS `login`,`a`.`user_nombres` AS `nombres`,`a`.`user_apellidos` AS `apellidos`,`f`.`rol_id` AS `rol_id`,`f`.`rol_name` AS `rol_name`,`e`.`id_menu` AS `id_menu`,`e`.`nombre_menu` AS `nombre_menu`,`e`.`icono` AS `icono`,`e`.`page_menu_open` AS `page_menu_open`,`e`.`page_link` AS `page_link`,`g`.`id_sub_menu` AS `id_sub_menu`,`g`.`nombre_sub_menu` AS `nombre_sub_menu`,`g`.`url` AS `url`,`g`.`page_link_activo` AS `page_link_activo` from ((((((`table_user` `a` join `table_user_rol` `b`) join `table_roles_sub_menu` `c`) join `table_menu_sub_menu` `d`) join `table_menu` `e`) join `table_roles` `f`) join `table_sub_menu` `g`) where ((`a`.`user_nick` = `b`.`user_nick`) and (`b`.`id_rol` = `f`.`rol_id`) and (`f`.`rol_id` = `c`.`id_rol`) and (`c`.`id_sub_menu` = `g`.`id_sub_menu`) and (`g`.`id_sub_menu` = `d`.`id_sub_menu`) and (`e`.`id_menu` = `d`.`id_menu`) and (`e`.`status` = 1))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-31  9:22:16
