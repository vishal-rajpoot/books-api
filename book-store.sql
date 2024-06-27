-- MariaDB dump 10.19-11.3.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: book-store
-- ------------------------------------------------------
-- Server version	11.3.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` varchar(70) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `user` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `books_ibfk_1` (`user`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES
('33442d9a-e2ed-43dd-8d0f-2a18aaa6a47a','','','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 13:19:27','2024-06-26 13:19:27',NULL),
('34aae4ba-fe62-4d25-aa68-9662dd21f45e','hello book','vishal rajput','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 11:14:40','2024-06-26 11:14:40',NULL),
('3ab90b51-0675-4603-8101-9a8fef2d5071','hello book','vishal rajput','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 11:13:12','2024-06-26 11:13:12',NULL),
('75e7dbd9-6d59-4141-84a9-e376bf488ccb','hello book','vishal rajput','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 11:14:16','2024-06-26 11:14:16',NULL),
('75f6f575-a382-4a1b-95e1-33e572787ca9','','','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 13:19:43','2024-06-26 13:19:43',NULL),
('825379ff-f1fc-409a-bdc2-76bb3c827da4','Rich Dad Poor Dad','vishal rajput','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 11:18:54','2024-06-26 11:18:54',NULL),
('a14072a2-79c1-40b5-aaca-b7dbdfeff309','new book here','varun','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 13:31:01','2024-06-26 13:31:01',NULL),
('b19456b9-12a3-4f26-b511-1fdb5b685ba6','the cars','arun sharma','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 13:35:37','2024-06-26 13:35:37',NULL),
('cedb33bc-c4a7-49da-be28-f3d625c1977c','smart creature','shubam singh','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 13:21:52','2024-06-26 13:21:52',NULL),
('e785ffa5-9aa9-4cca-9ee0-d6455d83c13f','Rich Dad Poor Dad','vishal rajput','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 11:18:38','2024-06-26 11:18:38',NULL),
('eb7f1539-6655-4fa2-a0f2-01ecfed28b99','hello book','vishal rajput','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 11:15:03','2024-06-26 11:15:03',NULL);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id` varchar(70) NOT NULL,
  `user` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `login_ibfk_1` (`user`),
  CONSTRAINT `login_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES
('01510fec-580c-4476-8942-15b0e73a2431','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 12:43:54','2024-06-26 12:43:54',NULL),
('0706e8c4-2698-4419-a3fc-2303ba9973ee','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 11:00:02','2024-06-26 11:00:02',NULL),
('0bbfbf6e-cad8-42ee-91a1-d63aafd5a37c','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 12:06:37','2024-06-26 12:06:37',NULL),
('10b8b2a4-d4c5-4ca9-85c1-39c887596706','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 13:50:33','2024-06-26 13:50:33',NULL),
('12df0c00-7d76-4119-99bc-061c34e22ff3','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 13:36:49','2024-06-26 13:36:49',NULL),
('17692dd3-700b-488c-9d69-c5f0a151ce73','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 11:58:21','2024-06-26 11:58:21',NULL),
('20deed2d-4d68-4612-bef9-200c46e6e488','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 11:56:07','2024-06-26 11:56:07',NULL),
('226af8c9-2246-4169-9c66-c4cd576aed7b','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 11:51:54','2024-06-26 11:51:54',NULL),
('304e23b8-6f9f-41b2-ae0a-f9b8259e5151','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 13:17:53','2024-06-26 13:17:53',NULL),
('3b4a3446-1f9a-41da-9bc4-7049ce0e9079','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 09:34:42','2024-06-26 09:34:42',NULL),
('4c8b4bf4-5350-468f-b6df-dd5692226301','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 13:36:09','2024-06-26 13:36:09',NULL),
('5c00c90b-c9c4-4fe5-a326-39546af55afe','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 13:36:21','2024-06-26 13:36:21',NULL),
('64c51b5f-8704-48e7-85df-cc48a62933bc','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 12:33:20','2024-06-26 12:33:20',NULL),
('72001f8b-51f8-44ce-b861-3d22dc53bcc2','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 11:48:17','2024-06-26 11:48:17',NULL),
('86de2da4-d399-45e2-855a-1322808c3fed','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 11:46:39','2024-06-26 11:46:39',NULL),
('88f13976-0cd5-44b6-b42a-faabd56918bf','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 13:19:04','2024-06-26 13:19:04',NULL),
('8ab0a7e3-213f-49c2-a1a1-c86044684df1','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 09:36:42','2024-06-26 09:36:42',NULL),
('912ed261-c2bc-40b4-bde7-0a35ac926d0e','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 12:15:10','2024-06-26 12:15:10',NULL),
('920926a1-4afa-450a-8c5e-80f266dd7cc6','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 11:59:46','2024-06-26 11:59:46',NULL),
('a367f72c-60ff-44cd-9a8e-b27e141a5578','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 11:47:27','2024-06-26 11:47:27',NULL),
('ac51f1bf-039e-4eeb-be88-1ddb77b8df37','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 13:48:09','2024-06-26 13:48:09',NULL),
('b02f6097-4d18-4114-a14e-16504bb6ad25','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 13:12:46','2024-06-26 13:12:46',NULL),
('b1f14638-9591-49f7-8503-d6f742032bf0','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 13:25:38','2024-06-26 13:25:38',NULL),
('b8d3d1bf-929a-40be-98d5-cf94abcafe2d','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 09:38:52','2024-06-26 09:38:52',NULL),
('bd3c5161-718a-4c2d-989a-a4bb28f32f52','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 13:25:59','2024-06-26 13:25:59',NULL),
('be3912f5-e7fa-403b-9b08-62677e01a38f','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 13:12:20','2024-06-26 13:12:20',NULL),
('c41cda87-356d-4939-8b29-8e61ad482fbb','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 12:14:02','2024-06-26 12:14:02',NULL),
('c643e6a6-5bcc-41f1-9012-70a3b89799d8','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 12:49:59','2024-06-26 12:49:59',NULL),
('c7a4f8dc-8990-4412-8f2e-008f1491609a','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 12:05:25','2024-06-26 12:05:25',NULL),
('cb5cda09-d645-43d2-bf19-519d5664543b','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 13:48:47','2024-06-26 13:48:47',NULL),
('cc759ed2-7201-4a1f-a4b0-63257ad79e37','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 11:53:47','2024-06-26 11:53:47',NULL),
('cec23ec7-3b60-4714-b665-161ac351d22e','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 09:35:59','2024-06-26 09:35:59',NULL),
('d32bd8d7-b649-4841-9d10-66c0c6fdd1f3','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 13:51:23','2024-06-26 13:51:23',NULL),
('e88858c1-d428-4bf5-a3cf-295cca072e6d','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 12:20:04','2024-06-26 12:20:04',NULL),
('ff51e2a0-a823-4661-a291-29688f5fb56d','a9044015-dfff-4b2f-8c47-34103b4c06dd','2024-06-26 13:50:47','2024-06-26 13:50:47',NULL);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` varchar(70) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
('1bef57db-c1ba-45a5-b0d9-6133355b75c6','akshay','kumar','akshay@gmail.com','12345','2024-06-26 13:41:59','2024-06-26 13:41:59',NULL),
('26fe606d-6fd8-4c00-b7fb-3dd4a5951a90','test','name','test@gmail.com','12345','2024-06-26 09:19:21','2024-06-26 09:19:21',NULL),
('a1ea9959-c1b5-4628-9126-2e9800cf6bde','varun','rajput','var@gmail.com','12345','2024-06-26 13:44:08','2024-06-26 13:44:08',NULL),
('a9044015-dfff-4b2f-8c47-34103b4c06dd','vishal','Rajput','hello@gmail.com','12345','2024-06-26 09:16:17','2024-06-26 09:16:17',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-27 14:45:21
