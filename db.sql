-- MySQL dump 10.16  Distrib 10.1.33-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ikt_edu_ex_f
-- ------------------------------------------------------
-- Server version	10.1.33-MariaDB
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table "vendor"
--

DROP TABLE IF EXISTS "vendor";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "vendor" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "title" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "vendor"
--

LOCK TABLES "vendor" WRITE;
/*!40000 ALTER TABLE "vendor" DISABLE KEYS */;
INSERT INTO "vendor" VALUES (1,'nVidia'),(2,'AMD');
/*!40000 ALTER TABLE "vendor" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "videocard"
--

DROP TABLE IF EXISTS "videocard";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "videocard" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "id_vendor" int(11) NOT NULL,
  "model_name" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "ram_amount" int(10) unsigned NOT NULL,
  "vulkan_support" tinyint(4) NOT NULL,
  PRIMARY KEY ("id"),
  KEY "fk_videocard_1_idx" ("id_vendor"),
  CONSTRAINT "fk_videocard_1" FOREIGN KEY ("id_vendor") REFERENCES "vendor" ("id") ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "videocard"
--

LOCK TABLES "videocard" WRITE;
/*!40000 ALTER TABLE "videocard" DISABLE KEYS */;
INSERT INTO "videocard" VALUES (1,1,'Asus PCI-Ex GeForce GT 710 1GB GDDR5 (32bit)',1024,0),(2,1,'MSI PCI-Ex GeForce GTX 1060 OC 3GB GDDR5 (192bit)',3072,0),(3,1,'Gigabyte PCI-Ex GeForce GTX 1070 Windforce OC 8GB GDDR5 (256bit)',8192,0),(4,2,'Gigabyte PCI-Ex Radeon RX 580 Aorus 8GB GDDR5 (256bit)',8192,1),(5,2,'Sapphire PCI-Ex Radeon RX 580 Nitro+ 4GB GDDR5 (256bit)',4096,1);
/*!40000 ALTER TABLE "videocard" ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-13 23:22:52
