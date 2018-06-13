-- MySQL dump 10.16  Distrib 10.1.33-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ikt_edu_ex_a
-- ------------------------------------------------------
-- Server version	10.1.33-MariaDB
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table "book"
--

DROP TABLE IF EXISTS "book";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "book" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "id_genre" int(11) NOT NULL,
  "author" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "title" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "pages" int(11) NOT NULL,
  "issued" varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  "created_at" datetime NOT NULL,
  "updated_at" datetime NOT NULL,
  PRIMARY KEY ("id"),
  KEY "fk_book_1_idx" ("id_genre"),
  CONSTRAINT "fk_book_1" FOREIGN KEY ("id_genre") REFERENCES "genre" ("id") ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "book"
--

LOCK TABLES "book" WRITE;
/*!40000 ALTER TABLE "book" DISABLE KEYS */;
INSERT INTO "book" VALUES (1,1,'Стівен Кінг','Під куполом',1024,'2011','0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,1,'Йен Макдональд','Бразилья',490,'2016','0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,2,'Стивен Кинг','Зеленая миля',496,'1999','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,2,'Стиг Ларссон','Девушка, которая играла с огнём',720,'2006','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,2,'Томас Харрис','Ганнибал',484,'1999','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,3,'Артур Конан Дойль','Собака Баскервилей',150,'1902','0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,3,'Жюль Верн','Вокруг света за восемьдесят дней',240,'1872','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,4,'Stephen Hawking','A Brief History of Time',256,'1988','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE "book" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "genre"
--

DROP TABLE IF EXISTS "genre";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "genre" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "title" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "genre"
--

LOCK TABLES "genre" WRITE;
/*!40000 ALTER TABLE "genre" DISABLE KEYS */;
INSERT INTO "genre" VALUES (1,'Фантастика'),(2,'Триллер'),(3,'Пригоди'),(4,'Наукова література');
/*!40000 ALTER TABLE "genre" ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-13 22:25:58
