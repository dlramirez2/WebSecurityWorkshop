-- MySQL dump 10.13  Distrib 8.0.17, for Linux (x86_64)
--
-- Host: localhost    Database: medBlueP
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Patients`
--

DROP TABLE IF EXISTS `Patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Patients` (
  `userID` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pwdUser` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MRN` int(11) DEFAULT NULL,
  `LastName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FirstName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MiddleName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `SSN` int(11) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `AccountNumber` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`AccountNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patients`
--

LOCK TABLES `Patients` WRITE;
/*!40000 ALTER TABLE `Patients` DISABLE KEYS */;
INSERT INTO `Patients` VALUES ('test123','5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8',4428609,'Amidala','Padne','','1970-04-05',286969639,NULL,1),('','',1315941,'Cassian','Andor','','1976-06-22',254081319,NULL,2),('','',4293874,'Bane','Darth','','1932-01-10',309497667,NULL,3),('','',4456295,'Beckett','Tobias','','1932-01-10',285244363,NULL,4),('','',4726126,'Bibble','Sio','','1957-11-27',397728805,NULL,5),('','',1065984,'Billaba','Depa','','1974-05-16',232910922,NULL,6),('','',2151539,'Binks','Jar','Jar','1980-12-20',271368181,NULL,7),('','',2559743,'Blaev','Temirlan','','1961-06-26',158108129,NULL,8),('','',1344099,'Cook','Aidan','','1898-03-09',276436088,NULL,9),('','',2041266,'Calrissian','Lando','','1892-11-22',407856040,NULL,10),('','',1174030,'Canady','Moden','','1864-10-20',309971925,NULL,11),('','',2746352,'Mayhew','Chewbacca','','1973-02-28',226291491,NULL,12),('','',1209669,'Connix','Kaydel','Ko','1903-11-23',101541670,NULL,13),('','',4809290,'Colton','Jeremoch','','1864-10-20',128833863,NULL,14),('','',3417444,'DAcy','Larma','','1906-11-24',239544291,NULL,15),('','',1659349,'Dan','Figrin','','1908-05-11',311219854,NULL,16),('','',1044413,'Dameron','Poe','','1925-06-08',337466388,NULL,17),('','',3244015,'Dand','Vober','','1978-06-13',253672363,NULL,18),('','',4086840,'Danva','Joclad','','1989-02-23',155962638,NULL,19),('','',1702153,'Darklighter','Biggs','','1879-09-26',318796089,NULL,20),('','',3250244,'Dassyne','Oro','','1917-11-30',226092520,NULL,21),('','',2144762,'Derlin','Bren','','1924-02-24',474074319,NULL,22),('','',3973076,'Dod','Lott','','1931-06-02',392094023,NULL,23),('','',4431096,'Dodonna','Jan','','1977-01-12',438247148,NULL,24),('','',1236252,'Dofine','Daultay','','1850-01-09',114953657,NULL,25),('','',3887971,'Tyranus','Darth','','1855-06-20',360026828,NULL,26),('','',2731098,'Drallig','Cin','','1876-11-28',155273160,NULL,27),('','',4991577,'Dreis','Garven','','1924-08-08',396285299,NULL,28),('','',3764595,'Durant','Rio','','1996-10-23',215607004,NULL,29),('','',2848241,'Elberger','Dinee','',NULL,189179110,NULL,30),('','',1947422,'Ematt','Caluan','',NULL,199074525,NULL,31),('','',4192385,'Endocott','Ebe','E',NULL,327835281,NULL,32),('','',2119661,'Erso','Galen','',NULL,141952820,NULL,33),('','',1021148,'Erso','Jyn','',NULL,426258243,NULL,34),('','',1746756,'Erso','Lyra','',NULL,405432746,NULL,35),('','',4670337,'Eval','Moralo','',NULL,248388988,NULL,36),('','',1111418,'Evazan','Cornelius','',NULL,325646687,NULL,37),('','',2546075,'Fett','Boba','',NULL,383066461,NULL,38),('','',4396123,'Fett','Jango','',NULL,438392230,NULL,39),('','',1342390,'Doe','Finn','',NULL,142761756,NULL,40),('','',4523579,'Fortuna','Bib','',NULL,498632076,NULL,41),('','',1590728,'Gallia','Adi','',NULL,364875102,NULL,42),('','',1382898,'Hutt','Gardulla','the',NULL,228479270,NULL,43),('','',1142309,'Gargan','Yarna','dal',NULL,347771031,NULL,44),('','',4562847,'Gerrera','Saw','',NULL,153417333,NULL,45),('','',2387310,'Haako','Rune','',NULL,423773555,NULL,46),('','',1248009,'Hardeen','Rako','',NULL,358615770,NULL,47),('','',2078114,'Hill','San','',NULL,421758170,NULL,48),('','',1646542,'Hondo','Amilyn','',NULL,132943532,NULL,49),('','',4998368,'Hux','Armitage','',NULL,499443131,NULL,50),('','',3052216,'Imwe','Chirrut','',NULL,398385051,NULL,51),('','',3265973,'Ithano','Sidon','',NULL,393595848,NULL,52),('','',2173218,'Hutt','Jabba','the',NULL,272824074,NULL,53),('','',4068171,'Janson','Wes','',NULL,483332815,NULL,54),('','',4821203,'Jendowanian','Greeata','',NULL,298191840,NULL,55),('','',2901501,'Jerjerrod','Moff','Tiaan',NULL,340960745,NULL,56),('','',3043895,'Jinn','Quin-Gon','',NULL,310228190,NULL,57),('','',1514970,'Kalonia','Harter','',NULL,428258702,NULL,58),('','',1443167,'Kenobi','Obi-Wan','',NULL,310608929,NULL,59),('','',1670924,'Koon','Plo','',NULL,168268528,NULL,60),('','',3025119,'Koth','Eeth','',NULL,209515838,NULL,61),('','',1112824,'Krennic','Orson','',NULL,442773593,NULL,62),('','',3488762,'Kryze','Bo-Katan','',NULL,285320442,NULL,63),('','',1105339,'Lard','Cliegg','',NULL,398281419,NULL,64),('','',2060405,'Lars','Owen','',NULL,235445755,NULL,65),('','',1986010,'Lawquane','Cut','',NULL,282384505,NULL,66),('','',2748833,'Leech','Tasu','',NULL,205585248,NULL,67),('','',2786134,'Lennox','Xamuel','',NULL,480772713,NULL,68),('','',4684173,'Lo','Slowen','',NULL,487107811,NULL,69),('','',2062463,'Malbus','Baze','',NULL,493220902,NULL,70),('','',3259794,'Hutt','Mama','the',NULL,104781068,NULL,71),('','',1111584,'Maul','Darth','',NULL,144242617,NULL,72),('','',2778533,'Nest','Enfys','',NULL,306869869,NULL,73),('','',1557916,'Hutt','Niima','the',NULL,201621485,NULL,74),('','',2453981,'Nunb','Nien','',NULL,387497803,NULL,75),('','',2596155,'Onyo','Ketsu','',NULL,432624550,NULL,76),('','',4618832,'Organa','Breha','',NULL,100629330,NULL,77),('','',2305699,'Organa','Leia','',NULL,305272985,NULL,78),('','',4671996,'Orrelios','Garazeb','',NULL,324476922,NULL,79),('','',3442886,'Palpatine','Sheev','',NULL,206565645,NULL,80),('','',2198442,'Papanoida','Baron','',NULL,359397443,NULL,81),('','',3663550,'Papanoida','Che','Amanwe',NULL,277290269,NULL,82),('','',2722424,'Papanoida','Chi','Eekway',NULL,208259005,NULL,83),('','',1621472,'Piett','Firmus','',NULL,109424205,NULL,84),('','',2940086,'Plagueis','Darth','',NULL,222343995,NULL,85),('','',4836012,'Plutt','Unkar','',NULL,283447350,NULL,86),('','',2359807,'Porkins','Jek','Tono',NULL,250204754,NULL,87),('','',4290996,'Pryce','Arihnda','',NULL,300681707,NULL,88),('','',1375563,'Ren','Kylo','',NULL,252794259,NULL,89),('','',1004823,'Doe','Rey','',NULL,261926164,NULL,90),('','',3897424,'Rook','Bodhi','',NULL,451248027,NULL,91),('','',3472653,'Skywalker','Anakin','',NULL,170461636,NULL,92),('','',4670994,'Skywalker','Luke','',NULL,198564083,NULL,93),('','',3937012,'Skywalker','Shmi','',NULL,381435496,NULL,94),('','',4672077,'Sloane','Rae','',NULL,411485221,NULL,95),('','',2549351,'Doe','Snoke','',NULL,413119603,NULL,96),('','',1730520,'Tano','Ahsoka','',NULL,331142342,NULL,97),('','',4004548,'Tarkin','Moff','Wilhuff',NULL,316352888,NULL,98),('','',1831182,'Tekka','Lor','San',NULL,488337402,NULL,99),('','',4142265,'Tico','Paige','',NULL,192628337,NULL,100),('','',2217780,'Tico','Rose','',NULL,198129462,NULL,101),('','',1662105,'Vanto','Eli','',NULL,312762286,NULL,102),('','',4657184,'Ventress','Asajj','',NULL,469423031,NULL,103),('','',1299607,'Villecham','Lanever','',NULL,108828288,NULL,104),('','',3526480,'Vizsla','Pre','',NULL,235872333,NULL,105),('','',4733579,'Vos','Dryden','',NULL,352876790,NULL,106),('','',4088459,'Vos','Quinlan','',NULL,156766939,NULL,107),('','',1241558,'Warrick','Wicket','W',NULL,425204309,NULL,108),('','',4942409,'Wexley','Temmin','',NULL,355720721,NULL,109),('','',3987373,'Windu','Mace','',NULL,402990663,NULL,110),('','',4109638,'Wren','Sabine','',NULL,447791143,NULL,111),('','',3586071,'Xiono','Kazuda','',NULL,129983712,NULL,112),('','',4601442,'','Yoda','','1893-09-10',406545118,NULL,113),('','',3248997,'Yularen','Wullf','',NULL,342774444,NULL,114),('','',1440658,'Hutt','Ziro','the',NULL,394236853,NULL,115);
/*!40000 ALTER TABLE `Patients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-07 22:06:52
