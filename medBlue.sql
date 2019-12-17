-- MySQL dump 10.13  Distrib 8.0.17, for Linux (x86_64)
--
-- Host: localhost    Database: medBlue
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
-- Table structure for table `medBlueE`
--

DROP TABLE IF EXISTS `medBlueE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medBlueE` (
  `EmployeeID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FirstName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `HireDate` date DEFAULT NULL,
  `pwdEmployee` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medBlueE`
--

LOCK TABLES `medBlueE` WRITE;
/*!40000 ALTER TABLE `medBlueE` DISABLE KEYS */;
INSERT INTO `medBlueE` VALUES (1,'testUN','testLN','testFN',35,'2018-12-31','password'),(2,'username','Mata','Miz',21,'1998-10-18','123'),(3,'destiny','Bonnell','Steven',30,'1995-01-18','blueCar'),(4,'Jayc','Cee','jay',24,'2000-06-20','pizza'),(5,'ZeRo','Martinez','Joaquin',27,'2008-10-01','smashBros'),(6,'Trainwreaks','Domey','train',28,'2010-11-25','shamelessness'),(7,'Mayo','Higa','maya',19,'2016-12-10','animals'),(8,'xqcow','cow','felix',20,'2012-03-09','consoles'),(9,'musical','chang','albert',29,'1990-01-10','magic'),(10,'lilyP','paca','lily',27,'2000-02-20','offline');
/*!40000 ALTER TABLE `medBlueE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medBlueP`
--

DROP TABLE IF EXISTS `medBlueP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medBlueP` (
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
-- Dumping data for table `medBlueP`
--

LOCK TABLES `medBlueP` WRITE;
/*!40000 ALTER TABLE `medBlueP` DISABLE KEYS */;
INSERT INTO `medBlueP` VALUES ('pAmidala','9d017e2681b7f31725e1c0fbe2612e89079c22806b02cf7a894b500dd5a219c1',4428609,'Amidala','Padne','','1970-04-05',286969639,NULL,1),('aCassian','61519cf738fe25f5352363db35dd1cfae333d21eaffe368f018f3ac151206177',1315941,'Cassian','Andor','','1976-06-22',254081319,NULL,2),('dBane','23a2fb9890323c529497aeda3118b26f867b72fa51bb178881e0b8036b892980',4293874,'Bane','Darth','','1932-01-10',309497667,NULL,3),('tBeckett','44663b20386b3d2fcd629af1fe754f10104ea5a031ab747f45d9b4708085909a',4456295,'Beckett','Tobias','','1932-01-10',285244363,NULL,4),('sBibble','e8c45dc3abde50498b03837f457827ec0069c2bc70bc1d4c917090f4428740ab',4726126,'Bibble','Sio','','1957-11-27',397728805,NULL,5),('dBillaba','e2306ede19cd3df052c33ae2ad620c51783a3e1c653393e74200146bef092749',1065984,'Billaba','Depa','','1974-05-16',232910922,NULL,6),('jJBinks','a071c63e2457233e705b2ce5805665602de7d0a85d21ec75162d4611081f56b4',2151539,'Binks','Jar','Jar','1980-12-20',271368181,NULL,7),('tBlaev','097cc227ae4f970ead8bfd72b2aedcb986708e2c56bed67f0e731c01e2142069',2559743,'Blaev','Temirlan','','1961-06-26',158108129,NULL,8),('aCook','a2abfead50298bf25eaeaac35b94b6cf5a808cc9c91fa75787f6c0f8e0548167',1344099,'Cook','Aidan','','1898-03-09',276436088,NULL,9),('lCalrissian','b3a546ebb185c890958b6b239c23362ce88a0f15614f5cfd1db7e2f91e636ee1',2041266,'Calrissian','Lando','','1892-11-22',407856040,NULL,10),('mCanady','fddc5e2d72138599a1453141160a51af5cac890ae743723ba0cfb5d301552966',1174030,'Canady','Moden','','1864-10-20',309971925,NULL,11),('cMayhew','2d821a04d206b50c10ec2c9d035133d7adacdea69189101e230dd04275f5d523',2746352,'Mayhew','Chewbacca','','1973-02-28',226291491,NULL,12),('kKConnix','2ea611b3e6ca9f62c8b10c5112bf425d51af09ab6ae99fa410f2ffc5cf811d66',1209669,'Connix','Kaydel','Ko','1903-11-23',101541670,NULL,13),('jColton','44116c7fce574ca7be6914b8f06478c1f36bb3e68a9951ab40a5b8952abe768b',4809290,'Colton','Jeremoch','','1864-10-20',128833863,NULL,14),('lDAcy','7ab5b0bd9144f4d30acc69834ff50c5ccc1222e62134ee353314ed8ad2d5dff6',3417444,'DAcy','Larma','','1906-11-24',239544291,NULL,15),('fDan','d12c23af5479208750030258965b800c8d83f00245400d6c27701bf32eb6862b',1659349,'Dan','Figrin','','1908-05-11',311219854,NULL,16),('pDameron','b51c22dbf6559257ce29edce2e5c3664ed4db3f9ccca8986d67736468b6de319',1044413,'Dameron','Poe','','1925-06-08',337466388,NULL,17),('vDand','4aaea60aed56a2e4d18b10d59980947d3d341b582c529ae8d10e620528f83467',3244015,'Dand','Vober','','1978-06-13',253672363,NULL,18),('jDanva','ed790606aa1895a1a619c180c5e7e70f53950ad377971643fe2feea4cbc4f41b',4086840,'Danva','Joclad','','1989-02-23',155962638,NULL,19),('bDarklighter','d7651d0a94e781fb3e7754d82ff2da0bfb5a540fb38c2a77ef5fa478db924eb0',1702153,'Darklighter','Biggs','','1879-09-26',318796089,NULL,20),('oDassyne','19d0e0404669e52c0331567c05438a07bb4f97d12b69bc6d9bd73fdc0b689f7c',3250244,'Dassyne','Oro','','1917-11-30',226092520,NULL,21),('bDerlin','6e49e65081b2bcb5a54e6a6a74086f42949ddf388d516ce7eb0dad7d95e80ceb',2144762,'Derlin','Bren','','1924-02-24',474074319,NULL,22),('lDod','88de9a627ad65ed3d598461ce77dec120ea7655236bc026a97727227a0c90e60',3973076,'Dod','Lott','','1931-06-02',392094023,NULL,23),('jDodonna','3a9bd0161d828548fe7df74182b35efaabbd916c76d7dbe1edf95d60e8d4023b',4431096,'Dodonna','Jan','','1977-01-12',438247148,NULL,24),('dDofine','1f192c0285f1192b4ee647eb1cbbff3321a0b5768bafdde153e64d3c2694a6f3',1236252,'Dofine','Daultay','','1850-01-09',114953657,NULL,25),('dTyranus','daef6cc0a3d5dc056951a8a52618d50e046be3bf86f8b9554b6b245242fa0883',3887971,'Tyranus','Darth','','1855-06-20',360026828,NULL,26),('cDrallig','d434596cbb7bae2303557d86d51d5810b1ee98a723db67da7fc74e3fb160dd51',2731098,'Drallig','Cin','','1876-11-28',155273160,NULL,27),('gDreis','e386ed0d8b2887a5383934bd6c99b4ce4d0cc44a5e0f1de9af1536ec66cfb86c',4991577,'Dreis','Garven','','1924-08-08',396285299,NULL,28),('rDurant','b4802c1f8e324582848ced6435a77d3ede0ab6ce4a8e916da7a762a52f246f75',3764595,'Durant','Rio','','1996-10-23',215607004,NULL,29),('dElberger','ed5faee0ac2be8400fdc3944dc803a0f8898bf1324049dd5a042379cd34ddcf3',2848241,'Elberger','Dinee','',NULL,189179110,NULL,30),('cEmatt','00305fcda9bfbf6df5d3778dbf995dbc194c1593cbdfb2ff5da5500d2003e9a8',1947422,'Ematt','Caluan','',NULL,199074525,NULL,31),('eEndocott','4a319510da965e50a0f44b1255f469fcee5a843d8dc22361788ec9ead806df73',4192385,'Endocott','Ebe','E',NULL,327835281,NULL,32),('gErso','2ad0eb49e330537409b9a8aae476aac550fa43dc77ff35be0ba5cbe3f6b77002',2119661,'Erso','Galen','',NULL,141952820,NULL,33),('jErso','d9c5246f2f09aeffe1373fddfb68b2611928ba8c3ac1a6a20d940ba8079a09a6',1021148,'Erso','Jyn','',NULL,426258243,NULL,34),('lErso','5ff7e5dc7a7c11fcf58235ea28d9f73d7d5ef654fba387f0534dc5cd31bc48fa',1746756,'Erso','Lyra','',NULL,405432746,NULL,35),('mEval','aa4aeb96b4af7e0893a706573ce3ca9b06eb9b50c2f969d817b4632631348262',4670337,'Eval','Moralo','',NULL,248388988,NULL,36),('cEvazan','e600bda8b7b82249ddf2e0499932ef4b2af7727d0641d366a4a0e4729ed5f59b',1111418,'Evazan','Cornelius','',NULL,325646687,NULL,37),('bFett','99e2b58c8c58d89ece0e8b95f454860bfb52c486e9e6d37766c0449dfa9cb339',2546075,'Fett','Boba','',NULL,383066461,NULL,38),('jFett','010453508d753b34bca2552302c2197f41c9380e44e7ba30207e8238ce7c24a8',4396123,'Fett','Jango','',NULL,438392230,NULL,39),('fDoe','a2bd91e63779b1c105043292aa9302df375a31f4d58bb288903d109a6316c1b0',1342390,'Doe','Finn','',NULL,142761756,NULL,40),('bFortuna','d16c1b19028385a3e4c11810cdeb03a8434e4b1fab48c6c1579bcb5450e1cac8',4523579,'Fortuna','Bib','',NULL,498632076,NULL,41),('aGallia','7bdce0ebb0876027be15d671864925eb7b4dd48f50880c749d92f30429a3a115',1590728,'Gallia','Adi','',NULL,364875102,NULL,42),('gTHutt','e32111f1114272bcc44c408ea9a7bfa8e064dfa6efe1fd44866acee08babe24c',1382898,'Hutt','Gardulla','the',NULL,228479270,NULL,43),('','',1142309,'Gargan','Yarna','dal',NULL,347771031,NULL,44),('','',4562847,'Gerrera','Saw','',NULL,153417333,NULL,45),('','',2387310,'Haako','Rune','',NULL,423773555,NULL,46),('','',1248009,'Hardeen','Rako','',NULL,358615770,NULL,47),('','',2078114,'Hill','San','',NULL,421758170,NULL,48),('','',1646542,'Hondo','Amilyn','',NULL,132943532,NULL,49),('','',4998368,'Hux','Armitage','',NULL,499443131,NULL,50),('','',3052216,'Imwe','Chirrut','',NULL,398385051,NULL,51),('','',3265973,'Ithano','Sidon','',NULL,393595848,NULL,52),('','',2173218,'Hutt','Jabba','the',NULL,272824074,NULL,53),('','',4068171,'Janson','Wes','',NULL,483332815,NULL,54),('','',4821203,'Jendowanian','Greeata','',NULL,298191840,NULL,55),('','',2901501,'Jerjerrod','Moff','Tiaan',NULL,340960745,NULL,56),('qJinn','b3a7a68e4284b2413e3b83f06f24ee206053b12a138b072d07d4b23976050731',3043895,'Jinn','Quin-Gon','',NULL,310228190,NULL,57),('','',1514970,'Kalonia','Harter','',NULL,428258702,NULL,58),('oKenobi','87b6a83b3f1c1a011aef6c4ad059d307b72a1e4222694dbec4c427d0548bf800',1443167,'Kenobi','Obi-Wan','',NULL,310608929,NULL,59),('','',1670924,'Koon','Plo','',NULL,168268528,NULL,60),('','',3025119,'Koth','Eeth','',NULL,209515838,NULL,61),('','',1112824,'Krennic','Orson','',NULL,442773593,NULL,62),('','',3488762,'Kryze','Bo-Katan','',NULL,285320442,NULL,63),('','',1105339,'Lard','Cliegg','',NULL,398281419,NULL,64),('','',2060405,'Lars','Owen','',NULL,235445755,NULL,65),('','',1986010,'Lawquane','Cut','',NULL,282384505,NULL,66),('','',2748833,'Leech','Tasu','',NULL,205585248,NULL,67),('','',2786134,'Lennox','Xamuel','',NULL,480772713,NULL,68),('','',4684173,'Lo','Slowen','',NULL,487107811,NULL,69),('','',2062463,'Malbus','Baze','',NULL,493220902,NULL,70),('','',3259794,'Hutt','Mama','the',NULL,104781068,NULL,71),('','',1111584,'Maul','Darth','',NULL,144242617,NULL,72),('','',2778533,'Nest','Enfys','',NULL,306869869,NULL,73),('','',1557916,'Hutt','Niima','the',NULL,201621485,NULL,74),('','',2453981,'Nunb','Nien','',NULL,387497803,NULL,75),('','',2596155,'Onyo','Ketsu','',NULL,432624550,NULL,76),('','',4618832,'Organa','Breha','',NULL,100629330,NULL,77),('lOrgana','56b87e3be8f8cec577835fe93b3cd1448f881039b2f40b98585fab8ec9e7d2e1',2305699,'Organa','Leia','',NULL,305272985,NULL,78),('','',4671996,'Orrelios','Garazeb','',NULL,324476922,NULL,79),('sPalpatine','0e377988e1d4b80e733a903cc2341d7c47a25dfbc3b1d0cfd08f1d8079ff5d4e',3442886,'Palpatine','Sheev','',NULL,206565645,NULL,80),('','',2198442,'Papanoida','Baron','',NULL,359397443,NULL,81),('','',3663550,'Papanoida','Che','Amanwe',NULL,277290269,NULL,82),('','',2722424,'Papanoida','Chi','Eekway',NULL,208259005,NULL,83),('','',1621472,'Piett','Firmus','',NULL,109424205,NULL,84),('','',2940086,'Plagueis','Darth','',NULL,222343995,NULL,85),('','',4836012,'Plutt','Unkar','',NULL,283447350,NULL,86),('','',2359807,'Porkins','Jek','Tono',NULL,250204754,NULL,87),('','',4290996,'Pryce','Arihnda','',NULL,300681707,NULL,88),('kRen','ac2fdf34dff14ec3f68a78483dce518f8c650c550bbc884882d18e1d03ba66a2',1375563,'Ren','Kylo','',NULL,252794259,NULL,89),('rDoe','3e18e5733552ca57001b7fc4686ce65d65e98813c91a03aa0e5cbd10a5a0c64f',1004823,'Doe','Rey','',NULL,261926164,NULL,90),('','',3897424,'Rook','Bodhi','',NULL,451248027,NULL,91),('aSkywalker','e081c8e2ab97d9db7ea0f9d78aa9700203f99d5cd6cb34fb186301629c8a81e8',3472653,'Skywalker','Anakin','',NULL,170461636,NULL,92),('lSkywalker','a2002e277b12bc79af6502af207c41e2466e906b9459b8e2d277c7f7eacaf5ca',4670994,'Skywalker','Luke','',NULL,198564083,NULL,93),('','',3937012,'Skywalker','Shmi','',NULL,381435496,NULL,94),('','',4672077,'Sloane','Rae','',NULL,411485221,NULL,95),('','',2549351,'Doe','Snoke','',NULL,413119603,NULL,96),('','',1730520,'Tano','Ahsoka','',NULL,331142342,NULL,97),('','',4004548,'Tarkin','Moff','Wilhuff',NULL,316352888,NULL,98),('','',1831182,'Tekka','Lor','San',NULL,488337402,NULL,99),('','',4142265,'Tico','Paige','',NULL,192628337,NULL,100),('','',2217780,'Tico','Rose','',NULL,198129462,NULL,101),('','',1662105,'Vanto','Eli','',NULL,312762286,NULL,102),('','',4657184,'Ventress','Asajj','',NULL,469423031,NULL,103),('','',1299607,'Villecham','Lanever','',NULL,108828288,NULL,104),('','',3526480,'Vizsla','Pre','',NULL,235872333,NULL,105),('','',4733579,'Vos','Dryden','',NULL,352876790,NULL,106),('','',4088459,'Vos','Quinlan','',NULL,156766939,NULL,107),('','',1241558,'Warrick','Wicket','W',NULL,425204309,NULL,108),('','',4942409,'Wexley','Temmin','',NULL,355720721,NULL,109),('','',3987373,'Windu','Mace','',NULL,402990663,NULL,110),('','',4109638,'Wren','Sabine','',NULL,447791143,NULL,111),('','',3586071,'Xiono','Kazuda','',NULL,129983712,NULL,112),('','',4601442,'','Yoda','','1893-09-10',406545118,NULL,113),('','',3248997,'Yularen','Wullf','',NULL,342774444,NULL,114),('','',1440658,'Hutt','Ziro','the',NULL,394236853,NULL,115);
/*!40000 ALTER TABLE `medBlueP` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-26  5:17:29
