-- MySQL dump 10.16  Distrib 10.1.33-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ikt_edu_ex_d
-- ------------------------------------------------------
-- Server version	10.1.33-MariaDB
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

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
INSERT INTO "genre" VALUES (1,'Action'),(2,'Indie'),(3,'RPG');
/*!40000 ALTER TABLE "genre" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "videogame"
--

DROP TABLE IF EXISTS "videogame";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "videogame" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "id_genre" int(11) NOT NULL,
  "title" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "price" decimal(8,2) NOT NULL,
  "steamapp_link" varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "fk_videogame_1_idx" ("id_genre"),
  CONSTRAINT "fk_videogame_1" FOREIGN KEY ("id_genre") REFERENCES "genre" ("id") ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "videogame"
--

LOCK TABLES "videogame" WRITE;
/*!40000 ALTER TABLE "videogame" DISABLE KEYS */;
INSERT INTO "videogame" VALUES (1,1,'Dead by Daylight',279.00,'https://store.steampowered.com/app/381210'),(2,2,'The Forest',279.00,'https://store.steampowered.com/app/242760'),(3,2,'AudioSurf',169.00,'https://store.steampowered.com/app/12900'),(4,1,'Insurgency: Sandstorm',599.00,'https://store.steampowered.com/app/581320'),(5,1,'Grand Theft Auto V',867.00,'https://store.steampowered.com/app/271590'),(6,1,'Singularity',804.00,'https://store.steampowered.com/app/42670'),(7,2,'World of Goo',169.00,'https://store.steampowered.com/app/22000'),(8,3,'Vampyr',999.00,'https://store.steampowered.com/app/427290'),(10,3,'Mass Effect 2',279.00,'https://store.steampowered.com/app/24980');
/*!40000 ALTER TABLE "videogame" ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-13 23:01:10
