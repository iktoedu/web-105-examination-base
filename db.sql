-- MySQL dump 10.16  Distrib 10.1.33-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ikt_edu_ex_g
-- ------------------------------------------------------
-- Server version	10.1.33-MariaDB
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,ANSI' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table "cpus"
--

DROP TABLE IF EXISTS "cpus";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "cpus" (
  "id" int(11) NOT NULL AUTO_INCREMENT,
  "id_vendor" int(11) NOT NULL,
  "model_name" varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  "cores_count" tinyint(3) unsigned NOT NULL,
  "flops" bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "fk_cpus_1_idx" ("id_vendor"),
  CONSTRAINT "fk_cpus_1" FOREIGN KEY ("id_vendor") REFERENCES "vendor" ("id") ON UPDATE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "cpus"
--

LOCK TABLES "cpus" WRITE;
/*!40000 ALTER TABLE "cpus" DISABLE KEYS */;
INSERT INTO "cpus" VALUES (1,1,'Intel Pentium Gold G4560 3.5GHz/8GT/s/3MB',2,32321743215),(2,1,'Intel Core i3-7100 3.9GHz/8GT/s/3MB',2,651651786165),(3,2,'AMD Ryzen 5 2400G 3.6GHz / 4MB (YD2400C5FBBOX)',4,351355454232),(4,2,'AMD Trinity A4-5300 3.4GHz/1MB (AD5300OKHJBOX)',2,513465356886);
/*!40000 ALTER TABLE "cpus" ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO "vendor" VALUES (1,'Intel'),(2,'AMD');
/*!40000 ALTER TABLE "vendor" ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-13 23:29:39
