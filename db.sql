-- MySQL dump 10.16  Distrib 10.1.33-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ikt_edu_ex_e
-- ------------------------------------------------------
-- Server version	10.1.33-MariaDB
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table "sport_teams"
--

DROP TABLE IF EXISTS "sport_teams";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "sport_teams" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "id_sport_type" int(11) NOT NULL,
  "title" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "members_count" smallint(6) unsigned DEFAULT NULL,
  "success_pergentage" float DEFAULT NULL,
  "created_at" datetime NOT NULL,
  "updated_at" datetime NOT NULL,
  PRIMARY KEY ("id"),
  KEY "fk_sport_team_1_idx" ("id_sport_type"),
  CONSTRAINT "fk_sport_team_1" FOREIGN KEY ("id_sport_type") REFERENCES "sport_type" ("id") ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "sport_teams"
--

LOCK TABLES "sport_teams" WRITE;
/*!40000 ALTER TABLE "sport_teams" DISABLE KEYS */;
INSERT INTO "sport_teams" VALUES (1,1,'������',70,52,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,1,'����',22,18,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,1,'˳�������',54,84,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,2,'Baltimore Orioles',45,42,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,2,'Minnesota Twins',38,91,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,3,'�������� �����',10,56,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE "sport_teams" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "sport_type"
--

DROP TABLE IF EXISTS "sport_type";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "sport_type" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "title" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "sport_type"
--

LOCK TABLES "sport_type" WRITE;
/*!40000 ALTER TABLE "sport_type" DISABLE KEYS */;
INSERT INTO "sport_type" VALUES (1,'������'),(2,'�������'),(3,'���������');
/*!40000 ALTER TABLE "sport_type" ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-13 23:10:27