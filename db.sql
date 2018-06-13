-- MySQL dump 10.16  Distrib 10.1.33-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ikt_edu_ex_b
-- ------------------------------------------------------
-- Server version	10.1.33-MariaDB
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table "animal"
--

DROP TABLE IF EXISTS "animal";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "animal" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "id_class" int(11) NOT NULL,
  "title" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "speed_average" float NOT NULL,
  "limbs_count" tinyint(4) NOT NULL,
  "wings_count" tinyint(4) NOT NULL,
  "created_at" datetime NOT NULL,
  "updated_at" datetime NOT NULL,
  PRIMARY KEY ("id"),
  KEY "fk_animal_1_idx" ("id_class"),
  CONSTRAINT "fk_animal_1" FOREIGN KEY ("id_class") REFERENCES "class" ("id") ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "animal"
--

LOCK TABLES "animal" WRITE;
/*!40000 ALTER TABLE "animal" DISABLE KEYS */;
INSERT INTO "animal" VALUES (1,1,'Абіссинська кішка',0,4,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,1,'Канадський сфінкс',0,4,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,1,'Британський короткошерстий кіт',0,4,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,2,'Тибетський тер\'єр',0,4,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,2,'Боксер',0,4,0,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,3,'Ара (папуга)',0,2,2,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE "animal" ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO "class" VALUES (1,'Коти'),(2,'Собаки'),(3,'Птахи');
/*!40000 ALTER TABLE "class" ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-13 22:33:21
