-- MySQL dump 10.16  Distrib 10.1.33-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ikt_edu_ex_c
-- ------------------------------------------------------
-- Server version	10.1.33-MariaDB
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table "car"
--

DROP TABLE IF EXISTS "car";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "car" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "id_class" int(11) NOT NULL,
  "model_name" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "engine_power" float NOT NULL,
  "drive_wheels" enum('fwd','rwd','4wd') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY ("id"),
  KEY "fk_car_1_idx" ("id_class"),
  CONSTRAINT "fk_car_1" FOREIGN KEY ("id_class") REFERENCES "class" ("id") ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "car"
--

LOCK TABLES "car" WRITE;
/*!40000 ALTER TABLE "car" DISABLE KEYS */;
INSERT INTO "car" VALUES (1,1,'Honda CR-V RVi-N RD1',146,'4wd'),(2,1,'Mazda CX-5 Skyactiv-G',150,'4wd'),(3,2,'Bugatti Veyron 16.4',987,'4wd'),(4,3,'Porsche 911 III',408,'rwd'),(5,3,'Nissan Skyline 2000 GT-R HT',160,'rwd'),(6,3,'Audi R8 LMS 2015',585,'rwd');
/*!40000 ALTER TABLE "car" ENABLE KEYS */;
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
INSERT INTO "class" VALUES (1,'Compact SUV'),(2,'Supercar'),(3,'Sports car');
/*!40000 ALTER TABLE "class" ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-13 22:49:05
