-- MySQL dump 10.13  Distrib 5.5.35, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: registrationsmobilization
-- ------------------------------------------------------
-- Server version	5.5.35-1ubuntu1

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
-- Table structure for table `ANSWERS`
--

DROP TABLE IF EXISTS `ANSWERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ANSWERS` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ANSWER_TEXT` varchar(255) DEFAULT NULL,
  `QUESTION` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fcy8gyn9uf931fwxj77j4nodk` (`QUESTION`),
  CONSTRAINT `FK_fcy8gyn9uf931fwxj77j4nodk` FOREIGN KEY (`QUESTION`) REFERENCES `QUESTIONS` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ANSWERS`
--

LOCK TABLES `ANSWERS` WRITE;
/*!40000 ALTER TABLE `ANSWERS` DISABLE KEYS */;
INSERT INTO `ANSWERS` VALUES (1,'Go 4 RuleF',1),(2,'Go 4 Rule',1),(3,'Go 4 <br/>\nRule',1),(4,'Type mismatch: cannot convert from char to int',1),(5,'1 <br/>\n2',2),(6,'2 <br/>\n1',2),(7,'0 <br/>\n0',2),(8,'1 <br/>\n1',2),(9,'100',3),(10,'1',3),(11,'java.lang.ArrayIndexOutOfBoundsException: -1',3),(12,'0',3),(13,'true',4),(14,'false',4),(15,'null',4),(16,'\"Ru!3\" will never be written down to the standard output.',4),(17,'100',5),(18,'99',5),(19,'0',5),(20,'1',5),(21,'-2',6),(22,'-3',6),(23,'java.lang.ArrayIndexOutOfBoundsException: -1',6),(24,'0',6),(25,'GROUP BY',7),(26,'ORDER FROM',7),(27,'ASC BY',7),(28,'ORDER BY',7),(29,'DDL',8),(30,'DML',8),(31,'DBL',8),(32,'DCL',8),(33,'SUM',9),(34,'MIN',9),(35,'COUNT',9),(36,'BYNAME',9),(37,'It joins two or more tables into a single one.',10),(38,'It joins two or more databases into a single one.',10),(39,'It joins two or more queries into one resultant set.',10),(40,'It empties the query result.',10),(41,'Declarative',11),(42,'Interpreted',11),(43,'Compiled',11),(44,'Functional',11),(45,'Stack',12),(46,'Heap',12),(47,'None of the above',12),(48,'Both of the above',12),(49,'Definitions of types: class, struct, namespace + primitive types.',13),(50,'Only definitions of primitive types and classes.',13),(51,'Definitions of types: class, interface, struct, enum, delegate, namespace.',13),(52,'Definitions of all kinds of types.',13),(57,'z(oo)+t',15),(58,'zo*t$',15),(59,'$zo*t',15),(60,'^(zo)+t',15),(61,'Yes',16),(62,'No',16),(63,'There is no concept of generalization in C#.',16),(64,'There is no concept of realization in C#.',16),(65,'1',17),(66,'11',17),(67,'10',17),(68,'22',17);
/*!40000 ALTER TABLE `ANSWERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BONUSES`
--

DROP TABLE IF EXISTS `BONUSES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BONUSES` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BONUS_IMAGE` varchar(255) DEFAULT NULL,
  `BONUS_NAME` varchar(255) NOT NULL,
  `BONUS_PROBABILITY_WEIGHT` int(11) NOT NULL,
  `BONUS_QUANTITY` int(11) NOT NULL,
  `BONUS_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_j9fo90sd1u9s7sbt6s69iywe2` (`BONUS_TYPE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BONUSES`
--

LOCK TABLES `BONUSES` WRITE;
/*!40000 ALTER TABLE `BONUSES` DISABLE KEYS */;
INSERT INTO `BONUSES` VALUES (1,'img/bonus/whirligig.jpg','Whirligig',3,996,'WHIRLIGIG'),(2,'img/bonus/cup.jpg','Cup',1,33,'CUP'),(3,'img/bonus/hub.jpg','Hub',2,46,'HUB');
/*!40000 ALTER TABLE `BONUSES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRIZES`
--

DROP TABLE IF EXISTS `PRIZES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRIZES` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `IMAGE` varchar(255) NOT NULL,
  `POSITION` int(11) NOT NULL,
  `PRIZE_HAS_NOT_BEEN_SELECTED_MESSAGE` varchar(255) NOT NULL,
  `WINNER_MESSAGE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_7wfxrpui1rcsridt0vqlorve8` (`IMAGE`),
  UNIQUE KEY `UK_3efmb1p993gy50pww2tsyfleb` (`POSITION`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRIZES`
--

LOCK TABLES `PRIZES` WRITE;
/*!40000 ALTER TABLE `PRIZES` DISABLE KEYS */;
INSERT INTO `PRIZES` VALUES (1,'img/mainprize/headphones.jpg',1,'Winner has not been selected yet.','Winner is: '),(2,'img/mainprize/hdd.jpg',2,'2nd prize has not been selected yet.','2nd prize awarded to: '),(3,'img/mainprize/keyboard.png',3,'3rd prize has not been selected yet.','3rd prize awarded to: '),(4,'img/mainprize/mouse.jpg',4,'4rd prize has not been selected yet.','4rd prize awarded to: ');
/*!40000 ALTER TABLE `PRIZES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUESTIONS`
--

DROP TABLE IF EXISTS `QUESTIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUESTIONS` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CORRECT_ANSWER` bigint(20) DEFAULT NULL,
  `QUESTION_TEXT` longtext,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUESTIONS`
--

LOCK TABLES `QUESTIONS` WRITE;
/*!40000 ALTER TABLE `QUESTIONS` DISABLE KEYS */;
INSERT INTO `QUESTIONS` VALUES (1,4,'<strong> What will be written to the standard output after running the following code?\n</strong> <br/>\n<code>\nString ruleString = \"RuleFinancial\"; <br/>\nint start = 0; <br/>\nchar end = 4; <br/>\nSystem.out.print(\"Go \"+ (end + start) + \" \"); <br/>\nSystem.out.println(ruleString.substring(start, end));\n</code>','JAVA'),(2,8,'<strong> What will be written to the standard output after running the following code?\n</strong> <br/>\n<code>\nint i = 0; <br/>\nSystem.out.println(i++ == --i ? i+++1 : --i-1); <br/>\nSystem.out.println(i); <br/>\n</code>','JAVA'),(3,9,'\n\n<strong> What will be written to the standard output after running the following code?\n</strong> <br/>\n<code>\nHashSet setOfShorts = new HashSet(); <br/>\nfor (short i = 0; i < 100; i++) { <br/>\n&nbsp;&nbsp;&nbsp;&nbsp;setOfShorts.add(i);<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;setOfShorts.remove(i-1);<br/>\n}<br/>\nSystem.out.println(setOfShorts.size());\n</code>','JAVA'),(4,15,'<strong> What should be written in the place of dots in order to have the string \"Ru!e\" written to the standard output?\n</strong> <br/>\n<code>\nBoolean flag = ...; <br/>\ntry {<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;if (flag)<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while (true);<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;else<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;System.exit(1);<br/>\n} finally {<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;System.out.println(\"Ru!3\");<br/>\n}\n</code>','JAVA'),(5,19,'<strong> What will be written to the standard output after running the following code?\n</strong> <br/>\n<code>\nint j = 0; <br/>\nfor (int i = 0; i < 100; i++) <br/>\n&nbsp;&nbsp;&nbsp;&nbsp;j = j++; <br/>\nSystem.out.println(j); <br/>\n<code>','JAVA'),(6,24,'<strong> What will be written to the standard output after running the following code?\n</strong> <br/>\n<code>\nint[] intArray = { 1, 0, -1 };<br/>\nfor (int i : intArray)<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;if (i <= 0)<br/>\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;i = i - 1;<br/>\nSystem.out.println(intArray[0] + intArray[1] + intArray[2]);\n</code>		','JAVA'),(7,28,'<strong> Which one of the following keywords allows to sort the query result?\n</strong> <br/>\n<ol>\n	<li>GROUP BY</li>\n	<li>ORDER FROM</li>\n	<li>ASC BY</li>\n	<li>ORDER BY</li>\n</ol>','SQL'),(8,31,'<strong> Which one of the following subgroups does not belong to the SQL language?\n</strong> <br/>\n<ol>\n	<li>DDL</li>\n	<li>DML</li>\n	<li>DBL</li>\n	<li>DCL</li>\n</ol>','SQL'),(9,36,'<strong> Which one of the following functions is not a standard aggregating function of the SQL language?\n</strong> <br/>\n<ol>\n	<li>SUM</li>\n	<li>MIN</li>\n	<li>BYNAME</li>\n	<li>COUNT</li>\n</ol>','SQL'),(10,39,'<strong> What is the use of the UNION clause?\n</strong> <br/>\n<ol>\n	<li>It joins two or more tables into a single one.</li>\n	<li>It joins two or more databases into a single one.</li>\n	<li>It joins two or more queries into one resultant set.</li>\n	<li>It empties the query result.</li>\n</ol>','SQL'),(11,41,'<strong> What type of language is SQL?\n</strong> <br/>\n<ol>\n	<li>Declarative</li>\n	<li>Interpreted</li>\n	<li>Compiled</li>\n	<li>Functional</li>\n</ol>','SQL'),(12,45,'<strong> Value types are stored on:\n</strong> <br/>\n<ol>\n	<li>Stack</li>\n	<li>Heap</li>\n	<li>None of the above</li>\n	<li>Both of the above</li>\n</ol>','DOTNET'),(13,52,'<strong> Namespace can include the following:\n</strong> <br/>\n<ol>\n	<li>Definitions of types: class, struct, namespace + primitive types.</li>\n	<li>Only definitions of primitive types and classes.</li>\n	<li>Definitions of types: class, interface, struct, enum, delegate, namespace.</li>\n	<li>Definitions of all kinds of types.</li>\n</ol>','DOTNET'),(15,58,'<strong> Which one of the following regular expressions matches \"zoot\" and \"zot\" strings?\n</strong> <br/>\n<ol>\n	<li>z(oo)+t</li>\n	<li>zo*t$</li>\n	<li>$zo*t</li>\n	<li>^(zo)+t</li>\n</ol>','DOTNET'),(16,62,'<strong> Can class extend multiple classes in C#?\n</strong> <br/>\n<ol>\n	<li>Yes</li>\n	<li>No</li>\n	<li>There is no concept of generalization in C#.</li>\n	<li>There is no concept of realization in C#.</li>\n</ol>','DOTNET'),(17,68,'<strong> What value will be printed to the console after executing the following instruction?\n</strong> <br/>\n<code>Console.WriteLine(11 << 1);</code><br/>\n<ol>\n	<li>1</li>\n	<li>11</li>\n	<li>10</li>\n	<li>22</li>\n</ol>','DOTNET');
/*!40000 ALTER TABLE `QUESTIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REGISTRATIONS`
--

DROP TABLE IF EXISTS `REGISTRATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REGISTRATIONS` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CORRECT` tinyint(1) DEFAULT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `FIRST_NAME` varchar(20) NOT NULL,
  `LAST_NAME` varchar(40) NOT NULL,
  `PRIZE` int(11) DEFAULT NULL,
  `answer_ID` bigint(20) DEFAULT NULL,
  `question_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_frdqtck8dio8hd5s14fxyerac` (`ID`,`EMAIL`),
  UNIQUE KEY `UK_q2wr0vbaq5u94ste15ftd7lo0` (`EMAIL`),
  KEY `FK_ruoks9cmxxu6ep975jt3x7obs` (`answer_ID`),
  KEY `FK_om5mwy21d70lcksqcyia4i74o` (`question_ID`),
  CONSTRAINT `FK_om5mwy21d70lcksqcyia4i74o` FOREIGN KEY (`question_ID`) REFERENCES `QUESTIONS` (`ID`),
  CONSTRAINT `FK_ruoks9cmxxu6ep975jt3x7obs` FOREIGN KEY (`answer_ID`) REFERENCES `ANSWERS` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13875 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REGISTRATIONS`
--

LOCK TABLES `REGISTRATIONS` WRITE;
/*!40000 ALTER TABLE `REGISTRATIONS` DISABLE KEYS */;
INSERT INTO `REGISTRATIONS` VALUES (13869,0,'piotr.sobieraj@rulefinancial.com','Piotr','Sobieraj',0,28,7),(13870,1,'jace@fmail.com','Marek','Skwarek',0,21,6),(13871,1,'mx@mx.pl','mx','mx',0,21,6),(13874,0,'mm@gmail.com','Maciek','Maciek',0,28,7);
/*!40000 ALTER TABLE `REGISTRATIONS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-12 17:19:04
