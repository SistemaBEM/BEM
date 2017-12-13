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
-- Table structure for table `applyprofissional`
--

DROP TABLE IF EXISTS `applyprofissional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applyprofissional` (
  `applyProfissionalID` int(11) NOT NULL AUTO_INCREMENT,
  `crp` int(26) NOT NULL,
  `usuarioID` int(11) NOT NULL,
  `avaliacao` int(3) NOT NULL,
  `comentario` varchar(999) DEFAULT NULL,
  `statusValidacaoApply` tinyint(1) NOT NULL DEFAULT '0',
  `formaconsultaID` int(11) NOT NULL,
  PRIMARY KEY (`applyProfissionalID`),
  KEY `formaconsultaID` (`formaconsultaID`),
  CONSTRAINT `applyprofissional_ibfk_1` FOREIGN KEY (`formaconsultaID`) REFERENCES `formaconsulta` (`formaconsultaID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applyprofissional`
--

LOCK TABLES `applyprofissional` WRITE;
/*!40000 ALTER TABLE `applyprofissional` DISABLE KEYS */;
INSERT INTO `applyprofissional` VALUES (5,1272356,1,10,'Dr Manoel Ã© um excelente profissional! ',1,1);
/*!40000 ALTER TABLE `applyprofissional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cad_administrador`
--

DROP TABLE IF EXISTS `cad_administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cad_administrador` (
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(150) NOT NULL,
  PRIMARY KEY (`cpf`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad_administrador`
--

LOCK TABLES `cad_administrador` WRITE;
/*!40000 ALTER TABLE `cad_administrador` DISABLE KEYS */;
INSERT INTO `cad_administrador` VALUES ('00000000000','Usuário Inicial','usuario','240BE518FABD2724DDB6F04EEB1DA5967448D7E831C08C8FA822809F74C720A90192023A7BBD73250516F069DF18B500'),('09935811450','Maryanne Alice de Freitas Tavares','maryannealice','3EE7292E9DB8E325D8474DD45B53E470302E7F8C5EA60622B71B5BA757E609DC5AB2C6B5585135843784112D373CA8A0');
/*!40000 ALTER TABLE `cad_administrador` ENABLE KEYS */;
UNLOCK TABLES;

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
  `sexo` varchar(1) NOT NULL,
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
INSERT INTO `cad_psicologo` VALUES ('1272356','Manoel Joaquim Matos Barbosa','Rua Hermes da Fonseca','235','Castelo Branco','Parnamirim','8432205896','','manoel_matos@gmail.com','manoel','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92E10ADC3949BA59ABBE56E057F20F883E',48,'M'),('1278722','Maria Jassiara Oliveira Castelo','Rua Hermes da Fonseca','458','Monte Castelo','Natal','8432218420','','mariaoliveira@outlook.com','mariaoliveira','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92E10ADC3949BA59ABBE56E057F20F883E',49,'F');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cad_usuario`
--

LOCK TABLES `cad_usuario` WRITE;
/*!40000 ALTER TABLE `cad_usuario` DISABLE KEYS */;
INSERT INTO `cad_usuario` VALUES (1,'Maria Clara Andrade Almeida','maria_clarinha@hotmail.com','maria_clara','8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92E10ADC3949BA59ABBE56E057F20F883E');
/*!40000 ALTER TABLE `cad_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dass21_score`
--

DROP TABLE IF EXISTS `dass21_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dass21_score` (
  `dass21_scoreID` int(11) NOT NULL AUTO_INCREMENT,
  `questionarioID` int(11) NOT NULL,
  `scoreDepression` int(3) NOT NULL,
  `scoreAnxiety` int(3) NOT NULL,
  `scoreStress` int(3) NOT NULL,
  PRIMARY KEY (`dass21_scoreID`),
  KEY `questionarioID` (`questionarioID`),
  CONSTRAINT `dass21_score_ibfk_1` FOREIGN KEY (`questionarioID`) REFERENCES `questionario` (`questionarioID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dass21_score`
--

LOCK TABLES `dass21_score` WRITE;
/*!40000 ALTER TABLE `dass21_score` DISABLE KEYS */;
/*!40000 ALTER TABLE `dass21_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formaconsulta`
--

DROP TABLE IF EXISTS `formaconsulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formaconsulta` (
  `formaconsultaID` int(11) NOT NULL AUTO_INCREMENT,
  `privado` tinyint(1) NOT NULL DEFAULT '0',
  `amil` tinyint(1) NOT NULL DEFAULT '0',
  `unimed` tinyint(1) NOT NULL DEFAULT '0',
  `hapvida` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`formaconsultaID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formaconsulta`
--

LOCK TABLES `formaconsulta` WRITE;
/*!40000 ALTER TABLE `formaconsulta` DISABLE KEYS */;
INSERT INTO `formaconsulta` VALUES (1,1,0,0,0);
/*!40000 ALTER TABLE `formaconsulta` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionario`
--

LOCK TABLES `questionario` WRITE;
/*!40000 ALTER TABLE `questionario` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoatendimento`
--

LOCK TABLES `tipoatendimento` WRITE;
/*!40000 ALTER TABLE `tipoatendimento` DISABLE KEYS */;
INSERT INTO `tipoatendimento` VALUES (20,'89800',1,1,1,0),(34,'12123234',1,1,0,0),(35,'1111111',1,1,1,1),(36,'828378273',1,0,0,0),(37,'1222222',0,1,1,0),(38,'1222222',0,1,1,0),(39,'9',0,1,1,0),(40,'9',0,1,1,0),(41,'91',0,1,1,0),(42,'8888888888',1,1,1,0),(43,'123456',1,1,1,1),(44,'1230',1,1,1,1),(45,'8923892',1,1,1,0),(46,'568978',1,1,1,0),(47,'0000000000',1,1,1,1),(48,'1272356',1,0,1,0),(49,'1278722',0,1,0,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `validacao_cadastro`
--

LOCK TABLES `validacao_cadastro` WRITE;
/*!40000 ALTER TABLE `validacao_cadastro` DISABLE KEYS */;
INSERT INTO `validacao_cadastro` VALUES (6,'1272356','Manoel Joaquim Matos Barbosa','2017-12-09 00:15:58',1),(7,'1278722','Maria Jassiara Oliveira Castelo','2017-12-09 00:18:45',1);
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

-- Dump completed on 2017-12-10  9:13:00
