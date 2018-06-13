-- MySQL dump 10.16  Distrib 10.1.33-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ikt_edu_ex_h
-- ------------------------------------------------------
-- Server version	10.1.33-MariaDB
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table "class"
--

DROP TABLE IF EXISTS "class";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "class" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "title" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "class"
--

LOCK TABLES "class" WRITE;
/*!40000 ALTER TABLE "class" DISABLE KEYS */;
INSERT INTO "class" VALUES (1,'Хвойні'),(2,'Ізоетопсиди');
/*!40000 ALTER TABLE "class" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "plant"
--

DROP TABLE IF EXISTS "plant";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "plant" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "id_class" int(11) NOT NULL,
  "title" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "wikipedia_link" varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY ("id"),
  KEY "fk_plant_1_idx" ("id_class"),
  CONSTRAINT "fk_plant_1" FOREIGN KEY ("id_class") REFERENCES "class" ("id") ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "plant"
--

LOCK TABLES "plant" WRITE;
/*!40000 ALTER TABLE "plant" DISABLE KEYS */;
INSERT INTO "plant" VALUES (1,1,'Ялина канадська','https://uk.wikipedia.org/wiki/%D0%AF%D0%BB%D0%B8%D0%BD%D0%B0_%D0%BA%D0%B0%D0%BD%D0%B0%D0%B4%D1%81%D1%8C%D0%BA%D0%B0'),(2,1,'Picea koyamae','https://uk.wikipedia.org/wiki/Picea_koyamae'),(3,2,'Молодильник озерний','https://uk.wikipedia.org/wiki/%D0%9C%D0%BE%D0%BB%D0%BE%D0%B4%D0%B8%D0%BB%D1%8C%D0%BD%D0%B8%D0%BA_%D0%BE%D0%B7%D0%B5%D1%80%D0%BD%D0%B8%D0%B9');
/*!40000 ALTER TABLE "plant" ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-13 23:35:44
