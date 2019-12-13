-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: topbier
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.16.04.2

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
-- Table structure for table `beer`
--

DROP TABLE IF EXISTS `beer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_beer` varchar(128) NOT NULL,
  `style_id` varchar(128) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `brewery_id` int(11) DEFAULT NULL,
  `type_of_package_id` int(11) DEFAULT NULL,
  `volume_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beer`
--

LOCK TABLES `beer` WRITE;
/*!40000 ALTER TABLE `beer` DISABLE KEYS */;
INSERT INTO `beer` VALUES (1,'Chimay Brune Red','1',2,5,1,2),(2,'Westmalle Dubbel','1',2,3,1,2),(3,'Rochefort 6','1',2,7,1,2),(4,'La Trappe Dubbel','1',2,2,1,2),(5,'St. Bernardus 6','1',2,8,1,2),(6,'St. Bernardus 8','1',2,8,1,2),(7,'Achel Bruin','1',2,1,1,2),(8,'Corsendonk Pater Dubbel','1',2,9,1,2),(9,'Orval','3',2,6,1,2),(10,'Tempelier Corsendonk','3',2,9,1,2),(11,'La Trappe Isid\'or','3',2,2,1,2),(12,'Achel Blond','3',2,1,1,2);
/*!40000 ALTER TABLE `beer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brewery`
--

DROP TABLE IF EXISTS `brewery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brewery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brewery` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brewery`
--

LOCK TABLES `brewery` WRITE;
/*!40000 ALTER TABLE `brewery` DISABLE KEYS */;
INSERT INTO `brewery` VALUES (1,'Brouwerij der Sint-Benedictusabdij de Achelse Kluis'),(2,'Brouwerij de Koningshoeven'),(3,'Brouwerij der Trappisten van Westmalle'),(4,'Brouwerij Westvleteren/Sint-Sixtus'),(5,'Scourmont Abbey'),(6,'Abbaye Notre-Dame d’Orval'),(7,'Rochefort Abbey'),(8,'Brouwerij St. Bernard N.V'),(9,'Brasserie du Bocq, Purnode, Belgium');
/*!40000 ALTER TABLE `brewery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Россия'),(2,'Бельгия'),(3,'Нидерланды'),(4,'Англия'),(5,'Ирландия'),(6,'Шотландия'),(7,'США'),(8,'Австрия'),(9,'Италия'),(10,'Франция'),(11,'Беларусия'),(12,'Литва'),(13,'Латвия');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `style`
--

DROP TABLE IF EXISTS `style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `style` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` text,
  `type_of_fermentation_id` int(11) DEFAULT NULL,
  `filtration_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `style`
--

LOCK TABLES `style` WRITE;
/*!40000 ALTER TABLE `style` DISABLE KEYS */;
INSERT INTO `style` VALUES (1,'Dubbel','Бельгийский дуббель обладает богатым и глубоким буктом с уклоном в сторону солода. Во вкусе чувствуются ноты сухофруктов, шоколада, карамели, тостов. Хмель проявляется пряными нюансами, нередки оттенки гвоздики и перца, могут чувствоваться парфюмерные ноты, фруктовые эфиры. Алкоголь ощущается мягко, без «сивушного» духа. Финиш сухой, но послевкусие сладковатое, без горечи. Цвет варьируется от янтарного до медного с красноватым отливом, в бокале эль образует обильную и крепкую пену кремового цвета. На языке ощущается полнотелым, мягким, с достаточно высокой карбонизацией. В производстве используются бельгийские дрожжи, солод пилс и сахар или сироп. Хмели могут быть жатецкими или английскими, но это не обязательное требование. Несмотря на пряный вкус, настоящие пряности редко входят в состав напитка.',1,2),(2,'Tripel','Сорт относится к категории траппистского пива, то есть зародившегося в старинных бельгийских монастырях. Несмотря на повышенную градусность, алкоголь почти не чувствуется, поэтому опьянение наступает внезапно. Это сильногазированный напиток, изготовленный по «шампанскому» методу, то есть с вторичной ферментизацией в бутылке. Вкус сухой, горький с тонами пряностей. Солодовый профиль подчеркивает и усиляет хмель. Букет богатый, сложный, с фруктовыми нюансами. Хмель проявляется нотками пряностей, цветов, солод дает привкус зерна и меда. Бельгийский трипель представляет собой гармоничное сочетание всех четырех профилей: хмеля, солода, дрожжей и алкоголя. Вкусы дополняют, а не подавляют друг друга. Финиш сухой, послевкусие сохраняется горькое, без солодовой сладости. На цвет бельгийский трипель насыщенный желтый или золотой, прозрачный, с «ниточками» пузырьков. В бокале образует крепкую сливочную пену, оседающую на стенках «кружевом». Несмотря на высокую плотность, напиток легко- или среднетелый, очень питкий. Алкоголь не согревающий, а, скорее, скрытый – он почти не чувствуется. Стиль изготавливается на основе солода пилс, жатецких хмелей и бельгийских дрожжей. Дополнительные ингредиенты – сахар, пряности (опционально). Бельгийский трипель чуть темнее и плотнее бельгийского золотого крепкого эля, в его букете яснее чувствуются фенолы, а эфиры, наоборот, скрыты. Вкус должен быть солодовым, но ни в коем случае не сладким.',1,2),(3,'Belgian Ale','Бельгийский не крепкий эль:\n\nБельгийский блонд-эль (Belgian Blond Ale)\n\nОтносительно юный стиль, отличающийся почти лагерным характером. Популярен среди ценителей европейского пилза. Иногда бельгийский крафт называют блондом, но это только из-за цвета, такие сорта не соответствуют стандартам настоящего бельгийского блонд-эля. Напиток обладает сладковатым солодовым профилем, букетом с фруктово-пряными нотками, сухим финишем. Хмель проявляется землистыми и пряными тонами, дрожжевой характер отвечает за фруктовые и медовые нюансы. Букет ненавязчивый, не агрессивный, но сложный. Цвет эля варьируется от золотистого до насыщенного золотого, пиво прозрачное, в бокале образует обильную и крепкую сливочную пену. Вкус переливается солодовой сладостью и хмелевой горчинкой, во рту чувствуется сливочным, мягким, среднегазированным. Для производства требуется бельгийский и ароматный солод, пилс, сахар, бельгийские дрожжи, жатецкий хмель. Пряности и специи обычно не добавляются, а появляются в букете за счет хмеля. Стиль такой же крепкий, как дуббель, в сравнении с триплем менее горький.\n\nБельгийский пейл-эль (Belgian Pale Ale)\n\nСтарый стиль, зародившийся XVIII веке. После Второй мировой войны пережил влияние британского пивоварения. Считается повседневным элем, отличительная особенность – сглаженность вкуса, отсутствие резких нот, сбалансированность. Хмелевой профиль добавляет в букет фруктовые ноты, дрожжи чувствуются слабо. Солодовая составляющая добавляет во вкус «бисквитности», благодаря ей в напитке могут чувствоваться медовые, тостовые, карамельные, ореховые тона. Хмель выражен не сильно, горчинка во вкусе чувствуется больше за счет солода. Цвет – прозрачный, светло- или темно-янтарный с красноватым отливом. Образует плотную, но нестойкую пену. Вкус мягкий, округлый, финиш сухой или сбалансированный. Компоненты букета раскрываются последовательно. Алкоголь почти не чувствуется, карбонизация умеренная. Бельгийский пейл-эль изготавливается из светлого элевого солода или пилса, могут быть также добавки венского и мюнхенского солодов. Также нужны жатецкие хмели, фенольные дрожжи. Стиль похож на англиский пейл-эль.\n\nТраппистский обычный эль (Trappist Single Ale)\n\nОн же – монашеский эль. Варится в монастырях, за пределами аббатств встречается редко, бывает, что бутылка с траппистским элем даже никак не маркируется. Вкус отличается богатством и глубиной, пиво не крепкое, питкое, горьковатое, слегка газированное, в букете чувствуются тона пряностей, фруктов, цветов, зерна, бисквита, крекеров, меда. Ярко выражен дрожжевой характер. Фон – сладковатый, солодовый, но вкус более хмелевой. Финиш сухой. Эль обладает светлым золотистым цветом, прозрачный, образует сравнительно стойкую пену. Во рту может слегка пощипывать язык, ощущается мягким, алкоголь почти не чувствуется. Изготавливается из пилса, жатецкого хмеля, траппистских дрожжей. Стиль похож на немецкий пилс, но отличается характером брожения. Не такой сладкий, как бельгийский пейл-эль, близок к триплю, но более охмеленный и содержит меньше алкоголя.',1,2);
/*!40000 ALTER TABLE `style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_of_fermentation`
--

DROP TABLE IF EXISTS `type_of_fermentation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_of_fermentation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_fermentation` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_of_fermentation`
--

LOCK TABLES `type_of_fermentation` WRITE;
/*!40000 ALTER TABLE `type_of_fermentation` DISABLE KEYS */;
INSERT INTO `type_of_fermentation` VALUES (1,'Ale'),(2,'Lager');
/*!40000 ALTER TABLE `type_of_fermentation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_of_filtration`
--

DROP TABLE IF EXISTS `type_of_filtration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_of_filtration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_filtration` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_of_filtration`
--

LOCK TABLES `type_of_filtration` WRITE;
/*!40000 ALTER TABLE `type_of_filtration` DISABLE KEYS */;
INSERT INTO `type_of_filtration` VALUES (1,'Фильтрованное'),(2,'Нефильтрованное');
/*!40000 ALTER TABLE `type_of_filtration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_of_package`
--

DROP TABLE IF EXISTS `type_of_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_of_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_of_package`
--

LOCK TABLES `type_of_package` WRITE;
/*!40000 ALTER TABLE `type_of_package` DISABLE KEYS */;
INSERT INTO `type_of_package` VALUES (1,'Бутылка'),(2,'Банка');
/*!40000 ALTER TABLE `type_of_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volume`
--

DROP TABLE IF EXISTS `volume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `volume` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volume`
--

LOCK TABLES `volume` WRITE;
/*!40000 ALTER TABLE `volume` DISABLE KEYS */;
INSERT INTO `volume` VALUES (1,'0,5'),(2,'0,33'),(3,'0,75'),(4,'0,355'),(5,'0,25'),(6,'0,47');
/*!40000 ALTER TABLE `volume` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-13 12:28:01
