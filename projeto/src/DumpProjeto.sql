-- MySQL dump 10.16  Distrib 10.1.44-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: campeonato
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

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
-- Table structure for table `jogos`
--

DROP TABLE IF EXISTS `jogos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jogos` (
  `id_jogo` int(11) NOT NULL AUTO_INCREMENT,
  `rodada` int(11) NOT NULL,
  `data_jogo` date DEFAULT NULL,
  `local_jogo` varchar(50) DEFAULT NULL,
  `clube_mandante` varchar(45) DEFAULT NULL,
  `clube_visitante` varchar(45) DEFAULT NULL,
  `gols_mandate` int(11) DEFAULT 0,
  `gols_visitante` int(11) DEFAULT 0,
  PRIMARY KEY (`id_jogo`)
) ENGINE=InnoDB AUTO_INCREMENT=381 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogos`
--

LOCK TABLES `jogos` WRITE;
/*!40000 ALTER TABLE `jogos` DISABLE KEYS */;
INSERT INTO `jogos` VALUES (1,1,'2020-05-30','José Bastos Padilha','Flamengo','Atlético-MG',5,5),(2,1,'2020-05-30','Nilton Santos','Botafogo','Bahia',4,3),(3,1,'2020-05-30','Allianz Parque','Palmeiras','Vasco da Gama',4,1),(4,1,'2020-05-30','Vila Belmiro','Santos','Bragantino',4,0),(5,1,'2020-05-30','Arena Corinthians','Corinthians','Atlético-GO',3,0),(6,1,'2020-05-31','Arena do Grêmio','Grêmio','Fluminense',4,4),(7,1,'2020-05-31','Aldemar da Costa Carvalho','Sport','Ceará',4,5),(8,1,'2020-05-31','Couto Pereira','Coritiba','Internacional',1,5),(9,1,'2020-05-31','Presidente Vargas','Fortaleza','Athletico Paranaense',0,0),(10,1,'2020-05-31','Hailé Pinheiro','Goiás','São Paulo',2,0),(11,2,'2020-06-06','Manoel Schwartz','Fluminense','Palmeiras',2,2),(12,2,'2020-06-06','São Januário','Vasco da Gama','Sport',0,3),(13,2,'2020-06-06','Morumbi','São Paulo','Fortaleza',4,2),(14,2,'2020-06-06','Nabi Abi Chedid','Bragantino','Botafogo',2,3),(15,2,'2020-06-06','Mineirão','Atlético-MG','Corinthians',0,4),(16,2,'2020-06-07','Beira-Rio','Internacional','Santos',0,4),(17,2,'2020-06-07','Itaipava Arena Fonte','Bahia','Coritiba',2,4),(18,2,'2020-06-07','Joaquim Américo Guimararães','Athletico Paranaense','Goiás',2,1),(19,2,'2020-06-07','Arena Castelão','Ceará','Grêmio',1,1),(20,2,'2020-06-07','Antônio Accioly','Atlético-GO','Flamengo',0,5),(21,3,'2020-06-13','Manoel Schwartz','Fluminense','Internacional',0,0),(22,3,'2020-06-13','São Januário','Vasco da Gama','São Paulo',0,0),(23,3,'2020-06-13','Allianz Parque','Palmeiras','Goiás',0,0),(24,3,'2020-06-13','Vila Belmiro','Santos','Athletico Paranaense',0,0),(25,3,'2020-06-13','Mineirão','Atlético-MG','Ceará',0,0),(26,3,'2020-06-14','Arena do Grêmio','Grêmio','Corinthians',0,0),(27,3,'2020-06-14','Itaipava Arena Fonte','Bahia','Bragantino',0,0),(28,3,'2020-06-14','Couto Pereira','Coritiba','Flamengo',0,0),(29,3,'2020-06-14','Presidente Vargas','Fortaleza','Botafogo',0,0),(30,3,'2020-06-14','Antônio Accioly','Atlético-GO','Sport',0,0),(31,4,'2020-06-20','José Bastos Padilha','Flamengo','Grêmio',0,0),(32,4,'2020-06-20','Nilton Santos','Botafogo','Atlético-MG',0,0),(33,4,'2020-06-20','Morumbi','São Paulo','Bahia',0,0),(34,4,'2020-06-20','Nabi Abi Chedid','Bragantino','Fluminense',0,0),(35,4,'2020-06-20','Arena Corinthians','Corinthians','Coritiba',0,0),(36,4,'2020-06-21','Adelmar da Costa Carvalho','Sport','Santos',0,0),(37,4,'2020-06-21','Joaquim Américo Guimararães','Athletico Paranaense','Palmeiras',0,0),(38,4,'2020-06-21','Arena Castelão','Ceará','Vasco da Gama',0,0),(39,4,'2020-06-21','Hailé Pinheiro','Goiás','Fortaleza',0,0),(40,4,'2020-06-21','Beira-Rio','Internacional','Atlético-GO',0,0),(41,5,'2020-06-27','José Bastos Padilha','Flamengo','Botafogo',0,0),(42,5,'2020-06-27','São Januário','Vasco da Gama','Grêmio',0,0),(43,5,'2020-06-27','Allianz Parque','Palmeiras','Santos',0,0),(44,5,'2020-06-27','Nabi Abi Chedid','Bragantino','Coritiba',0,0),(45,5,'2020-06-27','Arena Corinthians','Corinthians','Fortaleza',0,0),(46,5,'2020-06-28','Beira-Rio','Internacional','Atlético-MG',0,0),(47,5,'2020-06-28','Adelmar da Costa Carvalho','Sport','São Paulo',0,0),(48,5,'2020-06-28','Joaquim Américo Guimararães','Athletico Paranaense','Fluminense',0,0),(49,5,'2020-06-28','Arena Castelão','Ceará','Bahia',0,0),(50,5,'2020-06-28','Hailé Pinheiro','Goiás','Atlético-GO',0,0),(51,6,'2020-07-04','Manoel Schwartz','Fluminense','Vasco da Gama',0,0),(52,6,'2020-07-04','Nilton Santos','Botafogo','Internacional',0,0),(53,6,'2020-07-04','Morumbi','São Paulo','Corinthians',0,0),(54,6,'2020-07-04','Vila Belmiro','Santos','Flamengo',0,0),(55,6,'2020-07-04','Mineirão','Atlético-MG','Athletico Paranaense',0,0),(56,6,'2020-07-05','Arena do Grêmio','Grêmio','Goiás',0,0),(57,6,'2020-07-05','Itaipava Arena Fonte','Bahia','Palmeiras',0,0),(58,6,'2020-07-05','Couto Pereira','Coritiba','Sport',0,0),(59,6,'2020-07-05','Presidente Vargas','Fortaleza','Bragantino',0,0),(60,6,'2020-07-05','Antônio Accioly','Atlético-GO','Ceará',0,0),(61,7,'2020-07-11','Manoel Schwartz','Fluminense','Atlético-GO',0,0),(62,7,'2020-07-11','Arena Castelão','Ceará','Fortaleza',0,0),(63,7,'2020-07-11','Joaquim Américo Guimararães','Athletico Paranaense','Bragantino',0,0),(64,7,'2020-07-11','Itaipava Arena Fonte','Bahia','Flamengo',0,0),(65,7,'2020-07-11','Arena do Grêmio','Grêmio','Sport',0,0),(66,7,'2020-07-12','Mineirão','Atlético-MG','São Paulo',0,0),(67,7,'2020-07-12','Vila Belmiro','Santos','Vasco da Gama',0,0),(68,7,'2020-07-12','Allianz Parque','Palmeiras','Internacional',0,0),(69,7,'2020-07-12','Nilton Santos','Botafogo','Coritiba',0,0),(70,7,'2020-07-12','Hailé Pinheiro','Goiás','Corinthians',0,0),(71,8,'2020-07-18','José Bastos Padilha','Flamengo','Fortaleza',0,0),(72,8,'2020-07-18','São Januário','Vasco da Gama','Athletico Paranaense',0,0),(73,8,'2020-07-18','Morumbi','São Paulo','Fluminense',0,0),(74,8,'2020-07-18','Antônio Accioly','Atlético-GO','Grêmio',0,0),(75,8,'2020-07-18','Arena Castelão','Ceará','Santos',0,0),(76,8,'2020-07-19','Couto Pereira','Coritiba','Atlético-MG',0,0),(77,8,'2020-07-19','Adelmar da Costa Carvalho','Sport','Goiás',0,0),(78,8,'2020-07-19','Beira-Rio','Internacional','Bahia',0,0),(79,8,'2020-07-19','Arena Corinthians','Corinthians','Botafogo',0,0),(80,8,'2020-07-19','Nabi Abi Chedid','Bragantino','Palmeiras',0,0),(81,9,'2020-07-25','Vila Belmiro','Santos','Atlético-MG',0,0),(82,9,'2020-07-25','Hailé Pinheiro','Goiás','Coritiba',0,0),(83,9,'2020-07-25','Presidente Vargas','Fortaleza','Sport',0,0),(84,9,'2020-07-25','Joaquim Américo Guimararães','Athletico Paranaense','Botafogo',0,0),(85,9,'2020-07-25','Itaipava Arena Fonte','Bahia','Grêmio',0,0),(86,9,'2020-07-26','Beira-Rio','Internacional','Ceará',0,0),(87,9,'2020-07-26','Arena Corinthians','Corinthians','Palmeiras',0,0),(88,9,'2020-07-26','Morumbi','São Paulo','Bragantino',0,0),(89,9,'2020-07-26','São Januário','Vasco da Gama','Atlético-GO',0,0),(90,9,'2020-07-26','Manoel Schwartz','Fluminense','Flamengo',0,0),(91,10,'2020-08-01','Allianz Parque','Palmeiras','Sport',0,0),(92,10,'2020-08-01','Nilton Santos','Botafogo','Vasco da Gama',0,0),(93,10,'2020-08-01','Manoel Schwartz','Fluminense','Corinthians',0,0),(94,10,'2020-08-01','Mineirão','Atlético-MG','Bragantino',0,0),(95,10,'2020-08-01','Vila Belmiro','Santos','São Paulo',0,0),(96,10,'2020-08-02','Arena do Grêmio','Grêmio','Fortaleza',0,0),(97,10,'2020-08-02','Itaipava Arena Fonte','Bahia','Atlético-GO',0,0),(98,10,'2020-08-02','Hailé Pinheiro','Goiás','Internacional',0,0),(99,10,'2020-08-02','Arena Castelão','Ceará','Flamengo',0,0),(100,10,'2020-08-02','Joaquim Américo Guimararães','Athletico Paranaense','Coritiba',0,0),(101,11,'2020-08-08','Couto Pereira','Coritiba','Vasco da Gama',0,0),(102,11,'2020-08-08','Antônio Accioly','Atlético-GO','Atlético-MG',0,0),(103,11,'2020-08-08','Presidente Vargas','Fortaleza','Internacional',0,0),(104,11,'2020-08-08','Adelmar da Costa Carvalho','Sport','Fluminense',0,0),(105,11,'2020-08-08','Arena do Grêmio','Grêmio','Palmeiras',0,0),(106,11,'2020-08-09','Arena Corinthians','Corinthians','Bahia',0,0),(107,11,'2020-08-09','Nabi Abi Chedid','Bragantino','Ceará',0,0),(108,11,'2020-08-09','Morumbi','São Paulo','Athletico Paranaense',0,0),(109,11,'2020-08-09','Nilton Santos','Botafogo','Santos',0,0),(110,11,'2020-08-09','José Bastos Padilha','Flamengo','Goiás',0,0),(111,12,'2020-08-15','Adelmar da Costa Carvalho','Sport','Corinthians',0,0),(112,12,'2020-08-15','Beira-Rio','Internacional','São Paulo',0,0),(113,12,'2020-08-15','Mineirão','Atlético-MG','Grêmio',0,0),(114,12,'2020-08-15','Vila Belmiro','Santos','Fortaleza',0,0),(115,12,'2020-08-15','Allianz Parque','Palmeiras','Flamengo',0,0),(116,12,'2020-08-16','São Januário','Vasco da Gama','Bragantino',0,0),(117,12,'2020-08-16','Manoel Schwartz','Fluminense','Coritiba',0,0),(118,12,'2020-08-16','Arena Castelão','Ceará','Goiás',0,0),(119,12,'2020-08-16','Joaquim Américo Guimararães','Athletico Paranaense','Bahia',0,0),(120,12,'2020-08-16','Antônio Accioly','Atlético-GO','Botafogo',0,0),(121,13,'2020-08-22','José Bastos Padilha','Flamengo','Athletico Paranaense',0,0),(122,13,'2020-08-22','Hailé Pinheiro','Goiás','Santos',0,0),(123,13,'2020-08-22','Presidente Vargas','Fortaleza','Atlético-GO',0,0),(124,13,'2020-08-22','Couto Pereira','Coritiba','São Paulo',0,0),(125,13,'2020-08-22','Itaipava Arena Fonte','Bahia','Sport',0,0),(126,13,'2020-08-23','Arena do Grêmio','Grêmio','Internacional',0,0),(127,13,'2020-08-23','Mineirão','Atlético-MG','Vasco da Gama',0,0),(128,13,'2020-08-23','Nabi Abi Chedid','Bragantino','Corinthians',0,0),(129,13,'2020-08-23','Allianz Parque','Palmeiras','Ceará',0,0),(130,13,'2020-08-23','Nilton Santos','Botafogo','Fluminense',0,0),(131,14,'2020-08-29','Nilton Santos','Botafogo','Palmeiras',0,0),(132,14,'2020-08-29','Hailé Pinheiro','Goiás','Fluminense',0,0),(133,14,'2020-08-29','Presidente Vargas','Fortaleza','Altético-MG',0,0),(134,14,'2020-08-29','Joaquim Américo Guimararães','Athletico Paranaense','Ceará',0,0),(135,14,'2020-08-29','Itaipava Arena Fonte','Bahia','Vasco da Gama',0,0),(136,14,'2020-08-30','Arena do Grêmio','Grêmio','Coritiba',0,0),(137,14,'2020-08-30','Arena Corinthians','Corinthians','Santos',0,0),(138,14,'2020-08-30','Nabi Abi Chedid','Bragantino','Internacional',0,0),(139,14,'2020-08-30','Morumbi','São Paulo','Atlético-GO',0,0),(140,14,'2020-08-30','José Bastos Padilha','Flamengo','Sport',0,0),(141,15,'2020-09-05','Antônio Accioly','Atlético-GO','Bragantino',0,0),(142,15,'2020-09-05','Arena Castelão','Ceará','Corinthians',0,0),(143,15,'2020-09-05','Couto Pereira','Coritiba','Fortaleza',0,0),(144,15,'2020-09-05','Adelmar da Costa Carvalho','Sport','Botafogo',0,0),(145,15,'2020-09-05','Beira-Rio','Internacional','Athletico Paranaense',0,0),(146,15,'2020-09-06','Vila Belmiro','Santos','Grêmio',0,0),(147,15,'2020-09-06','Mineirão','Atlético-MG','Goiás',0,0),(148,15,'2020-09-06','Allianz Parque','Palmeiras','São Paulo',0,0),(149,15,'2020-09-06','São Januário','Vasco da Gama','Flamengo',0,0),(150,15,'2020-09-06','Manoel Schwartz','Fluminense','Bahia',0,0),(151,16,'2020-09-12','Arena do Grêmio','Grêmio','Botafogo',0,0),(152,16,'2020-09-12','Hailé Pinheiro','Goiás','Bahia',0,0),(153,16,'2020-09-12','Arena Castelão','Ceará','São Paulo',0,0),(154,16,'2020-09-12','Joaquim Américo Guimararães','Athletico Paranaense','Corinthians',0,0),(155,16,'2020-09-12','Adelmar da Costa Carvalho','Sport','Internacional',0,0),(156,16,'2020-09-13','Mineirão','Atlético-MG','Fluminense',0,0),(157,16,'2020-09-13','Vila Belmiro','Santos','Atlético-GO',0,0),(158,16,'2020-09-13','Allianz Parque','Palmeiras','Coritiba',0,0),(159,16,'2020-09-13','São Januário','Vasco da Gama','Fortaleza',0,0),(160,16,'2020-09-13','José Bastos Padilha','Flamengo','Bragantino',0,0),(161,17,'2020-09-19','Arena Corinthians','Corinthians','Flamengo',0,0),(162,17,'2020-09-19','Nabi Abi Chedid','Bragantino','Sport',0,0),(163,17,'2020-09-19','Morumbi','São Paulo','Grêmio',0,0),(164,17,'2020-09-19','Nilton Santos','Botafogo','Goiás',0,0),(165,17,'2020-09-19','Manoel Schwartz','Fluminense','Ceará',0,0),(166,17,'2020-09-20','Itaipava Arena Fonte','Bahia','Atlético-MG',0,0),(167,17,'2020-09-20','Beira-Rio','Internacional','Vasco da Gama',0,0),(168,17,'2020-09-20','Couto Pereira','Coritiba','Santos',0,0),(169,17,'2020-09-20','Presidente Vargas','Fortaleza','Palmeiras',0,0),(170,17,'2020-09-20','Antônio Accioly','Atlético-GO','Athletico Paranaense',0,0),(171,18,'2020-09-26','Antônio Accioly','Atlético-GO','Palmeiras',0,0),(172,18,'2020-09-26','Arena Castelão','Ceará','Coritiba',0,0),(173,18,'2020-09-26','Joaquim Américo Guimararães','Athletico Paranaense','Grêmio',0,0),(174,18,'2020-09-26','Itaipava Arena Fonte','Bahia','Fortaleza',0,0),(175,18,'2020-09-26','Beira-Rio','Internacional','Flamengo',0,0),(176,18,'2020-09-27','Mineirão','Atlético-MG','Sport',0,0),(177,18,'2020-09-27','Nabi Abi Chedid','Bragantino','Goiás',0,0),(178,18,'2020-09-27','Morumbi','São Paulo','Botafogo',0,0),(179,18,'2020-09-27','São Januário','Vasco da Gama','Corinthians',0,0),(180,18,'2020-09-27','Manoel Schwartz','Fluminense','Santos',0,0),(181,19,'2020-10-03','Hailé Pinheiro','Goiás','Vasco da Gama',0,0),(182,19,'2020-10-03','Presidente Vargas','Fortaleza','Fluminense',0,0),(183,19,'2020-10-03','Couto Pereira','Coritiba','Atlético-GO',0,0),(184,19,'2020-10-03','Adelmar da Costa Carvalho','Sport','Athletico Paranaense',0,0),(185,19,'2020-10-03','Arena do Grêmio','Grêmio','Bragantino',0,0),(186,19,'2020-10-04','Arena Corinthians','Corinthians','Internacional',0,0),(187,19,'2020-10-04','Vila Belmiro','Santos','Bahia',0,0),(188,19,'2020-10-04','Allianz Parque','Palmeiras','Atlético-MG',0,0),(189,19,'2020-10-04','Nilton Santos','Botafogo','Ceará',0,0),(190,19,'2020-10-04','José Bastos Padilha','Flamengo','São Paulo',0,0),(191,20,'2020-10-10','Antônio Accioly','Atlético-GO','Corinthians',0,0),(192,20,'2020-10-10','Arena Castelão','Ceará','Sport',0,0),(193,20,'2020-10-10','Joaquim Américo Guimararães','Athletico Paranaense','Fortaleza',0,0),(194,20,'2020-10-10','Itaipava Arena Fonte','Bahia','Botafogo',0,0),(195,20,'2020-10-10','Beira-Rio','Internacional','Coritiba',0,0),(196,20,'2020-10-11','Mineirão','Atlético-MG','Flamengo',0,0),(197,20,'2020-10-11','Nabi Abi Chedid','Bragantino','Santos',0,0),(198,20,'2020-10-11','São Januário','Vasco da Gama','Palmeiras',0,0),(199,20,'2020-10-11','Morumbi','São Paulo','Goiás',0,0),(200,20,'2020-10-11','Manoel Schwartz','Fluminense','Grêmio',0,0),(201,21,'2020-10-17','Vila Belmiro','Santos','Internacional',0,0),(202,21,'2020-10-17','Hailé Pinheiro','Goiás','Athletico Parenaense',0,0),(203,21,'2020-10-17','Presidente Vargas','Fortaleza','São Paulo',0,0),(204,21,'2020-10-17','Couto Pereira','Coritiba','Bahia',0,0),(205,21,'2020-10-17','Adelmar da Costa Carvalho','Sport','Vasco',0,0),(206,21,'2020-10-18','Arena do Grêmio','Grêmio','Ceará',0,0),(207,21,'2020-10-18','Arena Corinthians','Corinthians','Atlético-MG',0,0),(208,21,'2020-10-18','Allianz Parque','Palmeiras','Fluminense',0,0),(209,21,'2020-10-18','Nilton Santos','Botafogo','Bragantino',0,0),(210,21,'2020-10-18','José Bastos Padilha','Flamengo','Atlético-GO',0,0),(211,22,'2020-10-24','Morumbi','São Paulo','Vasco da Gama',0,0),(212,22,'2020-10-24','Nilton Santos','Botafogo','Fortaleza',0,0),(213,22,'2020-10-24','José Bastos Padilha','Flamengo','Coritiba',0,0),(214,22,'2020-10-24','Arena Corinthians','Corinthians','Grêmio',0,0),(215,22,'2020-10-24','Nabi Abi Chedid','Bragantino','Bahia',0,0),(216,22,'2020-10-25','Beira-Rio','Internacional','Fluminense',0,0),(217,22,'2020-10-25','Adelmar da Costa Carvalho','Sport','Atlético-GO',0,0),(218,22,'2020-10-25','Hailé Pinheiro','Goiás','Palmeiras',0,0),(219,22,'2020-10-25','Arena Castelão','Ceará','Atlético-MG',0,0),(220,22,'2020-10-25','Joaquim Américo Guimararães','Athletico Paranaense','Santos',0,0),(221,23,'2020-10-31','Couto Pereira','Coritiba','Corinthians',0,0),(222,23,'2020-10-31','Antônio Accioly','Atlético-GO','Internacional',0,0),(223,23,'2020-10-31','Presidente Vargas','Fortaleza','Goiás',0,0),(224,23,'2020-10-31','Itaipava Arena Fonte','Bahia','São Paulo',0,0),(225,23,'2020-10-31','Arena do Grêmio','Grêmio','Flamengo',0,0),(226,23,'2020-11-01','Mineirão','Atlético-MG','Botafogo',0,0),(227,23,'2020-11-01','Allianz Parque','Palmeiras','Athletico Paranaense',0,0),(228,23,'2020-11-01','São Januário','Vasco da Gama','Ceará',0,0),(229,23,'2020-11-01','Manoel Schwartz','Fluminense','Bragantino',0,0),(230,23,'2020-11-01','Vila Belmiro','Santos','Sport',0,0),(231,24,'2020-11-07','Antônio Accioly','Atlético-GO','Goiás',0,0),(232,24,'2020-11-07','Presidente Vargas','Fortaleza','Corinthians',0,0),(233,24,'2020-11-07','Couto Pereira','Coritiba','Bragantino',0,0),(234,24,'2020-11-07','Itaipava Arena Fonte','Bahia','Ceará',0,0),(235,24,'2020-11-07','Arena do Grêmio','Grêmio','Vasco da Gama',0,0),(236,24,'2020-11-08','Mineirão','Atlético-MG','Internacional',0,0),(237,24,'2020-11-08','Vila Belmiro','Santos','Palmeiras',0,0),(238,24,'2020-11-08','Morumbi','São Paulo','Sport',0,0),(239,24,'2020-11-08','Nilton Santos','Botafogo','Flamengo',0,0),(240,24,'2020-11-08','Manoel Schwartz','Fluminense','Athletico Paranaense',0,0),(241,25,'2020-11-14','Hailé Pinheiro','Goiás','Grêmio',0,0),(242,25,'2020-11-14','Arena Castelão','Ceará','Atlético-GO',0,0),(243,25,'2020-11-14','Joaquim Américo Guimararães','Athletico Paranaense','Alético-MG',0,0),(244,25,'2020-11-14','Adelmar da Costa Carvalho','Sport','Coritiba',0,0),(245,25,'2020-11-14','Beira-Rio','Internacional','Botafogo',0,0),(246,25,'2020-11-15','Arena Corinthians','Corinthians','São Paulo',0,0),(247,25,'2020-11-15','Nabi Abi Chedid','Bragantino','Fortaleza',0,0),(248,25,'2020-11-15','Allianz Parque','Palmeiras','Bahia',0,0),(249,25,'2020-11-15','São Januário','Vasco da Gama','Fluminense',0,0),(250,25,'2020-11-15','José Bastos Padilha','Flamengo','Santos',0,0),(251,26,'2020-11-21','São Januário','Vasco da Gama','Santos',0,0),(252,26,'2020-11-21','Antônio Accioly','Atlético-GO','Fluminense',0,0),(253,26,'2020-11-21','Presidente Vargas','Fortaleza','Ceará',0,0),(254,26,'2020-11-21','Couto Pereira','Coritiba','Botafogo',0,0),(255,26,'2020-11-21','Adelmar da Costa Carvalho','Sport','Grêmio',0,0),(256,26,'2020-11-22','Beira-Rio','Internacional','Palmeiras',0,0),(257,26,'2020-11-22','Arena Corinthians','Corinthians','Goiás',0,0),(258,26,'2020-11-22','Nabi Abi Chedid','Bragantino','Athletico Paranaense',0,0),(259,26,'2020-11-22','Morumbi','São Paulo','Atlético-MG',0,0),(260,26,'2020-11-22','José Bastos Padilha','Flamengo','Bahia',0,0),(261,27,'2020-11-28','Nilton Santos','Botafogo','Corinthians',0,0),(262,27,'2020-11-28','Manoel Schwartz','Fluminense','São Paulo',0,0),(263,27,'2020-11-28','Allianz Parque','Palmeiras','Bragantino',0,0),(264,27,'2020-11-28','Vila Belmiro','Santos','Ceará',0,0),(265,27,'2020-11-28','Hailé Pinheiro','Goiás','Sport',0,0),(266,27,'2020-11-29','Presidente Vargas','Fortaleza','Flamengo',0,0),(267,27,'2020-11-29','Joaquim Américo Guimararães','Athletico Paranaense','Vasco da Gama',0,0),(268,27,'2020-11-29','Itaipava Arena Fonte','Bahia','Internacional',0,0),(269,27,'2020-11-29','Arena do Grêmio','Grêmio','Atlético-GO',0,0),(270,27,'2020-11-29','Mineirão','Atlético-MG','Coritiba',0,0),(271,28,'2020-12-05','Mineirão','Atlético-MG','Santos',0,0),(272,28,'2020-12-05','Antônio Accioly','Atlético-GO','Vasco da Gama',0,0),(273,28,'2020-12-05','Arena Castelão','Ceará','Internacional',0,0),(274,28,'2020-12-05','Couto Pereira','Coritiba','Goiás',0,0),(275,28,'2020-12-05','Adelmar da Costa Carvalho','Sport','Fortaleza',0,0),(276,28,'2020-12-06','Arena do Grêmio','Grêmio','Bahia',0,0),(277,28,'2020-12-06','Nabi Abi Chedid','Bragantino','São Paulo',0,0),(278,28,'2020-12-06','Allianz Parque','Palmeiras','Corinthians',0,0),(279,28,'2020-12-06','Nilton Santos','Botafogo','Athletico Paranaense',0,0),(280,28,'2020-12-06','José Bastos Padilha','Flamengo','Fluminense',0,0),(281,29,'2020-12-09','Nabi Abi Chedid','Bragantino','Atlético-MG',0,0),(282,29,'2020-12-09','Morumbi','São Paulo','Santos',0,0),(283,29,'2020-12-09','Morumbi','São Paulo','Santos',0,0),(284,29,'2020-12-10','Nilton Santos','Vasco da Gama','Botafogo',0,0),(285,29,'2020-12-10','José Bastos Padilha','Flamengo','Ceará',0,0),(286,29,'2020-12-10','Beira-Rio','Internacional','Goiás',0,0),(287,29,'2020-12-11','Arena Corinthians','Corinthians','Fluminense',0,0),(288,29,'2020-12-11','Adelmar da Costa Carvalho','Sport','Palmeiras',0,0),(289,29,'2020-12-11','Antônio Accioly','Atlético-GO','Bahia',0,0),(290,29,'2020-12-11','Presidente Vargas','Fortaleza','Grêmio',0,0),(291,30,'2020-12-12','Arena Castelão','Ceará','Bragantino',0,0),(292,30,'2020-12-12','Hailé Pinheiro','Goiás','Flamengo',0,0),(293,30,'2020-12-12','Joaquim Américo Guimararães','Athletico Paranaense','São Paulo',0,0),(294,30,'2020-12-12','Itaipava Arena Fonte','Bahia','Corinthians',0,0),(295,30,'2020-12-12','Beira-Rio','Internacional','Fortaleza',0,0),(296,30,'2020-12-13','Mineirão','Atlético-MG','Atlético-GO',0,0),(297,30,'2020-12-13','Vila Belmiro','Santos','Botafogo',0,0),(298,30,'2020-12-13','Allianz Parque','Palmeiras','Grêmio',0,0),(299,30,'2020-12-13','São Januário','Vasco da Gama','Coritiba',0,0),(300,30,'2020-12-13','Manoel Schwartz','Fluminense','Sport',0,0),(301,31,'2020-12-19','Couto Pereira','Coritiba','Fluminense',0,0),(302,31,'2020-12-19','Itaipava Arena Fonte','Bahia','Athletico Paranaense',0,0),(303,31,'2020-12-19','Arena do Grêmio','Grêmio','Atlético-MG',0,0),(304,31,'2020-12-19','Arena Corinthians','Corinthians','Sport',0,0),(305,31,'2020-12-19','Nabi Abi Chedid','Bragantino','Vasco da Gama',0,0),(306,31,'2020-12-19','Morumbi','São Paulo','Internacional',0,0),(307,31,'2020-12-19','Nilton Santos','Botafogo','Atlético-GO',0,0),(308,31,'2020-12-19','José Bastos Padilha','Flamengo','Palmeiras',0,0),(309,31,'2020-12-19','Hailé Pinheiro','Goiás','Ceará',0,0),(310,31,'2020-12-19','Presidente Vargas','Fortaleza','Santos',0,0),(311,32,'2020-12-20','Manoel Schwartz','Fluminense','Botafogo',0,0),(312,32,'2020-12-20','São Januário','Vasco da Gama','Atlético-MG',0,0),(313,32,'2020-12-20','Antônio Accioly','Atlético-GO','Fortaleza',0,0),(314,32,'2020-12-20','Arena Castelão','Ceará','Palmeiras',0,0),(315,32,'2020-12-20','Joaquim Américo Guimararães','Athletico Paranaense','Flamengo',0,0),(316,32,'2020-12-20','Adelmar da Costa Carvalho','Sport','Bahia',0,0),(317,32,'2020-12-20','Beira-Rio','Internacional','Grêmio',0,0),(318,32,'2020-12-20','Arena Corinthians','Corinthians','Bragantino',0,0),(319,32,'2020-12-20','Vila Belmiro','Santos','Goiás',0,0),(320,32,'2020-12-20','Morumbi','São Paulo','Coritiba',0,0),(321,33,'2020-12-21','Allianz Parque','Palmeiras','Botafogo',0,0),(322,33,'2020-12-21','Antônio Accioly','Atlético-GO','São Paulo',0,0),(323,33,'2020-12-21','Arena Castelão','Ceará','Athletico Paranaense',0,0),(324,33,'2020-12-21','Couto Pereira','Coritiba','Grêmio',0,0),(325,33,'2020-12-21','Adelmar da Costa Carvalho','Sport','Flamengo',0,0),(326,33,'2020-12-21','Beira-Rio','Internacional','Bragantino',0,0),(327,33,'2020-12-21','Mineirão','Atlético-MG','Fortaleza',0,0),(328,33,'2020-12-21','Vila Belmiro','Santos','Corinthians',0,0),(329,33,'2020-12-21','São Januário','Vasco da Gama','Bahia',0,0),(330,33,'2020-12-21','Manoel Schwartz','Fluminense','Goiás',0,0),(331,34,'2020-12-22','Hailé Pinheiro','Goiás','Atlético-MG',0,0),(332,34,'2020-12-22','Presidente Vargas','Fortaleza','Coritiba',0,0),(333,34,'2020-12-22','Joaquim Américo Guimararães','Athletico Paranaense','Internacional',0,0),(334,34,'2020-12-22','Itaipava Arena Fonte','Bahia','Fluminense',0,0),(335,34,'2020-12-22','Arena Corinthians','Corinthians','Ceará',0,0),(336,34,'2020-12-22','Arena do Grêmio','Grêmio','Santos',0,0),(337,34,'2020-12-22','Nabi Abi Chedid','Bragantino','Atlético-GO',0,0),(338,34,'2020-12-22','Morumbi','São Paulo','Palmeiras',0,0),(339,34,'2020-12-22','Nilton Santos','Botafogo','Sport',0,0),(340,34,'2020-12-22','José Bastos Padilha','Flamengo','Vasco da Gama',0,0),(341,35,'2020-12-23','Itaipava Arena Fonte','Bahia','Goiás',0,0),(342,35,'2020-12-23','Antônio Accioly','Atlético-GO','Santos',0,0),(343,35,'2020-12-23','Presidente Vargas','Fortaleza','Vasco da Gama',0,0),(344,35,'2020-12-23','Couto Pereira','Coritiba','Palmeiras',0,0),(345,35,'2020-12-23','Beira-Rio','Internacional','Sport',0,0),(346,35,'2020-12-23','Arena Corinthians','Corinthians','Athletico Paranaense',0,0),(347,35,'2020-12-23','Nabi Abi Chedid','Bragantino','Flamengo',0,0),(348,35,'2020-12-23','Morumbi','São Paulo','Ceará',0,0),(349,35,'2020-12-23','Nilton Santos','Botafogo','Grêmio',0,0),(350,35,'2020-12-23','Manoel Schwartz','Fluminense','Atlético-MG',0,0),(351,36,'2020-12-24','Mineirão','Atlético-MG','Bahia',0,0),(352,36,'2020-12-24','Vila Belmiro','Santos','Coritiba',0,0),(353,36,'2020-12-24','Allianz Parque','Palmeiras','Fortaleza',0,0),(354,36,'2020-12-24','São Januário','Vasco da Gama','Internacional',0,0),(355,36,'2020-12-24','José Bastos Padilha','Flamengo','Corinthians',0,0),(356,36,'2020-12-24','Adelmar da Costa Carvalho','Sport','Bragantino',0,0),(357,36,'2020-12-24','Arena do Grêmio','Grêmio','São Paulo',0,0),(358,36,'2020-12-24','Joaquim Américo Guimararães','Athletico Paranaense','Atlético-GO',0,0),(359,36,'2020-12-24','Arena Castelão','Ceará','Fluminense',0,0),(360,36,'2020-12-24','Hailé Pinheiro','Goiás','Botafogo',0,0),(361,37,'2020-12-26','Hailé Pinheiro','Goiás','Bragantino',0,0),(362,37,'2020-12-26','Presidente Vargas','Fortaleza','Bahia',0,0),(363,37,'2020-12-26','Couto Pereira','Coritiba','Ceará',0,0),(364,37,'2020-12-26','Adelmar da Costa Carvalho','Sport','Atlético-MG',0,0),(365,37,'2020-12-26','Arena do Grêmio','Grêmio','Athletico Paranaense',0,0),(366,37,'2020-12-26','Arena Corinthians','Corinthians','Vasco da Gama',0,0),(367,37,'2020-12-26','Vila Belmiro','Santos','Fluminense',0,0),(368,37,'2020-12-26','Allianz Parque','Palmeiras','Athletico Paranaense',0,0),(369,37,'2020-12-26','Nilton Santos','Botafogo','São Paulo',0,0),(370,37,'2020-12-26','José Bastos Padilha','Flamengo','Internacional',0,0),(371,38,'2020-12-27','Arena Castelão','Ceará','Botafogo',0,0),(372,38,'2020-12-27','Joaquim Américo Guimararães','Athletico Paranaense','Sport',0,0),(373,38,'2020-12-27','Itaipava Arena Fonte','Bahia','Santos',0,0),(374,38,'2020-12-27','Beira-Rio','Internacional','Corinthians',0,0),(375,38,'2020-12-27','Mineirão','Atlético-MG','Palmeiras',0,0),(376,38,'2020-12-27','Nabi Abi Chedid','Bragantino','Grêmio',0,0),(377,38,'2020-12-27','Morumbi','São Paulo','Flamengo',0,0),(378,38,'2020-12-27','São Januário','Vasco da Gama','Goiás',0,0),(379,38,'2020-12-27','Manoel Schwartz','Fluminense','Fortaleza',0,0),(380,38,'2020-12-27','Antônio Accioly','Atlético-GO','Coritiba',0,0);
/*!40000 ALTER TABLE `jogos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisitos`
--

DROP TABLE IF EXISTS `requisitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requisitos` (
  `idTime` int(11) NOT NULL AUTO_INCREMENT,
  `pontos` int(11) DEFAULT 0,
  `vitorias` int(11) DEFAULT 0,
  `derrotas` int(11) DEFAULT 0,
  `empates` int(11) DEFAULT 0,
  `GP` int(11) DEFAULT 0,
  `GC` int(11) DEFAULT 0,
  `CA` int(11) DEFAULT 0,
  `CV` int(11) DEFAULT 0,
  UNIQUE KEY `idTime` (`idTime`),
  CONSTRAINT `requisitos_ibfk_1` FOREIGN KEY (`idTime`) REFERENCES `times` (`id_clube`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisitos`
--

LOCK TABLES `requisitos` WRITE;
/*!40000 ALTER TABLE `requisitos` DISABLE KEYS */;
INSERT INTO `requisitos` VALUES (1,16,5,1,1,16,5,1,1),(2,7,2,4,1,12,21,2,0),(3,2,0,7,2,16,33,1,0),(4,10,3,4,1,19,22,4,0),(5,13,4,3,1,21,19,3,0),(6,10,3,3,1,13,12,0,0),(7,13,4,2,1,19,12,2,1),(8,13,4,2,1,20,12,1,0),(9,12,4,3,0,14,18,3,0),(10,23,7,0,2,34,16,3,0),(11,9,2,2,3,19,18,3,0),(12,4,1,5,1,6,18,4,1),(13,9,3,4,0,10,8,1,0),(14,9,2,2,3,17,18,2,1),(15,9,3,4,0,16,14,1,1),(16,11,3,2,2,15,14,0,0),(17,10,3,3,1,13,11,3,1),(18,12,4,3,0,10,11,4,0),(19,9,3,4,0,14,18,1,0),(20,7,2,4,1,12,16,2,0);
/*!40000 ALTER TABLE `requisitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `times`
--

DROP TABLE IF EXISTS `times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `times` (
  `id_clube` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `estadio` varchar(50) NOT NULL,
  PRIMARY KEY (`id_clube`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `times`
--

LOCK TABLES `times` WRITE;
/*!40000 ALTER TABLE `times` DISABLE KEYS */;
INSERT INTO `times` VALUES (1,'Athletico Paranaense','Joaquim Américo Guimararães'),(2,'Atlético-GO','Antônio Accioly'),(3,'Atlético-MG','Mineirão'),(4,'Bahia','Itaipava Arena Fonte'),(5,'Botafogo','Nilton Santos'),(6,'Bragantino','Nabi Abi Chedid'),(7,'Ceará','Arena Castelão'),(8,'Corinthians','Arena Corinthians'),(9,'Coritiba','Couto Pereira'),(10,'Flamengo','José Bastos Padilha'),(11,'Fluminense','Manoel Schwartz'),(12,'Fortaleza','Presidente Vargas'),(13,'Goiás','Hailé Pinheiro'),(14,'Grêmio','Arena do Grêmio'),(15,'Internacional','Beira-Rio'),(16,'Palmeiras','Allianz Parque'),(17,'Santos','Vila Belmiro'),(18,'São Paulo','Morumbi'),(19,'Sport','Adelmar da Costa Carvalho'),(20,'Vasco da Gama','São Januário');
/*!40000 ALTER TABLE `times` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-21 16:06:54
