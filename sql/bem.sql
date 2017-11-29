-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bem-pds
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `cad_psicologo`
--

DROP TABLE IF EXISTS `cad_psicologo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad_psicologo` (
  `crp` varchar(26) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `rua` varchar(150) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `bairro` varchar(150) NOT NULL,
  `cidade` varchar(150) NOT NULL,
  `telefoneComercial` varchar(20) DEFAULT NULL,
  `telefoneOutro` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(150) NOT NULL,
  `forma_atendimento` int(11) NOT NULL,
  PRIMARY KEY (`crp`),
  UNIQUE KEY `login` (`login`),
  KEY `forma_atendimento` (`forma_atendimento`),
  CONSTRAINT `cad_psicologo_ibfk_1` FOREIGN KEY (`forma_atendimento`) REFERENCES `tipoatendimento` (`tipoAtendimentoID`),
  CONSTRAINT `cad_psicologo_ibfk_2` FOREIGN KEY (`forma_atendimento`) REFERENCES `tipoatendimento` (`tipoAtendimentoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad_psicologo`
--

LOCK TABLES `cad_psicologo` WRITE;
/*!40000 ALTER TABLE `cad_psicologo` DISABLE KEYS */;
INSERT INTO `cad_psicologo` VALUES ('1230','Psicologo Exemplo','rua da ua','1','md','j','12938290','','m@dk.com','loginpsic','senhapsic',44),('123456','Exemplo de Psicologo','rua da ua','12','bairro do airo','cidade ade','8499448833','','email@d.c','usuario','senha1',43);
/*!40000 ALTER TABLE `cad_psicologo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cad_usuario`
--

DROP TABLE IF EXISTS `cad_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad_usuario` (
  `usuarioID` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(150) NOT NULL,
  PRIMARY KEY (`usuarioID`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad_usuario`
--

LOCK TABLES `cad_usuario` WRITE;
/*!40000 ALTER TABLE `cad_usuario` DISABLE KEYS */;
INSERT INTO `cad_usuario` VALUES (1,'exemplo de usuario','usuario@exemplo.com','usuario','senha1'),(2,'Teste de usuario ','usuario@teste.2','usuario2','senha2'),(3,'usuario do bem','bem@nem.bem','userbem','senha1'),(4,'u bem','bme@u.com','bemuse','senha3'),(6,'Nome de Cliente de Teste de Senha','teste_senha@senha.com','loginsenha','3EE7292E9DB8E325D8474DD45B53E470302E7F8C5EA60622B71B5BA757E609DC5AB2C6B5585135843784112D373CA8A0');
/*!40000 ALTER TABLE `cad_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionario`
--

DROP TABLE IF EXISTS `questionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questionario` (
  `questionarioID` int(11) NOT NULL AUTO_INCREMENT,
  `tipoQuestionario` varchar(5) NOT NULL,
  `dificuldade_para_se_acalmar` int(1) NOT NULL,
  `boca_seca` int(1) NOT NULL,
  `sem_vivencia_possitiva` int(1) NOT NULL,
  `dificuldade_respirar` int(1) NOT NULL,
  `dificuldade_tomar_iniciativa` int(1) NOT NULL,
  `reacao_exagerada` int(1) NOT NULL,
  `sentir_tremores` int(1) NOT NULL,
  `sempre_nervoso` int(1) NOT NULL,
  `situacoes_panico_ridiculo` int(1) NOT NULL,
  `nao_possui_desejo` int(1) NOT NULL,
  `senti_agitado` int(1) NOT NULL,
  `dificuldade_relaxar` int(1) NOT NULL,
  `depressivo_sem_animo` int(1) NOT NULL,
  `intolerante_contratempo` int(1) NOT NULL,
  `entrar_panico` int(1) NOT NULL,
  `nada_entusiasma` int(1) NOT NULL,
  `sem_valor` int(1) NOT NULL,
  `emotivo_sensivel` int(1) NOT NULL,
  `alteracao_cardiaca` int(1) NOT NULL,
  `medo_sem_motivo` int(1) NOT NULL,
  `vida_sem_sentido` int(1) NOT NULL,
  PRIMARY KEY (`questionarioID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionario`
--

LOCK TABLES `questionario` WRITE;
/*!40000 ALTER TABLE `questionario` DISABLE KEYS */;
INSERT INTO `questionario` VALUES (4,'form',1,0,0,1,2,1,1,1,2,2,3,2,2,2,2,2,3,3,2,1,0),(5,'form',1,0,0,1,2,1,1,1,2,2,3,2,2,2,2,2,3,3,2,1,0),(6,'form',1,0,0,1,2,1,1,1,2,2,3,2,2,2,2,2,3,3,2,1,0),(7,'form',0,1,2,3,2,2,2,3,3,3,3,1,1,0,1,3,2,2,0,0,0),(8,'form',1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0),(9,'form',1,1,0,2,3,1,1,0,0,0,0,0,1,1,1,2,1,0,0,0,1),(10,'form',1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),(11,'form',1,0,0,0,0,0,1,0,2,1,1,0,0,0,0,1,3,0,0,0,0),(12,'form',1,0,0,1,0,0,0,0,0,1,1,0,0,0,0,0,3,1,0,0,0),(13,'form',0,0,0,0,0,0,0,0,0,1,0,1,0,1,0,0,0,0,0,0,0),(14,'form',0,0,0,0,0,0,0,0,0,1,0,1,0,1,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `questionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoatendimento`
--

DROP TABLE IF EXISTS `tipoatendimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoatendimento` (
  `tipoAtendimentoID` int(11) NOT NULL AUTO_INCREMENT,
  `crp` varchar(26) NOT NULL,
  `privado` tinyint(1) NOT NULL,
  `amil` tinyint(1) NOT NULL,
  `unimedNatal` tinyint(1) NOT NULL,
  `hapvida` tinyint(1) NOT NULL,
  PRIMARY KEY (`tipoAtendimentoID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoatendimento`
--

LOCK TABLES `tipoatendimento` WRITE;
/*!40000 ALTER TABLE `tipoatendimento` DISABLE KEYS */;
INSERT INTO `tipoatendimento` VALUES (20,'89800',1,1,1,0),(34,'12123234',1,1,0,0),(35,'1111111',1,1,1,1),(36,'828378273',1,0,0,0),(37,'1222222',0,1,1,0),(38,'1222222',0,1,1,0),(39,'9',0,1,1,0),(40,'9',0,1,1,0),(41,'91',0,1,1,0),(42,'8888888888',1,1,1,0),(43,'123456',1,1,1,1),(44,'1230',1,1,1,1);
/*!40000 ALTER TABLE `tipoatendimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `validacao_cadastro`
--

DROP TABLE IF EXISTS `validacao_cadastro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `validacao_cadastro` (
  `validacaoID` int(11) NOT NULL AUTO_INCREMENT,
  `crp` varchar(26) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `dtSolicitacao` datetime DEFAULT CURRENT_TIMESTAMP,
  `statusValidacao` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`validacaoID`),
  UNIQUE KEY `crp` (`crp`),
  CONSTRAINT `validacao_cadastro_ibfk_1` FOREIGN KEY (`crp`) REFERENCES `cad_psicologo` (`crp`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `validacao_cadastro`
--

LOCK TABLES `validacao_cadastro` WRITE;
/*!40000 ALTER TABLE `validacao_cadastro` DISABLE KEYS */;
INSERT INTO `validacao_cadastro` VALUES (1,'123456','Exemplo de Psicologo','2017-11-13 10:47:52',0),(2,'1230','Psicologo Exemplo','2017-11-14 09:12:10',0);
/*!40000 ALTER TABLE `validacao_cadastro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-16  9:49:59
