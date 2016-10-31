-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: 172.17.0.1    Database: casaflores
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.04.1

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
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_address`
--

LOCK TABLES `oc_address` WRITE;
/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
INSERT INTO `oc_address` VALUES (2,2,'demo','demo','','demo demo','','demo','12345',222,3949,''),(5,5,'asdhjashdj','hjasdhkjasdh','','asdhasjdha','','asdasd','138123817',2,38,''),(6,6,'Fernando','de Figueiredo Mendes','','Lomas Valentinas','241','Sao Caetano do Sul','09560260',30,464,''),(7,7,'Fausto','Simaro VIeira','','Rua Antônio de Macedo Soares, 1471 - apto 72','Campo Belo','São Paulo','04607002',30,464,''),(8,8,'patricia','olivani','','alameda dos jurupis, 1173','moema','sao paulo','04088003',30,464,''),(9,8,'fausto','oliveira','304987074','av dr cardoso de melho 1280','vila olimpia','São Paulo','04607002',30,464,''),(10,9,'Linneu','Vieira Junior','','Rua Antônio de Macedo Soares, 1471 ','Campo Belo','São Paulo','04607002',30,464,'');
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate`
--

DROP TABLE IF EXISTS `oc_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate`
--

LOCK TABLES `oc_affiliate` WRITE;
/*!40000 ALTER TABLE `oc_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_activity`
--

DROP TABLE IF EXISTS `oc_affiliate_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_activity`
--

LOCK TABLES `oc_affiliate_activity` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_login`
--

DROP TABLE IF EXISTS `oc_affiliate_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_login`
--

LOCK TABLES `oc_affiliate_login` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_login` DISABLE KEYS */;
INSERT INTO `oc_affiliate_login` VALUES (2,'admin','192.168.9.13',1,'2015-10-09 13:52:45','2015-10-09 13:52:45'),(3,'admin@admin.com','192.168.9.13',2,'2015-10-09 13:52:51','2015-10-09 13:52:58');
/*!40000 ALTER TABLE `oc_affiliate_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_transaction`
--

DROP TABLE IF EXISTS `oc_affiliate_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_transaction`
--

LOCK TABLES `oc_affiliate_transaction` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api`
--

DROP TABLE IF EXISTS `oc_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api`
--

LOCK TABLES `oc_api` WRITE;
/*!40000 ALTER TABLE `oc_api` DISABLE KEYS */;
INSERT INTO `oc_api` VALUES (1,'iToLOEWB0e6AI61QTQGWFwHYrW281U0LwiBlLVzWRjRBxjyq7LZ7dug5jIJK8otx','','','2KQYAALEkBeZVjneeek6uGyyURSu6Vex0JXjrCZKw1jKv7Uq3JnS3z8G6xTqyZHKqfWGRcfm0EhSEr3OLNjB35BubqNAh0n4YPOBtOecwoWyOzUKUnWHxY5wz79sJpAB9W8TEYVqklErRUodWaCliOsLElnwn1Qgc0k9Q5EQR6p7MN0KQllcMcX7MmJO9aYYxsFBV0pOznHlAd5NDJBqsD4GMAiDOWZnB6bbSHIjRsclpG1orFUSGBUnEwzPUpSQ',1,'2014-12-02 11:31:26','2014-12-02 11:31:26'),(2,'6GLMpXsRtu7nOcuOwMbicN2j1NYtEZ0Brgi30wYUF3qxfFQQtEfMzEOiYxxzhdC8','','','0zTcZDbQy4wzKkKJDx6rjw8aTPkyXZmyW9b4UN1E4xPuL7a5uZvFqXFKljuokNkgOC6OnPpuYjFhkMEkz37VL0jwRwRXL44Gf7yaUJzSPMTMWUFGQPgdDLbRT0L9JdmjIvEeX5Xtds4tgUefFecdSZpntxdce4r3JarbykTBFG2JCMPvSkwW5eR2gnIyMNJGh8rPmHlMDXOb67Y51jdH4cRArUKCRZ9MSYE6ygRQZf6lNj46yahuRTn9O4jIucMJ',1,'2014-12-08 10:26:17','2014-12-08 10:26:17'),(3,'1GbOxanTqHWXgwTxvfrXX4RezEO7GjSIofq2beHf6lz2JbfUeGYs7KMWBuIIoa6W','','','TRy376eEFdKtnekOFE7Zay9mGx5qFoc70byRWvsAFsY8A4hgjZYevypPCOjlYP05Q7qDn7zU8VdkPrWL5Hr78MNP1CG4jOGRi1bMwhyAtVbjW1ENJN3wD7nmiOfkmkP9sJDsxepFWsS6VZomPp69BG5XHwxniTQFuxilryYg1cApNUGZNf3j0mGfjs6DVaJjpz52dfAUPjlw7majEtrgieIA3B81C44ZcNLgHkegfEEQjRmGxTX1JvD3Fr2Bkvin',1,'2014-12-18 10:06:22','2014-12-18 10:06:22'),(4,'FirDBcAWQDtTaFOVluVbWvZDzWRLjPTQroTSyRps8XLgynOKZRnmVBvVtGaUJO9B','','','rmTZ89r6EiBljDl1kqTprKdfAt6VGFEoEcpYgjGChmNisVWaJ7WlaLjhoO0PazfKyLZQaB3BXixYNge1EHxYhEDcqlGBHaTh5vgAtVD1kWvGGj9LXJkEAz3PF0upL4fxaOAmYikkKDFrWe2XEDvn1dH418wLnRE5Sk1HbmeMImxJARHcHzTDG9sbA8KkcfB6hxGd0jwpdD2eA7uYieOWrXq1h061pmUyK3ssnZbBLWUrYeuNWBhhqoCJblEAOlBj',1,'2014-12-23 00:13:52','2014-12-23 00:13:52'),(5,'lXPCm5ugGLyWJ4AKV2rQlguIqhAVfTNGqcJTX30dEo0Ni1Y4tFKVl5dRcem8x0Fe','','','SOxqIoKNSAa11ywl366f2axV4ZTrQZMioAOwoZ97ZayRPl3Jh0oaQbvK1F2HeEqJE55tU5quWfClG5uovYEB0zLs4E0ZIgiNce7wanhwIjXPeH3Pg7RXxdFsh5Hqcq44L1rlfPXnyu2S2wiZu0xhT3P1zXhSDbNOT40yJNc88VR1H0R1qEYA8o1xBYGF0TUJOK8XXaWWvnN3dfuKjJKiyBW0Zc5QvQa9aYXyztLlXYe03PAdYKCNMYDm082lPSlq',1,'2015-02-05 09:27:37','2015-02-05 09:27:37'),(6,'SvW5GkGBUBviUibs6JrOfRpU234sYeim4AJuv6zVwOJGUXPPOUqe0jjEBCerFPhk','','','3HTcxK4gmU5grEao4XCnjt0rhEbiJ24aQH1CMQXkyRDycn957TvopveMb7vSlXoJA8we9ONgYHj9kF5FXH2hIqgjrtc3ZvwuHsEyJFaVWzcCFZOHLxWT9d5zVXhXlBQNlVtBqyBBqZs77l4BWVN6NIr6W48uKJIiczwFkZ8kY2VuNp8x4wbcyp16vSy8GJYvrMMC23TBdMWa0mYczFC0wFXygjAFaCA1Tb92hOCU5Zu70aN9IQBHHWRjpsjEHxAz',1,'2015-02-05 12:09:01','2015-02-05 12:09:01'),(7,'UGlNppc6n0WR88xS24tlFAnSxEc8udrrIETGsKwPpoCutzkrHiXqjL3xQiFn6AaS','','','zY4WnD86jyklXDPdPj3I5uBplajqB5CPYGW9aSC9WWB03owmP8S7JrB4zo6F8MfkzLrAG58aASUbRmMJHtjJQA4h4QL2x11TIn4Yo6xOhkfah7eD22stPrpg2QSDf3FYUd9JETeZ6QiwqqoUeZtpGvS3tmRkFTL1Yq7RWEE8OTefrwq99Sn90MxnbWJfhFJrUQwxhMf4XuSlkPlAXjZrbBLvCd3x1PA4INeqkrzNZh8FVGYZmMDv5NbQf7fdDwtf',1,'2015-03-18 12:37:46','2015-03-18 12:37:46'),(8,'oUexbblEY6Xg2Q3VtZwSRzGiYec1Y26bJ6JA8KLvtgnbvckP47n5fe2qZB4O7Ayw','','','AbME2wJTb8QOAgnCcY1bGBBqyZtc4BDAPymBKPevgTR4ndEqXrczEbiijq5jN3qG1DZ1zlME8gpcoS2Nq2bGatcSszfi4opE0Kji1zSPyla2B9DmW5xOJ3t5O1bZ8RC4MJHIQ5vTAjiKwim4Z0gPP5XaIuvIaxxm6BCkD3lPkZEV4AiDzonIs0ZxYgduOL4NDvU4NuyEiH7XZT1FnUH4inyDCKhOaaZqhX9HudYu2rNSRfh9x38hwSkKDr9k9jRB',1,'2015-04-02 14:51:18','2015-04-02 14:51:18'),(9,'XhkMdRlYQbOedX6kT5tSgbCrTu0XXNmb8oUexbblEY6Xg2Q3VtZwSRzGiYec1Y26','','','bJ6JA8KLvtgnbvckP47n5fe2qZB4O7AywAbME2wJTb8QOAgnCcY1bGBBqyZtc4BDAPymBKPevgTR4ndEqXrczEbiijq5jN3qG1DZ1zlME8gpcoS2Nq2bGatcSszfi4opE0Kji1zSPyla2B9DmW5xOJ3t5O1bZ8RC4MJHIQ5vTAjiKwim4Z0gPP5XaIuvIaxxm6BCkD3lPkZEV4AiDzonIs0ZxYgduOL4NDvU4NuyEiH7XZT1FnUH4inyDCKhOaaZ',1,'2015-04-29 09:45:53','2015-04-29 09:45:53'),(10,'END0EaV7HqhwSLdRMqe75XatD9oHqu8DaWvBWD18EhlZpCzRuQ3DXbnrLSYqPCB8','','','JX1DAiu2YQC5ZujJosqBNXNgrcgHLLcwQQV8C5BoF21ShVq37C02bLKOkfCbeNPctCLuaKpSKWDiByKfmPXlB2fz0a4nKHaAkpZaNSqymsmq3JC9pTRM9bNRdOKsO48bzLA7WSFNb7irJXQWEQjqU2Sme3xooi4uaj8X3K0enD2jvc2l2GOBCLuz2bxddFM5Z0Uox59nNCiUva1sCxQPIXk4n1KKoe28v8CyEhfpJ4m8IROsjXpWkaw2vJ5tMw54',1,'2015-05-04 10:45:42','2015-05-04 10:45:42'),(11,'owUSs51WQWqjxLBvP8kSHzmAWWyPbnY0UQFJeUGA4bKvDqeP2nxz0aTV6mtHnTSA','','','2HtWKGOBb3gULizHWq2ubY1DZPgXrXFjTVP7rQOZzsuQLxDWtGzB5tSItQMAoytem6n6HwGLG41kEZI883oqQbmk6ouAcmQxx53RYq0UPe0QzZG7FDWsegxZCZKXJxpc0RCAj7d0RarUcw7TEl5Il91m9hcItW7fwADGlm8uKubw7gpD6gX4jzxMzDnQKRG6jH6jfnVA6cDkVoQKqysEaCmJh6qvekItQlraSClokghwlItoSd4lJnSeHMloqRC4',1,'2015-05-04 11:11:19','2015-05-04 11:11:19'),(12,'q3PYxBCSs6coe2XcuhHKkJiujbAqymU44Z057BaqhKYptFmzKeZo5knFkHnmPRPN','','','gxyVd3M7tRsiWLOE7TE9n4FS8pnbDyhYfDKmXnUGSQZSWJNLIBGNtF5XtFBIPNNb1M3xoQ1IPHd6t9jLplfULJIV1XvrxeQXkN9zTvuBj14bdsTCkDSSBFsLXi3JtorLqGcuUIBxRctzkSaw2XcJP3p3QkYdCqe1K1SgtXpbV64FFv4Yij92zk9dggRpskpZBfgLgfq8xSdN7Hw3ko3dxJr5JTgtwWN0PBHtpfEWmhaNMUAQAlL7IkwQK9JqNBJJ',1,'2015-05-06 11:31:23','2015-05-06 11:31:23'),(13,'tqmTAQNMn7gXr8XxyCI5DWnuBpNsxLsy9lefqLYveluCeGYTQYrD5reODuHTvuaR','','','nZuju76LsHVjnGxsFnnEK5tldrZxGLfmnEXgLm1eUfT9K8i9Rt76xBV0QgDJye7zBmXV9IKpSvoRDtrI1sorw9U7bOGX4qx4wCvCKi0so4XbVVNJyksUJzq78yfdWt915Vfltz3oY5dd90HDITJ03hay3QSbMpjrafnDp9Tcey6YBNXzz58NBIhiLkbSaehZTiIW8AHI8jxLadBd3ZJdglBK0x9BAK19jdBio5RqzNB0MkC9VvsmX63p313m8tjc',1,'2015-05-07 12:31:12','2015-05-07 12:31:12'),(14,'4dF3X0PsKdSZR67TKWbQxTdlo3QMrrhXYyg8r15VH37UkhVRk2TBEfk5hfWy6eXC','','','thza4PcV5senvgmm1wEKNEjmSfUxDoEE7mBQAA3tn33Ty2uVCDrqPBaq52KKCModEFFc7ILdMbKWulvbEsLkJVJHbm334HGQC5BDxoWlnXUwiso49tj04Cv6yteAoZaZ3IzAfhYG7qWkOLavvIyejHPHEO7eQEn7mtgUFxT9JXQvwCD9b46gFjlrMGSWvHs1NrECiaHPOaCTNRjk8E64eY0nNVflHgpJrCgH3bw1K1rOf28iXkyquk76F8lNWUex',1,'2015-05-18 10:24:45','2015-05-18 10:24:45'),(15,'3DEeXUFe8BBwKNFK4gABqBALdSx8scmRYFJY8SoMaoyBOR1sVugmOKAj1HC5srzf','','','vfGqcnFRvpeoLsgooW4knr2VITJOlT5HAS6VxVYu8DBp9gD6zUL65kneR3I5WT3GHcnXBbkjEybCqrcm2qTpF2PAT0999qtdGANwI3owB7uxQQtpyaUvIgu3MKsaeacN85pjGtkW1c45rM3FlgNOCiIK81UP2iCUsN9t77YTjV7aBf53RA9Ez6Xym5ybICfyU2MQqhFoJl2SNLzE01mSetfzJXKAQ41pz5RKRfnVmPqiRPlmQFI3C2fNhMZ6RKE4',1,'2015-06-12 16:23:27','2015-06-12 16:23:27'),(16,'aEZb5OQudrG00yZyNaJQT1xRX8TcGHK3sHVL5USZ8k9KjP4j5JALvnvHTiJ8QOmz','','','1hJRzxNaW1v1LESqgQudFxmUHf11Tu6I3Vzvko9zlfZ6pQiL9uXISUV5y0bHOmIyxfXmO1pltg6YBzqDUm1LXP63Wi4uB2M2kEy0ucMvt4UNPvqSi1OlUgaOxnOvrfJTO9HbIbmRlqlZWFj4nddYJLv6HFbJPf7HvSSaYw3LVzu9VvU4lcki1N9BS4h4p2oSK7VwhfEc8Vw5Mz7RcyjGanGeWHeC7nO1cARfilGHdPpP6RcBKibB2ZEUSrUiIvpw',1,'2015-06-17 12:43:28','2015-06-17 12:43:28'),(17,'PEVyPC5mVBJDfltaL23mXbV7gXTRlSf5GRJv758HpUL0LFfR8RIQBfzIw2wvN7sd','','','z10GhL3A1AFBt6IfnDQRh7Lr4uHmsAwXazZyAzrP5E2jKKoGKMQp6wao49V1Faup3K03VzW22fgecvCEktIbN8g7xladTNjTP2JViN43qTDxouTZ2n3kWifoilYcbXQWd8VKn8UQYecdrGbIC4fGXfXsL8Pza50vjbZXkHnB7DugmzcOEiAARzGKrs7iS0SiiRV7amxJY936a6Wr9kXQDgs8E0ipCImrYeJ4If0osS5uGaHiw9n4rlMKUUBKoxzP',1,'2015-06-22 14:03:55','2015-06-22 14:03:55'),(18,'Gb0r6XfR8p0Cfy6LavXbCAQANdLnRqOgFiAY8llcxvlc3fHkGztjvKhntfHeVTlW','','','bii8YrEgAsuunFp1Juck1MLImZbOwyVFLacaKp4ckiP5vglBjijdUHNf3KJ0lMcqSKuuUgHRhQI8R04DXOCPL4mvhzNTxc7Jwwa71Pr720Y3JCl7hw32YjY2iVpqWkzeoQcBw0pgkTCqZGotGNHY9Gh26ue4SkEr3n29DUA7pnCWCDFYBgtw8gEvsAqBmdrxf2pysqsQH1a4C235TrsDTy8f1KQASOqve90fu4yc66LUZjEU9uELC8PIXLN1W1Dl',1,'2015-08-13 10:58:12','2015-08-13 10:58:12'),(19,'IvEeX5Xtds4tgUefFecdSZpntxdce4r3JarbykTBFG2JCMPvSkwW5eR2gnIyMNJG','','','h8rPmHlMDXOb67Y51jdH4cRArUKCRZ9MSYE6ygRQZf6lNj46yahuRTn9O4jIucMJaqzgWxULJgCn2Ey0IK8PCBX1JWWHkYw96177S7v9PZgi3bFmzwwnJmelbqg7xNtrz4cRl9iptLWVSrsQ4Q83oF8NG3DqY3DRFzVdR3tOkykAEzuwWmhBgazrJ87SWcvusmkhVpRoyULhOyILL0eCvoEEj5Pvr30FtSNewUM7atJ7ur4cX7x4XtqTWu4HZNSS',1,'2015-08-29 11:14:13','2015-08-29 11:14:13'),(20,'0oBPLHNNhNAPfpvxJrU1FBC3Z1t0r6vNDc87EJsh0Oy58amki68fJfOJ3UNcWIS6','','','nJThUEkthJ9dzEzPUE9Cl1xRvqF7ZNNhlsB9820xk5h4EkaxdEXaaGtRA3UUyKeB6JGU9hdtBkcMp8ZMA6JrnNDKn96im9JWocihWFdizGvYoOue4rS0MMt5n75qwrLkuoXmIf0PBgabAXdoLTy2JDyi9xRpTRlqNrkkQylzjxeWtYjrzysvdwPDugBhOtXpDoKaw8tQf74KzRCl1L8hKYDb1GIRgDhgQcIIpBOky9r0TD3YQbmLP2PrWjm3MQEP',1,'2015-09-14 15:34:10','2015-09-14 15:34:10'),(21,'CU5ybtVtTBwJmw6ZzHDU4l0RUVgGE6yIke5M0jjqUQ9Y9M3rScfaPmg4RwLBXiMG','','','9Ax8Hvq9M3FAO9sVoKy2cAE5GksUihcbR4hHQUpq73D9VKaX2P9rhveSxwHAl3lKbLKnRRgukP3WUrAx8sD4f3wDWUYDhmmQe0pgLlQLGAmFMmcj7i9eUZ7LyQidUsftY1Cx7S1AdHNM64wtyvybCSAqHjkRBMRkLQSblXVMtmqrik9QhWewni5iTPecjD4y0CZcHzsv2eBiDmDLIUDeFLsyYTQA9RaYYMZ1go6r2tOxZCAclpejaMYbUu55S3yX',1,'2015-09-15 09:44:28','2015-09-15 09:44:28'),(22,'1cApNUGZNf3j0mGfjs6DVaJjpz52dfAUPjlw7majEtrgieIA3B81C44ZcNLgHkeg','','','fEEQjRmGxTX1JvD3Fr2BkvinHAThnB0Fn6ZIEUrAYR6jlY1IJvpkA9EOoJS5C0FCnLnXauoS2mXo6ZgvGMTfTkcMEqLrTDMVgxs9phd7OUrGJxEv4A0xejsiVj50cmLCRxq8wrL9ca25OieJmLPdi51Qg1iWdjCG4KhUwPvYi26IMqx3Luhgdo2WifDPX3vha4PEoJNLgs2sBM7Bmqq7Rvv0dhagJkXWxC0LYchVX6qptFAh69su7OhqP5pKxp1i',1,'2015-09-15 19:00:18','2015-09-15 19:00:18'),(23,'H9FV3x7lyQ0NAnlICli0AZjSgu97p0nyCb2TtthbUb8p6wB6IeCuCw0EOVxVxbui','','','UvCK6heJNed9PyzmmQ2hbBesSz9lR4OKA8j3hOztdZWL5sALd3GMNJfOuMitJPGoCCdeexhMHMlP9filrZruWJ3njaftZdVBc9v8zOmhH2OMZJd4TxpJ3Bp4vhymBj7QPzaTihEufaOANqwFSEBbxvyDVgfXBh6Xagchns3zQ0mrZFbInMtlEYUESXjAYXSX7G1oGwGxZIXR7XeEXNzot3O8mHAfIFCO2iom6sqm4Tes3g52dGTiuQeuTsz3PqJ8',1,'2015-09-16 16:54:12','2015-09-16 16:54:12'),(24,'6I3Vzvko9zlfZ6pQiL9uXISUV5y0bHOmIyxfXmO1pltg6YBzqDUm1LXP63Wi4uB2','','','M2kEy0ucMvt4UNPvqSi1OlUgaOxnOvrfJTO9HbIbmRlqlZWFj4nddYJLv6HFbJPf7HvSSaYw3LVzu9VvU4lcki1N9BS4h4p2oSK7VwhfEc8Vw5Mz7RcyjGanGeWHeC7nO1cARfilGHdPpP6RcBKibB2ZEUSrUiIvpwlbEmbEAI0fb7iF0JvpLTNj5hHoCbLQ9FnOvGM5xhGJFBCRGnOJx8ZGoIx9mrGJLwhZT70IcTNKmdY0OfjBSBeBPGWrFV3Y',1,'2015-09-29 16:10:16','2015-09-29 16:10:16'),(25,'Ps1gCCLJho6GjftGgEoWMUTl8uwDpRpanZD5sGhRPyNsGgq7ksBMjU0LX0PH2Pxs','','','X8lMvBQSV01N9aAqBNw5SMvnKzFDcET2fahWLzWLzv3lQMrS0l3fZ5D7UpS1ZwM5Bu0Y9f07piS040wwC1Y84itK1Y2iuXc036gSKDrk3NE85WNIl9QUvCvPvA0GbzFoJAkEse5GeuN8TvDXh9fhAZLMDdLhgKGTw6BtnxhecKu0FCPd12Hnmo8Bsz319Xe1wvzQ68gvycokOLychnHllvJsuD9CycPRJcApmB24gm5NuMvUlQeb7uqSJJcGBaXk',1,'2015-09-30 15:11:16','2015-09-30 15:11:16'),(26,'yE0c5gAaYwfejUb2THaT6nhATzXrvLCkJoGXxsqUjVWHx9OAUo2pfvZWKUawpwAI','','','0HuLDwuGHvknYhXAsCr4bwpjZq0t7QVj5bu0qtKvCEMBW642eT4AvoRpB5nimlD3YoIYqi8SVPKSsOymndd9cZRnACxPozJENu4yDPKrBTgaaYFPJea1gCodXCVzD5lIarCHyys8EOPbgbtuCYuk7iYMG4QR04bEAhiR6QoIeCWVAVvHTJbMv5fwNoilAvp27PbUbj7KSs0G0IKW7ygq7LAPsQNyhePjSzrPUvoEdQruEx6e8U8CgU2ljuQ3bFNI',1,'2015-10-01 16:35:58','2015-10-01 16:35:58'),(27,'K6I5Slk0AEyU1iQ12ZB3PgJHZM5QFW1QT9Lllwcl1Q6szMksmmm1Iv8h84xEQpUj','','','pgLQSn2J4y2uBdcnFEfN0evyYj2pONP4tbKBFDL92Du4gMilRDzHhl56KymZB1UuSewYi7YbBIViU4Kl79tflpcwdEMf6gQPBCnjABBCJWkeRuGOuzuWeNI8SUdO1ue2xIcyJd0T0byHM4W7uGTOUbNmwr0nbVgPd8Dnb47SVvZhpveZ2yoMP2yCjpqBBMQeKTHmNF4j0UGgFl58ZkLpcAsCqYDrlTLwnTY1YTaPnhvtIrshR3Nu45wkUzR5Jdrx',1,'2016-05-31 00:01:19','2016-05-31 00:01:19');
/*!40000 ALTER TABLE `oc_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute`
--

LOCK TABLES `oc_attribute` WRITE;
/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
INSERT INTO `oc_attribute` VALUES (1,6,1),(2,6,5),(3,6,3),(4,3,1),(5,3,2),(6,3,3),(7,3,4),(8,3,5),(9,3,6),(10,3,7),(11,3,8);
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_description`
--

LOCK TABLES `oc_attribute_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_description` VALUES (6,4,'Attribute 8'),(3,4,'Attribute 1'),(1,4,'Attribute 2'),(2,4,'Attribute 3'),(5,4,'Attribute 1'),(9,4,'Attribute 2'),(11,4,'Attribute 3'),(7,4,'Attribute 4'),(8,4,'Attribute 5'),(4,4,'Attribute 6'),(10,4,'Attribute 7');
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group`
--

LOCK TABLES `oc_attribute_group` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
INSERT INTO `oc_attribute_group` VALUES (3,2),(4,1),(5,3),(6,4);
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group_description`
--

LOCK TABLES `oc_attribute_group_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_group_description` VALUES (6,4,'Attribute group 4'),(4,4,'Attribute group 1'),(3,4,'Attribute group 2'),(5,4,'Attribute group 3');
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner`
--

LOCK TABLES `oc_banner` WRITE;
/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
INSERT INTO `oc_banner` VALUES (17,'banner-bottom',1),(16,'Slideshow',1),(14,'banner-top',0),(18,'banner-top-2',0),(19,'banner-info',1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=335 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image`
--

LOCK TABLES `oc_banner_image` WRITE;
/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
INSERT INTO `oc_banner_image` VALUES (333,16,'/entrega','catalog/Home - Banner Slider/20160925  - CASA FLORES - SITE - HOME - SLIDER - Entregas.jpg',0),(312,17,'','catalog/Home - Banner Footer/19092016 - CASA FLORES - SITE - HOME - BANNER FOOTER - PRIMAVERA.jpg',0),(321,19,'/encomende','catalog/Home - Banner Info/CASA FLORES - BANNER ENCOMENDAS.jpg',2),(322,19,'','catalog/Home - Banner Info/CASA FLORES - BANNER COMPRAS SITE.jpg',0),(334,16,'#','catalog/Home - Banner Slider/20160911 - CASA FLORES - SITE - HOME - SLIDER - GIRASSOL.jpg',0);
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image_description`
--

LOCK TABLES `oc_banner_image_description` WRITE;
/*!40000 ALTER TABLE `oc_banner_image_description` DISABLE KEYS */;
INSERT INTO `oc_banner_image_description` VALUES (312,4,17,'PRIMAVERA',''),(99,4,9,'slide-1',''),(100,4,9,'slide-2',''),(101,4,9,'slide-3',''),(334,4,16,'banner 9',''),(333,4,16,'banner 8',''),(322,4,19,'info01',''),(321,4,19,'info02','');
/*!40000 ALTER TABLE `oc_banner_image_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category`
--

LOCK TABLES `oc_category` WRITE;
/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
INSERT INTO `oc_category` VALUES (37,'',0,1,1,0,1,'2016-05-31 00:44:42','2016-06-03 14:49:15'),(38,'',0,1,1,0,1,'2016-05-31 00:45:00','2016-06-03 14:49:42'),(40,'',0,1,1,2,1,'2016-05-31 00:48:56','2016-09-29 05:49:16'),(56,'',38,1,1,0,1,'2016-06-01 08:59:17','2016-06-01 10:27:09'),(42,'',38,1,1,0,1,'2016-05-31 18:54:31','2016-05-31 18:54:31'),(43,'',0,0,1,0,0,'2016-05-31 18:57:22','2016-10-06 15:04:57'),(44,'',37,0,1,0,1,'2016-05-31 18:59:11','2016-05-31 18:59:11'),(59,'',0,1,1,1,1,'2016-06-02 15:47:09','2016-06-06 21:53:01'),(47,'',0,1,1,0,1,'2016-05-31 19:22:49','2016-06-03 14:50:03'),(48,'',47,1,1,0,1,'2016-05-31 19:23:30','2016-05-31 19:23:30'),(49,'',47,1,1,0,1,'2016-05-31 19:40:20','2016-05-31 19:50:57'),(50,'',38,1,1,0,1,'2016-05-31 22:27:54','2016-05-31 22:27:54'),(60,'',0,1,1,3,1,'2016-06-03 12:39:10','2016-06-06 21:44:30'),(53,'',37,1,1,0,1,'2016-05-31 23:03:23','2016-05-31 23:03:23'),(54,'',0,0,1,0,0,'2016-05-31 23:23:32','2016-06-01 10:24:06'),(55,'',37,1,1,0,1,'2016-05-31 23:43:48','2016-06-01 11:38:56'),(57,'',37,1,1,0,1,'2016-06-01 09:25:45','2016-06-01 09:25:45'),(58,'',37,1,1,0,1,'2016-06-01 09:30:55','2016-06-01 09:30:55'),(61,'',47,1,1,0,1,'2016-06-05 22:33:15','2016-08-03 19:59:18'),(62,'',47,1,1,0,1,'2016-06-09 16:30:41','2016-08-16 23:15:35'),(63,'',47,1,1,0,1,'2016-07-28 19:29:49','2016-07-28 19:29:49'),(64,'',47,1,1,0,1,'2016-07-28 19:31:51','2016-07-28 19:31:51'),(65,'',47,1,1,0,1,'2016-07-28 19:35:35','2016-07-28 19:35:35'),(66,'',65,1,1,0,1,'2016-07-28 19:38:10','2016-07-28 19:38:10'),(67,'',47,1,1,0,1,'2016-07-28 19:40:51','2016-07-28 19:40:51'),(68,'',47,1,1,0,1,'2016-07-28 19:47:27','2016-07-28 19:47:27'),(69,'',47,1,1,0,1,'2016-07-28 19:52:45','2016-07-28 19:52:45'),(70,'',47,1,1,0,0,'2016-07-28 19:53:30','2016-08-16 23:01:48'),(71,'',70,1,1,0,1,'2016-07-28 19:56:33','2016-07-28 19:56:33'),(72,'',70,1,1,0,1,'2016-07-28 19:59:52','2016-07-28 19:59:52'),(73,'',70,1,1,0,0,'2016-07-28 20:00:55','2016-08-09 11:23:27'),(74,'',37,1,1,0,1,'2016-08-03 17:57:36','2016-08-03 17:57:36'),(75,'',37,1,1,0,1,'2016-08-03 18:40:56','2016-08-03 18:40:56'),(76,'',37,1,1,0,1,'2016-09-16 20:47:33','2016-09-16 20:47:33'),(77,'',37,1,1,0,1,'2016-09-16 21:05:32','2016-09-16 21:05:32'),(78,'',47,1,1,0,1,'2016-09-16 21:59:01','2016-09-16 22:00:41'),(79,'',38,1,1,0,1,'2016-09-20 15:51:27','2016-09-20 15:51:27'),(80,'',0,1,1,7,1,'2016-09-22 06:09:36','2016-09-22 06:09:36'),(82,'',0,1,1,0,0,'2016-10-21 13:35:57','2016-10-21 13:37:03');
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_description`
--

LOCK TABLES `oc_category_description` WRITE;
/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
INSERT INTO `oc_category_description` VALUES (37,4,'ARRANJOS','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','ARRANJOS','',''),(38,4,'BUQUÊS','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','BUQUÊS DE FLORES','BUQUÊS DE FLORES','BUQUÊS DE FLORES'),(42,4,'Rosas','&lt;p&gt;Rosas&lt;br&gt;&lt;/p&gt;','Rosas','Rosas','Rosas'),(43,4,'Tulipas','&lt;p&gt;Tulipas&lt;br&gt;&lt;/p&gt;','Tulipas','Tulipas','Tulipas'),(44,4,'Orquídeas','&lt;p&gt;Orquídeas&lt;br&gt;&lt;/p&gt;','Orquídeas','Orquídeas','Orquídeas'),(47,4,'PRESENTES','&lt;p&gt;PRESENTES&lt;br&gt;&lt;/p&gt;','PRESENTES','PRESENTES','PRESENTES'),(48,4,'Flor em caixa','&lt;p&gt;Flor em caixa&lt;br&gt;&lt;/p&gt;','Flor em caixa','Flor em caixa','Flor em caixa'),(49,4,'Casa Flores Secret','&lt;p&gt;CASA FLORES SECRET&lt;br&gt;&lt;/p&gt;','CASA FLORES SECRET','CASA FLORES SECRET','CASA FLORES SECRET'),(50,4,'Astromélias','&lt;p&gt;Astromélias&lt;br&gt;&lt;/p&gt;','Astromélias','Astromélias','Astromélias'),(53,4,'Rosas','&lt;p&gt;Rosas&lt;br&gt;&lt;/p&gt;','Rosas','Rosas','Rosas'),(54,4,'Calachoes','&lt;p&gt;Calachoes&lt;br&gt;&lt;/p&gt;','Calachoes','Calachoes','Calachoes'),(55,4,'Mix de flores','&lt;p&gt;Mix de flores&lt;br&gt;&lt;/p&gt;','Mix de flores','Mix de flores','Mix de flores'),(56,4,'Mix de Flores','&lt;p&gt;Mix de Flores&lt;/p&gt;','Mix de Flores','Mix de Flores','Flores diversas'),(57,4,'Astromélias','&lt;p&gt;Astromélias&lt;br&gt;&lt;/p&gt;','Astromélias','Astromélias','Astromélias'),(58,4,'Tulipas','&lt;p&gt;Tulipas&lt;br&gt;&lt;/p&gt;','Tulipas','Tulipas','Tulipas'),(67,4,'Cartões','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Cartões para flores','Cartões para flores','Cartões para flores'),(63,4,'Novidades','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Novidades','Novidades','Novidades'),(64,4,'Garrafa com flor','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Garrafa com flor','Garrafa com flor','Garrafa com flor'),(65,4,'Maternidade','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Maternidade','Maternidade','Maternidade'),(66,4,'Orquídeas','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Orquídeas','Orquídeas','Orquídeas'),(68,4,'Acessórios','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Acessórios','Acessórios','Acessórios'),(69,4,'Flores e doces','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Flores e doces','Flores e doces','Flores e doces'),(70,4,'Dia dos Pais','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Dia dos Pais','Dia dos Pais','Dia dos Pais'),(71,4,'Cestas','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Cestas','Cestas','Cestas'),(72,4,'Flor em caixa','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Flor em caixa','Flor em caixa','Flor em caixa'),(73,4,'Buquês masculinos','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Buquês masculinos','Buquês masculinos','Buquês masculinos'),(74,4,'Cravinas','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Cravinas','Cravinas','Cravinas'),(75,4,'Cravos','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Cravos','Cravos','Cravos'),(62,4,'Tags para flores','&lt;div style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;http://casaflores.com.br/image/catalog/Imagem Departamento/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 111_1.jpg&quot;&gt;&lt;/div&gt;','Tags para flores','Tags para flores','Tags para flores'),(76,4,'Gérberas','&lt;p&gt;Gérberas&lt;br&gt;&lt;/p&gt;','Gérberas','Gérberas','Gérberas'),(77,4,'Lisianthus','&lt;p&gt;Lisianthus&lt;br&gt;&lt;/p&gt;','Lisianthus','Lisianthus','Lisianthus'),(78,4,'Dia da Secretária','&lt;p&gt;Dia da Secretária&lt;br&gt;&lt;/p&gt;','Dia da Secretária','Dia da Secretária','Dia da Secretária'),(79,4,'Frésias','&lt;p&gt;Frésias&lt;br&gt;&lt;/p&gt;','Frésias','Frésias','Frésias'),(61,4,'Cestas','&lt;p&gt;Cestas de flores com presentes&lt;br&gt;&lt;/p&gt;','Cestas','Cestas','Cestas'),(60,4,'COMO ENCOMENDAR?','&lt;h4 style=&quot;&quot;&gt;&lt;div style=&quot;text-align: center;&quot;&gt;&lt;div style=&quot;text-align: justify;&quot;&gt;&lt;h3 style=&quot;&quot;&gt;&lt;span style=&quot;color: rgb(239, 198, 49); font-family: Arial;&quot;&gt;É muito fácil fazer uma encomenda na Casa Flores! Confira abaixo:&lt;/span&gt;&lt;/h3&gt;&lt;p style=&quot;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;1. Após escolher o produto desejado, você deve preenche a ficha do pedido (&lt;/span&gt;&lt;a href=&quot;http://casaflores.com.br/docs/pedido_de_encomenda_casaflores.docx&quot; target=&quot;_blank&quot;&gt;clique aqui para baixar a ficha de pedido&lt;/a&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;) e a compra é concluída conforme os meios de pagamento disponíveis;&lt;br&gt;&amp;nbsp;&lt;br&gt;2. O pedido mínimo é de R$40,00 &amp;nbsp;e já inclui um cartão básico branco para presente. As entregas são de segunda à sexta, das 8:30h às 18h;&lt;br&gt;&amp;nbsp;&lt;br&gt;3. Não é possível agendar o horário exato de entrega, mas faremos o possível para que o seu presente chegue na hora marcada! J&lt;br&gt;&amp;nbsp;&lt;br&gt;4. Se você precisa da entrega no mesmo dia, entre em contato o quanto antes, de preferência até às 13h, que a gente fará o melhor para te atender.&lt;br&gt;&amp;nbsp;&lt;br&gt;5. Caso tenha alguma dúvida, a descrição completa deste serviço está em NORMAS DE ENTREGA (&lt;/span&gt;&lt;a href=&quot;http://casaflores.homolog.lojavirtual.digital/delivery&quot; target=&quot;_blank&quot;&gt;clique aqui&lt;/a&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;)&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/h4&gt;','Encomende','Encomende','Encomende'),(40,4,'SERVIÇOS','&lt;center&gt;&lt;p&gt;&lt;img src=&quot;http://casaflores.com.br/image/catalog/20160603 - CASA FLORES - SITE - MENU - SERVIÇOS - ASSINATURAS DE FLORES.jpg&quot;&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://casaflores.com.br/image/catalog/20160603 - CASA FLORES - SITE - MENU - SERVIÇOS - DECORACAO DE EVENTOS3.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://casaflores.com.br/image/catalog/20160603 - CASA FLORES - SITE - MENU - SERVIÇOS - JARDINAGEM3.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/center&gt;','SERVIÇOS','SERVIÇOS','SERVIÇOS'),(59,4,'ENTREGA','&lt;h4 style=&quot;&quot;&gt;&lt;div style=&quot;text-align: center;&quot;&gt;&lt;div style=&quot;text-align: justify;&quot;&gt;&lt;h3 style=&quot;&quot;&gt;&lt;span style=&quot;color: rgb(239, 198, 49); font-family: Arial; line-height: 1.1;&quot;&gt;Entrega&lt;/span&gt;&lt;br&gt;&lt;/h3&gt;\r\n&lt;h4 style=&quot;&quot;&gt;&lt;div style=&quot;text-align: center;&quot;&gt;&lt;div style=&quot;text-align: justify;&quot;&gt;&lt;p style=&quot;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;TAXAS DE ENTREGA NA GRANDE SP&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 20px; line-height: 16.5px; text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 20px; line-height: 16.5px; text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;img src=&quot;http://casaflores.com.br/image/catalog/Entrega/31052016 - CASA FLORES - SITE - HOME - ENTREGA - TABELA DE PREÇOS2.jpg&quot; style=&quot;width: 696.172px; height: 359.499px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 15px; line-height: 16.5px; text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;&quot;&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;NORMAS DE ENTREGA&lt;br&gt;A nossa missão é sempre buscar entregar todos os pedidos dentro das condições escolhidas pelo. No entanto, o prazo de entrega de seu pedido pode variar de acordo com as dificuldades encontradas para chegar ao destino final ou até por condições externas fora de nosso alcance.&lt;br&gt;&lt;br&gt;Os pedidos serão entregues de acordo com o horário da finalização da compra. Isso ocorre, devido a prévio agendamento de entregas anteriores, a fim de seguirmos um cronograma de logística e devido ao tempo necessário para realizar todo processo de venda, confecção e entrega das flores. Logo, não é possível agendar o horário exato de entrega, mas faremos o possível para que o seu.&lt;br&gt;&lt;br&gt;O pedido mínimo para agendar uma entrega é de R$40,00 e já inclui um cartão básico branco para&lt;br&gt;As entregas são feitas de segunda à sexta, das 8:30h às 18h, e para entregas urgentes, seguem abaixo os períodos de entrega.&lt;br&gt;&lt;br&gt;Das 08:30h às 13h - Limite para finalização do pedido: até as 15h do dia anterior&lt;br&gt;Das 13h às 18h - Limite para finalização do pedido: até as 13h do mesmo dia&lt;br&gt;&lt;br&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Arial; color: inherit; line-height: 1.1; font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;&quot;&gt;&lt;span style=&quot;font-family: Arial; color: inherit; line-height: 1.1; font-weight: bold;&quot;&gt;Entregas em datas comemorativas:&lt;/span&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;Devido ao grande número de encomendas em datas comemorativas especiais como Dia das Mães, Dia dos Namorados, Natal, Dia da Mulher, Dia da Secretária, entre outras, o horário escolhido para entrega será levado como referência, porém os pedidos solicitados para essas datas serão entregues entre 8:30h e 18h. De qualquer forma, estaremos nos esforçando ao máximo para realizar a entrega no período escolhido na compra.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; font-weight: bold;&quot;&gt;Exigências:&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;Pedidos exigindo que as flores sejam exclusivamente entregues nas mãos do destinatário não podem ser garantidos. Nosso compromisso é de entregar seu pedido no endereço de destino. De forma alguma podemos adentrar em portarias, casas, empresas, escritórios ou em qualquer outra localidade sem autorização dos responsáveis. Não se encontrando o destinatário, sempre que possível, deixaremos com algum responsável que esteja no local.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;Entregas em hotéis, flats, hospitais, quartéis, casas de show e etc… Nossa responsabilidade termina com a entrega de seu pedido na Consierge ou ao responsável pelo encaminhamento ao destinatário.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; font-weight: bold;&quot;&gt;Endereços incorretos:&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;Caso o endereço fornecido para entrega esteja incorreto, ou, seja inexistente, entraremos em contato com o destinatário para verificar onde podemos encontra-lo. Caso não seja possível através do telefone fornecido, entraremos em contato com o comprador para que possamos tomar as devidas providências. Mudanças de endereços podem gerar novos custos.No caso de não houver ninguém no endereço de entrega,　entraremos em contato por telefone com o destinatário a fim de agendar um novo horário. Dependendo da área a ser entregue novamente, poderá gerar novos custos..No caso de não haver entrega para a cidade/bairro solicitado, estaremos entrando em contato imediato, para comunicar o cancelamento de seu pedido.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;Atenção: caso a compra seja finalizada com cartão de crédito, e haja dificuldades em aprovar o débito, ou depósitos não realizados e ou não identificados podem ocasionar atrasos nas entregas e até o cancelamento do pedido.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; font-weight: bold;&quot;&gt;Taxas de entrega:&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; color: inherit; line-height: 1.1;&quot;&gt;Ao realizar a compra, confira as taxas de entrega estabelecidas em cada bairro. Os preços visualizados ao lado dos arranjos são unicamente dos produtos.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; font-weight: bold;&quot;&gt;Termos de garantia:&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;Estaremos sempre enviando flores frescas, de alta qualidade, a fim de mantermos nossa responsabilidade e missão de distribuir beleza e promover boas recordações. Se por alguma razão, você não ficar satisfeito com sua compra, por favor, contate-nos imediatamente através do email: casaflores@casaflores.com.br e estaremos providenciando uma solução no menor espaço de tempo possível.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial; font-weight: bold;&quot;&gt;Política de substituição de flores:&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;Devido a grande variedade de flores que disponibilizamos, por ser um artigo altamente sazonal que depende de condições climáticas (sensível a qualquer variação de tempo e temperatura), altamente perecível, e até por motivo de grande procura (períodos de pico), colocamos aqui nossa política de substituição de flores no caso de haver ocasional indisponibilidade de algumas variedades de flores encontradas em nossos arranjos. Caso não haja a cor específica da flor escolhida, entraremos em contato a fim de achar uma solução, se, por ventura, não conseguirmos contata-lo, estaremos enviando flores cuja, a cor esteja mais próxima das opções escolhidas no pedido.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;Nossos floristas sempre que necessário poderão substituir flores, porém sempre procurando ao máximo evitar descaracterizar do arranjo escolhido e sempre substituindo por flores de igual ou maior valor ou ainda se necessário por uma maior quantidade de outras flores que alcance o valor do arranjo comprado.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;/p&gt;\r\n&lt;table class=&quot;table table-bordered&quot;&gt;\r\n\r\n\r\n\r\n\r\n\r\n&lt;/table&gt;&lt;/div&gt;&lt;/div&gt;&lt;/h4&gt;&lt;/div&gt;&lt;/div&gt;&lt;/h4&gt;','ENTREGA','ENTREGA','ENTREGA'),(80,4,'BLOG','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','BLOG','BLOG','BLOG'),(82,4,'COMPRE ONLINE','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','COMPRE ONLINE','COMPRE ONLINE','COMPRE ONLINE');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_filter`
--

LOCK TABLES `oc_category_filter` WRITE;
/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_path`
--

LOCK TABLES `oc_category_path` WRITE;
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` VALUES (40,40,0),(38,38,0),(55,37,0),(60,60,0),(37,37,0),(42,38,0),(42,42,1),(43,43,0),(44,37,0),(44,44,1),(47,47,0),(48,47,0),(48,48,1),(49,47,0),(49,49,1),(50,38,0),(50,50,1),(61,61,1),(61,47,0),(59,59,0),(53,37,0),(53,53,1),(54,54,0),(55,55,1),(56,38,0),(56,56,1),(57,37,0),(57,57,1),(58,37,0),(58,58,1),(62,47,0),(62,62,1),(63,47,0),(63,63,1),(64,47,0),(64,64,1),(65,47,0),(65,65,1),(66,47,0),(66,65,1),(66,66,2),(67,47,0),(67,67,1),(68,47,0),(68,68,1),(69,47,0),(69,69,1),(70,47,0),(70,70,1),(71,47,0),(71,70,1),(71,71,2),(72,47,0),(72,70,1),(72,72,2),(73,70,1),(73,47,0),(73,73,2),(74,37,0),(74,74,1),(75,37,0),(75,75,1),(76,37,0),(76,76,1),(77,37,0),(77,77,1),(78,47,0),(78,78,1),(79,38,0),(79,79,1),(80,80,0),(82,82,0);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_layout`
--

LOCK TABLES `oc_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
INSERT INTO `oc_category_to_layout` VALUES (37,0,0),(38,0,0),(56,0,0),(40,0,0),(60,0,4),(42,0,0),(43,0,0),(44,0,0),(59,0,11),(47,0,0),(48,0,0),(49,0,0),(50,0,0),(61,0,0),(53,0,0),(54,0,0),(55,0,0),(57,0,0),(58,0,0),(62,0,0),(63,0,0),(64,0,0),(65,0,0),(66,0,0),(67,0,0),(68,0,0),(69,0,0),(70,0,0),(71,0,0),(72,0,0),(73,0,0),(74,0,0),(75,0,0),(76,0,0),(77,0,0),(78,0,0),(79,0,0),(80,0,0),(82,0,0);
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_store`
--

LOCK TABLES `oc_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_category_to_store` VALUES (37,0),(38,0),(40,0),(42,0),(43,0),(44,0),(47,0),(48,0),(49,0),(50,0),(53,0),(54,0),(55,0),(56,0),(57,0),(58,0),(59,0),(60,0),(61,0),(62,0),(63,0),(64,0),(65,0),(66,0),(67,0),(68,0),(69,0),(70,0),(71,0),(72,0),(73,0),(74,0),(75,0),(76,0),(77,0),(78,0),(79,0),(80,0),(82,0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_country`
--

LOCK TABLES `oc_country` WRITE;
/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
INSERT INTO `oc_country` VALUES (1,'Afghanistan','AF','AFG','',0,1),(2,'Albania','AL','ALB','',0,1),(3,'Algeria','DZ','DZA','',0,1),(4,'American Samoa','AS','ASM','',0,1),(5,'Andorra','AD','AND','',0,1),(6,'Angola','AO','AGO','',0,1),(7,'Anguilla','AI','AIA','',0,1),(8,'Antarctica','AQ','ATA','',0,1),(9,'Antigua and Barbuda','AG','ATG','',0,1),(10,'Argentina','AR','ARG','',0,1),(11,'Armenia','AM','ARM','',0,1),(12,'Aruba','AW','ABW','',0,1),(13,'Australia','AU','AUS','',0,1),(14,'Austria','AT','AUT','',0,1),(15,'Azerbaijan','AZ','AZE','',0,1),(16,'Bahamas','BS','BHS','',0,1),(17,'Bahrain','BH','BHR','',0,1),(18,'Bangladesh','BD','BGD','',0,1),(19,'Barbados','BB','BRB','',0,1),(20,'Belarus','BY','BLR','',0,1),(21,'Belgium','BE','BEL','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',0,1),(22,'Belize','BZ','BLZ','',0,1),(23,'Benin','BJ','BEN','',0,1),(24,'Bermuda','BM','BMU','',0,1),(25,'Bhutan','BT','BTN','',0,1),(26,'Bolivia','BO','BOL','',0,1),(27,'Bosnia and Herzegovina','BA','BIH','',0,1),(28,'Botswana','BW','BWA','',0,1),(29,'Bouvet Island','BV','BVT','',0,1),(30,'Brasil','BR','BRA','',0,1),(31,'British Indian Ocean Territory','IO','IOT','',0,1),(32,'Brunei Darussalam','BN','BRN','',0,1),(33,'Bulgaria','BG','BGR','',0,1),(34,'Burkina Faso','BF','BFA','',0,1),(35,'Burundi','BI','BDI','',0,1),(36,'Cambodia','KH','KHM','',0,1),(37,'Cameroon','CM','CMR','',0,1),(38,'Canada','CA','CAN','',0,1),(39,'Cape Verde','CV','CPV','',0,1),(40,'Cayman Islands','KY','CYM','',0,1),(41,'Central African Republic','CF','CAF','',0,1),(42,'Chad','TD','TCD','',0,1),(43,'Chile','CL','CHL','',0,1),(44,'China','CN','CHN','',0,1),(45,'Christmas Island','CX','CXR','',0,1),(46,'Cocos (Keeling) Islands','CC','CCK','',0,1),(47,'Colombia','CO','COL','',0,1),(48,'Comoros','KM','COM','',0,1),(49,'Congo','CG','COG','',0,1),(50,'Cook Islands','CK','COK','',0,1),(51,'Costa Rica','CR','CRI','',0,1),(52,'Cote D\'Ivoire','CI','CIV','',0,1),(53,'Croatia','HR','HRV','',0,1),(54,'Cuba','CU','CUB','',0,1),(55,'Cyprus','CY','CYP','',0,1),(56,'Czech Republic','CZ','CZE','',0,1),(57,'Denmark','DK','DNK','',0,1),(58,'Djibouti','DJ','DJI','',0,1),(59,'Dominica','DM','DMA','',0,1),(60,'Dominican Republic','DO','DOM','',0,1),(61,'East Timor','TL','TLS','',0,1),(62,'Ecuador','EC','ECU','',0,1),(63,'Egypt','EG','EGY','',0,1),(64,'El Salvador','SV','SLV','',0,1),(65,'Equatorial Guinea','GQ','GNQ','',0,1),(66,'Eritrea','ER','ERI','',0,1),(67,'Estonia','EE','EST','',0,1),(68,'Ethiopia','ET','ETH','',0,1),(69,'Falkland Islands (Malvinas)','FK','FLK','',0,1),(70,'Faroe Islands','FO','FRO','',0,1),(71,'Fiji','FJ','FJI','',0,1),(72,'Finland','FI','FIN','',0,1),(74,'France, Metropolitan','FR','FRA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(75,'French Guiana','GF','GUF','',0,1),(76,'French Polynesia','PF','PYF','',0,1),(77,'French Southern Territories','TF','ATF','',0,1),(78,'Gabon','GA','GAB','',0,1),(79,'Gambia','GM','GMB','',0,1),(80,'Georgia','GE','GEO','',0,1),(81,'Germany','DE','DEU','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(82,'Ghana','GH','GHA','',0,1),(83,'Gibraltar','GI','GIB','',0,1),(84,'Greece','GR','GRC','',0,1),(85,'Greenland','GL','GRL','',0,1),(86,'Grenada','GD','GRD','',0,1),(87,'Guadeloupe','GP','GLP','',0,1),(88,'Guam','GU','GUM','',0,1),(89,'Guatemala','GT','GTM','',0,1),(90,'Guinea','GN','GIN','',0,1),(91,'Guinea-Bissau','GW','GNB','',0,1),(92,'Guyana','GY','GUY','',0,1),(93,'Haiti','HT','HTI','',0,1),(94,'Heard and Mc Donald Islands','HM','HMD','',0,1),(95,'Honduras','HN','HND','',0,1),(96,'Hong Kong','HK','HKG','',0,1),(97,'Hungary','HU','HUN','',0,1),(98,'Iceland','IS','ISL','',0,1),(99,'India','IN','IND','',0,1),(100,'Indonesia','ID','IDN','',0,1),(101,'Iran (Islamic Republic of)','IR','IRN','',0,1),(102,'Iraq','IQ','IRQ','',0,1),(103,'Ireland','IE','IRL','',0,1),(104,'Israel','IL','ISR','',0,1),(105,'Italy','IT','ITA','',0,1),(106,'Jamaica','JM','JAM','',0,1),(107,'Japan','JP','JPN','',0,1),(108,'Jordan','JO','JOR','',0,1),(109,'Kazakhstan','KZ','KAZ','',0,1),(110,'Kenya','KE','KEN','',0,1),(111,'Kiribati','KI','KIR','',0,1),(112,'North Korea','KP','PRK','',0,1),(113,'Korea, Republic of','KR','KOR','',0,1),(114,'Kuwait','KW','KWT','',0,1),(115,'Kyrgyzstan','KG','KGZ','',0,1),(116,'Lao People\'s Democratic Republic','LA','LAO','',0,1),(117,'Latvia','LV','LVA','',0,1),(118,'Lebanon','LB','LBN','',0,1),(119,'Lesotho','LS','LSO','',0,1),(120,'Liberia','LR','LBR','',0,1),(121,'Libyan Arab Jamahiriya','LY','LBY','',0,1),(122,'Liechtenstein','LI','LIE','',0,1),(123,'Lithuania','LT','LTU','',0,1),(124,'Luxembourg','LU','LUX','',0,1),(125,'Macau','MO','MAC','',0,1),(126,'FYROM','MK','MKD','',0,1),(127,'Madagascar','MG','MDG','',0,1),(128,'Malawi','MW','MWI','',0,1),(129,'Malaysia','MY','MYS','',0,1),(130,'Maldives','MV','MDV','',0,1),(131,'Mali','ML','MLI','',0,1),(132,'Malta','MT','MLT','',0,1),(133,'Marshall Islands','MH','MHL','',0,1),(134,'Martinique','MQ','MTQ','',0,1),(135,'Mauritania','MR','MRT','',0,1),(136,'Mauritius','MU','MUS','',0,1),(137,'Mayotte','YT','MYT','',0,1),(138,'Mexico','MX','MEX','',0,1),(139,'Micronesia, Federated States of','FM','FSM','',0,1),(140,'Moldova, Republic of','MD','MDA','',0,1),(141,'Monaco','MC','MCO','',0,1),(142,'Mongolia','MN','MNG','',0,1),(143,'Montserrat','MS','MSR','',0,1),(144,'Morocco','MA','MAR','',0,1),(145,'Mozambique','MZ','MOZ','',0,1),(146,'Myanmar','MM','MMR','',0,1),(147,'Namibia','NA','NAM','',0,1),(148,'Nauru','NR','NRU','',0,1),(149,'Nepal','NP','NPL','',0,1),(150,'Netherlands','NL','NLD','',0,1),(151,'Netherlands Antilles','AN','ANT','',0,1),(152,'New Caledonia','NC','NCL','',0,1),(153,'New Zealand','NZ','NZL','',0,1),(154,'Nicaragua','NI','NIC','',0,1),(155,'Niger','NE','NER','',0,1),(156,'Nigeria','NG','NGA','',0,1),(157,'Niue','NU','NIU','',0,1),(158,'Norfolk Island','NF','NFK','',0,1),(159,'Northern Mariana Islands','MP','MNP','',0,1),(160,'Norway','NO','NOR','',0,1),(161,'Oman','OM','OMN','',0,1),(162,'Pakistan','PK','PAK','',0,1),(163,'Palau','PW','PLW','',0,1),(164,'Panama','PA','PAN','',0,1),(165,'Papua New Guinea','PG','PNG','',0,1),(166,'Paraguay','PY','PRY','',0,1),(167,'Peru','PE','PER','',0,1),(168,'Philippines','PH','PHL','',0,1),(169,'Pitcairn','PN','PCN','',0,1),(170,'Poland','PL','POL','',0,1),(171,'Portugal','PT','PRT','',0,1),(172,'Puerto Rico','PR','PRI','',0,1),(173,'Qatar','QA','QAT','',0,1),(174,'Reunion','RE','REU','',0,1),(175,'Romania','RO','ROM','',0,1),(176,'Russian Federation','RU','RUS','',0,1),(177,'Rwanda','RW','RWA','',0,1),(178,'Saint Kitts and Nevis','KN','KNA','',0,1),(179,'Saint Lucia','LC','LCA','',0,1),(180,'Saint Vincent and the Grenadines','VC','VCT','',0,1),(181,'Samoa','WS','WSM','',0,1),(182,'San Marino','SM','SMR','',0,1),(183,'Sao Tome and Principe','ST','STP','',0,1),(184,'Saudi Arabia','SA','SAU','',0,1),(185,'Senegal','SN','SEN','',0,1),(186,'Seychelles','SC','SYC','',0,1),(187,'Sierra Leone','SL','SLE','',0,1),(188,'Singapore','SG','SGP','',0,1),(189,'Slovak Republic','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,1),(190,'Slovenia','SI','SVN','',0,1),(191,'Solomon Islands','SB','SLB','',0,1),(192,'Somalia','SO','SOM','',0,1),(193,'South Africa','ZA','ZAF','',0,1),(194,'South Georgia &amp; South Sandwich Islands','GS','SGS','',0,1),(195,'Spain','ES','ESP','',0,1),(196,'Sri Lanka','LK','LKA','',0,1),(197,'St. Helena','SH','SHN','',0,1),(198,'St. Pierre and Miquelon','PM','SPM','',0,1),(199,'Sudan','SD','SDN','',0,1),(200,'Suriname','SR','SUR','',0,1),(201,'Svalbard and Jan Mayen Islands','SJ','SJM','',0,1),(202,'Swaziland','SZ','SWZ','',0,1),(203,'Sweden','SE','SWE','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(204,'Switzerland','CH','CHE','',0,1),(205,'Syrian Arab Republic','SY','SYR','',0,1),(206,'Taiwan','TW','TWN','',0,1),(207,'Tajikistan','TJ','TJK','',0,1),(208,'Tanzania, United Republic of','TZ','TZA','',0,1),(209,'Thailand','TH','THA','',0,1),(210,'Togo','TG','TGO','',0,1),(211,'Tokelau','TK','TKL','',0,1),(212,'Tonga','TO','TON','',0,1),(213,'Trinidad and Tobago','TT','TTO','',0,1),(214,'Tunisia','TN','TUN','',0,1),(215,'Turkey','TR','TUR','',0,1),(216,'Turkmenistan','TM','TKM','',0,1),(217,'Turks and Caicos Islands','TC','TCA','',0,1),(218,'Tuvalu','TV','TUV','',0,1),(219,'Uganda','UG','UGA','',0,1),(220,'Ukraine','UA','UKR','',0,1),(221,'United Arab Emirates','AE','ARE','',0,1),(222,'United Kingdom','GB','GBR','',1,1),(223,'United States','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1),(224,'United States Minor Outlying Islands','UM','UMI','',0,1),(225,'Uruguay','UY','URY','',0,1),(226,'Uzbekistan','UZ','UZB','',0,1),(227,'Vanuatu','VU','VUT','',0,1),(228,'Vatican City State (Holy See)','VA','VAT','',0,1),(229,'Venezuela','VE','VEN','',0,1),(230,'Viet Nam','VN','VNM','',0,1),(231,'Virgin Islands (British)','VG','VGB','',0,1),(232,'Virgin Islands (U.S.)','VI','VIR','',0,1),(233,'Wallis and Futuna Islands','WF','WLF','',0,1),(234,'Western Sahara','EH','ESH','',0,1),(235,'Yemen','YE','YEM','',0,1),(237,'Democratic Republic of Congo','CD','COD','',0,1),(238,'Zambia','ZM','ZMB','',0,1),(239,'Zimbabwe','ZW','ZWE','',0,1),(242,'Montenegro','ME','MNE','',0,1),(243,'Serbia','RS','SRB','',0,1),(244,'Aaland Islands','AX','ALA','',0,1),(245,'Bonaire, Sint Eustatius and Saba','BQ','BES','',0,1),(246,'Curacao','CW','CUW','',0,1),(247,'Palestinian Territory, Occupied','PS','PSE','',0,1),(248,'South Sudan','SS','SSD','',0,1),(249,'St. Barthelemy','BL','BLM','',0,1),(250,'St. Martin (French part)','MF','MAF','',0,1),(251,'Canary Islands','IC','ICA','',0,1),(252,'Ascension Island (British)','AC','ASC','',0,1),(253,'Kosovo, Republic of','XK','UNK','',0,1),(254,'Isle of Man','IM','IMN','',0,1),(255,'Tristan da Cunha','TA','SHN','',0,1),(256,'Guernsey','GG','GGY','',0,1),(257,'Jersey','JE','JEY','',0,1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon`
--

LOCK TABLES `oc_coupon` WRITE;
/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
INSERT INTO `oc_coupon` VALUES (4,'-10% Discount','2222','P',10.0000,0,0,0.0000,'2014-01-01','2020-01-01',10,'10',0,'2009-01-27 13:55:03'),(5,'Free Shipping','3333','P',0.0000,0,1,100.0000,'2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53'),(6,'-10.00 Discount','1111','F',10.0000,0,0,10.0000,'2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_category`
--

LOCK TABLES `oc_coupon_category` WRITE;
/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_history`
--

LOCK TABLES `oc_coupon_history` WRITE;
/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_product`
--

LOCK TABLES `oc_coupon_product` WRITE;
/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_currency`
--

LOCK TABLES `oc_currency` WRITE;
/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
INSERT INTO `oc_currency` VALUES (4,'Real','BRL','R$ ','','2',1.00000000,1,'2016-10-31 01:42:49');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field`
--

LOCK TABLES `oc_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
INSERT INTO `oc_custom_field` VALUES (1,'text','','address',1,2),(2,'text','','address',1,3);
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_customer_group`
--

LOCK TABLES `oc_custom_field_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` DISABLE KEYS */;
INSERT INTO `oc_custom_field_customer_group` VALUES (1,1,1),(2,1,0);
/*!40000 ALTER TABLE `oc_custom_field_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_description`
--

LOCK TABLES `oc_custom_field_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
INSERT INTO `oc_custom_field_description` VALUES (1,4,'Número'),(2,4,'Complemento');
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value`
--

LOCK TABLES `oc_custom_field_value` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value_description`
--

LOCK TABLES `oc_custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer`
--

LOCK TABLES `oc_customer` WRITE;
/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
INSERT INTO `oc_customer` VALUES (2,1,0,'demo','demo','demo@demolink.org','123456789','','b12292ff7485b6ad85261a15d41c8e805d43d3a2','a3a50762a','a:3:{s:140:\"YToyOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O3M6Njoib3B0aW9uIjthOjM6e2k6MjMwO3M6MjoiMjUiO2k6MjI3O2E6MTp7aTowO3M6MjoiMTkiO31pOjIyNDtzOjI6IjEyIjt9fQ==\";i:1;s:140:\"YToyOntzOjEwOiJwcm9kdWN0X2lkIjtpOjM1O3M6Njoib3B0aW9uIjthOjM6e2k6MjMwO3M6MjoiMjUiO2k6MjI3O2E6MTp7aTowO3M6MjoiMTciO31pOjIyNDtzOjI6IjEzIjt9fQ==\";i:3;s:104:\"YToyOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMwO3M6Njoib3B0aW9uIjthOjI6e2k6MjM3O3M6MjoiNDYiO2k6MjM4O3M6MjoiNDkiO319\";i:1;}','a:3:{i:0;i:47;i:1;i:42;i:2;i:43;}',0,2,'','192.168.9.125',1,1,0,'','2015-08-26 11:29:30'),(6,1,0,'Fernando','de Figueiredo Mendes','fernando.mendes@webca.com.br','11976495157','','86cb67bdc508f743660058d1f53d74637b316620','2e5e16ec6','a:3:{s:148:\"YToyOntzOjEwOiJwcm9kdWN0X2lkIjtpOjE2MztzOjY6Im9wdGlvbiI7YTozOntpOjI2OTtzOjEwOiIyMDE2LTA5LTI3IjtpOjI3MDtzOjM6IjEyOCI7aToyNzE7czo4OiJkd3Fkd3FkcSI7fX0=\";i:1;s:120:\"YToyOntzOjEwOiJwcm9kdWN0X2lkIjtpOjE2MztzOjY6Im9wdGlvbiI7YToyOntpOjI2OTtzOjEwOiIyMDE2LTEwLTEyIjtpOjI3MDtzOjM6IjEyOSI7fX0=\";i:1;s:120:\"YToyOntzOjEwOiJwcm9kdWN0X2lkIjtpOjE2MztzOjY6Im9wdGlvbiI7YToyOntpOjI2OTtzOjEwOiIyMDE2LTEwLTA2IjtpOjI3MDtzOjM6IjEyOSI7fX0=\";i:2;}','',0,6,'','172.17.0.1',1,1,0,'','2016-09-22 01:46:17'),(7,1,0,'Fausto','Simaro VIeira','fausto.vieira@agenciaisland.com.br','1992340239','','a288a62ac3081467aab41a5e44f6f6e4e9d80871','55696ae2a','a:0:{}','',1,7,'','172.17.0.1',1,1,0,'','2016-09-22 05:59:28'),(8,1,0,'patricia','olivani','patricia.olivani@gmail.com','55426594','','167276e4e6d462a04c7b5e9a930d81cfb23636f7','9378d4199','a:1:{s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjE0Mjt9\";i:1;}','',0,8,'','172.17.0.1',1,1,0,'','2016-10-04 19:11:31'),(9,1,0,'Linneu','Vieira Junior','linneuvieira@hotmail.com','1150935684','','6c0284a0f41a06193d5bb59d0a8e35488c37234a','21730ca7f','a:1:{s:120:\"YToyOntzOjEwOiJwcm9kdWN0X2lkIjtpOjE2MztzOjY6Im9wdGlvbiI7YToyOntpOjI2OTtzOjEwOiIyMDE2LTEwLTA2IjtpOjI3MDtzOjM6IjEyOCI7fX0=\";i:1;}','',1,10,'','172.17.0.1',1,1,0,'','2016-10-05 22:06:55');
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_activity`
--

DROP TABLE IF EXISTS `oc_customer_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_activity`
--

LOCK TABLES `oc_customer_activity` WRITE;
/*!40000 ALTER TABLE `oc_customer_activity` DISABLE KEYS */;
INSERT INTO `oc_customer_activity` VALUES (27,2,'login','a:2:{s:11:\"customer_id\";s:1:\"2\";s:4:\"name\";s:9:\"demo demo\";}','192.168.9.125','2015-09-29 17:55:31'),(28,5,'register','a:2:{s:11:\"customer_id\";i:5;s:4:\"name\";s:23:\"asdhjashdj hjasdhkjasdh\";}','192.168.9.13','2015-10-09 14:28:15'),(29,5,'order_account','a:3:{s:11:\"customer_id\";s:1:\"5\";s:4:\"name\";s:23:\"asdhjashdj hjasdhkjasdh\";s:8:\"order_id\";i:15;}','192.168.9.13','2015-10-09 14:57:07'),(30,6,'register','a:2:{s:11:\"customer_id\";i:6;s:4:\"name\";s:29:\"Fernando de Figueiredo Mendes\";}','127.0.0.1','2016-09-22 01:46:19'),(31,7,'register','a:2:{s:11:\"customer_id\";i:7;s:4:\"name\";s:20:\"Fausto Simaro VIeira\";}','172.17.0.1','2016-09-22 05:59:28'),(32,8,'register','a:2:{s:11:\"customer_id\";i:8;s:4:\"name\";s:16:\"patricia olivani\";}','172.17.0.1','2016-10-04 19:11:32'),(33,8,'address_add','a:2:{s:11:\"customer_id\";s:1:\"8\";s:4:\"name\";s:16:\"patricia olivani\";}','172.17.0.1','2016-10-04 19:12:20'),(34,6,'login','a:2:{s:11:\"customer_id\";s:1:\"6\";s:4:\"name\";s:29:\"Fernando de Figueiredo Mendes\";}','172.17.0.1','2016-10-05 21:57:31'),(35,7,'login','a:2:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:20:\"Fausto Simaro VIeira\";}','172.17.0.1','2016-10-05 21:58:23'),(36,6,'login','a:2:{s:11:\"customer_id\";s:1:\"6\";s:4:\"name\";s:29:\"Fernando de Figueiredo Mendes\";}','172.17.0.1','2016-10-05 22:04:41'),(37,9,'register','a:2:{s:11:\"customer_id\";i:9;s:4:\"name\";s:20:\"Linneu Vieira Junior\";}','172.17.0.1','2016-10-05 22:06:55'),(38,6,'login','a:2:{s:11:\"customer_id\";s:1:\"6\";s:4:\"name\";s:29:\"Fernando de Figueiredo Mendes\";}','172.17.0.1','2016-10-11 03:53:50'),(39,7,'login','a:2:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:20:\"Fausto Simaro VIeira\";}','172.17.0.1','2016-10-11 04:48:16'),(40,7,'order_account','a:3:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:20:\"Fausto Simaro VIeira\";s:8:\"order_id\";i:25;}','172.17.0.1','2016-10-11 04:50:40'),(41,6,'login','a:2:{s:11:\"customer_id\";s:1:\"6\";s:4:\"name\";s:29:\"Fernando de Figueiredo Mendes\";}','172.17.0.1','2016-10-17 01:15:28'),(42,7,'login','a:2:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:20:\"Fausto Simaro VIeira\";}','172.17.0.1','2016-10-17 02:46:52');
/*!40000 ALTER TABLE `oc_customer_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ban_ip`
--

DROP TABLE IF EXISTS `oc_customer_ban_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ban_ip`
--

LOCK TABLES `oc_customer_ban_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ban_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_ban_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group`
--

LOCK TABLES `oc_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
INSERT INTO `oc_customer_group` VALUES (1,0,1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group_description`
--

LOCK TABLES `oc_customer_group_description` WRITE;
/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
INSERT INTO `oc_customer_group_description` VALUES (1,4,'Default','test');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_history`
--

LOCK TABLES `oc_customer_history` WRITE;
/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ip`
--

LOCK TABLES `oc_customer_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
INSERT INTO `oc_customer_ip` VALUES (9,2,'192.168.9.125','2015-09-29 17:55:32'),(10,5,'192.168.9.13','2015-10-09 14:28:15'),(11,6,'127.0.0.1','2016-09-22 01:46:19'),(12,7,'172.17.0.1','2016-09-22 05:59:28'),(13,8,'172.17.0.1','2016-10-04 19:11:32'),(14,6,'172.17.0.1','2016-10-05 21:57:31'),(15,9,'172.17.0.1','2016-10-05 22:06:55');
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_login`
--

DROP TABLE IF EXISTS `oc_customer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_login`
--

LOCK TABLES `oc_customer_login` WRITE;
/*!40000 ALTER TABLE `oc_customer_login` DISABLE KEYS */;
INSERT INTO `oc_customer_login` VALUES (14,'asdasd','192.168.9.13',2,'2015-10-07 15:14:49','2015-10-07 15:17:16'),(15,'shymarow@hotmail.com','172.17.0.1',2,'2016-10-11 01:48:06','2016-10-11 01:48:10'),(16,'casaflores','172.17.0.1',1,'2016-10-17 00:46:44','2016-10-17 00:46:44');
/*!40000 ALTER TABLE `oc_customer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_online`
--

LOCK TABLES `oc_customer_online` WRITE;
/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_reward`
--

LOCK TABLES `oc_customer_reward` WRITE;
/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_transaction`
--

LOCK TABLES `oc_customer_transaction` WRITE;
/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download`
--

LOCK TABLES `oc_download` WRITE;
/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
INSERT INTO `oc_download` VALUES (1,'Pedido de Encomenda Casa Flores.doc.ab9bbcd8ed38ec4ed8330930cbddfe6e','Ficha de encomenda Casa Flores.doc','2016-06-03 18:27:19');
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download_description`
--

LOCK TABLES `oc_download_description` WRITE;
/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
INSERT INTO `oc_download_description` VALUES (1,4,'Ficha de encomenda');
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_event`
--

DROP TABLE IF EXISTS `oc_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_event`
--

LOCK TABLES `oc_event` WRITE;
/*!40000 ALTER TABLE `oc_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=483 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension`
--

LOCK TABLES `oc_extension` WRITE;
/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
INSERT INTO `oc_extension` VALUES (22,'total','shipping'),(57,'total','sub_total'),(58,'total','tax'),(59,'total','total'),(410,'module','banner'),(390,'total','credit'),(478,'shipping','joseanmatias_faixa_cep'),(349,'total','handling'),(350,'total','low_order_fee'),(389,'total','coupon'),(432,'module','tm_fbbox'),(408,'module','account'),(393,'total','reward'),(398,'total','voucher'),(427,'module','featured'),(471,'module','html'),(433,'module','bestseller'),(434,'module','latest'),(435,'module','special'),(436,'module','affiliate'),(437,'module','information'),(438,'module','tm_slideshow'),(440,'module','olark'),(458,'module','filter'),(460,'module','tm_module_tab'),(467,'module','tm_blog_articles'),(469,'module','tm_blog_category'),(472,'module','tm_newsletter_popup'),(475,'module','slideshow'),(476,'module','carousel'),(477,'feed','google_base'),(479,'payment','pagseguro'),(481,'shipping','free');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter`
--

LOCK TABLES `oc_filter` WRITE;
/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_description`
--

LOCK TABLES `oc_filter_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group`
--

LOCK TABLES `oc_filter_group` WRITE;
/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group_description`
--

LOCK TABLES `oc_filter_group_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_geo_zone`
--

LOCK TABLES `oc_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_geo_zone` VALUES (3,'UK VAT Zone','UK VAT','2010-02-26 22:33:24','2009-01-06 23:26:25'),(4,'UK Shipping','UK Shipping Zones','2010-12-15 15:18:13','2009-06-23 01:14:53'),(5,'Bairro Vila Olímpia','Frete grátis para entregas no bairro da Vila Olímpia, em São Paulo','0000-00-00 00:00:00','2016-09-29 17:35:51');
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information`
--

LOCK TABLES `oc_information` WRITE;
/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
INSERT INTO `oc_information` VALUES (3,1,3,0),(4,1,1,1),(5,1,4,0),(6,1,2,1);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_description`
--

LOCK TABLES `oc_information_description` WRITE;
/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
INSERT INTO `oc_information_description` VALUES (6,4,'Normas de Entrega','&lt;div class=&quot;delivery_page&quot;&gt;\r\n&lt;h4&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 18.3333px; line-height: 14.2667px; font-weight: bold; color: rgb(239, 198, 49); font-family: Arial;&quot;&gt;NORMAS DE ENTREGA&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;A nossa missão é sempre buscar entregar todos os pedidos dentro das condições escolhidas pelo cliente.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;No entanto, o prazo de entrega de seu pedido pode variar de acordo com as dificuldades encontradas para chegar ao destino final ou até por condições externas fora de nosso alcance.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;Os pedidos serão entregues de acordo com o horário da finalização da compra. Isso ocorre, devido a prévio agendamento de entregas anteriores, a fim de seguirmos um cronograma de logística e devido ao tempo necessário para realizar todo processo de venda, confecção e entrega das flores.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;Logo, não é possível agendar o horário exato de entrega, mas faremos o possível para que o seu presente chegue na hora marcada!&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;O pedido mínimo para agendar uma entrega é de R$40,00 e já inclui um cartão básico branco para presente.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;As entregas são feitas de segunda à sexta, das 8:30h às 18h e para entregas urgentes segue abaixo os horários limite para solicitação:&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; font-weight: bold; color: rgb(99, 99, 99);&quot;&gt;Períodos de entrega: &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Limite para finalização do pedido:&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;Das 08:30h às 13h &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Até 15h do dia anterior&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;Das 13h às 18h &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Até às 13h do mesmo dia&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; font-weight: bold; color: rgb(99, 99, 99);&quot;&gt;Entregas em datas comemorativas:&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;Devido ao grande número de encomendas em datas comemorativas especiais como Dia das Mães, Dia dos Namorados, Natal, Dia da Mulher, Dia da Secretária, entre outras, o horário escolhido para entrega será levado como referência, porém os pedidos solicitados para essas datas serão entregues entre 8:30h e 18h. De qualquer forma, estaremos nos esforçando ao máximo para realizar a entrega no período escolhido na compra.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;Exigências:&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;Pedidos exigindo que as flores sejam exclusivamente entregues nas mãos do destinatário não podem ser garantidos. Nosso compromisso é de entregar seu pedido no endereço de destino. De forma alguma podemos adentrar em portarias, casas, empresas, escritórios ou em qualquer outra localidade sem autorização dos responsáveis. Não se encontrando o destinatário, sempre que possível, deixaremos com algum responsável que esteja no local.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;Entregas em hotéis, flats, hospitais, quartéis, casas de show e etc… Nossa responsabilidade termina com a entrega de seu pedido na Consierge ou ao responsável pelo encaminhamento ao destinatário.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; font-weight: bold; color: rgb(99, 99, 99);&quot;&gt;Endereços incorretos:&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;Caso o endereço fornecido para entrega esteja incorreto, ou, seja inexistente, entraremos em contato com o destinatário para verificar onde podemos encontra-lo. Caso não seja possível através do telefone fornecido, entraremos em contato com o comprador para que possamos tomar as devidas providências. Mudanças de endereços podem gerar novos custos. No caso de não houver ninguém no endereço de entrega,　entraremos em contato por telefone com o destinatário a fim de agendar um novo horário. Dependendo da área a ser entregue novamente, poderá gerar novos custos. No caso de não haver entrega para a cidade/bairro solicitado, estaremos entrando em contato imediato, para comunicar o cancelamento de seu pedido.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;Atenção: caso a compra seja finalizada com cartão de crédito, e haja dificuldades em aprovar o débito, ou depósitos não realizados e ou não identificados podem ocasionar atrasos nas entregas e até o cancelamento do pedido.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;Taxas de entrega: Ao realizar a compra, confira as taxas de entrega estabelecidas em cada bairro. Os preços visualizados ao lado dos arranjos são unicamente dos produtos.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; font-weight: bold; color: rgb(99, 99, 99);&quot;&gt;Termos de garantia:&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;Estaremos sempre enviando flores frescas, de alta qualidade, a fim de mantermos nossa responsabilidade e missão de distribuir beleza e promover boas recordações. Se por alguma razão, você não ficar satisfeito com sua compra, por favor, contate-nos imediatamente através do e-mail: casaflores@casaflores.com.br e estaremos providenciando uma solução no menor espaço de tempo possível.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; font-weight: bold; color: rgb(99, 99, 99);&quot;&gt;Política de substituição de flores:&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;Devido a grande variedade de flores que disponibilizamos, por ser um artigo altamente sazonal que depende de condições climáticas (sensível a qualquer variação de tempo e temperatura), altamente perecível, e até por motivo de grande procura (períodos de pico), colocamos aqui nossa política de substituição de flores no caso de haver ocasional indisponibilidade de algumas variedades de flores encontradas em nossos arranjos. Caso não haja a cor específica da flor escolhida, entraremos em contato a fim de achar uma solução, se, por ventura, não conseguirmos contata-lo, estaremos enviando flores cuja cor esteja mais próxima das opções escolhidas no pedido.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;Nossos floristas sempre que necessário poderão substituir flores, porém sempre procurando ao máximo evitar descaracterizar do arranjo escolhido e sempre substituindo por flores de igual ou maior valor ou ainda se necessário por uma maior quantidade de outras flores que alcance o valor do arranjo comprado.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 19.3333px; line-height: 14.2667px; font-weight: bold; color: rgb(239, 198, 49);&quot;&gt;FORMAS DE PAGAMENTO:&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;Para pagamento na loja temos as seguintes opções de pagamento:&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;1. Cartão de Débito bandeiras Master e Visa&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;2. Cartão de Crédito bandeiras Master e Visa&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;3. Dinheiro&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;4. Cheque&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;5. Faturado ( somente para clientes cadastrados )&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;6. Depósito Bancário no Banco Itaú&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Dados bancários:&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;Titular: Gilberto Andreuccetti - ME&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;CNPJ: 11.448.522/0001-77&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Banco: Itaú&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Agência: 3130 | Conta corrente: 22043-1&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; font-weight: bold; color: rgb(99, 99, 99);&quot;&gt;IMPORTANTE:&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;No caso de transferência / depósito / TED em conta corrente é obrigatório encaminhar o comprovante, indicando o assunto “Comprovante de Depósito e Descrição da compra para que ocorra a liberação da mesma”.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;Envie seu comprovante para o e-mail: casaflores@casafores.com.br&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; color: rgb(99, 99, 99);&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; font-weight: bold; color: rgb(99, 99, 99);&quot;&gt;OBS.:&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 13.3333px; line-height: 14.2667px; font-weight: bold; color: rgb(99, 99, 99);&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 13.3333px; line-height: 14.2667px; font-family: Arial; color: rgb(99, 99, 99);&quot;&gt;Caso a compra seja finalizada com cartão de crédito e haja dificuldades em aprovar o débito ou depósitos não realizados e/ou não identificados, pode ocorrer atraso nas entrega e até o cancelamento do pedido.&lt;/span&gt;&lt;/p&gt;&lt;div style=&quot;text-align: justify;&quot;&gt;&lt;br&gt;&lt;/div&gt;\r\n\r\n&lt;/h4&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;','Normas de Entrega','Normas de Entrega','Normas de Entrega'),(5,4,'Termos e Condições','&lt;div class=&quot;row terms_conditions_page&quot;&gt;\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;h4&gt;entire agreement&lt;/h4&gt;\r\n\r\n		&lt;p&gt;If you require a complete delivery of your orders, please enter an X in the Complete Delivery field on the shipping screen of the customer master record. The indicator is copied into the order header, which you can also use for the purpose. &lt;/p&gt;\r\n\r\n		&lt;h4&gt;controlling terms&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Buyer expressly agrees that Seller’s Invoice and these Terms and Conditions of Sale represent the complete agreement of the parties with respect to the sale of the product(s) listed on the Invoice and no different or additional terms or conditions in Buyer’s purchase order or in any other prior or subsequent communications in any way adding to, modifying or otherwise changing these Terms and Conditions of Sale shall be binding upon Seller.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;acceptance of orders&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Seller may accept buyer’s offer to purchase and shall be bound to supply the applicable Goods in accordance with these terms and conditions either by execution of the acknowledgment copy of the order, or acceptable electronic transmission, delivery of the Goods to CAI or by any other statement, act or course of conduct which constitutes acceptance under applicable law.\r\n&lt;/p&gt;\r\n\r\n		&lt;h4&gt;prices&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Unless otherwise indicated on the face of the invoice, all prices are quoted on a per pound basis. Buyer is responsible for any tax or government charges imposed upon the sale or transfer of the Product. Buyer shall not have any right to set off any amounts due hereunder against any amounts which may become payable to Seller under any other agreement.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;delivery&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Unless otherwise agrees in writing signed by officer of Seller, all delivery dates are estimates Seller shall use its reasonable efforts to deliver all Product within the time specified; however, in no case shall Seller be liable for any expense, loss or damage whatsoever suffered by Buyer as a result of the Seller’s failure to deliver Product by the specified date.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;transportation and risk of loss&lt;/h4&gt;\r\n\r\n		&lt;p&gt;The method and route of shipment are at Seller’s discretion unless Buyer timely supplies explicit instructions otherwise. Title to the Product passes to Buyer when Product is delivered to the selected carrier, even if Seller made a nonconforming tender. Buyer attempts to revoke acceptance of the Product, or Buyer repudiates this document after the Products have been identified hereto.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;cancellation or modification&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Any order placed with and accepted by Seller may be canceled by Buyer only upon Seller’s approval in a writing signed by an officer of Seller and upon terms that indemnify Seller against any loss. Seller will not accept order cancellations once a product has been delivered to a carrier, without charging a cancellation fee of twenty-five percent (25%) of order value to recover retrieval costs incurred. Seller will not accept cancellations of special orders of non-standard, non-price list products. Seller may cancel all or any part of this order and discontinue its performance hereunder without liability to Buyer in the event Buyer materially breaches this contract, becomes insolvent, is the subject to bankruptcy protection, or is the subject of a receivership, liquidation, dissolution or similar proceeding.\r\n&lt;/p&gt;\r\n\r\n		&lt;h4&gt;taxes&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Buyer is responsible for any tax or governmental charge imposed upon the sale or transfer of any product. Any such tax or governmental charge will be added to the total invoice amount. All prices are FOB Seller’s facilities. Applicable freight costs will be added to the invoice.&lt;/p&gt;\r\n\r\n	&lt;/div&gt;\r\n\r\n	&lt;div class=&quot;col-sm-6&quot;&gt;\r\n		&lt;h4&gt;warranty and disclaimer&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Seller warrants that the purchased Product is free from defects in materials and workmanship at the time of delivery. If an analysis is stated on the face of the Invoice, it is not intended to be a complete analysis and is not to be regarded as a specification or warranty, unless specifically stated in writing to be such. \r\n&lt;/p&gt;\r\n\r\n		&lt;h4&gt;limitation of liability&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Buyer acknowledges and agrees that seller’s liability for any claims with respect to the products shall not exceed the amount paid by buyer for the products under the invoice. Such limitations on seller’s liability hereunder shall apply even if seller’s liability is due in whole or in part to its own negligence. Any action by or on behalf of Buyer or its successors or assigns for breach of this document must be commenced within one (1) year after the cause of action as accrued.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;return of material&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Upon delivery of Product, Buyer shall have five (5) days to inspect Product and notify Seller, in writing, of any defective goods or other cause for rejection. Buyer agrees that five (5) day period provides Buyer a reasonable opportunity to inspect the Product. Such notification shall identify each and every reason for any rejection of Product. Buyer’s failure to reject Product within such five (5) day period shall constitute a waiver of Buyer’s inspection right and an unqualified and irrevocable acceptance of the Product by Buyer.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;indemnity&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Buyer shall defend, indemnify and hold harmless Seller and its affiliated or related companies from and against any and all claims, losses, liability, damages and expenses including, but not limited to, attorneys’ fees and cost of defense arising from, related to or in any way connected with or alleged to arise from or out of any asserted deficiencies or defects in Product caused by any alteration or modification thereof by Buyer with or without Seller’s consent, or improper handling or storage by Buyer, the breach of any term or condition stated herein, Buyer’s failure to label Product or Buyer’s improper labeling of Product regardless of whether the labeling was done with or without the advice of Seller, or any act or omission of Buyer including any Claims for or resulting from any injury to person (including death) or damage to property or for economic loss, several or comparative negligence, breach of agreement, breach of warranty or other breach of duty of or by Indemnitee or as a result of Indemnitee’s strict or other product liability. The foregoing indemnification shall not be construed to eliminate or in any way reduce any other indemnification or right which Indemnitee has by law.&lt;/p&gt;\r\n\r\n		&lt;h4&gt;payment&lt;/h4&gt;\r\n\r\n		&lt;p&gt;Net cash thirty (30) days from the date of Invoice. Amounts not paid within thirty (30) days are overdue and shall accrue interest at a rate of one and one-half percent (1-1/2%) per month or the highest allowed by law, whichever is less. Buyer shall reimburse Seller for any costs incurred in collecting past due sums or any other amounts owed by Buyer for any reason whatsoever, including, but not limited to, court costs and attorneys’ fees.\r\n&lt;/p&gt;\r\n\r\n		&lt;h4&gt;governing law and arbitration&lt;/h4&gt;\r\n\r\n		&lt;p&gt;This document shall be interpreted and governed by the law of the State of America, excluding its conflicts of laws rules. The parties specifically exclude the application of the United Nations Convention on the Sale of Goods.\r\n&lt;/p&gt;\r\n\r\n	&lt;/div&gt;\r\n\r\n&lt;/div&gt;','Termos e Condições','',''),(3,4,'Políticas de Privacidade','&lt;div class=&quot;privacy_page&quot;&gt;\r\n    &lt;ol&gt;\r\n        &lt;li&gt;\r\n            &lt;h4&gt;General information&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;Welcome to our Privacy Policy page! When you use our store services, you trust us with your information. This Privacy Policy is meant to help you understand what data we collect, why we collect it, and what we do with it. When you share information with us, we can make our services even better for you. For instance, we can show you more relevant search results and ads, help you connect with people or to make sharing with others quicker and easier. As you use our services, we want you to be clear how we’re using information and the ways in which you can protect your privacy. This is important; we hope you will take time to read it carefully. Remember, you can find controls to manage your information and protect your privacy and security. We’ve tried to keep it as simple as possible. &lt;/p&gt;\r\n\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n        &lt;li&gt;\r\n            &lt;h4&gt;Right to access, correct and delete data and to object to data processing&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;Our customers have the right to access, correct and delete personal data relating to them, and to object to the processing of such data, by addressing a written request, at any time. The Company makes every effort to put in place suitable precautions to safeguard the security and privacy of personal data, and to prevent it from being altered, corrupted, destroyed or accessed by unauthorized third parties. However, the Company does not control each and every risk related to the use of the Internet, and therefore warns the Site users of the potential risks involved in the functioning and use of the Internet. The Site may include links to other web sites or other internet sources. As the Company cannot control these web sites and external sources, the Company cannot be held responsible for the provision or display of these web sites and external sources, and may not be held liable for the content, advertising, products, services or any other material available on or from these web sites or external sources.  &lt;/p&gt;\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n        &lt;li&gt;\r\n            &lt;h4&gt;Management of personal data&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;You can view or edit your personal data online for many of our services. You can also make choices about our collection and use of your data. How you can access or control your personal data will depend on which services you use. You can choose whether you wish to receive promotional communications from our store by email, SMS, physical mail, and telephone. If you receive promotional email or SMS messages from us and would like to opt out, you can do so by following the directions in that message. You can also make choices about the receipt of promotional email, telephone calls, and postal mail by visiting and signing into Company Promotional Communications Manager, which allows you to update contact information, manage contact preferences, opt out of email subscriptions, and choose whether to share your contact information with our partners. These choices do not apply to mandatory service communications that are part of certain store services.&lt;/p&gt;\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n        &lt;li&gt;\r\n            &lt;h4&gt;Information We Collect&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;Our store collects data to operate effectively and provide you the best experiences with our services. You provide some of this data directly, such as when you create a personal account. We get some of it by recording how you interact with our services by, for example, using technologies like cookies, and receiving error reports or usage data from software running on your device. We also obtain data from third parties (including other companies). For example, we supplement the data we collect by purchasing demographic data from other companies. We also use services from other companies to help us determine a location based on your IP address in order to customize certain services to your location. The data we collect depends on the services and features you use. \r\n&lt;/p&gt;\r\n\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n        &lt;li&gt;\r\n            &lt;h4&gt;How We Use Your Information&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;Our store uses the data we collect for three basic purposes: to operate our business and provide (including improving and personalizing) the services we offer, to send communications, including promotional communications, and to display advertising. In carrying out these purposes, we combine data we collect through the various store services you use to give you a more seamless, consistent and personalized experience. However, to enhance privacy, we have built in technological and procedural safeguards designed to prevent certain data combinations. For example, we store data we collect from you when you are unauthenticated (not signed in) separately from any account information that directly identifies you, such as your name, email address or phone number.\r\n&lt;/p&gt;\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n        &lt;li&gt;\r\n            &lt;h4&gt;Sharing Your Information&lt;/h4&gt;\r\n\r\n\r\n\r\n            &lt;p&gt;We share your personal data with your consent or as necessary to complete any transaction or provide any service you have requested or authorized. For example, we share your content with third parties when you tell us to do so. When you provide payment data to make a purchase, we will share payment data with banks and other entities that process payment transactions or provide other financial services, and for fraud prevention and credit risk reduction. In addition, we share personal data among our controlled affiliates and subsidiaries. We also share personal data with vendors or agents working on our behalf for the purposes described in this statement. For example, companies we\'ve hired to provide customer service support or assist in protecting and securing our systems and services may need access to personal data in order to provide those functions. In such cases, these companies must abide by our data privacy and security requirements and are not allowed to use personal data they receive from us for any other purpose. We may also disclose personal data as part of a corporate transaction such as a merger or sale of assets.&lt;/p&gt;\r\n\r\n        &lt;/li&gt;\r\n\r\n\r\n    &lt;/ol&gt;\r\n&lt;/div&gt;','Políticas de Privacidade','',''),(4,4,'Sobre a Casa Flores','&lt;h3&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Quem somos:&lt;br&gt;&lt;/span&gt;&lt;/h3&gt;&lt;h4&gt;Com mais de 16 anos de experiência, a Casa Flores é uma empresa que une técnica, criatividade, bom gosto e cordialidade no atendimento. Somos uma empresa familiar e que traz no seu DNA a paixão pelas flores e pelo bairro da Vila Olímpia, onde tudo começou.&lt;br&gt;&lt;h4&gt;Atendemos a grande São Paulo na confecção de arranjos e buques,presentes com flores, assinaturas de flores, paisagismo e decoração de eventos.&lt;/h4&gt;&lt;/h4&gt;&amp;nbsp;&lt;br&gt;&lt;h3&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Missão:&amp;nbsp;&lt;/span&gt;&lt;/h3&gt;&lt;h4&gt;Tocar o coração das pessoas através das flores.&lt;/h4&gt;&lt;h4&gt;&lt;br&gt;&lt;/h4&gt;&lt;h4 style=&quot;font-family: \'Open Sans\', sans-serif; color: rgb(102, 102, 102);&quot;&gt;Buscamos sempre entender as necessidades e expectativas dos nossos clientes e oferecer soluções completas de compra trazendo comodidade e uma experiência diferenciada.&amp;nbsp;&lt;/h4&gt;&lt;h4&gt;Sabendo que as flores expressam nossas emoções e transmitem nossos sentimentos, a Casa Flores faz do seu trabalho uma arte, usando as flores como principal matéria-prima.&lt;/h4&gt;','Sobre a Casa Flores','Sobre a Casa Flores','Sobre a Casa Flores');
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_layout`
--

LOCK TABLES `oc_information_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
INSERT INTO `oc_information_to_layout` VALUES (4,0,4),(6,0,0),(3,0,0),(5,0,0);
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_store`
--

LOCK TABLES `oc_information_to_store` WRITE;
/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
INSERT INTO `oc_information_to_store` VALUES (3,0),(4,0),(5,0),(6,0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_language`
--

LOCK TABLES `oc_language` WRITE;
/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
INSERT INTO `oc_language` VALUES (4,'Português (BR)','pt-br','pt_BR.UTF-8,pt_BR,pt-br,pt_br,portuguese,portugues','br.png','portuguese-br',1,1);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout`
--

LOCK TABLES `oc_layout` WRITE;
/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
INSERT INTO `oc_layout` VALUES (1,'Home'),(2,'Product'),(3,'Category'),(4,'Default'),(5,'Manufacturer'),(6,'Account'),(7,'Checkout'),(8,'Contact'),(9,'Sitemap'),(10,'Affiliate'),(11,'Information'),(12,'Compare'),(13,'Search'),(14,'Blog');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1023 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_module`
--

LOCK TABLES `oc_layout_module` WRITE;
/*!40000 ALTER TABLE `oc_layout_module` DISABLE KEYS */;
INSERT INTO `oc_layout_module` VALUES (910,10,'bestseller.43','column_left',2),(972,5,'tm_fbbox.42','footer_top',2),(1022,1,'banner.99','content_top',0),(908,10,'affiliate','column_left',1),(970,5,'account','column_left',1),(1021,1,'featured.51','content_top',3),(1020,1,'tm_fbbox.42','footer_top',2),(1019,1,'tm_slideshow.46','header_top',1),(907,6,'tm_fbbox.42','footer_top',2),(911,10,'tm_fbbox.42','footer_top',2),(990,14,'tm_fbbox.42','footer_top',2),(973,3,'tm_fbbox.42','footer_top',2),(925,7,'tm_fbbox.42','footer_top',2),(927,12,'tm_fbbox.42','footer_top',2),(930,8,'tm_fbbox.42','footer_top',2),(932,4,'tm_fbbox.42','footer_top',2),(934,11,'tm_fbbox.42','footer_top',2),(971,5,'latest.69','column_left',2),(940,2,'tm_fbbox.42','footer_top',2),(974,13,'tm_fbbox.42','footer_top',2),(946,9,'tm_fbbox.42','footer_top',2),(1017,1,'banner.94','content_top',2),(1018,1,'banner.93','content_top',4),(1016,1,'tm_newsletter_popup.95','content_top',5),(1015,1,'banner.33','content_top',1);
/*!40000 ALTER TABLE `oc_layout_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=290 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_route`
--

LOCK TABLES `oc_layout_route` WRITE;
/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
INSERT INTO `oc_layout_route` VALUES (254,6,0,'account/%'),(255,10,0,'affiliate/%'),(278,3,0,'product/category'),(289,1,0,'common/home'),(271,2,0,'product/product'),(269,11,0,'information/information'),(265,7,0,'checkout/%'),(267,8,0,'information/contact'),(273,9,0,'information/sitemap'),(268,4,0,''),(277,5,0,'product/manufacturer'),(266,12,0,'product/compare'),(279,13,0,'product/search'),(284,14,0,'simple_blog/category'),(283,14,0,'simple_blog/article'),(282,14,0,'simple_blog/author'),(285,14,0,'simple_blog/search');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class`
--

LOCK TABLES `oc_length_class` WRITE;
/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
INSERT INTO `oc_length_class` VALUES (1,1.00000000),(2,10.00000000),(3,0.39370000);
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class_description`
--

LOCK TABLES `oc_length_class_description` WRITE;
/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
INSERT INTO `oc_length_class_description` VALUES (1,4,'Centimeter','cm'),(2,4,'Millimeter','mm'),(3,4,'Inch','in');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_location`
--

DROP TABLE IF EXISTS `oc_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_location`
--

LOCK TABLES `oc_location` WRITE;
/*!40000 ALTER TABLE `oc_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer`
--

LOCK TABLES `oc_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
INSERT INTO `oc_manufacturer` VALUES (11,'Casa Flores','catalog/12733998_1530598097241152_6638920351497627041_n (1).jpg',0),(12,'Casa Flores e Bistrô dos Pães','',0),(13,'Casa Flores e Intt Cosméticos','',0),(14,'Casa Flores e Atelier Otilia','',0),(15,'Casa Flores e Bendito Brigadeiro','',0),(16,'Casa Flores, Atelier Otilia e Bendito Brigadeiro','',0);
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

LOCK TABLES `oc_manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_to_store` VALUES (11,0),(12,0),(13,0),(14,0),(15,0),(16,0);
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_marketing`
--

DROP TABLE IF EXISTS `oc_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_marketing`
--

LOCK TABLES `oc_marketing` WRITE;
/*!40000 ALTER TABLE `oc_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=214 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_modification`
--

LOCK TABLES `oc_modification` WRITE;
/*!40000 ALTER TABLE `oc_modification` DISABLE KEYS */;
INSERT INTO `oc_modification` VALUES (97,'TM label sale','13','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM label sale</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>13</code>\r\n	<file path=\"catalog/controller/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'button_compare\'] = $this->language->get(\'button_compare\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'text_sale\'] = $this->language->get(\'text_sale\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'button_compare\'] = $this->language->get(\'button_compare\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'text_sale\'] = $this->language->get(\'text_sale\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'button_compare\'] = $this->language->get(\'button_compare\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'text_new\'] = $this->language->get(\'text_new\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']      = \'Ex Tax:\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'text_sale\']      = \'Sale\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']      = \'Ex Tax:\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'text_sale\']      = \'Sale\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']      = \'Ex Tax:\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'text_new\']      = \'New\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$_[\'text_sale\']      = \'Verkauf\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$_[\'text_sale\']      = \'Verkauf\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$_[\'text_new\']      = \'Neue \';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$_[\'text_sale\']      = \'Скидка\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$_[\'text_sale\']      = \'Скидка\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$_[\'text_new\']      = \'Новый \';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-06-22 15:38:41'),(163,'TM Special ','12','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Special </name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>12</code>\r\n	<file path=\"catalog/controller/module/special.php\">\r\n		<operation>\r\n            <search><![CDATA[\r\n				public function index($setting) {\r\n				]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n					static $module = 0;\r\n				]]></add>\r\n        </operation>\r\n        	<operation>\r\n            <search><![CDATA[\r\n				if (file_exists(DIR_TEMPLATE . $this->config->get(\'config_template\') . \'/template/module/special.tpl\')) {\r\n				]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n					$data[\'module\'] = $module++;\r\n				]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n				$data[\'products\'][] = array(\r\n				]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n				$desc = html_entity_decode($result[\'description\'], ENT_QUOTES, \'UTF-8\');\r\n            $pos = strpos($desc,\'<iframe\');\r\n  			if (is_int($pos)) {\r\n                $pos2 = strpos($desc, \'</iframe>\') + 9;\r\n                $video = substr($desc, $pos, $pos2);\r\n                $quick_descr = str_replace($video, \'\', $desc);\r\n            } else{\r\n               $quick_descr = $desc;\r\n            }\r\n				]]></add>\r\n        </operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				\'rating\'      => $rating,\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n					\'reviews\'    => $review_total,\r\n					\'author\'     => $result[\'manufacturer\'],\r\n					\'description1\' => $quick_descr,\r\n					\'manufacturers\' =>$data[\'manufacturers\'] = $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\r\n					\'model\' => $result[\'model\'],\r\n					\'text_availability\' => $result[\'quantity\'],\r\n					\'allow\' => $result[\'minimum\'],\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$this->load->model(\'tool/image\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n						$this->load->model(\'catalog/manufacturer\');\r\n						$this->language->load(\'product/product\');\r\n						$this->language->load(\'product/category\');\r\n						$this->load->model(\'catalog/review\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_quick\'] = $this->language->get(\'text_quick\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'button_wishlist\'] = $this->language->get(\'button_wishlist\');\r\n				$data[\'button_compare\'] = $this->language->get(\'button_compare\');	\r\n				$data[\'button_details\'] = $this->language->get(\'button_details\');\r\n				$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\r\n				$data[\'text_category\'] = $this->language->get(\'text_category\');\r\n				$data[\'text_model\'] = $this->language->get(\'text_model\');\r\n				$data[\'text_availability\'] = $this->language->get(\'text_availability\');\r\n				$data[\'text_instock\'] = $this->language->get(\'text_instock\');\r\n				$data[\'text_outstock\'] = $this->language->get(\'text_outstock\');\r\n				$data[\'reviews\'] = $this->language->get(\'reviews\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'text_product\'] = $this->language->get(\'text_product\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ foreach ($results as $result) { ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$review_total = $this->model_catalog_review->getTotalReviewsByProductId($result[\'product_id\']);\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'heading_title\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'text_category\'] = \'Categories\';\r\n				$_[\'text_manufacturer\'] = \'Brand:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Availability:\';\r\n				$_[\'text_instock\'] = \'In Stock\';\r\n				$_[\'text_outstock\'] = \'Out Stock\';\r\n				$_[\'text_price\']        = \'Price: \';\r\n				$_[\'text_tax\']          = \'Ex Tax:\';\r\n				$_[\'text_quick\']          = \'Quick View\'; \r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'reviews\']          = \'reviews \';\r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']		= \'ohne Steuer\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'text_category\'] = \'Kategorie:\';\r\n				$_[\'text_manufacturer\'] = \'Marke:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Verfugbarkeit:\';\r\n				$_[\'text_instock\'] = \'Vorratig\';\r\n				$_[\'text_outstock\'] = \'Heraus \';\r\n				$_[\'text_price\']        = \'Preis: \';\r\n				$_[\'text_tax\']          = \'Preis ohne Steuer:\';\r\n				$_[\'text_quick\']          = \'Vorschau\'; \r\n				$_[\'text_product\']          = \'Artikel {current} von {total} \';\r\n				$_[\'text_sale\']      = \'Verkauf\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Подробнее\';\r\n				$_[\'text_category\'] = \'Категория\';\r\n				$_[\'text_manufacturer\'] = \'Брєнд\';\r\n				$_[\'text_model\'] = \'Модель:\';\r\n				$_[\'text_availability\'] = \'Наличие:\';\r\n				$_[\'text_instock\'] = \'Доступно\';\r\n				$_[\'text_outstock\'] = \'нет в наличии \';\r\n				$_[\'text_price\']        = \'Цена: \';\r\n				$_[\'text_tax\']          = \'налог:\';\r\n				$_[\'text_quick\']          = \'Быстрый просмотр\'; \r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				$_[\'text_sale\']      = \'Скидка\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>',1,'2015-09-15 11:01:26'),(90,'TM Lazy load','TM Lazy load','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Lazy load</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>TM Lazy load</code>\r\n	<file path=\"catalog/controller/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[ \'thumb\'       => $image, ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				\'img-width\'       => $setting[\'width\'],\r\n				\'img-height\'       => $setting[\'height\'],\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n		<file path=\"catalog/controller/module/bestseller.php\">\r\n		<operation>\r\n			<search><![CDATA[ \'thumb\'       => $image, ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				\'img-width\'       => $setting[\'width\'],\r\n				\'img-height\'       => $setting[\'height\'],\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n		<file path=\"catalog/controller/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[ \'thumb\'       => $image, ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				\'img-width\'       => $setting[\'width\'],\r\n				\'img-height\'       => $setting[\'height\'],\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n		<file path=\"catalog/controller/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[ \'thumb\'       => $image, ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				\'img-width\'       => $setting[\'width\'],\r\n				\'img-height\'       => $setting[\'height\'],\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/controller/module/tm_module_tab.php\">\r\n		<operation>\r\n			<search><![CDATA[ \'thumb\'       => $image, ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				\'img-width\'       => $setting[\'width\'],\r\n				\'img-height\'       => $setting[\'height\'],\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/controller/product/*.php\">\r\n		<operation>\r\n			<search><![CDATA[ \'thumb\'       => $image, ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				\'img-width\'       => $this->config->get(\'config_image_product_width\'),\r\n				\'img-height\'       => $this->config->get(\'config_image_product_height\'),\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-06-22 15:37:48'),(91,'TM Top Menu All Levels','9','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Top Menu All Levels</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>9</code>\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'language\'] = $this->load->controller(\'common/language\');\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$this->load->model(\'design/topmenu\');\r\n			$data[\'categories_tm\'] = $this->model_design_topmenu->getMenu();\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-06-22 15:37:50'),(92,'TM NewsLetter','TM Newsletter','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM NewsLetter</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>TM Newsletter</code>\r\n	<file path=\"admin/controller/marketing/contact.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$this->load->model(\'sale/order\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$this->load->model(\'module/tm_newsletter\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			$results = $this->model_sale_customer->getCustomers($customer_data);\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$guest_results = $this->model_module_tm_newsletter->getNewsletters();\r\n			foreach ($guest_results as $result) {\r\n				$emails[] = $result[\'tm_newsletter_email\'];\r\n			}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/account/register.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$this->load->model(\'account/customer\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$this->load->model(\'module/tm_newsletter\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			$this->customer->login($this->request->post[\'email\'], $this->request->post[\'password\']);\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$this->model_module_tm_newsletter->deleteNewsletter($this->request->post[\'email\']);\r\n			]]></add>\r\n		</operation>\r\n	</file>	\r\n</modification>',1,'2015-06-22 15:37:52'),(93,'Tm PathTheme','14','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>Tm PathTheme</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>14</code>\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'name\'] = $this->config->get(\'config_name\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'theme_path\'] = $this->config->get(\'config_template\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/common/footer.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$this->load->language(\'common/footer\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'theme_path\'] = $this->config->get(\'config_template\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/account/recurring.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'button_continue\'] = $this->language->get(\'button_continue\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'theme_path\'] = $this->config->get(\'config_template\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-06-22 15:37:54'),(94,'TM Product Category image','10','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Product Category image</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>10</code>\r\n	<file path=\"catalog/controller/product/category.php\">\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[  \'href\'  => $this->url->link(\'product/category\', \'path=\' . $this->request->get[\'path\'] . \'_\' . $result[\'category_id\'] . $url)]]></search>\r\n			<add position=\"after\"><![CDATA[,\'thumb\' => $image]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[  $data[\'categories\'][] = array(]]></search>\r\n			<add position=\"before\"><![CDATA[  $image = $this->model_tool_image->resize($result[\'image\'], $this->config->get(\'config_image_category_width\'), $this->config->get(\'config_image_category_height\'));   ]]></add>\r\n		</operation>\r\n		\r\n		\r\n	</file>\r\n</modification>',1,'2015-06-22 15:38:00'),(95,'TM Live search','11','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Live search</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>11</code>\r\n	<file path=\"catalog/controller/product/search.php\">\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[ class ControllerProductSearch extends Controller { ]]></search>\r\n			<add  position=\"after\"><![CDATA[\r\n				public function ajax()\r\n	{\r\n		// Contains results\r\n		$data = array();\r\n		if( isset($this->request->get[\'keyword\']) ) {\r\n			// Parse all keywords to lowercase\r\n			$keywords = strtolower( $this->request->get[\'keyword\'] );\r\n			// Perform search only if we have some keywords\r\n			if( strlen($keywords) >= 3 ) {\r\n				$parts = explode( \' \', $keywords );\r\n				$add = \'\';\r\n				// Generating search\r\n				foreach( $parts as $part ) {\r\n					$add .= \' AND (LOWER(pd.name) LIKE \"%\' . $this->db->escape($part) . \'%\"\';\r\n					$add .= \' OR LOWER(p.model) LIKE \"%\' . $this->db->escape($part) . \'%\")\';\r\n				}\r\n				$add = substr( $add, 4 );\r\n				$sql  = \'SELECT pd.product_id, pd.name, p.model, p.image FROM \' . DB_PREFIX . \'product_description AS pd \';\r\n				$sql .= \'LEFT JOIN \' . DB_PREFIX . \'product AS p ON p.product_id = pd.product_id \';\r\n				$sql .= \'LEFT JOIN \' . DB_PREFIX . \'product_to_store AS p2s ON p2s.product_id = pd.product_id \';\r\n				$sql .= \'WHERE \' . $add . \' AND p.status = 1 \';\r\n				$sql .= \'AND pd.language_id = \' . (int)$this->config->get(\'config_language_id\');\r\n				$sql .= \' AND p2s.store_id =  \' . (int)$this->config->get(\'config_store_id\'); \r\n				$sql .= \' ORDER BY p.sort_order ASC, LOWER(pd.name) ASC, LOWER(p.model) ASC\';\r\n				$sql .= \' LIMIT 15\';\r\n				$res = $this->db->query( $sql );\r\n				if( $res ) {\r\n					$data = ( isset($res->rows) ) ? $res->rows : $res->row;\r\n					$this->load->model(\'tool/image\'); \r\n					// For the seo url stuff\r\n					$basehref = \'product/product&keyword=\' . $this->request->get[\'keyword\'] . \'&product_id=\';\r\n					foreach( $data as $key => $values ) {\r\n						if ( $values[\'image\'] ) {\r\n							$image = $this->model_tool_image->resize($values[\'image\'], $this->config->get(\'config_image_cart_width\'), $this->config->get(\'config_image_cart_height\'));\r\n						}\r\n						else {\r\n							$image = $this->model_tool_image->resize(\'no_image.jpg\', $this->config->get(\'config_image_cart_width\'), $this->config->get(\'config_image_cart_height\'));\r\n						}\r\n						$data[$key] = array(\r\n							\'name\' => htmlspecialchars_decode($values[\'name\'] . \' (\' . $values[\'model\'] . \')\', ENT_QUOTES),\r\n							\'href\' => $this->url->link($basehref . $values[\'product_id\']),\r\n							\'image\' =>$image\r\n						);\r\n					}\r\n				}\r\n			}\r\n		}\r\n		echo json_encode( $data );\r\n	}\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-06-22 15:38:02'),(160,'TM BestSellers ','bestsellers','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM BestSellers </name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>bestsellers</code>\r\n	<file path=\"catalog/controller/module/bestseller.php\">\r\n		<operation>\r\n            <search><![CDATA[\r\n				public function index($setting) {\r\n				]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n					static $module = 0;\r\n				]]></add>\r\n        </operation>\r\n        	<operation>\r\n            <search><![CDATA[\r\n				if (file_exists(DIR_TEMPLATE . $this->config->get(\'config_template\') . \'/template/module/bestseller.tpl\')) {\r\n				]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n					$data[\'module\'] = $module++;\r\n				]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n				$data[\'products\'][] = array(\r\n				]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n			$desc = html_entity_decode($result[\'description\'], ENT_QUOTES, \'UTF-8\');\r\n            $pos = strpos($desc,\'<iframe\');\r\n  			if (is_int($pos)) {\r\n                $pos2 = strpos($desc, \'</iframe>\') + 9;\r\n                $video = substr($desc, $pos, $pos2);\r\n                $quick_descr = str_replace($video, \'\', $desc);\r\n            } else{\r\n               $quick_descr = $desc;\r\n            }\r\n				]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n				foreach ($results as $result) {\r\n				]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n				$review_total = $this->model_catalog_review->getTotalReviewsByProductId($result[\'product_id\']);\r\n				]]></add>\r\n        </operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				\'rating\'      => $rating,\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					\'reviews\'    => $review_total,\r\n					 \'author\'     => $result[\'manufacturer\'],\r\n                    \'description1\' => $quick_descr,\r\n                    \'manufacturers\' =>$data[\'manufacturers\'] = $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\r\n                    \'model\' => $result[\'model\'],\r\n                    \'text_availability\' => $result[\'quantity\'],\r\n                    \'allow\' => $result[\'minimum\'],\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$this->load->model(\'tool/image\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n						$this->load->model(\'catalog/manufacturer\');\r\n						$this->language->load(\'product/product\');\r\n						$this->language->load(\'product/category\');\r\n						$this->load->model(\'catalog/review\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_quick\'] = $this->language->get(\'text_quick\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'button_wishlist\'] = $this->language->get(\'button_wishlist\');\r\n				$data[\'button_compare\'] = $this->language->get(\'button_compare\');	\r\n				$data[\'button_details\'] = $this->language->get(\'button_details\');\r\n				$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\r\n				$data[\'text_category\'] = $this->language->get(\'text_category\');\r\n				$data[\'text_model\'] = $this->language->get(\'text_model\');\r\n				$data[\'text_availability\'] = $this->language->get(\'text_availability\');\r\n				$data[\'text_instock\'] = $this->language->get(\'text_instock\');\r\n				$data[\'text_outstock\'] = $this->language->get(\'text_outstock\');\r\n				$data[\'reviews\'] = $this->language->get(\'reviews\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'text_product\'] = $this->language->get(\'text_product\');\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/module/bestseller.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'heading_title\'] = \'Bestsellers\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n				$_[\'text_category\'] = \'Categories\';\r\n				$_[\'text_manufacturer\'] = \'Brand:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Availability:\';\r\n				$_[\'text_instock\'] = \'In Stock\';\r\n				$_[\'text_outstock\'] = \'Out Stock\';\r\n				$_[\'text_price\']        = \'Price: \';\r\n				$_[\'text_tax\']          = \'Ex Tax:\';\r\n				$_[\'text_quick\']          = \'Quick View\'; \r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'reviews\']          = \'reviews \';\r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/bestseller.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']		= \'ohne Steuer\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'text_category\'] = \'Kategorie:\';\r\n				$_[\'text_manufacturer\'] = \'Marke:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Verfugbarkeit:\';\r\n				$_[\'text_instock\'] = \'Vorratig\';\r\n				$_[\'text_outstock\'] = \'Heraus \';\r\n				$_[\'text_price\']        = \'Preis: \';\r\n				$_[\'text_tax\']          = \'Preis ohne Steuer:\';\r\n				$_[\'text_quick\']          = \'Vorschau\'; \r\n				$_[\'text_product\']          = \'Artikel {current} von {total} \';\r\n				$_[\'text_sale\']      = \'Verkauf\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/bestseller.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']      = \'Без НДС:\';]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Подробнее\';\r\n				$_[\'text_category\'] = \'Категория\';\r\n				$_[\'text_manufacturer\'] = \'Брєнд\';\r\n				$_[\'text_model\'] = \'Модель:\';\r\n				$_[\'text_availability\'] = \'Наличие:\';\r\n				$_[\'text_instock\'] = \'Доступно\';\r\n				$_[\'text_outstock\'] = \'нет в наличии \';\r\n				$_[\'text_price\']        = \'Цена: \';\r\n				$_[\'text_tax\']          = \'налог:\';\r\n				$_[\'text_quick\']          = \'Быстрый просмотр\'; \r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				$_[\'text_sale\']      = \'Скидка\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>',1,'2015-09-15 11:01:19'),(83,'TM Description fo banners','2','http://www.templatemonster.com','1.0','http://www.opencart.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Description fo banners</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.opencart.com</link>\r\n	<code>2</code>\r\n	<file path=\"admin/controller/design/banner.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'button_remove\'] = $this->language->get(\'button_remove\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n\r\n			$data[\'entry_description\'] = $this->language->get(\'entry_description\');\r\n			\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'banner_images\'][] = array(\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			\'description\'			   => $banner_image[\'description\'],\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/model/design/banner.php\">\r\n		<operation>\r\n			<search><![CDATA[ $this->db->escape($banner_image_description[\'title\']) . \"\'\"); ]]>\r\n			</search>\r\n			<add position=\"replace\"><![CDATA[ $this->db->escape($banner_image_description[\'title\']) . \"\', description = \'\" .  $this->db->escape($banner_image_description[\'description\']) . \"\'\"); ]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			$banner_image_description_data[$banner_image_description[\'language_id\']] = array(\'title\' => $banner_image_description[\'title\']);\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$banner_image_description_desc[$banner_image_description[\'language_id\']] = array ( \'description\' => $banner_image_description[\'description\'] );\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			\'banner_image_description\' => $banner_image_description_data,\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			\'description\'              => $banner_image_description_desc,\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/language/english/design/banner.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'entry_sort_order\']   = \'Sort Order\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'entry_description\']       = \'Description:\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/design/banner_form.tpl\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			<td class=\"text-left\"><?php echo $entry_title; ?></td>\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			<td class=\"text-left\"><?php echo $entry_description; ?></td>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			<input type=\"text\" name=\"banner_image[<?php echo $image_row; ?>][link]\" value=\"<?php echo $banner_image[\'link\']; ?>\" placeholder=\"<?php echo $entry_link; ?>\" class=\"form-control\" /></td>\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			<td>\r\n				<?php foreach ($languages as $language) { ?>\r\n				<textarea style=\"width:300px; height:150px;\" name=\"banner_image[<?php echo $image_row; ?>][banner_image_description][<?php echo $language[\'language_id\']; ?>][description]\" id=\"description\"><?php echo isset($banner_image[\'description\'][$language[\'language_id\']]) ? $banner_image[\'description\'][$language[\'language_id\']][\'description\'] : \'\'; ?></textarea>\r\n				<img src=\"view/image/flags/<?php echo $language[\'image\']; ?>\" title=\"<?php echo $language[\'name\']; ?>\" /><br />\r\n				<?php } ?>\r\n				</td>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			html += \'  <td class=\"text-left\"><input type=\"text\" name=\"banner_image[\' + image_row + \'][link]\" value=\"\" placeholder=\"<?php echo $entry_link; ?>\" class=\"form-control\" /></td>\';\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	 html += \'<td class=\"text-left\">\';\r\n	<?php foreach ($languages as $language) { ?>\r\n	html += \'<textarea style=\"width:300px; height:150px;\" name=\"banner_image[\' + image_row + \'][banner_image_description][<?php echo $language[\'language_id\']; ?>][description]\" id=\"description\"></textarea><br />\';\r\n	<?php } ?>\r\n	html += \'</td>\';\r\n	]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/module/banner.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			\'title\' => $result[\'title\'],\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			\'description\' => html_entity_decode($result[\'description\']),\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/module/tm_slideshow.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			\'title\' => $result[\'title\'],\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			\'description\' => html_entity_decode($result[\'description\']),\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/module/parallax.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			\'title\' => $result[\'title\'],\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			\'description\' => html_entity_decode($result[\'description\']),\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n</modification>',1,'2015-06-22 15:37:31'),(85,'TM Footer','4','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Footer</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>4</code>\r\n	<file path=\"catalog/controller/common/footer.php\">\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[ $data[\'text_newsletter\'] = $this->language->get(\'text_newsletter\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n			$data[\'text_account\'] = $this->language->get(\'text_account\');\r\n			$data[\'text_follow\'] = $this->language->get(\'text_follow\');\r\n			$data[\'text_support\'] = $this->language->get(\'text_support\');\r\n			$data[\'text_twi\'] = $this->language->get(\'text_twi\');\r\n			$data[\'text_fb\'] = $this->language->get(\'text_fb\');\r\n			$data[\'text_rss\'] = $this->language->get(\'text_rss\');\r\n			$data[\'text_yt\'] = $this->language->get(\'text_yt\');\r\n			]]></add>\r\n		</operation>\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[ $data[\'newsletter\'] = $this->url->link(\'account/newsletter\', \'\', \'SSL\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n			$data[\'address\'] = nl2br($this->config->get(\'config_address\'));\r\n			$data[\'telephone\'] = $this->config->get(\'config_telephone\');\r\n			$data[\'fax\'] = $this->config->get(\'config_fax\');\r\n			\r\n			]]></add>\r\n		</operation>\r\n\r\n	<operation>\r\n			<search><![CDATA[ $data[\'newsletter\'] = $this->url->link(\'account/newsletter\', \'\', \'SSL\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					$data[\'tm_social_list\'] = $this->load->controller(\'module/tm_social_list\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-06-22 15:37:34'),(207,'TM Header Top Position on Home page','7','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Header Top Position on Home page</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>7</code>\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'base\'] = $server;\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$data[\'header_top\'] = $this->load->controller(\'common/header_top\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/common/header_top.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$modules = $this->model_design_layout->getLayoutModules($layout_id, \'header_top\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$this->load->model(\'extension/module\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/design/layout_form.tpl\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			<?php if ($layout_module[\'position\'] == \'content_top\') { ?>\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			<?php if ($layout_module[\'position\'] == \'header_top\') { ?>\r\n					<option value=\"header_top\" selected=\"selected\"><?php echo $text_header_top; ?></option>\r\n					<?php } else { ?>\r\n					<option value=\"header_top\"><?php echo $text_header_top; ?></option>\r\n					<?php } ?>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			html += \'    <option value=\"content_top\"><?php echo $text_content_top; ?></option>\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				html += \'    <option value=\"header_top\"><?php echo $text_header_top; ?></option>\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/design/layout.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'text_content_top\'] = $this->language->get(\'text_content_top\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'text_header_top\'] = $this->language->get(\'text_header_top\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/language/english/design/layout.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_content_top\']    = \'Content Top\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'text_header_top\']    = \'Header Top\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-10-02 10:52:10'),(162,'TM latest ','8','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM latest </name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>8</code>\r\n	<file path=\"catalog/controller/module/latest.php\">\r\n		<operation>\r\n            <search><![CDATA[\r\n				public function index($setting) {\r\n				]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n					static $module = 0;\r\n				]]></add>\r\n        </operation>\r\n        	<operation>\r\n            <search><![CDATA[\r\n				if (file_exists(DIR_TEMPLATE . $this->config->get(\'config_template\') . \'/template/module/latest.tpl\')) {\r\n				]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n					$data[\'module\'] = $module++;\r\n				]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n				$data[\'products\'][] = array(\r\n				]]></search>\r\n            <add position=\"before\"><![CDATA[	$desc = html_entity_decode($result[\'description\'], ENT_QUOTES, \'UTF-8\');\r\n            $pos = strpos($desc,\'<iframe\');\r\n  			if (is_int($pos)) {\r\n                $pos2 = strpos($desc, \'</iframe>\') + 9;\r\n                $video = substr($desc, $pos, $pos2);\r\n                $quick_descr = str_replace($video, \'\', $desc);\r\n            } else{\r\n               $quick_descr = $desc;\r\n            }\r\n				]]></add>\r\n        </operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				\'rating\'      => $rating,\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					\'reviews\'    => $review_total,\r\n					\'author\'     => $result[\'manufacturer\'],\r\n					\'description1\' => $quick_descr,\r\n					\'manufacturers\' =>$data[\'manufacturers\'] = $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\r\n					\'model\' => $result[\'model\'],\r\n					\'text_availability\' => $result[\'quantity\'],\r\n					\'allow\' => $result[\'minimum\'],\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$this->load->model(\'tool/image\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n						$this->load->model(\'catalog/manufacturer\');\r\n						$this->language->load(\'product/product\');\r\n						$this->language->load(\'product/category\');\r\n						$this->load->model(\'catalog/review\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_quick\'] = $this->language->get(\'text_quick\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'button_wishlist\'] = $this->language->get(\'button_wishlist\');\r\n				$data[\'button_compare\'] = $this->language->get(\'button_compare\');	\r\n				$data[\'button_details\'] = $this->language->get(\'button_details\');\r\n				$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\r\n				$data[\'text_category\'] = $this->language->get(\'text_category\');\r\n				$data[\'text_model\'] = $this->language->get(\'text_model\');\r\n				$data[\'text_availability\'] = $this->language->get(\'text_availability\');\r\n				$data[\'text_instock\'] = $this->language->get(\'text_instock\');\r\n				$data[\'text_outstock\'] = $this->language->get(\'text_outstock\');\r\n				$data[\'reviews\'] = $this->language->get(\'reviews\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'text_product\'] = $this->language->get(\'text_product\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ foreach ($results as $result) { ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$review_total = $this->model_catalog_review->getTotalReviewsByProductId($result[\'product_id\']);\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'heading_title\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'text_category\'] = \'Categories\';\r\n				$_[\'text_manufacturer\'] = \'Brand:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Availability:\';\r\n				$_[\'text_instock\'] = \'In Stock\';\r\n				$_[\'text_outstock\'] = \'Out Stock\';\r\n				$_[\'text_price\']        = \'Price: \';\r\n				$_[\'text_tax\']          = \'Ex Tax:\';\r\n				$_[\'text_quick\']          = \'Quick View\'; \r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'reviews\']          = \'reviews \';\r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']		= \'ohne Steuer\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'text_category\'] = \'Kategorie:\';\r\n				$_[\'text_manufacturer\'] = \'Marke:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Verfugbarkeit:\';\r\n				$_[\'text_instock\'] = \'Vorratig\';\r\n				$_[\'text_outstock\'] = \'Heraus \';\r\n				$_[\'text_price\']        = \'Preis: \';\r\n				$_[\'text_tax\']          = \'Preis ohne Steuer:\';\r\n				$_[\'text_quick\']          = \'Vorschau\'; \r\n				$_[\'text_product\']          = \'Artikel {current} von {total} \';\r\n				$_[\'text_sale\']      = \'Verkauf\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/latest.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Подробнее\';\r\n				$_[\'text_category\'] = \'Категория\';\r\n				$_[\'text_manufacturer\'] = \'Брєнд\';\r\n				$_[\'text_model\'] = \'Модель:\';\r\n				$_[\'text_availability\'] = \'Наличие:\';\r\n				$_[\'text_instock\'] = \'Доступно\';\r\n				$_[\'text_outstock\'] = \'нет в наличии \';\r\n				$_[\'text_price\']        = \'Цена: \';\r\n				$_[\'text_tax\']          = \'налог:\';\r\n				$_[\'text_quick\']          = \'Быстрый просмотр\'; \r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				$_[\'text_sale\']      = \'Скидка\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>',1,'2015-09-15 11:01:23'),(161,'TM Featured ','3','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Featured </name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>3</code>\r\n	<file path=\"catalog/controller/module/featured.php\">\r\n		<operation>\r\n            <search><![CDATA[\r\n				public function index($setting) {\r\n				]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n					static $module = 0;\r\n				]]></add>\r\n        </operation>\r\n        	<operation>\r\n            <search><![CDATA[\r\n				if (file_exists(DIR_TEMPLATE . $this->config->get(\'config_template\') . \'/template/module/featured.tpl\')) {\r\n				]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n					$data[\'module\'] = $module++;\r\n				]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n				$data[\'products\'][] = array(\r\n				]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n				$desc = html_entity_decode($product_info[\'description\'], ENT_QUOTES, \'UTF-8\');\r\n            $pos = strpos($desc,\'<iframe\');\r\n  			if (is_int($pos)) {\r\n                $pos2 = strpos($desc, \'</iframe>\') + 9;\r\n                $video = substr($desc, $pos, $pos2);\r\n                $quick_descr = str_replace($video, \'\', $desc);\r\n            } else{\r\n               $quick_descr = $desc;\r\n            }\r\n				]]></add>\r\n        </operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				\'rating\'      => $rating,\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					\'reviews\'    => $review_total,\r\n					\'author\'     => $product_info[\'manufacturer\'],\r\n					\'description1\' => $quick_descr,\r\n					\'manufacturers\' =>$data[\'manufacturers\'] = $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $product_info[\'manufacturer_id\']),\r\n					\'model\' => $product_info[\'model\'],\r\n					\'text_availability\' => $product_info[\'quantity\'],\r\n					\'allow\' => $product_info[\'minimum\'],\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$this->load->model(\'tool/image\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n						$this->load->model(\'catalog/manufacturer\');\r\n						$this->language->load(\'product/product\');\r\n						$this->language->load(\'product/category\');\r\n						$this->load->model(\'catalog/review\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_quick\'] = $this->language->get(\'text_quick\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'button_wishlist\'] = $this->language->get(\'button_wishlist\');\r\n				$data[\'button_compare\'] = $this->language->get(\'button_compare\');	\r\n				$data[\'button_details\'] = $this->language->get(\'button_details\');\r\n				$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\r\n				$data[\'text_category\'] = $this->language->get(\'text_category\');\r\n				$data[\'text_model\'] = $this->language->get(\'text_model\');\r\n				$data[\'text_availability\'] = $this->language->get(\'text_availability\');\r\n				$data[\'text_instock\'] = $this->language->get(\'text_instock\');\r\n				$data[\'text_outstock\'] = $this->language->get(\'text_outstock\');\r\n				$data[\'reviews\'] = $this->language->get(\'reviews\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'text_product\'] = $this->language->get(\'text_product\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $product_info = $this->model_catalog_product->getProduct($product_id); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$review_total = $this->model_catalog_review->getTotalReviewsByProductId($product_info[\'product_id\']);\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'heading_title\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'text_category\'] = \'Categories\';\r\n				$_[\'text_manufacturer\'] = \'Brand:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Availability:\';\r\n				$_[\'text_instock\'] = \'In Stock\';\r\n				$_[\'text_outstock\'] = \'Out Stock\';\r\n				$_[\'text_price\']        = \'Price: \';\r\n				$_[\'text_tax\']          = \'Ex Tax:\';\r\n				$_[\'text_quick\']          = \'Quick View\'; \r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'reviews\']          = \'reviews \';\r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']		= \'ohne Steuer\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'text_category\'] = \'Kategorie:\';\r\n				$_[\'text_manufacturer\'] = \'Marke:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Verfugbarkeit:\';\r\n				$_[\'text_instock\'] = \'Vorratig\';\r\n				$_[\'text_outstock\'] = \'Heraus \';\r\n				$_[\'text_price\']        = \'Preis: \';\r\n				$_[\'text_tax\']          = \'Preis ohne Steuer:\';\r\n				$_[\'text_quick\']          = \'Vorschau\'; \r\n				$_[\'text_product\']          = \'Artikel {current} von {total} \';\r\n				$_[\'text_sale\']      = \'Verkauf\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Подробнее\';\r\n				$_[\'text_category\'] = \'Категория\';\r\n				$_[\'text_manufacturer\'] = \'Брєнд\';\r\n				$_[\'text_model\'] = \'Модель:\';\r\n				$_[\'text_availability\'] = \'Наличие:\';\r\n				$_[\'text_instock\'] = \'Доступно\';\r\n				$_[\'text_outstock\'] = \'нет в наличии \';\r\n				$_[\'text_price\']        = \'Цена: \';\r\n				$_[\'text_tax\']          = \'налог:\';\r\n				$_[\'text_quick\']          = \'Быстрый просмотр\'; \r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				$_[\'text_sale\']      = \'Скидка\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>',1,'2015-09-15 11:01:21'),(164,'TM Ajax add to cart ','ajax_add','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Ajax add to cart </name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>ajax_add</code>\r\n\r\n <!-- Featured -->\r\n	<file path=\"catalog/controller/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_option\'] = $this->language->get(\'text_option\');\r\n				$data[\'text_select\'] = $this->language->get(\'text_select\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				$data[\'products\'][] = array(\r\n				]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n					   $options = array();\r\n                    foreach ($this->model_catalog_product->getProductOptions($product_id) as $option) {\r\n                        $product_option_value_data = array();\r\n                        foreach ($option[\'product_option_value\'] as $option_value) {\r\n                            if (!$option_value[\'subtract\'] || ($option_value[\'quantity\'] > 0)) {\r\n                                if ((($this->config->get(\'config_customer_price\') && $this->customer->isLogged()) || !$this->config->get(\'config_customer_price\')) && (float)$option_value[\'price\']) {\r\n                                    $price_option = $this->currency->format($this->tax->calculate($option_value[\'price\'], $product_info[\'tax_class_id\'], $this->config->get(\'config_tax\') ? \'P\' : false));\r\n                                } else {\r\n                                    $price_option = false;\r\n                                }\r\n                                $product_option_value_data[] = array(\r\n                                    \'product_option_value_id\' => $option_value[\'product_option_value_id\'],\r\n                                    \'option_value_id\'         => $option_value[\'option_value_id\'],\r\n                                    \'name\'                    => $option_value[\'name\'],\r\n                                    \'image\'                   => $this->model_tool_image->resize($option_value[\'image\'], 50, 50),\r\n                                    \'price\'                   => $price_option,\r\n                                    \'price_prefix\'            => $option_value[\'price_prefix\']\r\n                                );\r\n                            }\r\n                        }\r\n                        $options[] = array(\r\n                            \'product_option_id\'    => $option[\'product_option_id\'],\r\n                            \'product_option_value\' => $product_option_value_data,\r\n                            \'option_id\'            => $option[\'option_id\'],\r\n                            \'name\'                 => $option[\'name\'],\r\n                            \'type\'                 => $option[\'type\'],\r\n                            \'value\'                => $option[\'value\'],\r\n                            \'required\'             => $option[\'required\']\r\n                        );\r\n                    }\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				 \'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $product_info[\'product_id\'])\r\n				]]></search>\r\n            <add position=\"after\"><![CDATA[,\r\n					  \'options\'     => $options\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n <!-- Specials -->\r\n	<file path=\"catalog/controller/module/special.php,catalog/controller/module/bestseller.php,catalog/controller/module/latest.php,catalog/controller/product/*.php\">\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_option\'] = $this->language->get(\'text_option\');\r\n				$data[\'text_select\'] = $this->language->get(\'text_select\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				$data[\'products\'][] = array(\r\n				]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n					   $options = array();\r\n                    foreach ($this->model_catalog_product->getProductOptions($result[\'product_id\']) as $option) {\r\n                        $product_option_value_data = array();\r\n                        foreach ($option[\'product_option_value\'] as $option_value) {\r\n                            if (!$option_value[\'subtract\'] || ($option_value[\'quantity\'] > 0)) {\r\n                                if ((($this->config->get(\'config_customer_price\') && $this->customer->isLogged()) || !$this->config->get(\'config_customer_price\')) && (float)$option_value[\'price\']) {\r\n                                    $price_option = $this->currency->format($this->tax->calculate($option_value[\'price\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\') ? \'P\' : false));\r\n                                } else {\r\n                                    $price_option = false;\r\n                                }\r\n                                $product_option_value_data[] = array(\r\n                                    \'product_option_value_id\' => $option_value[\'product_option_value_id\'],\r\n                                    \'option_value_id\'         => $option_value[\'option_value_id\'],\r\n                                    \'name\'                    => $option_value[\'name\'],\r\n                                    \'image\'                   => $this->model_tool_image->resize($option_value[\'image\'], 50, 50),\r\n                                    \'price\'                   => $price_option,\r\n                                    \'price_prefix\'            => $option_value[\'price_prefix\']\r\n                                );\r\n                            }\r\n                        }\r\n                        $options[] = array(\r\n                            \'product_option_id\'    => $option[\'product_option_id\'],\r\n                            \'product_option_value\' => $product_option_value_data,\r\n                            \'option_id\'            => $option[\'option_id\'],\r\n                            \'name\'                 => $option[\'name\'],\r\n                            \'type\'                 => $option[\'type\'],\r\n                            \'value\'                => $option[\'value\'],\r\n                            \'required\'             => $option[\'required\']\r\n                        );\r\n                    }\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				 \'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $result[\'product_id\'])\r\n				]]></search>\r\n            <add position=\"after\"><![CDATA[,\r\n					  \'options\'     => $options\r\n				]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[\r\n				\'href\'        => $this->url->link(\'product/product\', \'path=\' . $this->request->get[\'path\'] . \'&product_id=\' . $result[\'product_id\'] . $url)\r\n				]]></search>\r\n            <add position=\"after\"><![CDATA[,\r\n					  \'options\'     => $options\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n		<file path=\"catalog/controller/product/search.php,catalog/controller/product/special.php\">\r\n		<operation>\r\n			<search><![CDATA[ \'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $result[\'product_id\'] . $url) ]]></search>\r\n			<add position=\"after\"><![CDATA[,\r\n					  \'options\'     => $options\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n			<file path=\"catalog/controller/product/manufacturer.php\">\r\n		<operation>\r\n			<search><![CDATA[\'href\'        => $this->url->link(\'product/product\', \'manufacturer_id=\' . $result[\'manufacturer_id\'] . \'&product_id=\' . $result[\'product_id\'] . $url) ]]></search>\r\n			<add position=\"after\"><![CDATA[,\r\n					  \'options\'     => $options\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n\r\n\r\n\r\n		<file path=\"catalog/language/english/module/featured.php,catalog/language/english/module/special.php,catalog/language/english/module/bestseller.php,catalog/language/english/module/latest.php,catalog/language/english/product/*.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				$_[\'text_option\']              = \'Available Options\';\r\n				$_[\'text_select\']              = \'--- Selecione ---\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/featured.php,catalog/language/de-DE/module/special.php,catalog/language/de-DE/module/bestseller.php,catalog/language/de-DE/module/latest.php,catalog/language/de-DE/product/*.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\'] ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n				$_[\'text_option\']              = \'Mögliche Optionen\';\r\n				$_[\'text_select\']              = \'--- Bitte wählen ---\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/featured.php,catalog/language/russian/module/special.php,catalog/language/russian/module/bestseller.php,catalog/language/russian/module/latest.php,catalog/language/russian/product/*.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'text_option\']              = \'Доступные варианты\';\r\n				$_[\'text_select\']              = \'--- Выберите ---\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>',1,'2015-09-15 19:01:14'),(152,'TM Product','product','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Product</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>product</code>\r\n	<file path=\"catalog/controller/product/product.php\">\r\n		<operation>\r\n			<search><![CDATA[ $data[\'description\'] = html_entity_decode($product_info[\'description\'], ENT_QUOTES, \'UTF-8\'); ]]></search>\r\n			<add position=\"replace\"><![CDATA[ \r\n				    $desc = html_entity_decode($product_info[\'description\'], ENT_QUOTES, \'UTF-8\');\r\n            $pos = strpos($desc,\'<iframe\');\r\n  			if (is_int($pos)) {\r\n                $pos2 = strpos($desc, \'</iframe>\') + 9;\r\n                $video = substr($desc, $pos, $pos2);\r\n                $data[\'video\'] = $video;\r\n                $data[\'description\'] = str_replace($video, \'\', $desc);\r\n            } else{\r\n                $data[\'video\'] = \'\';\r\n                $data[\'description\'] = $desc;\r\n            }\r\n				]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[$data[\'tab_attribute\'] = $this->language->get(\'tab_attribute\');]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n				    $data[\'tab_video\'] = $this->language->get(\'tab_video\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$data[\'points\'] = $product_info[\'points\'];]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				   $data[\'stock_status\'] = $product_info[\'quantity\'];\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/product/product.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'tab_review\']               = \'Reviews (%s)\'; ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n				    $_[\'tab_video\']               = \'Video\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-09-04 12:38:37'),(206,'TM Header','6','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Header</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<author>Tm</author>\r\n	<code>6</code>\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[ $data[\'name\'] = $this->config->get(\'config_name\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n			$data[\'maintenance\'] = $this->config->get(\'config_maintenance\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $data[\'text_all\'] = $this->language->get(\'text_all\'); ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			\r\n			$data[\'text_shopcart\'] = $this->language->get(\'text_shopcart\');\r\n			$data[\'text_information\'] = $this->language->get(\'text_information\');\r\n			$data[\'text_service\'] = $this->language->get(\'text_service\');\r\n			$data[\'text_extra\'] = $this->language->get(\'text_extra\');\r\n			$data[\'text_account\'] = $this->language->get(\'text_account\');\r\n			$data[\'text_contact\'] = $this->language->get(\'text_contact\');\r\n			$data[\'text_return\'] = $this->language->get(\'text_return\');\r\n			$data[\'text_sitemap\'] = $this->language->get(\'text_sitemap\');\r\n			$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\r\n			$data[\'text_voucher\'] = $this->language->get(\'text_voucher\');\r\n			$data[\'text_affiliate\'] = $this->language->get(\'text_affiliate\');\r\n			$data[\'text_special\'] = $this->language->get(\'text_special\');\r\n			$data[\'text_account\'] = $this->language->get(\'text_account\');\r\n			$data[\'text_order\'] = $this->language->get(\'text_order\');\r\n			$data[\'text_newsletter\'] = $this->language->get(\'text_newsletter\');\r\n			$data[\'text_category\'] = $this->language->get(\'text_category\');\r\n			$data[\'text_compare\'] = $this->language->get(\'text_compare\');\r\n			$data[\'text_telephone\'] = $this->language->get(\'text_telephone\');\r\n			\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $data[\'telephone\'] = $this->config->get(\'config_telephone\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n			$data[\'sitemap\'] = $this->url->link(\'information/sitemap\');\r\n			$data[\'special\'] = $this->url->link(\'product/special\');\r\n			$data[\'contact\'] = $this->url->link(\'information/contact\');\r\n			$data[\'contact\'] = $this->url->link(\'information/contact\');\r\n			$data[\'return\'] = $this->url->link(\'account/return/insert\', \'\', \'SSL\');\r\n			$data[\'sitemap\'] = $this->url->link(\'information/sitemap\');\r\n			$data[\'manufacturer\'] = $this->url->link(\'product/manufacturer\', \'\', \'SSL\');\r\n			$data[\'voucher\'] = $this->url->link(\'account/voucher\', \'\', \'SSL\');\r\n			$data[\'affiliate\'] = $this->url->link(\'affiliate/account\', \'\', \'SSL\');\r\n			$data[\'account\'] = $this->url->link(\'account/account\', \'\', \'SSL\');\r\n			$data[\'order\'] = $this->url->link(\'account/order\', \'\', \'SSL\');\r\n			$data[\'newsletter\'] = $this->url->link(\'account/newsletter\', \'\', \'SSL\');\r\n			$data[\'compare\'] = $this->url->link(\'product/compare\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $this->load->language(\'common/header\'); ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			if (($data[\'maintenance\']==0)) {\r\n			$data[\'informations\'] = array();\r\n			foreach ($this->model_catalog_information->getInformations() as $result) {\r\n				if ($result[\'bottom\']) {\r\n					$data[\'informations\'][] = array(\r\n						\'title\' => $result[\'title\'],\r\n						\'href\'  => $this->url->link(\'information/information\', \'information_id=\' . $result[\'information_id\'])\r\n					);\r\n				}\r\n			}	\r\n		}\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[ $data[\'cart\'] = $this->load->controller(\'common/cart\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					$data[\'tm_login\'] = $this->load->controller(\'module/tm_header_login\');\r\n					$data[\'tm_social_list\'] = $this->load->controller(\'module/tm_social_list\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_checkout\']      = \'Checkout\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					$_[\'text_information\']  = \'Information\';\r\n					$_[\'text_service\']      = \'Customer Service\';\r\n					$_[\'text_extra\']        = \'Extras\';\r\n					$_[\'text_contact\']      = \'Contact Us\';\r\n					$_[\'text_return\']       = \'Returns\';\r\n					$_[\'text_sitemap\']      = \'Site Map\';\r\n					$_[\'text_manufacturer\'] = \'Brands\';\r\n					$_[\'text_voucher\']      = \'Gift Vouchers\';\r\n					$_[\'text_affiliate\']    = \'Affiliates\';\r\n					$_[\'text_special\']      = \'Specials\';\r\n					$_[\'text_account\']      = \'My Account\';\r\n					$_[\'text_order\']        = \'Order History\';\r\n					$_[\'text_newsletter\']   = \'Newsletter\';\r\n					$_[\'text_category\']   = \'Categories\';\r\n					$_[\'text_latest_added\']   = \'Latest added product(s):\';\r\n					$_[\'text_compare\']      = \'Product Compare\';\r\n					$_[\'text_telephone\']      = \'call us:\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_checkout\']		= \'Kasse\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					$_[\'text_compare\']		= \'Produktvergleich\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/russian/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_checkout\']      = \'Оформление заказа\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					$_[\'text_compare\']      = \'Сравнение товаров\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n</modification>',1,'2015-10-01 17:36:18'),(155,'TM Header Cart','1','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Header Cart</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>1</code>\r\n	<file path=\"catalog/controller/common/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $data[\'text_loading\'] = $this->language->get(\'text_loading\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_items2\'] = sprintf($this->language->get(\'text_items2\'), $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0), $this->currency->format($total));\r\n				$data[\'text_shopping_cart\'] = $this->language->get(\'text_shopping_cart\');\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n		<file path=\"catalog/controller/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $json[\'total\'] = sprintf($this->language->get(\'text_items\'), $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0), $this->currency->format($total)); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$json[\'total2\'] = sprintf($this->language->get(\'text_items2\'), $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0), $this->currency->format($total));\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ if ($product_info) { ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n				$products = $this->cart->getProducts();\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ if ($product_info) { ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$current_quantity = 0;\r\n            foreach ($products as $product) {\r\n                if ($product_info[\'product_id\'] == $product[\'product_id\']) {\r\n                    $current_quantity = $product[\'quantity\'];\r\n                }\r\n            }\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ if (isset($this->request->post[\'quantity\']) && ((int)$this->request->post[\'quantity\'] >= $product_info[\'minimum\'])) { ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				if (($product_info[\'quantity\'] > (int)$this->request->post[\'quantity\']) && ($product_info[\'quantity\'] > $current_quantity + (int)$this->request->post[\'quantity\'])) {\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $quantity = (int)$this->request->post[\'quantity\']; ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				} else {\r\n                    $json[\'error\'][\'quantity\'] = sprintf($this->language->get(\'error_quantity\'), $product_info[\'quantity\']);\r\n                }\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'error_recurring_required\'] = \'Please select a payment recurring!\'; ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			$_[\'error_quantity\']    = \'Error! Only %s items available!\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n		<file path=\"catalog/language/de-DE/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'error_recurring_required\'] = \'Please select a payment recurring!\'; ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			$_[\'error_quantity\']    = \'Error! Nur %s Stück verfügbar!\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n		<file path=\"catalog/language/russian/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'error_recurring_required\'] = \'Please select a payment recurring!\'; ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			$_[\'error_quantity\']    = \'Ошибка! Доступно %s единиц!\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/language/english/common/cart.php,catalog/language/english/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_items\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			$_[\'text_items2\']    = \'%s\';\r\n			$_[\'text_shopping_cart\']    = \'Shopping Cart:\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/common/cart.php,catalog/language/de-DE/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_recurring\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			$_[\'text_shopping_cart\']= \'Warenkorb: \';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/russian/common/cart.php,catalog/language/russian/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_recurring\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			$_[\'text_shopping_cart\'] = \'Корзина: \';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-09-07 12:41:19'),(203,'Blog Admin','blog_admin','http://www.templatemonster.com','2','','<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n<!-- Based on Simple Blog Module -->\r\n<modification>\r\n   <name>Blog Admin</name>\r\n   <code>blog_admin</code>\r\n   <version>2</version>\r\n   <author>http://www.templatemonster.com</author>\r\n\r\n   <file path=\"admin/controller/common/menu.php\">\r\n       <operation>\r\n           <search><![CDATA[$data[\'text_openbay_order_import\']]]></search>\r\n           <add position=\"after\"><![CDATA[\r\n               $data[\'text_simple_blogs\'] = $this->language->get(\'text_simple_blogs\');\r\n               $data[\'text_simple_blog_author\'] = $this->language->get(\'text_simple_blog_author\');\r\n               $data[\'text_simple_blog_category\'] = $this->language->get(\'text_simple_blog_category\');\r\n               $data[\'text_simple_blog_article\'] = $this->language->get(\'text_simple_blog_article\');\r\n               $data[\'text_simple_blog_article_comment\'] = $this->language->get(\'text_simple_blog_article_comment\');\r\n               $data[\'text_simple_blog_view_report\'] = $this->language->get(\'text_simple_blog_view_report\');\r\n           ]]></add>\r\n       </operation>\r\n\r\n       <operation>\r\n           <search><![CDATA[$data[\'openbay_link_amazonus_links\']]]></search>\r\n           <add position=\"after\"><![CDATA[\r\n               $data[\'simple_blog_author\'] = $this->url->link(\'simple_blog/author\', \'token=\' . $this->session->data[\'token\'], \'SSL\');\r\n               $data[\'simple_blog_category\'] = $this->url->link(\'simple_blog/category\', \'token=\' . $this->session->data[\'token\'], \'SSL\');\r\n               $data[\'simple_blog_article\'] = $this->url->link(\'simple_blog/article\', \'token=\' . $this->session->data[\'token\'], \'SSL\');\r\n               $data[\'simple_blog_comment\'] = $this->url->link(\'simple_blog/comment\', \'token=\' . $this->session->data[\'token\'], \'SSL\');\r\n               $data[\'simple_blog_view_report\'] = $this->url->link(\'simple_blog/report\', \'token=\' . $this->session->data[\'token\'], \'SSL\');\r\n           ]]></add>\r\n       </operation>\r\n\r\n   </file>\r\n\r\n   <file path=\"admin/language/*/common/menu.php\">\r\n       <operation>\r\n           <search><![CDATA[$_[\'text_paypal_manage\']]]></search>\r\n           <add position=\"after\"><![CDATA[\r\n               $_[\'text_simple_blogs\']	= \'Blog\';\r\n               $_[\'text_simple_blog_author\']	= \'Author\';\r\n               $_[\'text_simple_blog_category\']	= \'Category\';\r\n               $_[\'text_simple_blog_article\']	= \'Article\';\r\n               $_[\'text_simple_blog_article_comment\']	= \'Article Comment\';\r\n               $_[\'text_simple_blog_view_report\'] = \'Report\';\r\n           ]]></add>\r\n       </operation>\r\n   </file>\r\n\r\n   <file path=\"admin/view/template/common/menu.tpl\">\r\n       <operation>\r\n           <search><![CDATA[<li id=\"reports\">]]></search>\r\n           <add position=\"before\"><![CDATA[\r\n               <li id=\"simple-blog\"><a class=\"parent\"><i class=\"fa fa-file-text-o fa-fw\"></i> <span><?php echo $text_simple_blogs; ?></span></a>\r\n                   <ul>\r\n                       <li><a href=\"<?php echo $simple_blog_article; ?>\"><?php echo $text_simple_blog_article; ?></a></li>\r\n                       <li><a href=\"<?php echo $simple_blog_category; ?>\"><?php echo $text_simple_blog_category; ?></a></li>\r\n                         <li><a href=\"<?php echo $simple_blog_author; ?>\"><?php echo $text_simple_blog_author; ?></a></li>\r\n                         <li><a href=\"<?php echo $simple_blog_comment; ?>\"><?php echo $text_simple_blog_article_comment; ?></a></li>\r\n                         <li><a href=\"<?php echo $simple_blog_view_report; ?>\"><?php echo $text_simple_blog_view_report; ?></a></li>\r\n                   </ul>\r\n               </li>\r\n           ]]></add>\r\n       </operation>\r\n   </file>\r\n\r\n   <file path=\"admin/view/template/setting/setting.tpl\">\r\n       <operation>\r\n           <search><![CDATA[<li><a href=\"#tab-google\" data-toggle=\"tab\"><?php echo $tab_google; ?></a></li>]]></search>\r\n           <add position=\"after\"><![CDATA[\r\n               <li><a href=\"#tab-blog\" data-toggle=\"tab\"><?php echo $tab_blog; ?></a></li>\r\n           ]]></add>\r\n       </operation>\r\n\r\n       <operation>\r\n           <search><![CDATA[</form>]]></search>\r\n           <add position=\"before\" offset=\"1\"><![CDATA[\r\n               <div class=\"tab-pane\" id=\"tab-blog\">\r\n                               <fieldset>\r\n                                   <div class=\"form-group\">\r\n                                       <label\r\n                                           class=\"col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label\"><?php echo $entry_status; ?></label>\r\n\r\n                                       <div class=\"col-lg-10 col-md-10 col-sm-10 col-xs-12\">\r\n                                           <select name=\"config_simple_blog_status\" class=\"form-control\">\r\n                                               <?php if ($config_simple_blog_status == 1) { ?>\r\n                                                   <option value=\"1\"\r\n                                                           selected=\'selected\'><?php echo $text_enabled; ?></option>\r\n                                                   <option value=\"0\"><?php echo $text_disabled; ?></option>\r\n                                               <?php } else { ?>\r\n                                                   <option value=\"1\"><?php echo $text_enabled; ?></option>\r\n                                                   <option value=\"0\"\r\n                                                           selected=\"selected\"><?php echo $text_disabled; ?></option>\r\n                                               <?php } ?>\r\n                                           </select>\r\n                                       </div>\r\n                                   </div>\r\n\r\n                                   <div class=\"form-group\">\r\n                                       <label class=\"col-sm-2 control-label\">\r\n                                       <span\r\n                                               data-toggle=\"tooltip\"\r\n                                               title=\"<?php echo $help_limit; ?>\"><?php echo $entry_limit; ?></span></label>\r\n                                       <div class=\"col-sm-10\">\r\n                                           <input type=\"text\" name=\"config_simple_blog_limit\" value=\"<?php echo (isset($config_simple_blog_limit) ? $config_simple_blog_limit : \'5\')  ; ?>\" placeholder=\"<?php echo $entry_limit; ?>\" class=\"form-control\" />\r\n                                       </div>\r\n                                   </div>\r\n\r\n                                   <div class=\"form-group\">\r\n                                       <label class=\"col-sm-2 control-label\">\r\n                                      <?php echo $entry_description_limit; ?></label>\r\n                                       <div class=\"col-sm-10\">\r\n                                           <input type=\"text\" name=\"config_simple_blog_description_limit\" value=\"<?php echo (isset($config_simple_blog_description_limit) ? $config_simple_blog_description_limit : \'5\')  ; ?>\" placeholder=\"<?php echo $entry_description_limit; ?>\" class=\"form-control\" />\r\n                                       </div>\r\n                                   </div>\r\n\r\n\r\n\r\n                                   <div class=\"form-group\">\r\n                                       <label class=\"col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label\"><span\r\n                                               data-toggle=\"tooltip\"\r\n                                               title=\"<?php echo $help_comment_approval; ?>\"><?php echo $entry_comment_approval; ?></span>\r\n                                       </label>\r\n\r\n                                       <div class=\"col-lg-10 col-md-10 col-sm-10 col-xs-12\">\r\n                                           <div class=\"checkbox-inline\">\r\n                                               <?php if (isset($config_simple_blog_comment_auto_approval)) { ?>\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_comment_auto_approval\"\r\n                                                          value=\"1\" checked=\"checked\"/> <?php echo $text_yes; ?>&nbsp;\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_comment_auto_approval\"\r\n                                                          value=\"0\"/> <?php echo $text_no; ?>\r\n                                               <?php } else { ?>\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_comment_auto_approval\"\r\n                                                          value=\"1\"/> <?php echo $text_yes; ?>&nbsp;\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_comment_auto_approval\"\r\n                                                          value=\"0\" checked=\"checked\"/> <?php echo $text_no; ?>\r\n                                               <?php } ?>\r\n                                           </div>\r\n                                       </div>\r\n                                   </div>\r\n\r\n                                   <div class=\"form-group\">\r\n                                       <label class=\"col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label\"><span\r\n                                               data-toggle=\"tooltip\"\r\n                                               title=\"<?php echo $help_author_information; ?>\"><?php echo $entry_author_information; ?></span>\r\n                                       </label>\r\n\r\n                                       <div class=\"col-lg-10 col-md-10 col-sm-10 col-xs-12\">\r\n                                           <div class=\"checkbox-inline\">\r\n                                               <?php if (isset($config_simple_blog_author_information)) { ?>\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_author_information\" value=\"1\"\r\n                                                          checked=\"checked\"/> <?php echo $text_enabled; ?>&nbsp;\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_author_information\"\r\n                                                          value=\"0\"/> <?php echo $text_disabled; ?>\r\n                                               <?php } else { ?>\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_author_information\"\r\n                                                          value=\"1\"/> <?php echo $text_enabled; ?>&nbsp;\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_author_information\" value=\"0\"\r\n                                                          checked=\"checked\"/> <?php echo $text_disabled; ?>\r\n                                               <?php } ?>\r\n                                           </div>\r\n                                       </div>\r\n                                   </div>\r\n\r\n                                   <div class=\"form-group\">\r\n                                       <label class=\"col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label\"><span\r\n                                               data-toggle=\"tooltip\"\r\n                                               title=\"<?php echo $help_related_article; ?>\"><?php echo $entry_related_article; ?></span>\r\n                                       </label>\r\n\r\n                                       <div class=\"col-lg-10 col-md-10 col-sm-10 col-xs-12\">\r\n                                           <div class=\"checkbox-inline\">\r\n                                               <?php if (isset($config_simple_blog_related_articles)) { ?>\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_related_articles\" value=\"1\"\r\n                                                          checked=\"checked\"/> <?php echo $text_enabled; ?>&nbsp;\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_related_articles\"\r\n                                                          value=\"0\"/> <?php echo $text_disabled; ?>\r\n                                               <?php } else { ?>\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_related_articles\"\r\n                                                          value=\"1\"/> <?php echo $text_enabled; ?>&nbsp;\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_related_articles\" value=\"0\"\r\n                                                          checked=\"checked\"/> <?php echo $text_disabled; ?>\r\n                                               <?php } ?>\r\n                                           </div>\r\n                                       </div>\r\n                                   </div>\r\n\r\n                                   <div class=\"form-group\">\r\n                                       <label class=\"col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label\"><span\r\n                                               data-toggle=\"tooltip\"\r\n                                               title=\"<?php echo $help_show_social_site_option; ?>\"><?php echo $entry_show_social_site_option; ?></span>\r\n                                       </label>\r\n\r\n                                       <div class=\"col-lg-10 col-md-10 col-sm-10 col-xs-12\">\r\n                                           <div class=\"checkbox-inline\">\r\n                                               <?php if (isset($config_simple_blog_share_social_site)) { ?>\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_share_social_site\" value=\"1\"\r\n                                                          checked=\"checked\"/> <?php echo $text_enabled; ?>&nbsp;\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_share_social_site\"\r\n                                                          value=\"0\"/> <?php echo $text_disabled; ?>\r\n                                               <?php } else { ?>\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_share_social_site\"\r\n                                                          value=\"1\"/> <?php echo $text_enabled; ?>&nbsp;\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_share_social_site\" value=\"0\"\r\n                                                          checked=\"checked\"/> <?php echo $text_disabled; ?>\r\n                                               <?php } ?>\r\n                                           </div>\r\n                                       </div>\r\n                                   </div>\r\n                               </fieldset>\r\n                           </div>\r\n               ]]>\r\n\r\n\r\n           </add>\r\n       </operation>\r\n   </file>\r\n\r\n   <file path=\"admin/controller/setting/setting.php\">\r\n       <operation>\r\n           <search><![CDATA[$data[\'entry_status\'] = $this->language->get(\'entry_status\');]]></search>\r\n           <add position=\"after\"><![CDATA[\r\n               $data[\'entry_comment_approval\'] = $this->language->get(\'entry_comment_approval\');\r\n               $data[\'entry_author_information\'] = $this->language->get(\'entry_author_information\');\r\n               $data[\'entry_show_social_site_option\'] = $this->language->get(\'entry_show_social_site_option\');\r\n               $data[\'entry_related_article\'] = $this->language->get(\'entry_related_article\');\r\n     $data[\'entry_limit\'] = $this->language->get(\'entry_limit\');\r\n     $data[\'entry_description_limit\'] = $this->language->get(\'entry_description_limit\');\r\n\r\n           ]]></add>\r\n       </operation>\r\n\r\n       <operation>\r\n           <search><![CDATA[$data[\'text_google_captcha\'] = $this->language->get(\'text_google_captcha\');]]></search>\r\n           <add position=\"after\"><![CDATA[\r\n               $data[\'text_simple_blog\'] = $this->language->get(\'text_simple_blog\');\r\n               $data[\'text_blog_category\'] = $this->language->get(\'text_blog_category\');\r\n               $data[\'tab_blog\'] = $this->language->get(\'tab_blog\');\r\n           ]]></add>\r\n       </operation>\r\n\r\n       <operation>\r\n           <search><![CDATA[$data[\'help_google_captcha\'] = $this->language->get(\'help_google_captcha\');]]></search>\r\n           <add position=\"after\"><![CDATA[\r\n\r\n           $data[\'help_comment_approval\'] = $this->language->get(\'help_comment_approval\');\r\n           $data[\'help_author_information\'] = $this->language->get(\'help_author_information\');\r\n           $data[\'help_related_article\'] = $this->language->get(\'help_related_article\');\r\n           $data[\'help_show_social_site_option\'] = $this->language->get(\'help_show_social_site_option\');\r\n           $data[\'help_show_author\'] = $this->language->get(\'help_show_author\');\r\n     $data[\'help_limit\'] = $this->language->get(\'help_limit\');\r\n           ]]></add>\r\n       </operation>\r\n\r\n       <operation>\r\n           <search><![CDATA[$data[\'header\'] = $this->load->controller(\'common/header\');]]></search>\r\n           <add position=\"before\"><![CDATA[\r\n  if (isset($this->request->post[\'config_simple_blog_status\'])) {\r\n       $data[\'config_simple_blog_status\'] = $this->request->post[\'config_simple_blog_status\'];\r\n     } else if ($this->config->get(\'config_simple_blog_status\')) {\r\n       $data[\'config_simple_blog_status\'] = $this->config->get(\'config_simple_blog_status\');\r\n     }\r\n\r\n     if (isset($this->request->post[\'config_simple_blog_comment_auto_approval\'])) {\r\n       $data[\'config_simple_blog_comment_auto_approval\'] = $this->request->post[\'config_simple_blog_comment_auto_approval\'];\r\n     } else if ($this->config->get(\'config_simple_blog_comment_auto_approval\')) {\r\n       $data[\'config_simple_blog_comment_auto_approval\'] = $this->config->get(\'config_simple_blog_comment_auto_approval\');\r\n     }\r\n\r\n     if (isset($this->request->post[\'config_simple_blog_author_information\'])) {\r\n       $data[\'config_simple_blog_author_information\'] = $this->request->post[\'config_simple_blog_author_information\'];\r\n     } else if ($this->config->get(\'config_simple_blog_author_information\')) {\r\n       $data[\'config_simple_blog_author_information\'] = $this->config->get(\'config_simple_blog_author_information\');\r\n     }\r\n\r\n     if (isset($this->request->post[\'config_simple_blog_share_social_site\'])) {\r\n       $data[\'config_simple_blog_share_social_site\'] = $this->request->post[\'config_simple_blog_share_social_site\'];\r\n     } else if ($this->config->get(\'config_simple_blog_share_social_site\')) {\r\n       $data[\'config_simple_blog_share_social_site\'] = $this->config->get(\'config_simple_blog_share_social_site\');\r\n     }\r\n\r\n     if (isset($this->request->post[\'config_simple_blog_related_articles\'])) {\r\n       $data[\'config_simple_blog_related_articles\'] = $this->request->post[\'config_simple_blog_related_articles\'];\r\n     } else if ($this->config->get(\'config_simple_blog_related_articles\')) {\r\n       $data[\'config_simple_blog_related_articles\'] = $this->config->get(\'config_simple_blog_related_articles\');\r\n     }\r\n\r\n     if (isset($this->request->post[\'config_simple_blog_limit\'])) {\r\n       $data[\'config_simple_blog_limit\'] = $this->request->post[\'config_simple_blog_limit\'];\r\n     } elseif ($this->config->get(\'config_simple_blog_limit\')) {\r\n       $data[\'config_simple_blog_limit\'] = $this->config->get(\'config_simple_blog_limit\');\r\n     }\r\n     if (isset($this->request->post[\'config_simple_blog_description_limit\'])) {\r\n       $data[\'config_simple_blog_description_limit\'] = $this->request->post[\'config_simple_blog_description_limit\'];\r\n     } elseif ($this->config->get(\'config_simple_blog_description_limit\')) {\r\n       $data[\'config_simple_blog_description_limit\'] = $this->config->get(\'config_simple_blog_description_limit\');\r\n     }\r\n\r\n           ]]></add>\r\n       </operation>\r\n   </file>\r\n\r\n   <file path=\"admin/language/english/setting/setting.php\">\r\n       <operation>\r\n           <search><![CDATA[$_[\'text_google_captcha\']              = \'Google reCAPTCHA\';]]></search>\r\n           <add position=\"after\"><![CDATA[\r\n               $_[\'text_simple_blog\']              = \'Blog\';\r\n               $_[\'tab_blog\']              = \'Blog\';\r\n           ]]></add>\r\n       </operation>\r\n       <operation>\r\n           <search><![CDATA[$_[\'entry_status\']                     = \'Status\';]]></search>\r\n           <add position=\"after\"><![CDATA[\r\n               $_[\'entry_related_article\']    	= \'Related Article:\';\r\n               $_[\'entry_comment_approval\']	= \'Comment Auto approval:\';\r\n               $_[\'entry_author_information\']	= \'Author Information:\';\r\n               $_[\'entry_show_social_site_option\'] = \'Share with social site:\';\r\n               $_[\'entry_show_author\'] 		= \'Show Authors:\';\r\n       $_[\'entry_limit\']    = \'Limit\';\r\n       $_[\'entry_description_limit\']    = \'Description Symbol Limit\';\r\n               $_[\'help_comment_approval\']         = \'On Yes, Comment on the blog is auto approval.\';\r\n               $_[\'help_author_information\']       = \'On Enabled, information related to author will display.\';\r\n               $_[\'help_related_article\']          = \'On Enabled, Related article will display.\';\r\n               $_[\'help_show_social_site_option\']  = \'On Enabled, Article share with social networking site.\';\r\n$_[\'help_limit\']       = \'How many posts display per page (number)\';\r\n\r\n           ]]></add>\r\n       </operation>\r\n\r\n   </file>\r\n\r\n\r\n</modification>',1,'2015-09-30 17:21:49'),(197,'Blog Catalog','blog_catalog','http://www.templatemonster.com','2','','<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n<!-- Based on Simple Blog Module -->\r\n<modification>\r\n	<name>Blog Catalog</name>\r\n	<code>blog_catalog</code>\r\n	<version>2</version>\r\n	<author>http://www.templatemonster.com</author>\r\n    \r\n	<file path=\"catalog/controller/common/footer.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'powered\']]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n						if(($this->config->has(\'config_simple_blog_status\')) && ($this->config->get(\'config_simple_blog_status\'))) {\r\n				    $data[\'simple_blog_found\'] = 1;\r\n                    $tmp = $this->config->get(\'config_simple_blog_footer_heading\');\r\n				    if (!empty($tmp)) {\r\n				        $data[\'simple_blog_footer_heading\'] = $this->config->get(\'config_simple_blog_footer_heading\');\r\n				    } else {\r\n				        $data[\'simple_blog_footer_heading\'] = $this->language->get(\'text_simple_blog\');\r\n				    }\r\n                    $data[\'simple_blog\']	= $this->url->link(\'simple_blog/article\');\r\n				}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n    \r\n	<file path=\"catalog/language/*/common/footer.php\">\r\n		<operation>\r\n			<search><![CDATA[$_[\'text_powered\']]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$_[\'text_simple_blog\']   = \'Blog\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n    \r\n    <file path=\"catalog/controller/common/seo_url.php\">\r\n		\r\n        <operation>\r\n			<search><![CDATA[$this->request->get[\'route\'] = \'error/not_found\';]]></search>\r\n			<add position=\"replace\" offset=\"2\"><![CDATA[\r\n                /*if($this->db->escape($part) == \'simple-blog\') {\r\n                    \r\n                } else {\r\n                    $this->request->get[\'route\'] = \'error/not_found\';\r\n\r\n					break;\r\n                }*/\r\n                \r\n                if(($this->config->has(\'simple_blog_seo_keyword\')) && ($this->db->escape($part) == $this->config->get(\'simple_blog_seo_keyword\'))) {\r\n                    \r\n                } else if($this->db->escape($part) == \'simple-blog\') {\r\n                    \r\n                } else {\r\n                    $this->request->get[\'route\'] = \'error/not_found\';\r\n\r\n					break;\r\n                }\r\n                \r\n            ]]></add>\r\n		</operation>\r\n        \r\n		<operation>\r\n			<search><![CDATA[if ($url[0] == \'category_id\') {]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				if($url[0] == \'simple_blog_article_id\') {					\r\n					$this->request->get[\'simple_blog_article_id\'] = $url[1];\r\n				}\r\n				\r\n				if($url[0] == \'simple_blog_author_id\') {\r\n					$this->request->get[\'simple_blog_author_id\'] = $url[1];\r\n				}\r\n				\r\n				if ($url[0] == \'simple_blog_category_id\') {\r\n					if (!isset($this->request->get[\'simple_blog_category_id\'])) {\r\n						$this->request->get[\'simple_blog_category_id\'] = $url[1];\r\n					} else {\r\n						$this->request->get[\'simple_blog_category_id\'] .= \'_\' . $url[1];\r\n					}\r\n				}\r\n				\r\n			]]></add>\r\n		</operation>\r\n        \r\n		\r\n		<operation>\r\n			<search><![CDATA[$this->request->get[\'route\'] = \'information/information\';]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n					$this->request->get[\'route\'] = \'information/information\';\r\n				} else if (isset($this->request->get[\'simple_blog_article_id\'])) {\r\n					$this->request->get[\'route\'] = \'simple_blog/article/view\';\r\n				} else if (isset($this->request->get[\'simple_blog_author_id\'])) {\r\n					$this->request->get[\'route\'] = \'simple_blog/author\';\r\n				} else if (isset($this->request->get[\'simple_blog_category_id\'])) {\r\n					$this->request->get[\'route\'] = \'simple_blog/category\';\r\n				} /*else if ($this->request->get[\'_route_\'] ==  \'simple-blog\') {\r\n					$this->request->get[\'route\'] = \'simple_blog/article\';*/\r\n                    \r\n                    else {\r\n                        if(($this->config->has(\'simple_blog_seo_keyword\'))) {\r\n                            if($this->request->get[\'_route_\'] == $this->config->get(\'simple_blog_seo_keyword\')) {\r\n                                $this->request->get[\'route\'] = \'simple_blog/article\';\r\n                            }\r\n                        } if($this->request->get[\'_route_\'] == \'simple-blog\') {\r\n                            $this->request->get[\'route\'] = \'simple_blog/article\';\r\n                        }\r\n		\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search><![CDATA[} elseif ($key == \'path\') {]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n				} else if($data[\'route\'] == \'simple_blog/article/view\' && $key == \'simple_blog_article_id\') {\r\n					\r\n					$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"url_alias WHERE `query` = \'\" . $this->db->escape($key . \'=\' . (int)$value) . \"\'\");\r\n					\r\n					if ($query->num_rows) {\r\n						$url .= \'/\' . $query->row[\'keyword\'];\r\n						unset($data[$key]);\r\n					} else {\r\n						$url .= \'/simple-blog/\' . (int)$value;	\r\n						unset($data[$key]);\r\n					}\r\n					\r\n				} else if($data[\'route\'] == \'simple_blog/author\' && $key == \'simple_blog_author_id\') {\r\n					$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"url_alias WHERE `query` = \'\" . $this->db->escape($key . \'=\' . (int)$value) . \"\'\");\r\n					\r\n					if ($query->num_rows) {\r\n						$url .= \'/\' . $query->row[\'keyword\'];\r\n						unset($data[$key]);\r\n					} else {\r\n						$url .= \'/simple-blog/\' . (int)$value;	\r\n						unset($data[$key]);\r\n					}\r\n				} else if($data[\'route\'] == \'simple_blog/category\' && $key == \'simple_blog_category_id\') {\r\n				\r\n					$blog_categories = explode(\"_\", $value);\r\n					\r\n					foreach ($blog_categories as $blog_category) {\r\n						$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"url_alias WHERE `query` = \'simple_blog_category_id=\" . (int)$blog_category . \"\'\");\r\n						\r\n						if ($query->num_rows) {\r\n							$url .= \'/\' . $query->row[\'keyword\'];\r\n						} else {\r\n							$url .= \'/simple-category\' . $blog_category;\r\n						}\r\n					}\r\n					unset($data[$key]);\r\n										\r\n				} else if($data[\'route\'] == \'simple_blog/search\') {\r\n					//echo $data[\'route\'];\r\n					if(isset($key) && ($key == \'blog_search\')) {\r\n						$url .= \'/search&blog_search=\' . $value;\r\n					} else {\r\n						$url .= \'/search\';\r\n					}		\r\n					//echo $url; \r\n				} else if(isset($data[\'route\']) && $data[\'route\'] == \'simple_blog/article\' && $key != \'simple_blog_article_id\' && $key != \'simple_blog_author_id\' && $key != \'simple_blog_category_id\' && $key != \'page\') {\r\n				    \r\n                    if($this->config->has(\'simple_blog_seo_keyword\')) {\r\n                        $url .=  \'/\' . $this->config->get(\'simple_blog_seo_keyword\');\r\n                    } else {\r\n                        $url .=  \'/simple-blog\';\r\n                    }\r\n				} elseif ($key == \'path\') {\r\n			]]></add>\r\n		</operation>\r\n	</file>	\r\n	\r\n</modification>',1,'2015-09-23 14:54:51'),(199,'Export/Import Tool for OpenCart 2.0.x','Export/Import Tool for OpenCart 2.0.x','mhccorp.com','2.0.x-2.26','','<modification>\n	<name>Export/Import Tool for OpenCart 2.0.x</name>\n	<code>Export/Import Tool for OpenCart 2.0.x</code>\n	<version>2.0.x-2.26</version>\n	<author>mhccorp.com</author>\n	<file path=\"admin/controller/common/menu.php\">\n		<operation>\n			<search><![CDATA[$data[\'text_backup\'] = $this->language->get(\'text_backup\');]]></search>\n			<add position=\"after\"><![CDATA[\n		$data[\'text_export_import\'] = $this->language->get(\'text_export_import\');\n			]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[$data[\'backup\'] = $this->url->link(\'tool/backup\', \'token=\' . $this->session->data[\'token\'], \'SSL\');]]></search>\n			<add position=\"after\"><![CDATA[\n		$data[\'export_import\'] = $this->url->link(\'tool/export_import\', \'token=\' . $this->session->data[\'token\'], \'SSL\');\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/language/*/common/menu.php\">\n		<operation>\n			<search><![CDATA[$_[\'text_backup\']                      = \'Backup / Restore\';]]></search>\n			<add position=\"after\"><![CDATA[\n$_[\'text_export_import\']               = \'Export / Import\';\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/view/template/common/menu.tpl\">\n		<operation>\n			<search><![CDATA[<li><a href=\"<?php echo $backup; ?>\"><?php echo $text_backup; ?></a></li>]]></search>\n			<add position=\"after\"><![CDATA[\n      <li><a href=\"<?php echo $export_import; ?>\"><?php echo $text_export_import; ?></a></li>\n			]]></add>\n		</operation>\n	</file>\n</modification>\n',1,'2015-09-25 16:55:34'),(201,'TM Pages Lang','lang','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Pages Lang</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>lang</code>\r\n	<file path=\"catalog/language/english/information/sitemap.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n				$_[\'text_contact\']     = \'Contact Us\';\r\n				]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n				$_[\'text_category\']     = \'Categories\';\r\n				$_[\'text_pages\']     = \'Pages\';\r\n				]]></add>\r\n        </operation>\r\n	</file>\r\n	<file path=\"catalog/controller/information/sitemap.php\">\r\n		<operation>\r\n			<search><![CDATA[ $data[\'text_contact\'] = $this->language->get(\'text_contact\'); ]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$data[\'text_category\'] = $this->language->get(\'text_category\');\r\n				$data[\'text_pages\'] = $this->language->get(\'text_pages\');\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n		<file path=\"catalog/controller/product/compare.php\">\r\n		<operation>\r\n			<search><![CDATA[ $json[\'success\'] = sprintf($this->language->get(\'text_success\'), $this->url->link(\'product/product\', \'product_id=\' . $this->request->post[\'product_id\']), $product_info[\'name\'], $this->url->link(\'product/compare\'));]]></search>\r\n			<add position=\"replace\" offset=\"2\"><![CDATA[]]></add>\r\n		</operation>\r\n\r\n			<operation>\r\n			<search><![CDATA[ $this->session->data[\'compare\'][] = $this->request->post[\'product_id\'];]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$json[\'success\'] = sprintf($this->language->get(\'text_success\'), $this->url->link(\'product/product\', \'product_id=\' . $this->request->post[\'product_id\']), $product_info[\'name\'], $this->url->link(\'product/compare\'));\r\n\r\n			$json[\'total\'] = sprintf($this->language->get(\'text_compare\'), (isset($this->session->data[\'compare\']) ? count($this->session->data[\'compare\']) : 0));\r\n				]]></add>\r\n		</operation>\r\n			<operation>\r\n			<search><![CDATA[ array_shift($this->session->data[\'compare\']); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$json[\'warning\'] = $this->language->get(\'text_warning\');\r\n				]]></add>\r\n		</operation>\r\n			<operation>\r\n			<search><![CDATA[ $json[\'total\'] = sprintf($this->language->get(\'text_compare\'), (isset($this->session->data[\'compare\']) ? count($this->session->data[\'compare\']) : 0)); ]]></search>\r\n			<add position=\"after\" offset=\"2\"><![CDATA[ \r\n				else{\r\n					$json[\'info\'] = $this->language->get(\'text_info\');\r\n				}\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n\r\n	<file path=\"catalog/language/english/product/compare.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_reviews\']      = \'Based on %s reviews.\'; ]]></search>\r\n			<add position=\"replace\"><![CDATA[		\r\n			$_[\'text_reviews\']      = \'%s reviews.\';\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_summary\']      = \'Summary\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n			$_[\'text_info\']      = \'This product already added in comparison list!\';\r\n			$_[\'text_warning\']      = \'Maximum products to compare is 4. First added product has been removed from comparison list.\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/language/russian/product/compare.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_reviews\']      = \'Всего отзывов: %s\'; ]]></search>\r\n			<add position=\"replace\"><![CDATA[		\r\n			$_[\'text_reviews\']      = \'Отзывов: %s\';\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_summary\']      = \'Краткое описание\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n			$_[\'text_info\']      = \'Данный товар уже добавлен в список сравнения!\';\r\n			$_[\'text_warning\']      = \'Максимальное количество продуктов для сравнения - 4. Первый добавленный продукт удален со списка.\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/language/de-DE/product/compare.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_summary\']		= \'Zusammenfassung\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n			$_[\'text_info\']      = \'Dieses Produkt ist bereits in Vergleichsliste hinzugefügt!\';\r\n			$_[\'text_warning\']      = \'Maximale Artikel zum Vergleichen ist 4. Erste hinzugefügt Produkt wurde aus Vergleichsliste entfernt wurden.\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"system/library/pagination.php\">\r\n		<operation>\r\n			<search><![CDATA[ 	public $num_links = 8; ]]></search>\r\n			<add position=\"replace\"><![CDATA[		\r\n				public $num_links = 3;\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-09-28 11:05:43'),(212,'TM Footer Position','5','http://www.templatemonster.com','1.0','http://www.templatemonster.com','<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Footer Position</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>5</code>\r\n	<file path=\"catalog/controller/common/footer.php\">\r\n		<operation>\r\n			<search><![CDATA[ $data[\'text_information\'] = $this->language->get(\'text_information\'); ]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$data[\'maintenance\'] = $this->config->get(\'config_maintenance\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'newsletter\'] = $this->url->link(\'account/newsletter\', \'\', \'SSL\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'footer_top\'] = $this->load->controller(\'common/footer_top\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n		<file path=\"catalog/controller/common/home.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'content_top\'] = $this->load->controller(\'common/content_top\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'footer_bottom\'] = $this->load->controller(\'common/footer_bottom\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/design/layout_form.tpl\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			<?php if ($layout_module[\'position\'] == \'content_top\') { ?>\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			<?php if ($layout_module[\'position\'] == \'footer_top\') { ?>\r\n					<option value=\"footer_top\" selected=\"selected\"><?php echo $text_footer_top; ?></option>\r\n					<?php } else { ?>\r\n					<option value=\"footer_top\"><?php echo $text_footer_top; ?></option>\r\n					<?php } ?>\r\n					<?php if ($layout_module[\'position\'] == \'footer_bottom\') { ?>\r\n					<option value=\"footer_bottom\" selected=\"selected\"><?php echo $text_footer_bottom; ?></option>\r\n					<?php } else { ?>\r\n					<option value=\"footer_bottom\"><?php echo $text_footer_bottom; ?></option>\r\n					<?php } ?>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			html += \'    <option value=\"content_top\"><?php echo $text_content_top; ?></option>\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				html += \'    <option value=\"footer_top\"><?php echo $text_footer_top; ?></option>\';\r\n				html += \'    <option value=\"footer_bottom\"><?php echo $text_footer_bottom; ?></option>\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/design/layout.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'text_content_top\'] = $this->language->get(\'text_content_top\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'text_footer_top\'] = $this->language->get(\'text_footer_top\');\r\n			$data[\'text_footer_bottom\'] = $this->language->get(\'text_footer_bottom\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/language/english/design/layout.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_content_top\']    = \'Content Top\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'text_footer_top\']    = \'Footer\';\r\n			$_[\'text_footer_bottom\']    = \'Footer Bottom\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>',1,'2015-10-05 15:22:39'),(213,'<font color=\"#00a99d\"><b>Code Market - PagSeguro Lightbox com Se','Code Market - PagSeguro Lightbox com Segunda Via','<font color=\"#00a99d\"><b>Code Markert - codemarket.com.br</b></f','1.2','http://www.codemarket.com.br','<modification>\r\n  <name><![CDATA[<font color=\"#00a99d\"><b>Code Market - PagSeguro Lightbox com Segunda Via</b></font>]]></name>\r\n  <version>1.2</version>\r\n  <code>Code Market - PagSeguro Lightbox com Segunda Via</code>\r\n         <author><![CDATA[<font color=\"#00a99d\"><b>Code Markert - codemarket.com.br</b></font>]]></author>\r\n    <link>http://www.codemarket.com.br</link>\r\n\r\n    <file path=\"catalog/view/theme/*/template/checkout/checkout.tpl\">\r\n		<operation>\r\n			<search position=\"before\">\r\n				<![CDATA[<?php echo $footer; ?>\r\n                ]]>\r\n			</search>\r\n			<add>\r\n				<![CDATA[\r\n				<script type=\"text/javascript\" src=\"https://stc.pagseguro.uol.com.br/pagseguro/api/v2/checkout/pagseguro.lightbox.js\"></script>\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/view/theme/*/template/payment/pagseguro.tpl\">\r\n		<operation>\r\n			<search position=\"replace\">\r\n				<![CDATA[location = \'<?php echo $url; ?>\';\r\n                    ]]>\r\n			</search>\r\n			<add>\r\n				<![CDATA[\r\n                    PagSeguroLightbox({\r\n                     code: \'<?php echo substr($url,59); ?>\'\r\n                     }, {\r\n                     success : function(transactionCode) {\r\n                     	 location.href=\'index.php?route=checkout/success\';\r\n                     },\r\n                     abort : function() {\r\n                     alert(\"Pagamento incompleto!, efetue o Pedido Novamente e conclua o Pagamento.\");\r\n                     }\r\n                     });\r\n                    if (!PagSeguroLightbox){\r\n                     location.href=\'<?php echo $url; ?>\';\r\n                    }\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/language/*/payment/pagseguro.php\">\r\n		<operation>\r\n			<search position=\"replace\">\r\n				<![CDATA[$_[\'button_confirm_pagseguro\'] 	= \'Confirmar e ir para o PagSeguro\';\r\n                ]]>\r\n			</search>\r\n			<add>\r\n				<![CDATA[\r\n			$_[\'button_confirm_pagseguro\'] 	= \'Confirmar e abrir o PagSeguro\';\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n</modification>\r\n',1,'2016-10-11 03:52:57');
/*!40000 ALTER TABLE `oc_modification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_module`
--

LOCK TABLES `oc_module` WRITE;
/*!40000 ALTER TABLE `oc_module` DISABLE KEYS */;
INSERT INTO `oc_module` VALUES (33,'banner-top','banner','a:5:{s:4:\"name\";s:10:\"banner-top\";s:9:\"banner_id\";s:2:\"14\";s:5:\"width\";s:4:\"1331\";s:6:\"height\";s:3:\"541\";s:6:\"status\";s:1:\"1\";}'),(28,'Featured  Aside','featured','a:6:{s:4:\"name\";s:15:\"Featured  Aside\";s:7:\"product\";a:8:{i:0;s:2:\"43\";i:1;s:2:\"40\";i:2;s:2:\"30\";i:3;s:2:\"42\";i:4;s:2:\"33\";i:5;s:2:\"46\";i:6;s:2:\"32\";i:7;s:2:\"28\";}s:5:\"limit\";s:1:\"1\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"270\";s:6:\"status\";s:1:\"1\";}'),(51,'Featured Home','featured','a:6:{s:4:\"name\";s:13:\"Featured Home\";s:7:\"product\";a:7:{i:0;s:3:\"134\";i:1;s:3:\"135\";i:2;s:2:\"91\";i:3;s:3:\"171\";i:4;s:3:\"101\";i:5;s:3:\"170\";i:6;s:3:\"140\";}s:5:\"limit\";s:1:\"9\";s:5:\"width\";s:3:\"500\";s:6:\"height\";s:3:\"500\";s:6:\"status\";s:1:\"1\";}'),(46,'Tm Slideshow','tm_slideshow','a:5:{s:4:\"name\";s:12:\"Tm Slideshow\";s:9:\"banner_id\";s:2:\"16\";s:5:\"width\";s:4:\"2050\";s:6:\"height\";s:3:\"620\";s:6:\"status\";s:1:\"1\";}'),(42,'Facebook','tm_fbbox','a:10:{s:4:\"name\";s:8:\"Facebook\";s:8:\"page_url\";s:39:\"https://www.facebook.com/Casaflores2016\";s:6:\"app_id\";s:15:\"734741803247761\";s:13:\"show_facepile\";s:4:\"true\";s:2:\"bg\";s:5:\"false\";s:10:\"show_posts\";s:4:\"true\";s:5:\"width\";s:3:\"295\";s:6:\"height\";s:3:\"214\";s:8:\"language\";s:5:\"en_US\";s:6:\"status\";s:1:\"1\";}'),(43,'Bestsellers Aside','bestseller','a:5:{s:4:\"name\";s:17:\"Bestsellers Aside\";s:5:\"limit\";s:1:\"1\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"270\";s:6:\"status\";s:1:\"1\";}'),(48,'Specials Home','special','a:5:{s:4:\"name\";s:13:\"Specials Home\";s:5:\"limit\";s:1:\"5\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"270\";s:6:\"status\";s:1:\"1\";}'),(66,'BestSellers Home','bestseller','a:5:{s:4:\"name\";s:16:\"BestSellers Home\";s:5:\"limit\";s:1:\"4\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"270\";s:6:\"status\";s:1:\"1\";}'),(67,'Specials Aside','special','a:5:{s:4:\"name\";s:14:\"Specials Aside\";s:5:\"limit\";s:1:\"1\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"270\";s:6:\"status\";s:1:\"1\";}'),(68,'Latest Home','latest','a:5:{s:4:\"name\";s:11:\"Latest Home\";s:5:\"limit\";s:1:\"4\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"270\";s:6:\"status\";s:1:\"1\";}'),(69,'Latest Aside','latest','a:5:{s:4:\"name\";s:12:\"Latest Aside\";s:5:\"limit\";s:1:\"1\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"270\";s:6:\"status\";s:1:\"1\";}'),(78,'tabs','tm_module_tab','a:10:{s:4:\"name\";s:4:\"tabs\";s:7:\"special\";s:1:\"1\";s:10:\"bestseller\";s:1:\"1\";s:6:\"latest\";s:1:\"1\";s:8:\"featured\";s:1:\"1\";s:7:\"product\";a:4:{i:0;s:2:\"35\";i:1;s:2:\"33\";i:2;s:2:\"28\";i:3;s:2:\"47\";}s:5:\"limit\";s:1:\"5\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"270\";s:6:\"status\";s:1:\"1\";}'),(90,'Blog Categories','tm_blog_category','a:3:{s:6:\"status\";s:1:\"1\";s:4:\"name\";s:15:\"Blog Categories\";s:23:\"category_search_article\";s:1:\"1\";}'),(91,'Blog Popular Articles','tm_blog_articles','a:12:{s:6:\"status\";s:1:\"1\";s:4:\"name\";s:21:\"Blog Popular Articles\";s:13:\"article_limit\";s:1:\"3\";s:13:\"show_readmore\";s:1:\"0\";s:9:\"show_date\";s:1:\"0\";s:11:\"show_author\";s:1:\"0\";s:13:\"show_comments\";s:1:\"0\";s:10:\"show_image\";s:1:\"0\";s:11:\"image_width\";s:1:\"0\";s:12:\"image_height\";s:1:\"0\";s:17:\"description_limit\";s:3:\"150\";s:11:\"category_id\";s:7:\"popular\";}'),(93,'banner-bottom','banner','a:5:{s:4:\"name\";s:13:\"banner-bottom\";s:9:\"banner_id\";s:2:\"17\";s:5:\"width\";s:4:\"1331\";s:6:\"height\";s:3:\"325\";s:6:\"status\";s:1:\"1\";}'),(94,'banner-top-2','banner','a:5:{s:4:\"name\";s:12:\"banner-top-2\";s:9:\"banner_id\";s:2:\"18\";s:5:\"width\";s:4:\"1331\";s:6:\"height\";s:3:\"310\";s:6:\"status\";s:1:\"1\";}'),(95,'TM Newsletter Popup','tm_newsletter_popup','a:7:{s:4:\"name\";s:19:\"TM Newsletter Popup\";s:19:\"newsletter_popup_bg\";s:25:\"catalog/newsletter-bg.jpg\";s:25:\"newsletter_popup_bg_width\";s:3:\"721\";s:26:\"newsletter_popup_bg_height\";s:3:\"622\";s:23:\"newsletter_popup_cookie\";s:1:\"1\";s:31:\"tm_newsletter_popup_description\";a:1:{i:4;a:2:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";}}s:6:\"status\";s:1:\"0\";}'),(99,'banner-info','banner','a:5:{s:4:\"name\";s:11:\"banner-info\";s:9:\"banner_id\";s:2:\"19\";s:5:\"width\";s:3:\"570\";s:6:\"height\";s:3:\"150\";s:6:\"status\";s:1:\"1\";}');
/*!40000 ALTER TABLE `oc_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option`
--

LOCK TABLES `oc_option` WRITE;
/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
INSERT INTO `oc_option` VALUES (1,'radio',1),(2,'checkbox',2),(4,'text',3),(5,'select',40),(6,'textarea',5),(7,'file',6),(8,'date',7),(9,'time',8),(10,'datetime',9),(11,'select',10),(12,'date',11),(13,'radio',1),(14,'textarea',41);
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_description`
--

LOCK TABLES `oc_option_description` WRITE;
/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
INSERT INTO `oc_option_description` VALUES (1,4,'Radio'),(2,4,'Checkbox'),(4,4,'Text'),(6,4,'Textarea'),(7,4,'File'),(5,4,'Período de entrega'),(9,4,'Time'),(12,4,'Delivery Date'),(11,4,'Size'),(13,4,'Color'),(10,4,'Date e Horário'),(8,4,'Data de entrega'),(14,4,'Cartão Simples Cortesia Branco - Escreva aqui a mensagem do seu cartão.');
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value`
--

LOCK TABLES `oc_option_value` WRITE;
/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
INSERT INTO `oc_option_value` VALUES (43,1,'',3),(32,1,'',1),(45,2,'',4),(44,2,'',3),(40,5,'',2),(39,5,'',1),(31,1,'',2),(23,2,'',1),(24,2,'',2),(46,11,'',1),(47,11,'',2),(48,11,'',3),(49,13,'catalog/product-06.png',1),(50,13,'catalog/product-02.png',2),(51,13,'catalog/product-42.png',3);
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value_description`
--

LOCK TABLES `oc_option_value_description` WRITE;
/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
INSERT INTO `oc_option_value_description` VALUES (43,4,1,'Large'),(32,4,1,'Small'),(45,4,2,'Checkbox 4'),(44,4,2,'Checkbox 3'),(31,4,1,'Medium'),(40,4,5,'Tarde'),(39,4,5,'Manhã'),(23,4,2,'Checkbox 1'),(24,4,2,'Checkbox 2'),(48,4,11,'Large'),(47,4,11,'Medium'),(46,4,11,'Small'),(49,4,13,'black'),(50,4,13,'white'),(51,4,13,'red');
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order`
--

LOCK TABLES `oc_order` WRITE;
/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
INSERT INTO `oc_order` VALUES (3,0,'INV-2013-00',0,'Watches online store','http://localhost/theme497/',1,1,'Demo','Demo','demo@demo.com','5555555555','','b:0;','Demo','Demo','Demo','Demo','','Demo','5555555555','United Kingdom',222,'Cheshire',3529,'','b:0;','Cash On Delivery','cod','Demo','Demo','Demo','Demo','','Demo','5555555555','United Kingdom',222,'Cheshire',3529,'','b:0;','Flat Shipping Rate','flat.flat','',2470.0000,0,0,0.0000,0,'',1,2,'USD',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.2; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2014-12-23 00:33:59','2014-12-23 00:33:59'),(4,0,'INV-2013-00',0,'Watches online store','http://localhost/theme497/',1,1,'Demo','Demo','demo@demo.com','5555555555','','b:0;','Demo','Demo','Demo','Demo','','Demo','5555555555','United Kingdom',222,'Cheshire',3529,'','b:0;','Cash On Delivery','cod','Demo','Demo','Demo','Demo','','Demo','5555555555','United Kingdom',222,'Cheshire',3529,'','b:0;','Flat Shipping Rate','flat.flat','',142.0000,0,0,0.0000,0,'',1,2,'USD',1.00000000,'::1','','Mozilla/5.0 (Windows NT 6.2; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2014-12-23 01:16:04','2014-12-23 01:16:04'),(5,0,'INV-2013-00',0,'Watches online store','http://192.168.9.27/opencart-2-0/theme497/',0,1,'fdghfdgh','gfhjgdhj','dfsfd@r.ru','32456345','','a:0:{}','fdghfdgh','gfhjgdhj','','dsfghdzfgh','','gfbhdh','24353','Aaland Islands',244,'',0,'','a:0:{}','Cash On Delivery','cod','fdghfdgh','gfhjgdhj','','dsfghdzfgh','','gfbhdh','24353','Aaland Islands',244,'',0,'','a:0:{}','Flat Shipping Rate','flat.flat','',500.0000,0,0,0.0000,0,'',1,2,'USD',1.00000000,'192.168.9.111','','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2015-08-20 14:29:03','2015-08-20 14:29:03'),(6,0,'INV-2013-00',0,'Watches online store','http://192.168.9.27/opencart-2-0/theme497/',2,1,'demo','demo','demo@demolink.org','123456789','','b:0;','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Cash On Delivery','cod','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Flat Shipping Rate','flat.flat','',124.0000,0,0,0.0000,0,'',1,2,'USD',1.00000000,'192.168.9.111','','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2015-08-26 17:30:34','2015-08-26 17:30:34'),(7,0,'INV-2013-00',0,'Watches online store','http://192.168.9.27/opencart-2-0/theme497/',2,1,'demo','demo','demo@demolink.org','123456789','','b:0;','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Cash On Delivery','cod','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Flat Shipping Rate','flat.flat','',124.0000,0,0,0.0000,0,'',1,2,'USD',1.00000000,'192.168.9.111','','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2015-08-26 17:33:43','2015-08-26 17:33:43'),(8,0,'INV-2013-00',0,'Watches online store','http://192.168.9.27/opencart-2-0/theme497/',2,1,'demo','demo','demo@demolink.org','123456789','','b:0;','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Cash On Delivery','cod','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Flat Shipping Rate','flat.flat','',124.0000,0,0,0.0000,0,'',1,2,'USD',1.00000000,'192.168.9.111','','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2015-08-26 17:35:07','2015-08-26 17:35:07'),(9,0,'INV-2013-00',0,'Watches online store','http://192.168.9.27/opencart-2-0/theme497/',2,1,'demo','demo','demo@demolink.org','123456789','','b:0;','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Cash On Delivery','cod','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Flat Shipping Rate','flat.flat','',124.0000,0,0,0.0000,0,'',1,2,'USD',1.00000000,'192.168.9.111','','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2015-08-26 17:38:52','2015-08-26 17:38:52'),(10,0,'INV-2013-00',0,'Watches online store','http://192.168.9.27/opencart-2-0/theme497/',2,1,'demo','demo','demo@demolink.org','123456789','','b:0;','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Cash On Delivery','cod','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Flat Shipping Rate','flat.flat','',124.0000,0,0,0.0000,0,'',1,2,'USD',1.00000000,'192.168.9.111','','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2015-08-26 17:40:14','2015-08-26 17:40:14'),(13,0,'INV-2013-00',0,'Watches online store','http://192.168.9.27/opencart-2-0/theme497/',2,1,'demo','demo','demo@demolink.org','123456789','','b:0;','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'County Antrim',3949,'','b:0;','Cash On Delivery','cod','','','','','','','','',0,'',0,'','a:0:{}','','','',674.0000,0,0,0.0000,0,'',1,2,'USD',1.00000000,'192.168.9.111','','Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:43.0) Gecko/20100101 Firefox/43.0','en-US,en;q=0.5','2015-08-28 18:27:12','2015-08-28 18:27:12'),(14,0,'INV-2013-00',0,'Watches online store','http://192.168.9.27/opencart-2-0/theme497/',0,1,'demo','demo','demo@demolink.org','123456789','','a:0:{}','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'Cambridgeshire',3525,'','a:0:{}','Оплата при доставке','cod','demo','demo','','demo demo','','demo','12345','United Kingdom',222,'Cambridgeshire',3525,'','a:0:{}','Доставка с фиксированной стоимостью доставки','flat.flat','',148.0000,0,0,0.0000,0,'',3,2,'USD',1.00000000,'192.168.9.111','','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0','ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3','2015-08-31 09:35:57','2015-08-31 09:35:57'),(16,0,'CASAFLORES-',0,'Casa Flores','http://casaflores.com.br/',7,1,'Fausto','Simaro VIeira','fausto.vieira@agenciaisland.com.br','1992340239','','b:0;','Fausto','Simaro VIeira','','Rua Antônio de Macedo Soares, 1471 - apto 72','Campo Belo','São Paulo','04607002','Brasil',30,'São Paulo',464,'','b:0;','PagSeguro','pagseguro','Fausto','Simaro VIeira','','Rua Antônio de Macedo Soares, 1471 - apto 72','Campo Belo','São Paulo','04607002','Brasil',30,'São Paulo',464,'','b:0;','Zona Sul I','joseanmatias_faixa_cep.joseanmatias_faixa_cep','',79.9000,1,0,0.0000,0,'',4,4,'BRL',1.00000000,'172.17.0.1','179.98.217.46','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-09-22 05:59:47','2016-09-22 05:59:53'),(17,0,'CASAFLORES-',0,'Casa Flores','http://casaflores.com.br/',7,1,'Fausto','Simaro VIeira','fausto.vieira@agenciaisland.com.br','1992340239','','b:0;','Fausto','Simaro VIeira','','Rua Antônio de Macedo Soares, 1471 - apto 72','Campo Belo','São Paulo','04607002','Brasil',30,'São Paulo',464,'','b:0;','PagSeguro','pagseguro','Fausto','Simaro VIeira','','Rua Antônio de Macedo Soares, 1471 - apto 72','Campo Belo','São Paulo','04607002','Brasil',30,'São Paulo',464,'','b:0;','Zona Sul I','joseanmatias_faixa_cep.joseanmatias_faixa_cep','',79.9000,22,0,0.0000,0,'',4,4,'BRL',1.00000000,'172.17.0.1','179.98.217.46','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-09-22 06:01:56','2016-10-07 10:20:02'),(18,0,'CASAFLORES-',0,'Casa Flores','http://casaflores.com.br/',8,1,'patricia','olivani','patricia.olivani@gmail.com','55426594','','b:0;','patricia','olivani','','alameda dos jurupis, 1173','moema','sao paulo','04088003','Brasil',30,'São Paulo',464,'','b:0;','PagSeguro','pagseguro','fausto','oliveira','304987074','av dr cardoso de melho 1280','vila olimpia','São Paulo','04607002','Brasil',30,'São Paulo',464,'','b:0;','Zona Sul I','joseanmatias_faixa_cep.joseanmatias_faixa_cep','abc',104.9000,22,0,0.0000,0,'',4,4,'BRL',1.00000000,'172.17.0.1','187.43.96.128','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-10-04 19:13:27','2016-10-17 09:59:02'),(19,0,'CASAFLORES-',0,'Casa Flores','http://casaflores.com.br/',6,1,'Fernando','de Figueiredo Mendes','fernando.mendes@webca.com.br','11976495157','','b:0;','Fernando','de Figueiredo Mendes','','Lomas Valentinas','241','Sao Caetano do Sul','09560260','Brasil',30,'São Paulo',464,'','b:0;','PagSeguro','pagseguro','Fernando','de Figueiredo Mendes','','Lomas Valentinas','241','Sao Caetano do Sul','09560260','Brasil',30,'São Paulo',464,'','b:0;','Centro e Avenida Paulista','joseanmatias_faixa_cep.joseanmatias_faixa_cep','',79.0000,0,0,0.0000,0,'',4,4,'BRL',1.00000000,'172.17.0.1','189.29.132.82','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36','en-US,en;q=0.8,pt;q=0.6','2016-10-05 21:58:14','2016-10-05 21:58:14'),(20,0,'CASAFLORES-',0,'Casa Flores','http://casaflores.com.br/',6,1,'Fernando','de Figueiredo Mendes','fernando.mendes@webca.com.br','11976495157','','b:0;','Fernando','de Figueiredo Mendes','','Lomas Valentinas','241','Sao Caetano do Sul','09560260','Brasil',30,'São Paulo',464,'','b:0;','PagSeguro','pagseguro','Fernando','de Figueiredo Mendes','','Lomas Valentinas','241','Sao Caetano do Sul','09560260','Brasil',30,'São Paulo',464,'','b:0;','Centro e Avenida Paulista','joseanmatias_faixa_cep.joseanmatias_faixa_cep','',133.0000,0,0,0.0000,0,'',4,4,'BRL',1.00000000,'172.17.0.1','189.29.132.82','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36','en-US,en;q=0.8,pt;q=0.6','2016-10-05 22:05:02','2016-10-05 22:05:02'),(21,0,'CASAFLORES-',0,'Casa Flores','http://casaflores.com.br/',9,1,'Linneu','Vieira Junior','linneuvieira@hotmail.com','1150935684','','b:0;','Linneu','Vieira Junior','','Rua Antônio de Macedo Soares, 1471 ','Campo Belo','São Paulo','04607002','Brasil',30,'São Paulo',464,'','b:0;','PagSeguro','pagseguro','Linneu','Vieira Junior','','Rua Antônio de Macedo Soares, 1471 ','Campo Belo','São Paulo','04607002','Brasil',30,'São Paulo',464,'','b:0;','Zona Sul I','joseanmatias_faixa_cep.joseanmatias_faixa_cep','',74.0000,0,0,0.0000,0,'',4,4,'BRL',1.00000000,'172.17.0.1','191.23.72.144','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36 Edge/14.14393','pt-BR,pt;q=0.5','2016-10-05 22:11:52','2016-10-05 22:11:52'),(22,0,'CASAFLORES-',0,'Casa Flores','http://casaflores.com.br/',9,1,'Linneu','Vieira Junior','linneuvieira@hotmail.com','1150935684','','b:0;','Linneu','Vieira Junior','','Rua Antônio de Macedo Soares, 1471 ','Campo Belo','São Paulo','04607002','Brasil',30,'São Paulo',464,'','b:0;','PagSeguro','pagseguro','Linneu','Vieira Junior','','Rua Antônio de Macedo Soares, 1471 ','Campo Belo','São Paulo','04607002','Brasil',30,'São Paulo',464,'','b:0;','Zona Sul I','joseanmatias_faixa_cep.joseanmatias_faixa_cep','',74.0000,1,0,0.0000,0,'',4,4,'BRL',1.00000000,'172.17.0.1','191.23.72.144','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79 Safari/537.36 Edge/14.14393','pt-BR,pt;q=0.5','2016-10-05 22:13:12','2016-10-05 22:13:23'),(23,0,'CASAFLORES-',0,'Casa Flores','http://casaflores.com.br/',6,1,'Fernando','de Figueiredo Mendes','fernando.mendes@webca.com.br','11976495157','','b:0;','Fernando','de Figueiredo Mendes','','Lomas Valentinas','241','Sao Caetano do Sul','09560260','Brasil',30,'São Paulo',464,'','b:0;','PagSeguro','pagseguro','Fernando','de Figueiredo Mendes','','Lomas Valentinas','241','Sao Caetano do Sul','09560260','Brasil',30,'São Paulo',464,'','b:0;','Centro e Avenida Paulista','joseanmatias_faixa_cep.joseanmatias_faixa_cep','',133.0000,0,0,0.0000,0,'',4,4,'BRL',1.00000000,'172.17.0.1','189.29.132.82','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36','en-US,en;q=0.8,pt;q=0.6','2016-10-05 22:13:18','2016-10-05 22:13:18'),(24,0,'CASAFLORES-',0,'Casa Flores','http://casaflores.com.br/',6,1,'Fernando','de Figueiredo Mendes','fernando.mendes@webca.com.br','11976495157','','b:0;','Fernando','de Figueiredo Mendes','','Lomas Valentinas','241','Sao Caetano do Sul','09560260','Brasil',30,'São Paulo',464,'','b:0;','PagSeguro','pagseguro','Fernando','de Figueiredo Mendes','','Lomas Valentinas','241','Sao Caetano do Sul','09560260','Brasil',30,'São Paulo',464,'','b:0;','Centro e Avenida Paulista','joseanmatias_faixa_cep.joseanmatias_faixa_cep','',187.0000,1,0,0.0000,0,'',4,4,'BRL',1.00000000,'172.17.0.1','189.29.132.82','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36','en-US,en;q=0.8,pt;q=0.6','2016-10-11 03:54:00','2016-10-11 03:54:04'),(25,0,'CASAFLORES-',0,'Casa Flores','http://casaflores.com.br/',7,1,'Fausto','Simaro VIeira','fausto.vieira@agenciaisland.com.br','1992340239','','b:0;','Fausto','Simaro VIeira','','Rua Antônio de Macedo Soares, 1471 - apto 72','Campo Belo','São Paulo','04607002','Brasil',30,'São Paulo',464,'','b:0;','PagSeguro - Cartão de Débito, Crédito, Boleto Bancário ou Transferência.','pagseguro','Fausto','Simaro VIeira','','Rua Antônio de Macedo Soares, 1471 - apto 72','Campo Belo','São Paulo','04607002','Brasil',30,'São Paulo',464,'','b:0;','Zona Sul I','joseanmatias_faixa_cep.joseanmatias_faixa_cep','',128.0000,22,0,0.0000,0,'',4,4,'BRL',1.00000000,'172.17.0.1','177.68.91.169','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36','pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4','2016-10-11 04:48:38','2016-10-27 09:22:00'),(26,0,'CASAFLORES-',0,'Casa Flores','http://casaflores.com.br/',6,1,'Fernando','de Figueiredo Mendes','fernando.mendes@webca.com.br','11976495157','','b:0;','Fernando','de Figueiredo Mendes','','Lomas Valentinas','241','Sao Caetano do Sul','09560260','Brasil',30,'São Paulo',464,'','b:0;','PagSeguro - Cartão de Débito, Crédito, Boleto Bancário ou Transferência.','pagseguro','Fernando','de Figueiredo Mendes','','Lomas Valentinas','241','Sao Caetano do Sul','09560260','Brasil',30,'São Paulo',464,'','b:0;','Centro e Avenida Paulista','joseanmatias_faixa_cep.joseanmatias_faixa_cep','',241.0000,1,0,0.0000,0,'',4,4,'BRL',1.00000000,'172.17.0.1','189.29.132.82','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36','en-US,en;q=0.8,pt;q=0.6','2016-10-17 01:15:43','2016-10-17 01:15:54');
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_custom_field`
--

DROP TABLE IF EXISTS `oc_order_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_custom_field`
--

LOCK TABLES `oc_order_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_order_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_fraud`
--

DROP TABLE IF EXISTS `oc_order_fraud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_fraud`
--

LOCK TABLES `oc_order_fraud` WRITE;
/*!40000 ALTER TABLE `oc_order_fraud` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_fraud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_history`
--

LOCK TABLES `oc_order_history` WRITE;
/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
INSERT INTO `oc_order_history` VALUES (11,16,1,0,'','2016-09-22 05:59:53'),(12,17,1,0,'','2016-09-22 06:02:00'),(13,17,18,1,'Código da transação: 9D830EDC-0D6F-43E0-A7CE-1895BC5DB9D3\nTipo de pagamento: SANTANDER_BOLETO\nParcelas: 1\n','2016-10-02 05:17:10'),(14,18,1,0,'','2016-10-04 19:13:50'),(15,18,18,1,'Código da transação: AD55DB70-A5D1-49EA-B287-3EE2E7C0889C\nTipo de pagamento: SANTANDER_BOLETO\nParcelas: 1\n','2016-10-04 19:14:58'),(16,22,1,0,'','2016-10-05 22:13:23'),(17,17,22,1,'Código da transação: 9D830EDC-0D6F-43E0-A7CE-1895BC5DB9D3\nTipo de pagamento: SANTANDER_BOLETO\nParcelas: 1\n','2016-10-07 10:20:02'),(18,24,1,0,'','2016-10-11 03:54:04'),(19,25,1,0,'','2016-10-11 04:48:46'),(20,25,18,1,'Código da transação: E5ADA072-40CB-4FEA-BD18-69ACF22A5A4F\nTipo de pagamento: SANTANDER_BOLETO\nParcelas: 1\n','2016-10-11 04:50:21'),(21,26,1,0,'','2016-10-17 01:15:54'),(22,18,22,1,'Código da transação: AD55DB70-A5D1-49EA-B287-3EE2E7C0889C\nTipo de pagamento: SANTANDER_BOLETO\nParcelas: 1\n','2016-10-17 09:59:02'),(23,25,22,1,'Código da transação: E5ADA072-40CB-4FEA-BD18-69ACF22A5A4F\nTipo de pagamento: SANTANDER_BOLETO\nParcelas: 1\n','2016-10-27 09:22:00');
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_option`
--

LOCK TABLES `oc_order_option` WRITE;
/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
INSERT INTO `oc_order_option` VALUES (5,3,6,254,95,'Color','black','radio'),(6,3,6,253,94,'Size','Small','select'),(7,4,11,237,44,'Color','black','radio'),(8,4,11,238,49,'Size','Small','select'),(9,5,12,230,24,'Color','red','radio'),(10,5,12,227,17,'Checkbox','Checkbox 1','checkbox'),(11,5,12,224,12,'Size','Small','select'),(12,5,13,230,23,'Color','black','radio'),(13,5,13,227,17,'Checkbox','Checkbox 1','checkbox'),(14,5,13,224,12,'Size','Small','select'),(15,5,14,263,122,'Color','black','radio'),(16,5,14,266,0,'Time','14:19','time'),(17,5,14,264,0,'Date &amp; Time','2014-12-18 12:25','datetime'),(18,5,14,262,121,'Size','Small','select'),(19,5,14,265,0,'Delivery Date','2014-12-18','date'),(20,6,15,236,43,'Color','white','radio'),(21,6,15,235,39,'Size','Medium','select'),(22,7,16,236,43,'Color','white','radio'),(23,7,16,235,39,'Size','Medium','select'),(24,8,17,236,43,'Color','white','radio'),(25,8,17,235,39,'Size','Medium','select'),(26,9,18,236,43,'Color','white','radio'),(27,9,18,235,39,'Size','Medium','select'),(28,10,19,236,43,'Color','white','radio'),(29,10,19,235,39,'Size','Medium','select'),(40,13,25,230,25,'Color','white','radio'),(41,13,25,227,19,'Checkbox','Checkbox 3','checkbox'),(42,13,25,224,12,'Size','Small','select'),(43,13,26,230,25,'Color','white','radio'),(44,13,26,227,17,'Checkbox','Checkbox 1','checkbox'),(45,13,26,224,13,'Size','Medium','select'),(46,14,27,234,37,'Color','white','radio'),(47,14,27,233,33,'Size','Medium','select'),(53,19,33,269,0,'Data de entrega','2016-10-06','date'),(54,19,33,270,129,'Período de entrega','Tarde','select'),(55,20,34,269,0,'Data de entrega','2016-10-06','date'),(56,20,34,270,129,'Período de entrega','Tarde','select'),(57,21,35,269,0,'Data de entrega','2016-10-06','date'),(58,21,35,270,128,'Período de entrega','Manhã','select'),(59,22,36,269,0,'Data de entrega','2016-10-06','date'),(60,22,36,270,128,'Período de entrega','Manhã','select'),(61,23,37,269,0,'Data de entrega','2016-10-06','date'),(62,23,37,270,129,'Período de entrega','Tarde','select'),(63,24,38,269,0,'Data de entrega','2016-10-12','date'),(64,24,38,270,129,'Período de entrega','Tarde','select'),(65,24,39,269,0,'Data de entrega','2016-10-06','date'),(66,24,39,270,129,'Período de entrega','Tarde','select'),(67,25,40,269,0,'Data de entrega','2016-10-11','date'),(68,25,40,270,128,'Período de entrega','Manhã','select'),(69,25,41,269,0,'Data de entrega','2016-10-06','date'),(70,25,41,270,128,'Período de entrega','Manhã','select'),(71,26,42,269,0,'Data de entrega','2016-09-27','date'),(72,26,42,270,128,'Período de entrega','Manhã','select'),(73,26,42,271,0,'Cartão Simples Cortesia Branco - Escreva aqui a mensagem do seu cartão.','dwqdwqdq','textarea'),(74,26,43,269,0,'Data de entrega','2016-10-12','date'),(75,26,43,270,129,'Período de entrega','Tarde','select'),(76,26,44,269,0,'Data de entrega','2016-10-06','date'),(77,26,44,270,129,'Período de entrega','Tarde','select');
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_product`
--

LOCK TABLES `oc_order_product` WRITE;
/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
INSERT INTO `oc_order_product` VALUES (6,3,43,'Quisque eget','Product 16',1,430.0000,430.0000,88.0000,600),(7,3,49,'Mauris gravida','SAM1',3,150.0000,450.0000,32.0000,3000),(8,3,48,'Praesent imperdiet','product 20',1,100.0000,100.0000,22.0000,0),(9,3,47,'Consectetur adipiscing','Product 21',1,60.0000,60.0000,14.0000,300),(10,3,46,'Suspendisse imperdiet','Product 19',1,1000.0000,1000.0000,202.0000,0),(11,4,30,'Dolor sit amet','Product 3',1,110.0000,110.0000,24.0000,200),(12,5,35,'Aenean viverra','Product 8',1,130.0000,130.0000,0.0000,0),(13,5,35,'Aenean viverra','Product 8',1,125.0000,125.0000,0.0000,0),(14,5,42,'Lorem ipsum','Product 15',2,120.0000,240.0000,0.0000,200),(15,6,47,'Consectetur adipiscing','Product 21',1,95.0000,95.0000,21.0000,300),(16,7,47,'Consectetur adipiscing','Product 21',1,95.0000,95.0000,21.0000,300),(17,8,47,'Consectetur adipiscing','Product 21',1,95.0000,95.0000,21.0000,300),(18,9,47,'Consectetur adipiscing','Product 21',1,95.0000,95.0000,21.0000,300),(19,10,47,'Consectetur adipiscing','Product 21',1,95.0000,95.0000,21.0000,300),(25,13,35,'Aenean viverra','Product 8',1,135.0000,135.0000,29.0000,0),(26,13,35,'Aenean viverra','Product 8',3,140.0000,420.0000,30.0000,0),(27,14,28,'Aliquam eget','Product 1',1,115.0000,115.0000,25.0000,400),(30,16,134,'ARRANJO ASTROMÉLIAS MIX DE FLORES - 01','ARRANJO',1,59.9000,59.9000,0.0000,0),(31,17,134,'ARRANJO ASTROMÉLIAS MIX DE FLORES - 01','ARRANJO',1,59.9000,59.9000,0.0000,0),(32,18,142,'Arranjo Caixa Branca Com Rosas Nacionais Salmão','ARRANJO CAIXA BRANCA COM ROSAS NACIONAIS SALMÃO',1,84.9000,84.9000,0.0000,0),(33,19,163,'3 Cabides Bebê na Cor Azul Claro Com Boneco','CABIDE',1,54.0000,54.0000,0.0000,0),(34,20,163,'3 Cabides Bebê na Cor Azul Claro Com Boneco','CABIDE',2,54.0000,108.0000,0.0000,0),(35,21,163,'3 Cabides Bebê na Cor Azul Claro Com Boneco','CABIDE',1,54.0000,54.0000,0.0000,0),(36,22,163,'3 Cabides Bebê na Cor Azul Claro Com Boneco','CABIDE',1,54.0000,54.0000,0.0000,0),(37,23,163,'3 Cabides Bebê na Cor Azul Claro Com Boneco','CABIDE',2,54.0000,108.0000,0.0000,0),(38,24,163,'3 Cabides Bebê na Cor Azul Claro Com Boneco','CABIDE',1,54.0000,54.0000,0.0000,0),(39,24,163,'3 Cabides Bebê na Cor Azul Claro Com Boneco','CABIDE',2,54.0000,108.0000,0.0000,0),(40,25,163,'3 Cabides Bebê na Cor Azul Claro Com Boneco','CABIDE',1,54.0000,54.0000,0.0000,0),(41,25,163,'3 Cabides Bebê na Cor Azul Claro Com Boneco','CABIDE',1,54.0000,54.0000,0.0000,0),(42,26,163,'3 Cabides Bebê na Cor Azul Claro Com Boneco','CABIDE',1,54.0000,54.0000,0.0000,0),(43,26,163,'3 Cabides Bebê na Cor Azul Claro Com Boneco','CABIDE',1,54.0000,54.0000,0.0000,0),(44,26,163,'3 Cabides Bebê na Cor Azul Claro Com Boneco','CABIDE',2,54.0000,108.0000,0.0000,0);
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring`
--

LOCK TABLES `oc_order_recurring` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring_transaction`
--

LOCK TABLES `oc_order_recurring_transaction` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_status`
--

LOCK TABLES `oc_order_status` WRITE;
/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
INSERT INTO `oc_order_status` VALUES (2,4,'Processando'),(3,4,'Enviado'),(7,4,'Cancelado'),(5,4,'Completo'),(8,4,'Bloqueado'),(9,4,'Canceled Reversal'),(10,4,'Falhou'),(11,4,'Dinheiro devolvido'),(12,4,'Reversed'),(13,4,'Chargeback'),(1,4,'Pendente'),(16,4,'Voided'),(15,4,'Processado'),(14,4,'Expirou'),(17,4,'Em análise'),(18,4,'Aguardando pagamento'),(19,4,'Paga'),(20,4,'Disputa'),(21,4,'Devolvida'),(22,4,'Cancelada');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_total`
--

LOCK TABLES `oc_order_total` WRITE;
/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
INSERT INTO `oc_order_total` VALUES (11,3,'sub_total','Sub-Total',2040.0000,1),(12,3,'shipping','Flat Shipping Rate',5.0000,3),(13,3,'tax','Eco Tax (-2.00)',16.0000,5),(14,3,'tax','VAT (20%)',409.0000,5),(15,3,'total','Total',2470.0000,9),(16,4,'sub_total','Sub-Total',110.0000,1),(17,4,'shipping','Flat Shipping Rate',5.0000,3),(18,4,'tax','Eco Tax (-2.00)',4.0000,5),(19,4,'tax','VAT (20%)',23.0000,5),(20,4,'total','Total',142.0000,9),(21,5,'sub_total','Sub-Total',495.0000,1),(22,5,'shipping','Flat Shipping Rate',5.0000,3),(23,5,'total','Total',500.0000,9),(24,6,'sub_total','Sub-Total',95.0000,1),(25,6,'shipping','Flat Shipping Rate',5.0000,3),(26,6,'tax','Eco Tax (-2.00)',4.0000,5),(27,6,'tax','VAT (20%)',20.0000,5),(28,6,'total','Total',124.0000,9),(29,7,'sub_total','Sub-Total',95.0000,1),(30,7,'shipping','Flat Shipping Rate',5.0000,3),(31,7,'tax','Eco Tax (-2.00)',4.0000,5),(32,7,'tax','VAT (20%)',20.0000,5),(33,7,'total','Total',124.0000,9),(34,8,'sub_total','Sub-Total',95.0000,1),(35,8,'shipping','Flat Shipping Rate',5.0000,3),(36,8,'tax','Eco Tax (-2.00)',4.0000,5),(37,8,'tax','VAT (20%)',20.0000,5),(38,8,'total','Total',124.0000,9),(39,9,'sub_total','Sub-Total',95.0000,1),(40,9,'shipping','Flat Shipping Rate',5.0000,3),(41,9,'tax','Eco Tax (-2.00)',4.0000,5),(42,9,'tax','VAT (20%)',20.0000,5),(43,9,'total','Total',124.0000,9),(44,10,'sub_total','Sub-Total',95.0000,1),(45,10,'shipping','Flat Shipping Rate',5.0000,3),(46,10,'tax','Eco Tax (-2.00)',4.0000,5),(47,10,'tax','VAT (20%)',20.0000,5),(48,10,'total','Total',124.0000,9),(59,13,'sub_total','Sub-Total',555.0000,1),(60,13,'tax','Eco Tax (-2.00)',8.0000,5),(61,13,'tax','VAT (20%)',111.0000,5),(62,13,'total','Total',674.0000,9),(63,14,'sub_total','Сумма',115.0000,1),(64,14,'shipping','Доставка с фиксированной стоимостью доставки',5.0000,3),(65,14,'tax','Eco Tax (-2.00)',4.0000,5),(66,14,'tax','VAT (20%)',24.0000,5),(67,14,'total','Итого',148.0000,9),(71,16,'sub_total','Sub-total',59.9000,1),(72,16,'shipping','Zona Sul I',20.0000,3),(73,16,'total','Total',79.9000,9),(74,17,'sub_total','Sub-total',59.9000,1),(75,17,'shipping','Zona Sul I',20.0000,3),(76,17,'total','Total',79.9000,9),(77,18,'sub_total','Sub-total',84.9000,1),(78,18,'shipping','Zona Sul I',20.0000,3),(79,18,'total','Total',104.9000,9),(80,19,'sub_total','Sub-total',54.0000,1),(81,19,'shipping','Centro e Avenida Paulista',25.0000,3),(82,19,'total','Total',79.0000,9),(83,20,'sub_total','Sub-total',108.0000,1),(84,20,'shipping','Centro e Avenida Paulista',25.0000,3),(85,20,'total','Total',133.0000,9),(86,21,'sub_total','Sub-total',54.0000,1),(87,21,'shipping','Zona Sul I',20.0000,3),(88,21,'total','Total',74.0000,9),(89,22,'sub_total','Sub-total',54.0000,1),(90,22,'shipping','Zona Sul I',20.0000,3),(91,22,'total','Total',74.0000,9),(92,23,'sub_total','Sub-total',108.0000,1),(93,23,'shipping','Centro e Avenida Paulista',25.0000,3),(94,23,'total','Total',133.0000,9),(95,24,'sub_total','Sub-total',162.0000,1),(96,24,'shipping','Centro e Avenida Paulista',25.0000,3),(97,24,'total','Total',187.0000,9),(98,25,'sub_total','Sub-total',108.0000,1),(99,25,'shipping','Zona Sul I',20.0000,3),(100,25,'total','Total',128.0000,9),(101,26,'sub_total','Sub-total',216.0000,1),(102,26,'shipping','Centro e Avenida Paulista',25.0000,3),(103,26,'total','Total',241.0000,9);
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_voucher`
--

LOCK TABLES `oc_order_voucher` WRITE;
/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product`
--

LOCK TABLES `oc_product` WRITE;
/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
INSERT INTO `oc_product` VALUES (61,'BUQUÊ','BU-M-ASTROI-MIXAMROSBR-TELA','','','','','','',0,8,'catalog/Produtos/Buquês/Astromélias/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 9.jpg',11,0,110.0000,0,0,'2016-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,0,0,'2016-05-31 22:30:52','2016-10-06 15:00:51'),(55,'BUQUÊ','RA 12 ROSAC CHOC CRE','','','','','','',0,8,'catalog/Produtos/Ramalhete/Rosas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 2_1.jpg',0,0,0.0000,0,0,'2016-05-31',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,0,'2016-05-31 19:17:33','2016-06-03 01:38:27'),(53,'BUQUÊ','BU-13-ROSAC-ROSC-TELA','','','','','','',0,8,'catalog/Produtos/Buquês/Rosas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 4.jpg',11,0,160.0000,0,0,'2016-05-31',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,1,80,'2016-05-31 18:31:19','2016-10-06 15:01:19'),(70,'ARRANJO','AR-13-ROSC-BRCHOC-VA-V770-M','','','','','','',0,8,'catalog/Produtos/Arranjo/Rosas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 15.jpg',11,0,160.0000,0,0,'2016-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,1,34,'2016-06-01 09:20:50','2016-10-06 15:11:59'),(54,'BUQUÊ','RA 18 TUL MIXVERAM TELA','','','','','','',0,8,'catalog/Produtos/Buquês/Tulipa/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 3.jpg',11,0,148.0000,0,0,'2016-05-31',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,0,0,'2016-05-31 18:53:37','2016-06-20 09:34:49'),(56,'ARRANJO','AR-5-ROSAC-VER-CAIXA-INPAPER','','','','','','',0,8,'catalog/Produtos/Flor em caixa/Rosas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 17.jpg',0,0,0.0000,0,0,'2016-05-31',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,0,0,'2016-05-31 19:21:50','2016-09-20 13:00:36'),(57,'ARRANJO','AR-12-TUL-MIXVERMAM-VA-VIDRO-M','','','','','','',0,6,'catalog/Produtos/Arranjo/Tulipas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 5.jpg',11,1,124.0000,0,0,'2016-05-31',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,171,'2016-05-31 19:32:25','2016-10-06 15:06:00'),(58,'CASA FLORES SECRET HOT PEPPER UNISEX','SECRET HOT PEPPER VERM 01','','','','','','',0,6,'catalog/Produtos/Secret/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 23_3.jpg',13,0,261.2500,0,0,'2016-05-31',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,0,1,1,51,'2016-05-31 19:49:08','2016-06-13 14:41:35'),(59,'CASA FLORES SECRET HALLS VIBER FEMININO','SECRET VERD 01','','','','','','',0,6,'catalog/Produtos/Secret/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 24_1_1.jpg',13,0,261.2500,0,0,'2016-05-31',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,0,1,1,115,'2016-05-31 19:55:41','2016-06-13 14:40:21'),(60,'CASA FLORES SECRET 50 TONS UNISEX','SECRET 50 TONS AMAREROSA 01','','','','','','',0,6,'catalog/Produtos/Secret/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 25_1_1.jpg',13,0,261.2500,0,0,'2016-05-31',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,0,1,1,48,'2016-05-31 20:06:10','2016-06-13 14:40:49'),(50,'ARRANJO','AR-3-MINORQU-MIXCORES-CES990-P','','','','','','',0,8,'catalog/Produtos/Orquídeas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 8_1.jpg',11,0,190.0000,0,0,'2016-05-31',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,1,121,'2016-05-31 17:04:58','2016-10-06 15:08:32'),(51,'MINI ORQUÍDEA NA COR ROSA EM VASO','AR-1-MINORQU-ROSC-VA-Q110-P','','','','','','',0,8,'catalog/Produtos/Orquídeas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 11.jpg',0,0,0.0000,0,0,'2016-05-31',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,0,'2016-05-31 17:44:34','2016-06-01 22:40:54'),(52,'BUQUÊ','BU 12 ROSAC VER TELA','','','','','','',0,8,'catalog/Produtos/Buquês/Rosas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 1_1.jpg',11,0,160.0000,0,0,'2016-05-31',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,1,138,'2016-05-31 18:24:03','2016-10-06 15:01:29'),(62,'BUQUÊ','BU-13-ROSAN-VER-CRE','','','','','','',0,8,'catalog/Produtos/Buquês/Rosas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 10.jpg',11,0,120.0000,0,0,'2016-05-31',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,1,32,'2016-05-31 22:37:12','2016-10-06 15:02:02'),(63,'BUQUÊ','BU-M-MIXROSANASTRO-ROSC-CRE','','','','','','',0,8,'catalog/Produtos/Buquês/Astromélias/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 18.jpg',11,0,80.0000,0,0,'2016-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,1,139,'2016-05-31 22:45:30','2016-10-06 15:01:48'),(64,'BUQUÊ','BU-18-ROSAC-PINK','','','','','','',0,8,'catalog/Produtos/Arranjo/Rosas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 6.jpg',11,0,238.0000,0,0,'2016-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,1,23,'2016-05-31 23:06:40','2016-10-06 15:01:08'),(65,'ARRANJO','AR-19-ROSAC-AM-VA-OV880-V-G-LAÇO','','','','','','',0,8,'catalog/Produtos/Arranjo/Rosas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 7.jpg',11,0,298.0000,0,0,'2016-05-31',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,1,107,'2016-05-31 23:10:16','2016-10-06 15:11:37'),(66,'ARRANJO','AR-15-ROSAC-VER-VA-RET330-V-M','','','','','','',0,8,'catalog/Produtos/Arranjo/Rosas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 12.jpg',11,0,180.0000,0,0,'2016-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,0,0,'2016-05-31 23:15:41','2016-09-19 14:54:24'),(67,'ARRANJO','AR-3-CALAC-MIXBRAMROS-CACH-RET330-MA-P','','','','','','',0,8,'catalog/Produtos/Arranjo/Calachoe/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 13.jpg',0,0,0.0000,0,0,'2016-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,0,0,'2016-05-31 23:22:46','2016-06-01 10:23:51'),(68,'ARRANJO','AR-M-MIXFLORES-VA-RET330-POR-BR01-M','','','','','','',0,8,'catalog/Produtos/Arranjo/Flores diversas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 14_2.jpg',11,0,110.0000,0,0,'2016-05-31',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,1,37,'2016-05-31 23:47:08','2016-10-06 15:22:53'),(69,'BUQUÊ','BU-M-MIXFLORES-TELA','','','','','','',0,8,'catalog/Produtos/Buquês/Flores diversas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 20.jpg',11,0,120.0000,0,0,'2016-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,0,0,'2016-06-01 09:00:12','2016-10-06 15:02:29'),(71,'ARRANJO','AR-5-ASTR-MIXCORES-VA-GA550-P','','','','','','',0,8,'catalog/Produtos/Arranjo/Astromélias/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 16.jpg',11,0,35.0000,0,0,'2016-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,0,0,'2016-06-01 09:24:41','2016-10-06 15:08:14'),(72,'RAMALHETE','RA-M-TULASTRO-MIXVERAM-JUTA','','','','','','',0,6,'catalog/Produtos/Ramalhete/Tulipas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 19.jpg',0,1,0.0000,0,0,'2016-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,0,'2016-06-01 09:34:12','2016-06-01 22:42:11'),(73,'ARRANJO','AR-15-ROSC-VER-VA-RET330-M-URSOP','','','','','','',0,8,'catalog/Produtos/Arranjo/Rosas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 27.jpg',0,0,210.0000,0,0,'2016-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,0,0,'2016-06-01 17:32:31','2016-09-23 13:12:11'),(74,'ARRANJO','AR-15-ROSC-AM-VA-V-M','','','','','','',0,6,'catalog/Produtos/Arranjo/Rosas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 28.jpg',11,1,198.0000,0,0,'2016-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,13,'2016-06-01 17:41:00','2016-06-20 09:27:34'),(75,'ARRANJO ','AR-19-TUP-MIXVERMAMPINK-VA-RET330-M','','','','','','',0,8,'catalog/Produtos/Arranjo/Tulipas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 29_1.jpg',11,0,190.0000,0,0,'2016-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,1,156,'2016-06-01 18:10:52','2016-10-06 15:05:33'),(76,'ARRANJO','AR-0-SYMB-LISI-MIXAMROX-VA-RED220-PR02-M','','','','','','',0,6,'catalog/Produtos/Arranjo/Orquídeas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 30.jpg',11,1,135.0000,0,0,'2016-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,107,'2016-06-01 18:20:50','2016-10-06 15:08:52'),(77,'ARRANJO','AR-0-ORQU-MIXBRPINK-VA-OV880-V-LUVID-M','','','','','','',0,8,'catalog/Produtos/Arranjo/Orquídeas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 32.jpg',11,0,320.0000,0,0,'2016-06-01',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,1,28,'2016-06-01 19:15:39','2016-10-06 15:09:03'),(78,'CESTA','','','','','','','',0,6,'catalog/Produtos/Cesta/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 33_1.jpg',12,0,278.0000,0,0,'2016-06-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,1,19,'2016-06-05 22:57:33','2016-09-27 22:25:30'),(92,'ARRANJO','','','','','','','',0,7,'catalog/Produtos/Arranjo/Astromélias/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 40_2.jpg',11,1,59.9000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,27,'2016-08-03 17:44:27','2016-10-06 15:07:04'),(79,'TAG','TAG 01','','','','','','',0,6,'catalog/Produtos/Tag/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 34_1.jpg',14,1,5.0000,0,0,'2016-06-09',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,13,'2016-06-09 16:28:46','2016-09-18 20:39:07'),(80,'TAG','TAG 02','','','','','','',0,6,'catalog/Produtos/Tag/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 34_2.jpg',14,1,5.0000,0,0,'2016-06-09',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,14,'2016-06-09 16:42:01','2016-09-18 20:39:34'),(81,'TAG','TAG 03','','','','','','',0,6,'catalog/Produtos/Tag/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 34_3.jpg',14,1,5.0000,0,0,'2016-06-09',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,9,'2016-06-09 16:45:34','2016-09-18 20:39:49'),(82,'TAG','TAG CARTÃO 4','','','','','','',0,6,'catalog/Produtos/Tag/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 34_4.jpg',14,1,5.0000,0,0,'2016-06-09',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,7,'2016-06-09 16:48:25','2016-09-18 20:40:01'),(83,'TAG','TAG 05','','','','','','',0,9,'catalog/Produtos/Tag/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 34_5.jpg',14,1,5.0000,0,0,'2016-06-09',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,0,'2016-06-09 16:50:53','2016-09-18 20:40:17'),(85,'TAG','TAG 06','','','','','','',0,6,'catalog/Produtos/Tag/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 34_6.jpg',14,1,5.0000,0,0,'2016-06-09',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,0,'2016-06-09 16:52:52','2016-09-18 20:41:21'),(86,'TAG','TAG 07','','','','','','',0,6,'catalog/Produtos/Tag/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 34_7.jpg',14,1,5.0000,0,0,'2016-06-09',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,25,'2016-06-09 16:54:16','2016-09-18 20:41:43'),(87,'TAG','TAG 08','','','','','','',0,6,'catalog/Produtos/Tag/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 34_8.jpg',14,1,5.0000,0,0,'2016-06-09',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,9,'2016-06-09 16:55:14','2016-09-18 20:42:10'),(88,'TAG','TAG 09','','','','','','',0,6,'catalog/Produtos/Tag/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 34_9.jpg',14,1,5.0000,0,0,'2016-06-09',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,11,'2016-06-09 16:56:22','2016-09-18 20:42:43'),(89,'TAG','TAG 10','','','','','','',0,6,'catalog/Produtos/Tag/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 34_10.jpg',14,1,5.0000,0,0,'2016-06-09',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,12,'2016-06-09 16:57:56','2016-08-04 13:53:31'),(90,'TAG','TAG 11','','','','','','',0,6,'catalog/Produtos/Tag/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 34_11.jpg',14,1,5.0000,0,0,'2016-06-09',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,12,'2016-06-09 17:01:03','2016-08-04 09:53:45'),(91,'CESTA','CESTA H 1','','','','','','',0,6,'catalog/Produtos/Cesta/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 35.jpg',12,0,180.0000,0,0,'2016-06-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,1,1,152,'2016-06-09 17:39:28','2016-09-27 22:24:52'),(93,'ARRANJO','','','','','','','',0,6,'catalog/Produtos/Arranjo/Astromélias/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 67.jpg',0,1,69.9000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,31,'2016-08-03 17:56:43','2016-08-03 17:58:33'),(94,'ARRANJO','','','','','','','',0,6,'catalog/Produtos/Garrafa com flor/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 57.jpg',0,1,54.9000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,13,'2016-08-03 18:13:07','2016-10-06 19:30:33'),(95,'ARRANJO','','','','','','','',0,6,'catalog/Produtos/Garrafa com flor/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 58.jpg',0,1,54.9000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,19,'2016-08-03 18:22:47','2016-10-06 19:30:05'),(96,'ARRANJO','','','','','','','',0,6,'catalog/Produtos/Flor em caixa/Orquídeas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 42.jpg',0,1,89.9000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,42,'2016-08-03 18:29:24','2016-10-06 19:25:28'),(97,'ARRANJO','','','','','','','',0,6,'catalog/Produtos/Flor em caixa/Cravos/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 68_1.jpg',0,1,82.5000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,13,'2016-08-03 18:33:24','2016-08-08 18:23:24'),(98,'ARRANJO','','','','','','','',0,6,'catalog/Produtos/Flor em caixa/Cravos/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 69.jpg',0,1,82.5000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,33,'2016-08-03 18:56:00','2016-10-06 15:12:47'),(99,'ARRANJO','','','','','','','',0,6,'catalog/Produtos/Flor em caixa/Cravos/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 70.jpg',0,1,82.5000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,28,'2016-08-03 19:02:47','2016-10-06 15:12:38'),(100,'ARRANJO','','','','','','','',0,6,'catalog/Produtos/Flor em caixa/Orquídeas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 62.jpg',0,1,109.5000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,0,'2016-08-03 19:08:28','2016-09-28 02:42:08'),(101,'ARRANJO','','','','','','','',0,6,'catalog/Produtos/Flor em caixa/Rosas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 71.jpg',11,1,79.9000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,67,'2016-08-03 19:24:46','2016-10-06 15:13:30'),(102,'ARRANJO','','','','','','','',0,6,'catalog/Produtos/Flor em caixa/Mix de flores/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 72.jpg',11,1,79.9000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,38,'2016-08-03 19:42:04','0000-00-00 00:00:00'),(103,'FLORES E DOCES','BRIGADEIROS EM CAIXA - 8 UNIDADES','','','','','','',0,6,'catalog/Produtos/Flores e doces/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 64.jpg',12,1,28.0000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,2,'2016-08-03 19:48:21','2016-10-06 17:20:13'),(104,'FLORES E DOCES','MACARONS EM CAIXA - 12 UNIDADES','','','','','','',0,6,'catalog/Produtos/Flores e doces/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 106.jpg',12,1,78.0000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,2,'2016-08-03 19:52:37','2016-10-06 17:21:47'),(105,'CESTA','','','','','','','',0,6,'catalog/Produtos/Cesta/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 46.jpg',0,1,238.0000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,17,'2016-08-03 19:59:23','2016-09-27 22:59:36'),(106,'CESTA','','','','','','','',0,6,'catalog/Produtos/Cesta/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 49.jpg',12,1,197.0000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,21,'2016-08-03 20:07:35','2016-09-27 22:57:08'),(107,'CESTA','','','','','','','',0,6,'catalog/Produtos/Cesta/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 47.jpg',12,1,210.0000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,17,'2016-08-03 20:18:58','2016-09-27 22:57:41'),(108,'CESTA','','','','','','','',0,6,'catalog/Produtos/Cesta/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 48.jpg',12,1,233.0000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,13,'2016-08-03 20:24:20','2016-09-27 22:58:32'),(109,'TAG','TAG 12','','','','','','',0,6,'catalog/Produtos/Tag/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 73.jpg',14,1,5.0000,0,0,'2016-08-04',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,9,'2016-08-04 09:59:54','2016-08-04 13:54:25'),(110,'TAG','TAG 13','','','','','','',0,6,'catalog/Produtos/Tag/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 74.jpg',14,1,5.0000,0,0,'2016-08-04',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2016-08-04 10:01:04','2016-08-04 13:54:35'),(111,'TAG','TAG 14','','','','','','',0,6,'catalog/Produtos/Tag/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 75.jpg',14,1,5.0000,0,0,'2016-08-04',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,9,'2016-08-04 10:03:31','2016-08-04 13:54:43'),(112,'TAG','TAG 15','','','','','','',0,6,'catalog/Produtos/Tag/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 76.jpg',14,1,5.0000,0,0,'2016-08-04',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,9,'2016-08-04 10:11:45','2016-08-04 13:54:49'),(113,'TAG','TAG 16','','','','','','',0,6,'catalog/Produtos/Tag/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 78.jpg',14,1,5.0000,0,0,'2016-08-04',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,11,'2016-08-04 10:12:53','2016-08-04 13:54:56'),(114,'CARTÃO','CARTÃO PARA PRESENTE 1','','','','','','',0,6,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 79.jpg',0,1,10.0000,0,0,'2016-08-04',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,11,'2016-08-04 16:52:26','2016-10-16 21:19:38'),(115,'CARTÃO','CARTÃO PARA PRESENTE 2','','','','','','',0,6,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 81.jpg',0,1,10.0000,0,0,'2016-08-04',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,13,'2016-08-04 16:55:16','2016-10-16 21:20:23'),(116,'CARTÃO','CARTÃO PARA PRESENTE 3','','','','','','',0,6,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 83.jpg',0,1,10.0000,0,0,'2016-08-04',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,8,'2016-08-04 17:00:40','2016-10-16 21:20:45'),(117,'CARTÃO','CARTÃO PARA PRESENTE 4','','','','','','',0,6,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 85.jpg',0,1,10.0000,0,0,'2016-08-04',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,5,'2016-08-04 17:01:29','2016-10-16 21:20:59'),(118,'CARTÃO','CARTÃO PARA PRESENTE 5','','','','','','',0,6,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 87.jpg',0,1,10.0000,0,0,'2016-08-04',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,8,'2016-08-04 17:02:18','2016-10-16 21:21:11'),(119,'CARTÃO','CARTÃO PARA PRESENTE 6','','','','','','',0,6,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 92.jpg',0,1,15.0000,0,0,'2016-08-04',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,8,'2016-08-04 17:14:21','2016-10-16 21:21:25'),(120,'CARTÃO','CARTÃO PARA PRESENTE 7','','','','','','',0,6,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 94.jpg',0,1,15.0000,0,0,'2016-08-04',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,6,'2016-08-04 17:15:22','2016-10-16 21:21:39'),(121,'CARTÃO','CARTÃO PARA PRESENTE 8','','','','','','',0,6,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 96.jpg',0,1,15.0000,0,0,'2016-08-04',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2016-08-04 17:46:15','2016-10-16 21:21:54'),(122,'CARTÃO','CARTÃO PARA PRESENTE 9','','','','','','',0,6,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 98.jpg',0,1,15.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,7,'2016-08-06 18:04:46','2016-10-16 21:22:14'),(123,'CARTÃO','CARTÃO PARA PRESENTE 10','','','','','','',0,6,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 100.jpg',0,1,15.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,9,'2016-08-06 18:09:10','2016-10-16 21:19:53'),(124,'CARTÃO','CARTÃO PARA PRESENTE 11','','','','','','',0,6,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 103.jpg',0,1,15.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,7,'2016-08-06 18:17:08','2016-10-16 21:20:09'),(125,'BONECOS','BONECA ARTESANAL PEQUENA 01','','','','','','',0,6,'catalog/Produtos/Bonecos/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 50.jpg',0,1,27.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,0,'2016-08-06 18:32:49','2016-09-19 15:23:43'),(126,'BONECOS','BONECA ARTESANAL PEQUENA 02','','','','','','',0,6,'catalog/Produtos/Bonecos/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 51.jpg',0,1,27.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,14,'2016-08-06 18:33:48','2016-08-06 18:49:17'),(127,'BONECOS','BONECA ARTESANAL PEQUENA 03','','','','','','',0,6,'catalog/Produtos/Bonecos/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 52.jpg',0,1,27.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,19,'2016-08-06 18:35:06','2016-08-06 18:49:28'),(128,'BONECOS','URSINHA ARTESANAL PEQUENA 01','','','','','','',0,6,'catalog/Produtos/Bonecos/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 55.jpg',0,1,22.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,18,'2016-08-06 18:40:36','2016-09-28 02:33:08'),(129,'BONECOS','BONECA ARTESANAL CHAPÉU 01','','','','','','',0,6,'catalog/Produtos/Bonecos/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 53.jpg',11,1,34.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,13,'2016-08-06 18:43:43','2016-09-20 14:17:34'),(130,'BONECOS','BONECA ARTESANAL CHAPÉU 02','','','','','','',0,6,'catalog/Produtos/Bonecos/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 54.jpg',0,1,34.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2016-08-06 18:44:32','2016-08-17 20:12:43'),(131,'BONECOS','BONECO ARTESANAL PEQUENO 01','','','','','','',0,6,'catalog/Produtos/Bonecos/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 56.jpg',0,1,27.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,0,'2016-08-06 18:45:57','2016-09-23 13:14:10'),(132,'TAG','TAG 17','','','','','','',0,6,'catalog/Produtos/Tag/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 108.jpg',14,1,5.0000,0,0,'2016-08-17',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2016-08-16 22:59:33','0000-00-00 00:00:00'),(133,'TAG','TAG 18','','','','','','',0,6,'catalog/Produtos/Tag/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 110.jpg',14,1,5.0000,0,0,'2016-08-17',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,9,'2016-08-16 23:00:44','2016-09-18 20:43:04'),(134,'ARRANJO','ARRANJO ASTROMÉLIAS MIX DE FLORES - 01','','','','','','',0,6,'catalog/Produtos/Arranjo/Astromélias/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 130_1_1.jpg',11,1,59.9000,0,0,'2016-09-16',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,120,'2016-09-16 19:57:55','2016-10-06 15:07:12'),(135,'ARRANJO','ARRANJO ASTROMÉLIAS MIX DE FLORES - 02','','','','','','',0,6,'catalog/Produtos/Arranjo/Astromélias/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 132_1.jpg',11,1,59.9000,0,0,'2016-09-16',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,114,'2016-09-16 20:24:36','2016-10-06 15:07:19'),(136,'ARRANJO','ARRANJO GÉRBERAS AMARELAS','','','','','','',0,6,'catalog/Produtos/Arranjo/Gérberas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 135_1.jpg',11,1,49.9000,0,0,'2016-09-16',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,38,'2016-09-16 20:46:54','2016-10-06 17:18:02'),(137,'ARRANJO LISIANTHUS E ROSAS BRANCAS','','','','','','','',0,6,'catalog/Produtos/Arranjo/Lisianthus e Rosas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 136_1.jpg',11,1,59.9000,0,0,'2016-09-16',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,24,'2016-09-16 21:08:27','2016-10-06 15:21:59'),(138,'ORQUÍDEAS PHALENOPSIS BRANCAS COM 12 BRIGADEIROS','','','','','','','',0,6,'catalog/Produtos/Arranjo/Orquídeas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 137_1.jpg',15,1,265.0000,0,0,'2016-09-16',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,30,'2016-09-16 21:20:34','2016-10-06 18:04:17'),(140,'ORQUÍDEAS PHALENOPSIS BRANCAS','','','','','','','',0,6,'catalog/Produtos/Arranjo/Orquídeas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 138.jpg',14,1,215.0000,0,0,'2016-09-16',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,23,'2016-09-16 21:26:28','2016-10-06 18:10:55'),(141,'ARRANJO CAIXA BRANCA COM ROSAS - DIA DA SECRETÁRIA','','','','','','','',0,6,'catalog/Produtos/Arranjo/Rosas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 139_1.jpg',14,1,89.9000,0,0,'2016-09-16',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,1017,'2016-09-16 21:48:04','2016-10-06 17:09:31'),(142,'ARRANJO CAIXA BRANCA COM ROSAS NACIONAIS SALMÃO','','','','','','','',0,6,'catalog/Produtos/Arranjo/Rosas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 140_1.jpg',14,1,84.9000,0,0,'2016-09-16',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,30,'2016-09-16 21:52:50','2016-10-06 15:07:53'),(143,'ARRANJO CAIXA COM ROSAS BRANCAS - DIA DA SECRETÁRIA','','','','','','','',0,6,'catalog/Produtos/Arranjo/Rosas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 141_1.jpg',14,1,184.0000,0,0,'2016-09-16',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,536,'2016-09-16 22:11:22','2016-09-27 21:06:32'),(144,'TAG','TAG 19','','','','','','',0,6,'catalog/Produtos/Tag/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 146.jpg',0,1,5.0000,0,0,'2016-09-18',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,11,'2016-09-18 20:45:25','0000-00-00 00:00:00'),(145,'TAG','TAG 20','','','','','','',0,6,'catalog/Produtos/Tag/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 147.jpg',0,1,5.0000,0,0,'2016-09-18',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,13,'2016-09-18 20:45:39','2016-09-18 20:52:11'),(146,'TAG','TAG 21','','','','','','',0,6,'catalog/Produtos/Tag/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 148.jpg',0,1,5.0000,0,0,'2016-09-18',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,12,'2016-09-18 20:46:50','2016-09-18 20:52:19'),(147,'TAG','TAG 22','','','','','','',0,6,'catalog/Produtos/Tag/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 149.jpg',0,1,5.0000,0,0,'2016-09-18',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,13,'2016-09-18 20:49:04','2016-09-18 20:54:28'),(148,'TAG','TAG 23','','','','','','',0,6,'catalog/Produtos/Tag/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 150.jpg',0,1,5.0000,0,0,'2016-09-18',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,8,'2016-09-18 20:51:00','2016-09-18 20:54:38'),(149,'TAG','TAG 24','','','','','','',0,6,'catalog/Produtos/Tag/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 151.jpg',0,1,5.0000,0,0,'2016-09-18',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,8,'2016-09-18 20:56:56','2016-09-18 20:58:36'),(150,'TAG','TAG 25','','','','','','',0,6,'catalog/Produtos/Tag/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 152.jpg',0,1,5.0000,0,0,'2016-09-18',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,8,'2016-09-18 20:59:01','2016-09-18 20:59:47'),(151,'TAG','TAG 26','','','','','','',0,6,'catalog/Produtos/Tag/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 153.jpg',0,1,5.0000,0,0,'2016-09-18',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,40,'2016-09-18 21:00:43','2016-09-18 21:01:28'),(152,'TAG','TAG 27','','','','','','',0,6,'catalog/Produtos/Tag/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 154.jpg',0,1,5.0000,0,0,'2016-09-18',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,12,'2016-09-18 21:01:44','2016-09-18 21:07:11'),(153,'TAG','TAG 28','','','','','','',0,6,'catalog/Produtos/Tag/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 155.jpg',0,1,5.0000,0,0,'2016-09-18',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,61,'2016-09-18 21:07:24','2016-09-18 21:09:34'),(154,'TAG','TAG 29','','','','','','',0,6,'catalog/Produtos/Tag/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 156.jpg',0,1,5.0000,0,0,'2016-09-18',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,8,'2016-09-18 21:09:56','2016-09-18 21:11:14'),(155,'TAG','TAG 31','','','','','','',0,6,'catalog/Produtos/Tag/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 158.jpg',0,1,5.0000,0,0,'2016-09-18',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,8,'2016-09-18 21:11:20','2016-09-18 21:14:32'),(156,'TAG','TAG 30','','','','','','',0,6,'catalog/Produtos/Tag/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 157.jpg',0,1,5.0000,0,0,'2016-09-18',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,9,'2016-09-18 21:17:10','2016-09-18 21:17:51'),(157,'ARRANJO','ARRANJO CAIXA COM ROSAS ROSA E 12 BRIGADEIROS DIVERSOS','','','','','','',0,6,'catalog/Produtos/Arranjo/Rosas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 143_1.jpg',16,1,125.0000,0,0,'2016-09-18',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,22,'2016-09-18 22:48:49','2016-10-06 17:09:55'),(158,'ARRANJO','ARRANJO EM CAIXA COR AZUL CLARO E CABIDES AZUIS DE BONECOS','','','','','','',0,6,'catalog/Produtos/Flor em caixa/Astromélias/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 126.jpg',0,1,143.9000,0,0,'2016-09-20',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,11,'2016-09-20 06:17:50','2016-10-06 19:23:18'),(159,'ARRANJO','ARRANJO EM CAIXA ROSAS AMARELAS E BRIGADEIROS','','','','','','',0,6,'catalog/Produtos/Flor em caixa/Rosas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 129.jpg',12,1,107.9000,0,0,'2016-09-20',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,30,'2016-09-20 06:28:40','0000-00-00 00:00:00'),(160,'ARRANJO','ARRANJO EM CAIXA COM ROSAS AMARELAS E 12 MACARONS DIVERSOS','','','','','','',0,6,'catalog/Produtos/Flor em caixa/Rosas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 128.jpg',12,1,157.9000,0,0,'2016-09-20',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,17,'2016-09-20 06:30:00','2016-09-20 06:31:55'),(161,'ARRANJO','ARRANJO EM CAIXA COR ROSA E 12 MACARONS','','','','','','',0,6,'catalog/Produtos/Flor em caixa/Mix de flores/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 127.jpg',0,1,157.9000,0,0,'2016-09-20',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,37,'2016-09-20 12:59:16','0000-00-00 00:00:00'),(162,'CABIDE','CABIDE BEBÊ AZUL CLARO COM BONECO','','','','','','',0,6,'catalog/Produtos/Cabides/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 115.jpg',11,1,50.0000,0,0,'2016-09-20',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,0,'2016-09-20 14:14:57','0000-00-00 00:00:00'),(163,'CABIDE','','','','','','','',10,6,'catalog/Produtos/Cabides/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 116.jpg',0,1,54.0000,0,0,'2016-09-20',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,83,'2016-09-20 14:26:40','2016-10-11 05:10:44'),(164,'CABIDE','3 CABIDES BEBÊ NA COR CREME COM BONECO DE OVELHA','','','','','','',0,6,'catalog/Produtos/Cabides/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 118.jpg',0,1,150.0000,0,0,'2016-09-20',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,0,'2016-09-20 14:36:46','2016-09-27 20:02:46'),(165,'CABIDE','3 CABIDES BEBÊ NA COR BRANCA COM BONECA','','','','','','',0,6,'catalog/Produtos/Cabides/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 114.jpg',0,1,54.0000,0,0,'2016-09-20',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,23,'2016-09-20 14:40:44','2016-09-27 20:02:25'),(166,'CABIDE','CABIDE BEBÊ BRANCO COM BONECA','','','','','','',0,6,'catalog/Produtos/Cabides/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 113.jpg',11,1,50.0000,0,0,'2016-09-20',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,0,'2016-09-20 14:42:02','2016-09-20 14:43:03'),(167,'CABIDE','CABIDE BEBÊ BRANCO COM OVELHA','','','','','','',0,6,'catalog/Produtos/Cabides/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 117.jpg',11,1,50.0000,0,0,'2016-09-20',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,0,'2016-09-20 14:47:21','2016-09-20 14:48:07'),(168,'FLORES E DOCES','BRIGADEIROS EM CAIXA - 12 UNIDADES - DIVERSOS SABORES','','','','','','',0,6,'catalog/Produtos/Flores e doces/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 144_1.jpg',15,1,50.0000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,22,'2016-09-20 15:05:55','2016-10-06 17:18:38'),(169,'FLORES E DOCES','BRIGADEIROS EM CAIXA - 4 UNIDADES - DIVERSOS SABORES','','','','','','',0,6,'catalog/Produtos/Flores e doces/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 145_1.jpg',15,1,20.0000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,2,'2016-09-20 15:22:27','2016-10-06 17:19:01'),(170,'BUQUÊ','MINI BUQUÊ DE FRÉSIAS COM DIVERSAS CORES','','','','','','',0,6,'catalog/Produtos/Buquês/Frésias/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 162_1.jpg',11,1,35.0000,0,0,'2016-09-20',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,55,'2016-09-20 15:55:16','2016-10-06 17:20:50'),(171,'ARRANJO','ARRANJO EM CAIXA COR ROSA COM ROSAS NACIONAIS ROSA','','','','','','',0,6,'catalog/Produtos/Flor em caixa/Rosas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 121.jpg',11,1,79.9000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,90,'2016-09-22 02:17:45','2016-10-06 15:14:32'),(172,'ARRANJO','ARRANJO EM CAIXA COR AMARELA COM ROSAS ROSA','','','','','','',0,6,'catalog/Produtos/Flor em caixa/Rosas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 119.jpg',11,1,79.9000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,51,'2016-09-25 23:39:46','2016-10-06 15:12:23'),(173,'ARRANJO','','','','','','','',0,6,'catalog/Produtos/Flor em caixa/Rosas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 123.jpg',11,1,106.9000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,22,'2016-09-25 23:56:55','2016-09-28 02:40:04'),(174,'ARRANJO','','','','','','','',0,6,'catalog/Produtos/Flor em caixa/Rosas/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 120.jpg',11,1,106.9000,0,0,'2016-08-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,0,'2016-09-26 01:05:59','2016-09-26 01:07:39'),(175,'ARRANJO','','','','','','','',0,6,'catalog/Produtos/Flor em caixa/Rosas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 162_1.jpg',0,1,84.9000,0,0,'2016-09-26',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,22,'2016-09-26 02:07:27','2016-09-29 19:39:32'),(176,'ARRANJO','','','','','','','',0,6,'catalog/Produtos/Flor em caixa/Rosas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 163_1.jpg',14,1,89.9000,0,0,'2016-09-26',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,1,'2016-09-26 02:15:04','2016-10-06 17:17:22'),(177,'Orquídeas','','','','','','','',0,6,'catalog/Produtos/Orquídeas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 164_2.jpg',11,1,120.0000,0,0,'2016-09-26',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,23,'2016-09-26 02:28:37','0000-00-00 00:00:00'),(178,'BUQUÊ','','','','','','','',0,6,'catalog/Produtos/Buquês/Frésias/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 165_1.jpg',0,1,35.0000,0,0,'2016-09-26',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,5,'2016-09-26 02:35:20','2016-10-06 17:21:11'),(179,'ARRANJO','','','','','','','',0,6,'catalog/Produtos/Flor em caixa/Mix de flores/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 160_3.jpg',16,1,104.9000,0,0,'2016-09-26',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,34,'2016-09-26 02:43:43','2016-09-26 02:56:21'),(180,'ARRANJO','','','','','','','',0,6,'catalog/Produtos/Flor em caixa/Mix de flores/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 159_1.jpg',14,1,84.9000,0,0,'2016-09-26',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,0,2,'2016-09-26 02:44:02','2016-10-06 17:19:42'),(181,'ARRANJO','','','','','','','',0,6,'catalog/Produtos/Flor em caixa/Mix de flores/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 166.jpg',11,1,79.9000,0,0,'2016-09-26',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,14,'2016-09-26 02:44:11','2016-09-26 02:52:23'),(182,'ORQUÍDEAS','','','','','','','',0,6,'catalog/Produtos/Orquídeas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 167_1.jpg',0,1,85.0000,0,0,'2016-09-26',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,3,'2016-09-26 03:04:31','2016-10-06 18:08:17'),(185,'CARTÃO','','','','','','','',0,6,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 169.jpg',0,1,15.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,7,'2016-10-16 21:22:24','2016-10-16 21:48:12'),(184,'ARRANJO','','','','','','','',0,7,'catalog/Produtos/Orquídeas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 168_1.jpg',11,1,180.0000,0,0,'2016-10-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,17,'2016-10-06 16:02:30','2016-10-06 18:50:12'),(186,'CARTÃO','','','','','','','',0,6,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 171.jpg',0,1,15.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,7,'2016-10-16 21:42:16','2016-10-16 21:48:25'),(187,'CARTÃO','','','','','','','',0,6,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 173.jpg',0,1,15.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,7,'2016-10-16 21:44:47','2016-10-16 21:48:33'),(188,'CARTÃO','','','','','','','',0,6,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 175.jpg',0,1,15.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,6,'2016-10-16 21:48:41','2016-10-16 21:51:12'),(189,'CARTÃO','','','','','','','',0,6,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 177.jpg',0,1,15.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,10,'2016-10-16 21:51:59','2016-10-16 21:53:07'),(190,'CARTÃO','','','','','','','',0,6,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 179.jpg',0,1,15.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,7,'2016-10-16 21:53:16','2016-10-16 22:03:03'),(191,'CARTÃO','','','','','','','',0,6,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 181.jpg',0,1,15.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,5,'2016-10-16 22:02:28','2016-10-16 22:03:14'),(192,'CARTÃO','','','','','','','',0,6,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 183.jpg',0,1,15.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,8,'2016-10-16 22:11:35','2016-10-16 22:13:26'),(193,'CARTÃO','','','','','','','',0,6,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 185.jpg',0,1,15.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,9,'2016-10-16 22:14:13','2016-10-16 22:15:10'),(194,'CARTÃO','','','','','','','',0,6,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 187.jpg',0,1,15.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,8,'2016-10-16 22:16:32','2016-10-16 22:18:21'),(195,'CARTÃO','','','','','','','',0,6,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 190.jpg',0,1,15.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,9,'2016-10-16 22:28:00','2016-10-16 22:28:58'),(196,'CARTÃO','','','','','','','',0,6,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 191.jpg',0,1,15.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,8,'2016-10-16 22:33:44','2016-10-16 22:39:18'),(197,'CARTÃO','','','','','','','',0,6,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 193.jpg',0,1,15.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,6,'2016-10-16 22:39:24','2016-10-16 22:40:59'),(198,'CARTÃO','','','','','','','',0,6,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 197.jpg',0,1,15.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,8,'2016-10-16 22:41:50','2016-10-16 22:43:34'),(199,'CARTÃO','','','','','','','',0,6,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 199.jpg',0,1,15.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,7,'2016-10-16 22:45:02','2016-10-16 22:45:58'),(200,'CARTÃO','','','','','','','',0,6,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 201.jpg',0,1,15.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,5,'2016-10-16 22:46:07','2016-10-16 22:46:43'),(201,'CARTÃO','','','','','','','',0,6,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 203.jpg',0,1,15.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,6,'2016-10-16 22:46:50','2016-10-16 22:47:28'),(202,'CARTÃO','','','','','','','',0,6,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 205.jpg',0,1,15.0000,0,0,'2016-08-06',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,7,'2016-10-16 22:47:35','2016-10-16 22:48:12');
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_attribute`
--

LOCK TABLES `oc_product_attribute` WRITE;
/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_description`
--

LOCK TABLES `oc_product_description` WRITE;
/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
INSERT INTO `oc_product_description` VALUES (51,4,'MINI ORQUÍDEA NA COR ROSA EM VASO','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','MINI ORQUÍDEA NA COR ROSA EM VASO','MINI ORQUÍDEA NA COR ROSA EM VASO','MINI ORQUÍDEA NA COR ROSA EM VASO'),(55,4,'RAMALHETE 12 ROSAS COLOMBIANAS COR CHOCOLATE EM EMBALAGEM EM TOM DOURADO','&lt;p&gt;RAMALHETE 12 ROSAS COLOMBIANAS CHOCOLATE&lt;br&gt;&lt;/p&gt;','','RAMALHETE 12 ROSAS COLOMBIANAS COR CHOCOLATE EM EMBALAGEM EM TOM DOURADO','RAMALHETE 12 ROSAS COLOMBIANAS COR CHOCOLATE EM EMBALAGEM EM TOM DOURADO','RAMALHETE 12 ROSAS COLOMBIANAS COR CHOCOLATE EM EMBALAGEM EM TOM DOURADO'),(56,4,'ROSAS COLOMBIANAS EM CAIXA ','&lt;p&gt;ROSAS COLOMBIANAS EM CAIXA&amp;nbsp;&lt;br&gt;&lt;/p&gt;','','ROSAS COLOMBIANAS EM CAIXA ','ROSAS COLOMBIANAS EM CAIXA ','ROSAS COLOMBIANAS EM CAIXA '),(65,4,'Arranjo De Rosas Colombianas Amarelas Código 105','&lt;p&gt;Arranjo De Rosas Colombianas Amarelas Código 105&lt;br&gt;&lt;/p&gt;','','Arranjo De Rosas Colombianas Amarelas Código 105','Arranjo De Rosas Colombianas Amarelas Código 105\r\n','Arranjo De Rosas Colombianas Amarelas Código 105'),(103,4,'Brigadeiros Em Caixa - 8 Unidades','&lt;p&gt;Brigadeiros Em Caixa - 8 Unidades&lt;br&gt;&lt;/p&gt;','','Brigadeiros Em Caixa - 8 Unidades','Brigadeiros Em Caixa - 8 Unidades','Brigadeiros Em Caixa - 8 Unidades'),(67,4,'ARRANJO MINI CALACHOE 3 TONS  EM CACHEPÔ DE MADEIRA','&lt;p&gt;ARRANJO COM MINI CALACHOE 3 TONS &amp;nbsp;EM CACHEPÔ DE MADEIRA&lt;br&gt;&lt;/p&gt;','','ARRANJO COM MINI CALACHOE 3 TONS  EM CACHEPÔ DE MADEIRA','ARRANJO COM MINI CALACHOE 3 TONS  EM CACHEPÔ DE MADEIRA','ARRANJO COM MINI CALACHOE 3 TONS  EM CACHEPÔ DE MADEIRA'),(72,4,'RAMALHETE DE TULIPAS &amp; ASTROMELIAS IMPORTADAS TAMANHO M','&lt;p&gt;RAMALHETE DE TULIPAS &amp;amp; ASTROMELIAS IMPORTADAS TAMANHO M EM TONS DE VERMELHO E AMARELO EMBALADOS EM JUTA&lt;br&gt;&lt;/p&gt;','','RAMALHETE DE TULIPAS &amp; ASTROMELIAS IMPORTADAS TAMANHO M EM TONS DE VERMELHO E AMARELO EMBALADOS EM JUTA','RAMALHETE DE TULIPAS &amp; ASTROMELIAS IMPORTADAS TAMANHO M EM TONS DE VERMELHO E AMARELO EMBALADOS EM JUTA','RAMALHETE DE TULIPAS &amp; ASTROMELIAS IMPORTADAS TAMANHO M EM TONS DE VERMELHO E AMARELO EMBALADOS EM JUTA'),(75,4,'ARRANJO DE TULIPAS MIX DE CORES código 108','&lt;p&gt;ARRANJO DE 18 TULIPAS MIX DE CORES VERMELHAS, AMARELAS E PINK EM VASO RETANGULAR código 108&lt;br&gt;&lt;/p&gt;','','ARRANJO DE 18 TULIPAS MIX DE CORES VERMELHAS, AMARELAS E PINK EM VASO RETANGULAR código 108','ARRANJO DE 18 TULIPAS MIX DE CORES VERMELHAS, AMARELAS E PINK EM VASO RETANGULAR código 108','ARRANJO DE 18 TULIPAS MIX DE CORES VERMELHAS, AMARELAS E PINK EM VASO RETANGULAR código 108'),(57,4,'ARRANJO DE TULIPAS VERMELHAS &amp; AMARELAS código 109','&lt;p&gt;ARRANJO COM 12 TULIPAS VERMELHAS &amp;amp; AMARELAS EM VASO DE VIDRO código 109&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;','ARRANJO COM 12 TULIPAS VERMELHAS &amp; AMARELAS EM VASO DE VIDRO código 109',' ARRANJO COM 12 TULIPAS VERMELHAS &amp; AMARELAS EM VASO DE VIDRO código 109','ARRANJO COM 12 TULIPAS VERMELHAS &amp; AMARELAS EM VASO DE VIDRO código 109\r\n','ARRANJO COM 12 TULIPAS VERMELHAS &amp; AMARELAS EM VASO DE VIDRO código 109\r\n'),(61,4,'BUQUÊ DE ASTROMÉLIAS MIX DE CORES ','&lt;p&gt;BUQUÊ DE ASTROMÉLIAS MIX DE CORES NA COR AMARELA, ROSA E BRANCA código 111&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;br&gt;&lt;/p&gt;','','BUQUÊ DE ASTROMÉLIAS  MIX DE CORES NA COR AMARELA, ROSA E BRANCA   código 111','BUQUÊ DE ASTROMÉLIAS  MIX DE CORES NA COR AMARELA, ROSA E BRANCA código 111\r\n\r\n ','BUQUÊ DE ASTROMÉLIAS  MIX DE CORES NA COR AMARELA, ROSA E BRANCA código 111\r\n\r\n '),(77,4,'Arranjo De Orquídeas Phalaenopsis Brancas E Pink Código 103','&lt;p&gt;Arranjo De Orquídeas Phalaenopsis Brancas E Pink No Vaso Oval Com Grãos De Café Codigo 103&lt;br&gt;&lt;/p&gt;','','Arranjo De Orquídeas Phalaenopsis Brancas E Pink No Vaso Oval Com Grãos De Café Codigo 103','Arranjo De Orquídeas Phalaenopsis Brancas E Pink No Vaso Oval Com Grãos De Café Codigo 103','Arranjo De Orquídeas Phalaenopsis Brancas E Pink No Vaso Oval Com Grãos De Café Codigo 103'),(76,4,'Arranjo De Orquídea Cymbidium E Lisianthus Código 102','&lt;span style=&quot;font-size: 9pt; line-height: 115%; font-family: Arial, sans-serif;&quot;&gt;Arranjo De Orquídea Cymbidium E Lisianthus Em Vaso De Ceramica Preto\r\nCódigo 102&lt;/span&gt;','','Arranjo De Orquídea Cymbidium E Lisianthus Em Vaso De Ceramica Preto Código 102','Arranjo De Orquídea Cymbidium E Lisianthus Em Vaso De Ceramica Preto Código 102','Arranjo De Orquídea Cymbidium E Lisianthus Em Vaso De Ceramica Preto Código 102\r\n'),(99,4,'Arranjo Em Caixa Cor Azul Claro Com Mix De Flores De Cravos','&lt;p&gt;Arranjo Em Caixa Cor Azul Claro Com Mix De Flores De Cravos&lt;br&gt;&lt;/p&gt;','','Arranjo Em Caixa Cor Azul Claro Com Mix De Flores De Cravos','Arranjo Em Caixa Cor Azul Claro Com Mix De Flores De Cravos','Arranjo Em Caixa Cor Azul Claro Com Mix De Flores De Cravos'),(53,4,'BUQUÊ DE ROSAS COLOMBIANAS NA COR ROSA código 113','&lt;p&gt;BUQUÊ COM 12 ROSAS COLOMBIANAS NA COR ROSA código 113&lt;br&gt;&lt;/p&gt;','BUQUÊ COM 12 ROSAS COLOMBIANAS NA COR ROSA código 113','BUQUÊ COM 12 ROSAS COLOMBIANAS NA COR ROSA código 113','BUQUÊ COM 12 ROSAS COLOMBIANAS NA COR ROSA código 113','BUQUÊ COM 12 ROSAS COLOMBIANAS NA COR ROSA código 113\r\n'),(52,4,'BUQUÊ DE ROSAS COLOMBIANAS VERMELHAS código 112','&lt;p&gt;BUQUÊ COM 12 ROSAS COLOMBIANAS VERMELHAS código 112&lt;br&gt;&lt;/p&gt;','','BUQUÊ COM 12 ROSAS COLOMBIANAS VERMELHAS código 112','BUQUÊ COM 12 ROSAS COLOMBIANAS VERMELHAS código 112','BUQUÊ COM 12 ROSAS COLOMBIANAS VERMELHAS código 112'),(63,4,'BUQUÊ DE ROSAS NACIONAIS E ASTROMÉLIAS NA COR ROSA código 116','&lt;p&gt;BUQUÊ COM 7 ROSAS NACIONAIS E ASTROMÉLIAS NA COR ROSA código 116&lt;br&gt;&lt;/p&gt;','','BUQUÊ COM 7 ROSAS NACIONAIS E ASTROMÉLIAS NA COR ROSA código 116','BUQUÊ COM 7  ROSAS NACIONAIS E ASTROMÉLIAS NA COR ROSA código 116','BUQUÊ DE  ROSAS NACIONAIS E ASTROMÉLIAS NA COR ROSA código 116'),(68,4,'Arranjo Mix De Flores &amp; Cores Código 110','Arranjo Com Mix De Flores &amp;amp; Cores ( Rosas Colombianas Pink, Mini Hortência, Symbidium, Lisianthus E Folhagem ) Tamanho M Em Vaso De Cerâmica Branco Código 110','','Arranjo Com Mix De Flores &amp; Cores ( Rosas Colombianas Pink, Mini Hortência, Symbidium, Lisianthus E Folhagem ) Tamanho M Em Vaso De Cerâmica Branco Código 110','Arranjo Com Mix De Flores &amp; Cores ( Rosas Colombianas Pink, Mini Hortência, Symbidium, Lisianthus E Folhagem ) Tamanho M Em Vaso De Cerâmica Branco Código 110','Arranjo Com Mix De Flores &amp; Cores ( Rosas Colombianas Pink, Mini Hortência, Symbidium, Lisianthus E Folhagem ) Tamanho M Em Vaso De Cerâmica Branco Código 110'),(184,4,'ORQUÍDEA PHALAENOPSIS BRANCA 1 HASTE - 002','&lt;p&gt;ORQUÍDEA PHALAENOPSIS BRANCA 1 HASTE&lt;/p&gt;&lt;p&gt;Linda orquídea contendo 1 haste com 08 a 10 flores em média - 002&lt;/p&gt;&lt;p&gt;Temos várias opções de tipos e cores de orquídeas diariamente na loja!&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','ORQUÍDEA PHALAENOPSIS BRANCA 1 HASTE - 002','ORQUÍDEA PHALAENOPSIS BRANCA 1 HASTE - 002','ORQUÍDEA PHALAENOPSIS BRANCA 1 HASTE - 002'),(70,4,'ARRANJO DE ROSAS COLOMBIANAS BRANCAS &amp; CHOCOLATE código 107','&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;640&quot; style=&quot;width: 480pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\r\n  &lt;td height=&quot;20&quot; class=&quot;xl65&quot; width=&quot;640&quot; style=&quot;height: 15pt; width: 480pt;&quot;&gt;&lt;h5&gt;ARRANJO COM 12 ROSAS\r\n  COLOMBIANAS BRANCAS &amp;amp; CHOCOLATE EM VASO DE VIDRO código 107&lt;/h5&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;','','ARRANJO COM 12 ROSAS COLOMBIANAS BRANCAS &amp; CHOCOLATE EM VASO DE VIDRO código 107','ARRANJO COM 12 ROSAS COLOMBIANAS BRANCAS &amp; CHOCOLATE EM VASO DE VIDRO código 107','ARRANJO COM 12 ROSAS COLOMBIANAS BRANCAS &amp; CHOCOLATE EM VASO DE VIDRO código 107'),(79,4,'TAG 01','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 01','TAG 01','TAG 01'),(80,4,'TAG 02','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 02','TAG 02','TAG 02'),(81,4,'TAG 03','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 03','TAG 03','TAG 03'),(82,4,'TAG 04','&lt;div&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Tamanho: 8cm altura x 5cm largura&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;div&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/div&gt;','','TAG 04','TAG 04','TAG 04'),(83,4,'TAG 05','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 05','TAG 05','TAG 05'),(64,4,'BUQUÊ DE ROSAS COLOMBIANAS NA COR PINK código 114','&lt;h1&gt;&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;745&quot; style=&quot;width: 559pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\r\n  &lt;td height=&quot;20&quot; class=&quot;xl65&quot; width=&quot;745&quot; style=&quot;height:15.0pt;width:559pt&quot;&gt;&lt;h5&gt;&amp;nbsp;BUQUÊ DE 18 ROSAS COLOMBIANAS NA COR PINK código 114&lt;/h5&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;/h1&gt;','','BUQUÊ DE 18 ROSAS COLOMBIANAS NA COR PINK código 114','BUQUÊ DE 18 ROSAS COLOMBIANAS NA COR PINK  código 114\r\n','BUQUÊ DE 18 ROSAS COLOMBIANAS NA COR PINK  código 114\r\n'),(60,4,'CASA FLORES SECRET 50 TONS UNISEX','&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;span style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;span style=&quot;line-height: 1;&quot;&gt;Lançamento da linha Casa Flores Secret Box em parceira com a Intt Cosméticos unindo romantismo e sensualidade num só presente!&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;Código 120&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Casa Flores Secret Box&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 1 caixa retangular tamanho 33 x 22 x 12 na cor preta&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space:pre&quot;&gt;		&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 1 arranjo loral (mix de flores em tons de amarelo) &lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space:pre&quot;&gt;		&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Podutos Intt&lt;/span&gt;&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space:pre&quot;&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;		&lt;/span&gt;			&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 1 vela para massagem sabor Nutella&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space:pre&quot;&gt;		&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 1 Cliv Tons&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space:pre&quot;&gt;						&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 1 Vibration Tons&lt;span class=&quot;Apple-tab-span&quot; style=&quot;white-space:pre&quot;&gt;						&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 1 Algema Tons&lt;/p&gt;','CASA FLORES SECRET 50 TONS UNISEX','CASA FLORES SECRET 50 TONS UNISEX','CASA FLORES SECRET 50 TONS UNISEX','CASA FLORES SECRET 50 TONS UNISEX'),(85,4,'TAG 06','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 06','TAG 06','TAG 06'),(86,4,'TAG 07','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 com largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 07','TAG 07','TAG 07'),(88,4,'TAG 09','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 09','TAG 09','TAG 09'),(89,4,'TAG 10','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8 cm altura x 5 cm largura&amp;nbsp;&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 10','TAG 10','TAG 10'),(74,4,'ARRANJO DE ROSAS COLOMBIANAS AMARELAS código 106','&lt;p&gt;ARRANJO COM 15 ROSAS COLOMBIANAS AMARELAS EM VASO DE VIDRO código 106&lt;br&gt;&lt;/p&gt;','','ARRANJO COM 15 ROSAS COLOMBIANAS AMARELAS EM VASO DE VIDRO código 106','ARRANJO COM 15 ROSAS COLOMBIANAS AMARELAS EM VASO DE VIDRO código 106','ARRANJO COM 15 ROSAS COLOMBIANAS AMARELAS EM VASO DE VIDRO código 106'),(66,4,'ARRANJO DE ROSAS COLOMBIANAS VERMELHAS código 117','&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;745&quot; style=&quot;width: 559pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl65&quot; width=&quot;745&quot; style=&quot;height:15.0pt;width:559pt&quot;&gt;&lt;h5&gt;ARRANJO\n  COM 15 ROSAS COLOMBIANAS NA COR VERMELHA EM VASO RETANGULAR código 107&lt;/h5&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;','','ARRANJO COM 15 ROSAS COLOMBIANAS NA COR VERMELHA EM VASO RETANGULAR código 107','ARRANJO COM 15 ROSAS COLOMBIANAS NA COR VERMELHA EM VASO RETANGULAR código 107\n','ARRANJO COM 15 ROSAS COLOMBIANAS NA COR VERMELHA EM VASO RETANGULAR código 107\n'),(90,4,'TAG 11','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','Tag 11','Tag 11','Tag 11'),(78,4,'Cesta De Café Da Manhã 02','&lt;p style=&quot;line-height: 1;&quot;&gt;Uma linda cesta de café da manhã composta por flores escolhidas com todo cuidado pela Casa Flores , e produtos para um delicioso café da manhã especialmente selecionadas pelo O Bistrô dos Pães &amp;nbsp;( &amp;nbsp;www.obistrodospaes.com.br ) &amp;nbsp; para um presente lindo, colorido e muito gostoso !!&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;As cestas pode ser individuais ou para o casal.&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;Esta cesta é composta por:&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- Arranjo de Astromélias (*) na cor rosa &amp;amp; folhagens com espuma floral e embalagem;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 1 Cesta Vime tamanho M;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 2 Sucos orgânicos pequenos em garrafa de vidro;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 2 Croissant de Nutella com amêndoas;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 2 Pack de brigadeiros contendo 4 unidades &amp;nbsp;cada (tradicional, oreo, beijinho e frutas vermelhas);&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 3 Mini pães - sabores conforme disponibilidade: &amp;nbsp;azeite e sal grosso, português, multigrãos e castanhas e australiano;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 2 Trios com geleia, manteiga e mel;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 2 Bem-casados&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;span style=&quot;font-weight: bold; font-style: italic;&quot;&gt;Temos opção de inclusão de caixa com 6 deliciosos macarons : Valor adicional de R$ 49,00.&lt;/span&gt;&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;(*) As flores e cores podem ser alteradas conforme disponibilidade na loja e na data solicitada para entrega do presente.&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&amp;nbsp;Todos os produtos ( flores , pães e doces ) são frescos e as cestas são montadas no dia da entrega.&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Cesta De Café Da Manhã 02','Cesta De Café Da Manhã 02','Cesta De Café Da Manhã 02'),(91,4,'Cesta De Café Da Manhã 01','&lt;p style=&quot;line-height: 1;&quot;&gt;Uma linda cesta de café da manhã composta por flores escolhidas com todo cuidado pela Casa Flores , e produtos para um delicioso café da manhã especialmente selecionadas pelo &amp;nbsp;O Bistrô dos Pães ( &amp;nbsp;www.obistrodospaes.com.br ) &amp;nbsp; para um presente lindo, colorido e muito gostoso !!&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;As cestas pode ser individuais ou para o casal.&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;Esta cesta é composta por:&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- Arranjo de Lírios na cor vermelha (*) &amp;amp; folhagens com espuma floral e embalagem;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 1 Cesta Vime tamanho M;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 1 Suco orgânico pequena em garrafa de vidro;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 1 Croissant de Nutella com amêndoas;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 1 Pack de brigadeiros contendo 4 unidades &amp;nbsp;(tradicional, oreo, beijinho e frutas vermelhas);&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 2 Mini pães - sabores conforme disponibilidade: &amp;nbsp;azeite e sal grosso, português, multigrãos e castanhas e australiano;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- Trio com geleia, manteiga e mel;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 1 Bem-casado&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;span style=&quot;line-height: 1;&quot;&gt;(*) As flores e cores podem ser alteradas conforme disponibilidade da loja e na data de entrega do presente.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;Todos os produtos ( flores , pães e doces ) são frescos e as cestas são montadas no dia da entrega.&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/p&gt;','','Cesta De Café Da Manhã 01','Cesta De Café Da Manhã 01','Cesta De Café Da Manhã 01'),(59,4,'CASA FLORES SECRET  HALLS VIBER FEMININO','&lt;div style=&quot;line-height: 1.4;&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;div style=&quot;line-height: 1.4;&quot;&gt;Lançamento da linha Casa Flores Secret Box em parceira com a Intt Cosméticos, unindo romantismo e sensualidade num só presente!&lt;/div&gt;\n&lt;div style=&quot;line-height: 1.4;&quot;&gt;&lt;br&gt;&lt;/div&gt;\n&lt;div style=&quot;line-height: 1.4;&quot;&gt;Código 119&lt;/div&gt;\n&lt;div style=&quot;line-height: 1.4;&quot;&gt;&lt;br&gt;&lt;/div&gt;\n&lt;div style=&quot;line-height: 1.4;&quot;&gt;Casa Flores Box Secret&lt;/div&gt;\n&lt;div style=&quot;line-height: 1.4;&quot;&gt;- 1 caixa retangular tamanho 33 X 22 X 12 na cor preta&lt;/div&gt;\n&lt;div style=&quot;line-height: 1.4;&quot;&gt;- 1 arranjo floral (mix de flores em tons de rosa)&lt;/div&gt;\n&lt;div style=&quot;line-height: 1.4;&quot;&gt;&lt;br&gt;&lt;/div&gt;\n&lt;div style=&quot;line-height: 1.4;&quot;&gt;Produtos Intt&lt;/div&gt;\n&lt;div style=&quot;line-height: 1.4;&quot;&gt;- 1 vela para massagem sabor&lt;/div&gt;\n&lt;div style=&quot;line-height: 1.4;&quot;&gt;- 1 estimulante feminino Vibrante Halls Viber&lt;/div&gt;\n&lt;div style=&quot;line-height: 1.4;&quot;&gt;- 1 gel funcional Touch Me&lt;/div&gt;\n&lt;div style=&quot;line-height: 1.4;&quot;&gt;- Manual de instrução&lt;/div&gt;','CASA FLORES SECRET  HALLS VIBER FEMININO','Lançamento da linha Casa Flores Secret Box em parceira com a Intt Cosméticos unindo romantismo e sensualidade num só presente! ','Lançamento da linha Casa Flores Secret Box em parceira com a Intt Cosméticos unindo romantismo e sensualidade num só presente! ',''),(73,4,'ARRANJO DE ROSAS COLOMBIANAS VERMELHAS &amp; URSINHO DE PELÚCIA código 104','&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;640&quot; style=&quot;width: 480pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl65&quot; width=&quot;640&quot; style=&quot;height:15.0pt;width:480pt&quot;&gt;&lt;h5&gt;ARRANJO\n  COM 15 ROSAS COLOMBIANAS VERMELHAS EM VASO DE VIDRO &amp;amp; URSINHO DE PELÚCIA código 104&lt;/h5&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p&gt;Custo arranjo rosas &amp;amp; vaso: R$ 180,00&lt;/p&gt;&lt;p&gt;Custo &amp;nbsp;Urso de Pelúcia tamanho P = R$ 30,00&lt;br&gt;&lt;/p&gt;','','ARRANJO COM 15 ROSAS COLOMBIANAS VERMELHAS EM VASO DE VIDRO &amp; URSINHO DE PELÚCIA código 104','ARRANJO COM 15 ROSAS COLOMBIANAS VERMELHAS EM VASO DE VIDRO &amp; URSINHO DE PELÚCIA código 104\n','ARRANJO COM 15 ROSAS COLOMBIANAS VERMELHAS EM VASO DE VIDRO &amp; URSINHO DE PELÚCIA código 104\n'),(58,4,'CASA FLORES SECRET HOT PEPPER UNISEX','&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;Lançamento da linha Casa Flores Secret Box em parceira com a Intt Cosméticos unindo romantismo e sensualidade num só presente!&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;Código 121&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Casa Flores Secret Box&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 1 caixa retangular tamanho 33x22x12 na cor preta&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 1 arranjo floral (mix de flores em tons de vermelho)&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Produtos Intt&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 1 vela para massagem sabor morango&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 1 estimulante unisex hot pepper&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- 1 gel eletrizante vibration sabor morango&lt;/p&gt;&lt;p style=&quot;line-height: 1;&quot;&gt;- manual instrução&amp;nbsp;&lt;/p&gt;','CASA FLORES SECRET HOT PAPPER UNISEX','CASA FLORES SECRET  HOT PEPPER UNISEX','CASA FLORES SECRET HOT PEPPER UNISEX','CASA FLORES SECRET HOT PEPPER UNISEX'),(62,4,'BUQUÊ DE ROSAS NACIONAIS VERMELHAS código 115','&lt;p&gt;BUQUÊ COM 12 ROSAS NACIONAIS NA COR VERMELHA código 115&lt;br&gt;&lt;/p&gt;','','BUQUÊ COM 13 ROSAS NACIONAIS NA COR VERMELHA código 115','BUQUÊ COM 13 ROSAS NACIONAIS NA COR VERMELHA código 115','BUQUÊ COM 13 ROSAS NACIONAIS NA COR VERMELHA código 115'),(71,4,'Arranjo De Astromélias Código 100','&lt;p&gt;ARRANJO DE ASTROMÉLIAS EM VASO DE VIDRO TAMANHO P código 100&lt;br&gt;&lt;/p&gt;','','Arranjo De Astromélias Código 100','Arranjo De Astromélias Código 100','Arranjo De Astromélias Código 100'),(69,4,'BUQUÊ MIX DE FLORES &amp; CORES código 117','&lt;p&gt;BUQUÊ MIX DE FLORES &amp;amp; CORES ( GERBERA, FLOR DO CAMPO, LIRIO ) código 117&lt;br&gt;&lt;/p&gt;','','BUQUÊ MIX DE FLORES &amp; CORES ( GERBERA, FLOR DO CAMPO, LIRIO ) código 117','BUQUÊ MIX DE FLORES &amp; CORES ( GERBERA, FLOR DO CAMPO, LIRIO ) código 117','BUQUÊ MIX DE FLORES &amp; CORES ( GERBERA, FLOR DO CAMPO, LIRIO ) código 117'),(54,4,'RAMALHETE DE TULIPAS NAS CORES VERMELHA E AMARELA código 118','&lt;p&gt;RAMALHETE COM 18 TULIPAS NAS CORES VERMELHA E AMARELA código 118&lt;br&gt;&lt;/p&gt;','','RAMALHETE COM 18 TULIPAS NAS CORES VERMELHA E AMARELA código 118 ','RAMALHETE COM 18 TULIPAS NAS CORES VERMELHA E AMARELA código 118','RAMALHETE COM 18 TULIPAS NAS CORES VERMELHA E AMARELA código 118'),(87,4,'TAG 08','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 08','TAG 08','TAG 08'),(92,4,'Arranjo Astromélias E Rosas Em Tom Rosa','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Arranjo Astromélias E Rosas Em Tom Rosa','Arranjo Astromélias E Rosas Em Tom Rosa','Arranjo Astromélias E Rosas Em Tom Rosa'),(93,4,'ARRANJO MIX DE FLORES CRAVINAS E ASTROMÉLIAS NOS TONS ROSA E BRANCO','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','ARRANJO MIX DE FLORES CRAVINAS E ASTROMÉLIAS NOS TONS ROSA E BRANCO','ARRANJO MIX DE FLORES CRAVINAS E ASTROMÉLIAS NOS TONS ROSA E BRANCO','ARRANJO MIX DE FLORES CRAVINAS E ASTROMÉLIAS NOS TONS ROSA E BRANCO'),(94,4,'GARRAFA DE CERVEJA COM ROSAS COLOMBIANAS EM TOM VERMELHO','&lt;p&gt;GARRAFA DE CERVEJA COM ROSAS COLOMBIANAS EM TOM VERMELHO&lt;br&gt;&lt;/p&gt;&lt;p&gt;Um presente moderno e criativo para qualquer pessoa que goste de cerveja ou só quer deixar a sua casa ainda mais bonita e descolada!&lt;br&gt;&lt;/p&gt;','','GARRAFA DE CERVEJA COM ROSAS COLOMBIANAS EM TOM VERMELHO','GARRAFA DE CERVEJA COM ROSAS COLOMBIANAS EM TOM VERMELHO','GARRAFA DE CERVEJA COM ROSAS COLOMBIANAS EM TOM VERMELHO'),(95,4,'GARRAFA DE CERVEJA COM ORQUÍDEA CYMBIDIUM EM TOM AMARELO','&lt;p&gt;GARRAFA DE CERVEJA COM ORQUÍDEA CYMBIDIUM EM TOM AMARELO&lt;/p&gt;&lt;p&gt;Um presente moderno e criativo para qualquer pessoa que goste de cerveja ou só quer deixar a sua casa ainda mais bonita e descolada!&lt;/p&gt;','','GARRAFA DE CERVEJA COM ORQUÍDEA CYMBIDIUM EM TOM AMARELO','GARRAFA DE CERVEJA COM ORQUÍDEA CYMBIDIUM EM TOM AMARELO','GARRAFA DE CERVEJA COM ORQUÍDEA CYMBIDIUM EM TOM AMARELO'),(96,4,'ARRANJO EM CAIXA COR PRETA COM ORQUÍDEA  CYMBIDIUM EM TOM AMARELO ','&lt;p&gt;ARRANJO EM CAIXA COR PRETA COM ORQUÍDEA &amp;nbsp;CYMBIDIUM EM TOM AMARELO&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','ARRANJO EM CAIXA COR PRETA COM ORQUÍDEA  CYMBIDIUM EM TOM AMARELO ','ARRANJO EM CAIXA COR PRETA COM ORQUÍDEA  CYMBIDIUM EM TOM AMARELO ','ARRANJO EM CAIXA COR PRETA COM ORQUÍDEA  CYMBIDIUM EM TOM AMARELO '),(97,4,'ARRANJO EM CAIXA COR PRETA COM CRAVOS EM TOM VERMELHO','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','ARRANJO EM CAIXA COR PRETA COM CRAVOS EM TOM VERMELHO','ARRANJO EM CAIXA COR PRETA COM CRAVOS EM TOM VERMELHO','ARRANJO EM CAIXA COR PRETA COM CRAVOS EM TOM VERMELHO'),(98,4,'ARRANJO EM CAIXA COR PRETA COM CRAVOS EM TOM AMARELO','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','ARRANJO EM CAIXA COR PRETA COM CRAVOS EM TOM AMARELO','ARRANJO EM CAIXA COR PRETA COM CRAVOS EM TOM AMARELO','ARRANJO EM CAIXA COR PRETA COM CRAVOS EM TOM AMARELO'),(100,4,'Arranjo Em Caixa Cor Azul Claro Com Orquídeas Cimbídios Em Tom Amarelo E Boneco Artesanal','&lt;p&gt;Arranjo Em Caixa Cor Azul Claro Com Orquídeas Cimbídios Em Tom Amarelo E Boneco Artesanal&lt;br&gt;&lt;/p&gt;','','Arranjo Em Caixa Cor Azul Claro Com Orquídeas Cimbídios Em Tom Amarelo E Boneco Artesanal','Arranjo Em Caixa Cor Azul Claro Com Orquídeas Cimbídios Em Tom Amarelo E Boneco Artesanal','Arranjo Em Caixa Cor Azul Claro Com Orquídeas Cimbídios Em Tom Amarelo E Boneco Artesanal'),(101,4,'ARRANJO EM CAIXA COR PRETA COM ROSAS NACIONAIS EM TOM AMARELO','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','ARRANJO EM CAIXA COR PRETA COM ROSAS NACIONAIS EM TOM AMARELO','ARRANJO EM CAIXA COR PRETA COM ROSAS NACIONAIS EM TOM AMARELO','ARRANJO EM CAIXA COR PRETA COM ROSAS NACIONAIS EM TOM AMARELO'),(102,4,'ARRANJO EM CAIXA COR ROSA COM MIX DE FLORES','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','ARRANJO EM CAIXA COR ROSA COM MIX DE FLORES','ARRANJO EM CAIXA COR ROSA COM MIX DE FLORES','ARRANJO EM CAIXA COR ROSA COM MIX DE FLORES'),(104,4,'MACARONS EM CAIXA - 12 UNIDADES','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','MACARONS EM CAIXA - 12 UNIDADES','MACARONS EM CAIXA - 12 UNIDADES','MACARONS EM CAIXA - 12 UNIDADES'),(106,4,'Cesta Kit Café E Lírios','&lt;p&gt;- Cesta&lt;/p&gt;&lt;p&gt;- Arranjo de Lírios&lt;/p&gt;&lt;p&gt;- Pó de café torrado e moído marca São Francisco - 250g&lt;/p&gt;&lt;p&gt;- Coador de pano&lt;/p&gt;&lt;p&gt;- Xícara e pires marca São Francisco&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;','','Cesta Kit Café E Lírios','Cesta Kit Café E Lírios','Cesta Kit Café E Lírios'),(105,4,'Cesta Kit Cerveja Karavelle Com Pistache E Lírios','&lt;p&gt;- Cesta&lt;/p&gt;&lt;p&gt;- Cerveja Karavelle Wess 600ml&lt;/p&gt;&lt;p&gt;- Cerveja Red Ale Hell 600ml&lt;/p&gt;&lt;p&gt;- Cerveja Pilsen Premium 600ml&lt;/p&gt;&lt;p&gt;- Pote com pistaches 130g&lt;/p&gt;','','Cesta Kit Cerveja Karavelle Com Pistache E Lírios','Cesta Kit Cerveja Karavelle Com Pistache E Lírios','Cesta Kit Cerveja Karavelle Com Pistache E Lírios'),(107,4,'Cesta Kit Cerveja Belga Leffe, Com Pistache, Damasco E Lírios','&lt;p&gt;- Cesta&lt;/p&gt;&lt;p&gt;- Arranjo de Lírios&lt;/p&gt;&lt;p&gt;- Pote com pistaches 130g&lt;/p&gt;&lt;p&gt;- Pote com damascos 35g&lt;/p&gt;&lt;p&gt;- Cerveja tipo Blond 330ml&lt;/p&gt;&lt;p&gt;- Cerveja tipo Radieuse 330ml&lt;/p&gt;','','Cesta Kit Cerveja Belga Leffe, Com Pistache, Damasco E Lírios','Cesta Kit Cerveja Belga Leffe, Com Pistache, Damasco E Lírios','Cesta Kit Cerveja Belga Leffe, Com Pistache, Damasco E Lírios'),(108,4,'Cesta Kit Cerveja Goose Island, Com Pistache, Damasco E Lírios','&lt;p&gt;- Cesta&lt;/p&gt;&lt;p&gt;- Arranjo de Lírios&lt;/p&gt;&lt;p&gt;- Pote com pistaches 130g&lt;/p&gt;&lt;p&gt;- Pote com damascos 35g&lt;/p&gt;&lt;p&gt;- Cerveja tipo Ipa 335ml&lt;/p&gt;&lt;p&gt;- Cerveja tipo Honkers 335ml&lt;/p&gt;','','Cesta Kit Cerveja Goose Island, Com Pistache, Damasco E Lírios','Cesta Kit Cerveja Goose Island, Com Pistache, Damasco E Lírios','Cesta Kit Cerveja Goose Island, Com Pistache, Damasco E Lírios'),(109,4,'TAG 12','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 12','TAG 12','TAG 12'),(110,4,'TAG 13','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 13','TAG 13','TAG 13'),(111,4,'TAG 14','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 14','TAG 14','TAG 14'),(112,4,'TAG 15','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 15','TAG 15','TAG 15'),(113,4,'TAG 16','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 16','TAG 16','TAG 16'),(114,4,'Cartão para Presente 01','&lt;p&gt;Cartão para Presente 01&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 01','Cartão para Presente 01','Cartão para Presente 01'),(115,4,'Cartão para Presente 02','&lt;p&gt;Cartão para Presente 02&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 02','Cartão para Presente 02','Cartão para Presente 02'),(116,4,'Cartão para Presente 03','&lt;p&gt;Cartão para Presente 03&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 03','Cartão para Presente 03','Cartão para Presente 03'),(117,4,'Cartão para Presente 04','&lt;p&gt;Cartão para Presente 04&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 04','Cartão para Presente 04','Cartão para Presente 04'),(118,4,'Cartão para Presente 05','&lt;p&gt;Cartão para Presente 05&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 05','Cartão para Presente 05','Cartão para Presente 05'),(119,4,'Cartão para Presente 06','&lt;p&gt;Cartão para Presente 06&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 06','Cartão para Presente 06','Cartão para Presente 06'),(120,4,'Cartão para Presente 07','&lt;p&gt;Cartão para Presente 07&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 07','Cartão para Presente 07','Cartão para Presente 07'),(121,4,'Cartão para Presente 08','&lt;p&gt;Cartão para Presente 08&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 08','Cartão para Presente 08','Cartão para Presente 08'),(122,4,'Cartão para Presente 09','&lt;p&gt;Cartão para Presente 09&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 09','Cartão para Presente 09','Cartão para Presente 09'),(123,4,'Cartão para Presente 10','&lt;p&gt;Cartão para Presente 10&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 10','Cartão para Presente 10','Cartão para Presente 10'),(124,4,'Cartão para Presente 11','&lt;p&gt;Cartão para Presente 11&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 11','Cartão para Presente 11','Cartão para Presente 11'),(125,4,'BONECA ARTESANAL PEQUENA 01','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','BONECA ARTESANAL PEQUENA 01','BONECA ARTESANAL PEQUENA 01','BONECA ARTESANAL PEQUENA 01'),(126,4,'BONECA ARTESANAL PEQUENA 02','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','BONECA ARTESANAL PEQUENA 02','BONECA ARTESANAL PEQUENA 02','BONECA ARTESANAL PEQUENA 02'),(127,4,'BONECA ARTESANAL PEQUENA 03','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','BONECA ARTESANAL PEQUENA 03','BONECA ARTESANAL PEQUENA 03','BONECA ARTESANAL PEQUENA 03'),(128,4,'Ursinha Artesanal Pequena 01','&lt;p&gt;Ursinha Artesanal Pequena 01&lt;br&gt;&lt;/p&gt;','','Ursinha Artesanal Pequena 01','Ursinha Artesanal Pequena 01','Ursinha Artesanal Pequena 01'),(129,4,'BONECA ARTESANAL CHAPÉU 01','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','BONECA ARTESANAL CHAPÉU 01','BONECA ARTESANAL CHAPÉU 01','BONECA ARTESANAL CHAPÉU 01'),(130,4,'BONECA ARTESANAL CHAPÉU 02','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','BONECA ARTESANAL CHAPÉU 02','BONECA ARTESANAL CHAPÉU 02','BONECA ARTESANAL CHAPÉU 02'),(131,4,'BONECO ARTESANAL PEQUENO 01','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','BONECO ARTESANAL PEQUENO 01','BONECO ARTESANAL PEQUENO 01','BONECO ARTESANAL PEQUENO 01'),(132,4,'TAG 17','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 17','TAG 17','TAG 17'),(133,4,'TAG 18','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 18','TAG 18','TAG 18'),(135,4,'Arranjo Astromélias Mix De Flores - 02','&lt;p&gt;Arranjo Astromélias Mix De Flores - 02&lt;/p&gt;&lt;p&gt;Vaso com 18 cm altura x 6 cm de diâmetro no bocal x 9 de largura.&lt;/p&gt;','','Arranjo Astromélias Mix De Flores - 02','Arranjo Astromélias Mix De Flores - 02','Arranjo Astromélias Mix De Flores - 02'),(136,4,'ARRANJO GÉRBERAS AMARELAS','&lt;p&gt;ARRANJO GÉRBERAS AMARELAS&lt;/p&gt;&lt;p&gt;Com 8 gérberas na cor amarela&lt;/p&gt;&lt;p&gt;Vaso com 18 cm de altura x 6 cm de diâmetro no bocal x 6 cm de largura&lt;/p&gt;','','ARRANJO GÉRBERAS AMARELAS','ARRANJO GÉRBERAS AMARELAS','ARRANJO GÉRBERAS AMARELAS'),(137,4,'Arranjo Lisianthus E Rosas Brancas','&lt;p&gt;Arranjo Lisianthus E Rosas Brancas&lt;/p&gt;&lt;p&gt;12 hastes, sendo 8 de lisianthus e 4 de rosas nacionais&lt;/p&gt;&lt;p&gt;Vaso com 13 cm de altura, 6 de diâmetro no bocal e 7,5 cm de largura&lt;/p&gt;','','Arranjo Lisianthus E Rosas Brancas','Arranjo Lisianthus E Rosas Brancas','Arranjo Lisianthus E Rosas Brancas'),(142,4,'Arranjo Caixa Branca Com Rosas Nacionais Salmão','&lt;p&gt;ARRANJO CAIXA BRANCA COM ROSAS NACIONAIS SALMÃO&lt;/p&gt;&lt;p&gt;12 hastes de rosas nacionais na cor salmão + folhagem&amp;nbsp;&lt;/p&gt;&lt;p&gt;Caixa com 12 cm de altura x 12 cm de largura x 12 cm de profundidade&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Arranjo Caixa Branca Com Rosas Nacionais Salmão','Arranjo Caixa Branca Com Rosas Nacionais Salmão','Arranjo Caixa Branca Com Rosas Nacionais Salmão'),(143,4,'Arranjo Caixa Tons De Azul Com Rosas Brancas - Dia Da Secretária','&lt;p class=&quot;MsoNormal&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;Arranjo Caixa Tons De Azul Com Rosas Brancas - Dia Da\nSecretária&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;&lt;p&gt;12 hastes de rosas colombianas na cor branca&lt;/p&gt;&lt;p&gt;* Caixa com 6 cm de altura x 25 cm de largura x 19 cm de profundidade - modelo da caixa sujeito a disponibilidade no dia da compra&lt;/p&gt;&lt;p&gt;Tag com 8 cm de altura x 5 cm de alrgura&lt;/p&gt;','','Arranjo Caixa Tons De Azul Com Rosas Brancas - Dia Da Secretária','Arranjo Caixa Tons De Azul Com Rosas Brancas - Dia Da Secretária','Arranjo Caixa Tons De Azul Com Rosas Brancas - Dia Da Secretária'),(144,4,'TAG 19','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 19','TAG 19','TAG 19'),(145,4,'TAG 20','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 20','TAG 20','TAG 20'),(146,4,'TAG 21','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 21','TAG 21','TAG 21'),(147,4,'TAG 22','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 22','TAG 22','TAG 22'),(148,4,'TAG 23','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 23','TAG 23','TAG 23'),(149,4,'TAG 24','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 24','TAG 24','TAG 24'),(150,4,'TAG 25','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 25','TAG 25','TAG 25'),(151,4,'TAG 26','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 26','TAG 26','TAG 26'),(152,4,'TAG 27','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 27','TAG 27','TAG 27'),(153,4,'TAG 28','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 28','TAG 28','TAG 28'),(154,4,'TAG 29','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 29','TAG 29','TAG 29'),(155,4,'TAG 31','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 31','TAG 31','TAG 31'),(156,4,'TAG 30','&lt;p&gt;Tags feitos a mão com amor pelo Atelier Otilia. Originais e únicos compondo de forma delicada o seu presente com flores!&lt;/p&gt;&lt;p&gt;Tamanho: 8cm altura x 5 cm largura&lt;/p&gt;&lt;p&gt;Siga o Instagram do Atelier Otilia -&amp;gt; www.instagram.com/atelierotilia&lt;/p&gt;','','TAG 30','TAG 30','TAG 30'),(157,4,'Arranjo Caixa Branca Com Rosas Colombianas Na Cor Rosa E 12 Brigadeiros Diversos','&lt;p class=&quot;MsoNormal&quot;&gt;Arranjo Caixa Branca Com Rosas Colombianas Na Cor Rosa E 12\r\nBrigadeiros Diversos&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;&lt;p&gt;4 rosas colombianas na cor rosa&lt;/p&gt;&lt;p&gt;Caixa branca com 6 cm de altura x 25 cm de largura 6 cm de profundidade&lt;/p&gt;&lt;p&gt;Tag com 8 cm de altura x 5 cm de largura by Atelier Otília&lt;/p&gt;&lt;p&gt;12 brigadeiros de sabores diversos by Bendito Brigadeiro&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Opção 1 - com 12 brigadeiros R$ 125,00&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Opção 2 - sem os brigadeiros R$ 75,00&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Opção 3 - com rosas nacionais e os 12 brigadeiros por R$ 89,90&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Opção 2 - com rosas nacionais sem os 12 brigadeiros por R$ 39,90&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Arranjo Caixa Branca Com Rosas Colombianas Na Cor Rosa E 12 Brigadeiros Diversos','Arranjo Caixa Branca Com Rosas Colombianas Na Cor Rosa E 12 Brigadeiros Diversos','Arranjo Caixa Branca Com Rosas Colombianas Na Cor Rosa E 12 Brigadeiros Diversos'),(158,4,'Arranjo Em Caixa Cor Azul Claro Com Orquídea Cymbidium Em Tom Amarelo e 3 Cabides Azuis De Bonecos','&lt;p&gt;Arranjo Em Caixa Cor Azul Claro Com Orquídea Cymbidium Em Tom Amarelo e 3 Cabides Azuis De Bonecos&lt;/p&gt;&lt;p&gt;Uma &amp;nbsp;excelente opção para presente de maternidade!&lt;/p&gt;','','Arranjo Em Caixa Cor Azul Claro Com Orquídea Cymbidium Em Tom Amarelo e 3 Cabides Azuis De Bonecos','Arranjo Em Caixa Cor Azul Claro Com Orquídea Cymbidium Em Tom Amarelo e 3 Cabides Azuis De Bonecos','Arranjo Em Caixa Cor Azul Claro Com Orquídea Cymbidium Em Tom Amarelo e 3 Cabides Azuis De Bonecos'),(159,4,'ARRANJO EM CAIXA COR PRETA COM ROSAS NACIONAIS EM TOM AMARELO E 8 BRIGADEIROS DIVERSOS','&lt;p&gt;ARRANJO EM CAIXA COR PRETA COM ROSAS NACIONAIS EM TOM AMARELO E 8 BRIGADEIROS DIVERSOS&lt;br&gt;&lt;/p&gt;','','ARRANJO EM CAIXA COR PRETA COM ROSAS NACIONAIS EM TOM AMARELO E 8 BRIGADEIROS DIVERSOS','ARRANJO EM CAIXA COR PRETA COM ROSAS NACIONAIS EM TOM AMARELO E 8 BRIGADEIROS DIVERSOS','ARRANJO EM CAIXA COR PRETA COM ROSAS NACIONAIS EM TOM AMARELO E 8 BRIGADEIROS DIVERSOS'),(160,4,'ARRANJO EM CAIXA COR PRETA COM ROSAS NACIONAIS EM TOM AMARELO E 12 MACARONS DIVERSOS','&lt;p&gt;ARRANJO EM CAIXA COR PRETA COM ROSAS NACIONAIS EM TOM AMARELO E 12 MACARONS DIVERSOS&lt;/p&gt;','','ARRANJO EM CAIXA COR PRETA COM ROSAS NACIONAIS EM TOM AMARELO E 12 MACARONS DIVERSOS','ARRANJO EM CAIXA COR PRETA COM ROSAS NACIONAIS EM TOM AMARELO E 12 MACARONS DIVERSOS','ARRANJO EM CAIXA COR PRETA COM ROSAS NACIONAIS EM TOM AMARELO E 8 BRIGADEIROS DIVERSOS'),(161,4,'ARRANJO EM CAIXA COR ROSA COM MIX DE FLORES E 12 MACARONS','&lt;p&gt;ARRANJO EM CAIXA COR ROSA COM MIX DE FLORES E 12 MACARONS&lt;br&gt;&lt;/p&gt;','','ARRANJO EM CAIXA COR ROSA COM MIX DE FLORES E 12 MACARONS','ARRANJO EM CAIXA COR ROSA COM MIX DE FLORES E 12 MACARONS','ARRANJO EM CAIXA COR ROSA COM MIX DE FLORES E 12 MACARONS'),(162,4,'CABIDE BEBÊ AZUL CLARO COM BONECO','&lt;p&gt;CABIDE BEBÊ AZUL CLARO COM BONECO&lt;br&gt;&lt;/p&gt;','','CABIDE BEBÊ AZUL CLARO COM BONECO','CABIDE BEBÊ AZUL CLARO COM BONECO','CABIDE BEBÊ AZUL CLARO COM BONECO'),(164,4,'3 Cabides Bebê Na Cor Creme Com Boneco De Ovelha','&lt;p class=&quot;MsoNormal&quot;&gt;3 Cabides Bebê Na Cor Creme Com Boneco De Ovelha&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;','','3 Cabides Bebê Na Cor Creme Com Boneco De Ovelha','3 Cabides Bebê Na Cor Creme Com Boneco De Ovelha','3 Cabides Bebê Na Cor Creme Com Boneco De Ovelha'),(165,4,'3 Cabides Bebê Na Cor Branca Com Boneca','&lt;p class=&quot;MsoNormal&quot;&gt;3 Cabides Bebê Na Cor Branca Com Boneca&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;','','3 Cabides Bebê Na Cor Branca Com Boneca','3 Cabides Bebê Na Cor Branca Com Boneca','3 Cabides Bebê Na Cor Branca Com Boneca'),(166,4,'CABIDE BEBÊ BRANCO COM BONECA','&lt;p&gt;CABIDE BEBÊ BRANCO COM BONECA&lt;br&gt;&lt;/p&gt;','','CABIDE BEBÊ BRANCO COM BONECA','CABIDE BEBÊ BRANCO COM BONECA','CABIDE BEBÊ BRANCO COM BONECA'),(167,4,'CABIDE BEBÊ BRANCO COM OVELHA','&lt;p&gt;CABIDE BEBÊ BRANCO COM OVELHA&lt;br&gt;&lt;/p&gt;','','CABIDE BEBÊ BRANCO COM OVELHA','CABIDE BEBÊ BRANCO COM OVELHA','CABIDE BEBÊ BRANCO COM OVELHA'),(170,4,'MINI BUQUÊ DE FRÉSIAS COM DIVERSAS CORES EM EMBALAGEM MARROM','&lt;p&gt;MINI BUQUÊ DE FRÉSIAS COM DIVERSAS CORES EM EMBALAGEM MARROM&lt;br&gt;&lt;/p&gt;','','MINI BUQUÊ DE FRÉSIAS COM DIVERSAS CORES EM EMBALAGEM MARROM','MINI BUQUÊ DE FRÉSIAS COM DIVERSAS CORES EM EMBALAGEM MARROM','MINI BUQUÊ DE FRÉSIAS COM DIVERSAS CORES EM EMBALAGEM MARROM'),(171,4,'ARRANJO EM CAIXA COR ROSA COM ROSAS NACIONAIS EM TOM ROSA','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','ARRANJO EM CAIXA COR ROSA COM ROSAS NACIONAIS EM TOM ROSA','ARRANJO EM CAIXA COR ROSA COM ROSAS NACIONAIS EM TOM ROSA','ARRANJO EM CAIXA COR ROSA COM ROSAS NACIONAIS EM TOM ROSA'),(50,4,'Arranjo De Mini Orquídeas Código 101','&lt;p class=&quot;MsoNormal&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Arial, sans-serif; font-size: 9pt;&quot;&gt;Arranjo De Mini Orquídeas Brancas, Amarelas E Pink Na Cesta - Código 101&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','ARRANJO MINI ORQUÍDEAS NA CESTA código 101','Arranjo De Mini Orquídeas Código 101','Arranjo De Mini Orquídeas Código 101','Arranjo De Mini Orquídeas Código 101'),(134,4,'Arranjo Astromélias Mix De Flores - 01','&lt;p class=&quot;MsoNormal&quot;&gt;Arranjo Astromélias Mix De Flores - 01&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;&lt;p&gt;Vaso com 18 cm altura x 6 cm de diâmetro no bocal x 9 de largura.&lt;/p&gt;','','Arranjo Astromélias Mix De Flores - 01','Arranjo Astromélias Mix De Flores - 01','Arranjo Astromélias Mix De Flores - 01'),(141,4,'Arranjo Caixa Branca Com Rosas Nacionais Salmão - Dia Da Secretária','&lt;p class=&quot;MsoNormal&quot;&gt;Arranjo Caixa Branca Com Rosas Nacionais Salmão - Dia Da\r\nSecretária&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;&lt;p&gt;12 hastes de rosas nacionais na cor salmão + folhagem&amp;nbsp;&lt;/p&gt;&lt;p&gt;Caixa com 12 cm de altura x 12 cm de largura x 12 cm de profundidade&lt;/p&gt;&lt;p&gt;Tag com 8 cm de altura x 5 cm de largura&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','Arranjo Caixa Branca Com Rosas Nacionais Salmão - Dia Da Secretária','Arranjo Caixa Branca Com Rosas Nacionais Salmão - Dia Da Secretária','Arranjo Caixa Branca Com Rosas Nacionais Salmão - Dia Da Secretária'),(163,4,'3 Cabides Bebê na Cor Azul Claro Com Boneco','&lt;p class=&quot;MsoNormal&quot;&gt;3 Cabides Bebê na Cor Azul Claro Com Boneco&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;','','3 Cabides Bebê na Cor Azul Claro Com Boneco','3 Cabides Bebê na Cor Azul Claro Com Boneco','3 Cabides Bebê na Cor Azul Claro Com Boneco'),(168,4,'Brigadeiro Belga Em Caixa - 12 Unidades - Diversos Sabores','&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Brigadeiro Belga Em Caixa - 12 Unidades - Diversos Sabores&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;12 brigadeiros belga nos sabores: ao leite, amendoim e branco by Bendito Brigadeiro&lt;/span&gt;&lt;/p&gt;&lt;p&gt;Os brigadeiros são feitos no dia do pedido, super fresquinhos! &lt;/p&gt;&lt;p&gt;Por isso ratificamos a informação de que o pedido deste produto deve ser feito com no mínimo 1 dia de antecedência.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Obs. O modelo da caixa pode eventualmente sofrer variação de cor e modelo.&lt;br&gt;&lt;/p&gt;','','Brigadeiro Belga Em Caixa - 12 Unidades - Diversos Sabores','Brigadeiro Belga Em Caixa - 12 Unidades - Diversos Sabores','Brigadeiro Belga Em Caixa - 12 Unidades - Diversos Sabores'),(169,4,'Brigadeiro Belga Em Caixa - 4 Unidades - Diversos Sabores','&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Brigadeiro Belga Em Caixa - 4 Unidades - Diversos Sabores&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;4 brigadeiros Belga nos sabores ao leite, amendoim e branco by Bendito Brigadeiro&lt;/span&gt;&lt;/p&gt;&lt;p&gt;Os brigadeiros são feitos no dia do pedido, super fresquinhos!&lt;/p&gt;&lt;p&gt;Por isso ratificamos a informação de que o pedido deste produto deve ser feito com no mínimo 1 dia de antecedência.&amp;nbsp;&lt;/p&gt;&lt;p&gt;Obs. O modelo da caixa pode eventualmente sofrer variação de cor e modelo.&lt;/p&gt;','','Brigadeiro Belga Em Caixa - 4 Unidades - Diversos Sabores','Brigadeiro Belga Em Caixa - 4 Unidades - Diversos Sabores','Brigadeiro Belga Em Caixa - 4 Unidades - Diversos Sabores'),(172,4,'Arranjo Em Caixa Cor Amarela Com Rosas Nacionais Em Tom Rosa','&lt;p&gt;Arranjo Em Caixa Cor Amarela Com Rosas Nacionais Em Tom Rosa&lt;br&gt;&lt;/p&gt;','','Arranjo Em Caixa Cor Amarela Com Rosas Nacionais Em Tom Rosa','Arranjo Em Caixa Cor Amarela Com Rosas Nacionais Em Tom Rosa','Arranjo Em Caixa Cor Amarela Com Rosas Nacionais Em Tom Rosa'),(173,4,'Arranjo Em Caixa Cor Amarela Com Rosas Nacionais Em Tom Rosa Com Boneca','&lt;p&gt;Arranjo Em Caixa Cor Amarela Com Rosas Nacionais Em Tom Rosa Com Boneca&lt;br&gt;&lt;/p&gt;','','Arranjo Em Caixa Cor Amarela Com Rosas Nacionais Em Tom Rosa Com Boneca','Arranjo Em Caixa Cor Amarela Com Rosas Nacionais Em Tom Rosa Com Boneca','Arranjo Em Caixa Cor Amarela Com Rosas Nacionais Em Tom Rosa Com Boneca'),(174,4,'ARRANJO EM CAIXA COR ROSA COM ROSAS NACIONAIS EM TOM ROSA COM BONECA','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','ARRANJO EM CAIXA COR ROSA COM ROSAS NACIONAIS EM TOM ROSA COM BONECA','ARRANJO EM CAIXA COR ROSA COM ROSAS NACIONAIS EM TOM ROSA COM BONECA','ARRANJO EM CAIXA COR ROSA COM ROSAS NACIONAIS EM TOM ROSA COM BONECA'),(175,4,'ARRANJO EM CAIXA PRETA COM ROSAS NACIONAIS VERMELHAS','&lt;p&gt;ARRANJO EM CAIXA PRETA COM ROSAS NACIONAIS VERMELHAS&lt;/p&gt;&lt;p&gt;12 a 15 rosas nacionais&lt;/p&gt;&lt;p&gt;Caixa com 12 cm de altura x 12 cm de largura x 12 cm de profundidade&amp;nbsp;&lt;br&gt;&lt;/p&gt;','','ARRANJO EM CAIXA PRETA COM ROSAS NACIONAIS VERMELHAS','ARRANJO EM CAIXA PRETA COM ROSAS NACIONAIS VERMELHAS','ARRANJO EM CAIXA PRETA COM ROSAS NACIONAIS VERMELHAS'),(176,4,'ARRANJO EM CAIXA PRETA COM ROSAS NACIONAIS VERMELHAS COM TAG','&lt;p&gt;ARRANJO EM CAIXA PRETA COM ROSAS NACIONAIS VERMELHAS&lt;/p&gt;&lt;p&gt;12 a 15 rosas nacionais&lt;/p&gt;&lt;p&gt;Caixa com 12 cm de altura x 12 cm de largura x 12 cm de profundidade&amp;nbsp;&lt;/p&gt;&lt;p&gt;Tag com 8 cm de altura x 5 cm de largura&lt;/p&gt;','','ARRANJO EM CAIXA PRETA COM ROSAS NACIONAIS VERMELHAS COM TAG','ARRANJO EM CAIXA PRETA COM ROSAS NACIONAIS VERMELHAS COM TAG','ARRANJO EM CAIXA PRETA COM ROSAS NACIONAIS VERMELHAS COM TAG'),(177,4,'ORQUÍDEAS DENDOBRIUM LILÁS EM CAIXA PRETA','&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size: 9.5pt; line-height: 115%; font-family: Arial, sans-serif; color: rgb(34, 34, 34); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;ORQUÍDEAS DENDOBRIUM LILÁS\nEM CAIXA PRETA&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size: 9.5pt; line-height: 115%; font-family: Arial, sans-serif; color: rgb(34, 34, 34); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;&lt;span style=&quot;font-family: arial, sans-serif; font-size: 12.8px;&quot;&gt;Altura total arranjo:&lt;/span&gt;&lt;br style=&quot;font-family: arial, sans-serif; font-size: 12.8px;&quot;&gt;&lt;span style=&quot;font-family: arial, sans-serif; font-size: 12.8px;&quot;&gt;Caixa tamanho 12 cm de altura x 12 cm de largura x 12 cm de profundidade&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;','','ORQUÍDEAS DENDOBRIUM LILÁS EM CAIXA PRETA','ORQUÍDEAS DENDOBRIUM LILÁS EM CAIXA PRETA','ORQUÍDEAS DENDOBRIUM LILÁS EM CAIXA PRETA'),(178,4,'MINI BUQUÊ DE FRÉSIAS DIVERSAS CORES','&lt;p&gt;MINI BUQUÊ DE FRÉSIAS DIVERSAS CORES&lt;br&gt;&lt;/p&gt;','','MINI BUQUÊ DE FRÉSIAS DIVERSAS CORES','MINI BUQUÊ DE FRÉSIAS DIVERSAS CORES','MINI BUQUÊ DE FRÉSIAS DIVERSAS CORES'),(179,4,'ARRANJO MIX DE FLORES EM CAIXA PRETA COM TAG E 4 BRIGADEIROS','&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size: 9.5pt; line-height: 115%; font-family: Arial, sans-serif; color: rgb(34, 34, 34); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;ARRANJO MIX DE FLORES EM CAIXA PRETA COM TAG E 4 BRIGADEIROS&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 12.6667px;&quot;&gt;Tag com 8 cm de altura x 5 cm de largura&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 12.6667px;&quot;&gt;4 brigadeiros de sabores diversos&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;','','ARRANJO MIX DE FLORES EM CAIXA PRETA COM TAG E 4 BRIGADEIROS','ARRANJO MIX DE FLORES EM CAIXA PRETA COM TAG E 4 BRIGADEIROS','ARRANJO MIX DE FLORES EM CAIXA PRETA COM TAG E 4 BRIGADEIROS'),(180,4,'ARRANJO MIX DE FLORES EM CAIXA PRETA COM TAG','&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size: 9.5pt; line-height: 115%; font-family: Arial, sans-serif; color: rgb(34, 34, 34); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;ARRANJO MIX DE FLORES EM CAIXA PRETA COM TAG&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size: 9.5pt; line-height: 115%; font-family: Arial, sans-serif; color: rgb(34, 34, 34); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;Tag com 8 cm de altura x 5 cm de largura&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;','','ARRANJO MIX DE FLORES EM CAIXA PRETA COM TAG','ARRANJO MIX DE FLORES EM CAIXA PRETA COM TAG','ARRANJO MIX DE FLORES EM CAIXA PRETA COM TAG'),(181,4,'ARRANJO MIX DE FLORES EM CAIXA PRETA','&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size: 9.5pt; line-height: 115%; font-family: Arial, sans-serif; color: rgb(34, 34, 34); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;ARRANJO MIX DE FLORES EM CAIXA PRETA&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;','','ARRANJO MIX DE FLORES EM CAIXA PRETA','ARRANJO MIX DE FLORES EM CAIXA PRETA','ARRANJO MIX DE FLORES EM CAIXA PRETA'),(182,4,'MINI ORQUÍDEA BRANCA E LILÁS EM VASO DE CERÂMICA PRETO - 004','&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size: 9.5pt; line-height: 115%; font-family: Arial, sans-serif; color: rgb(34, 34, 34); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;MINI ORQUÍDEA BRANCA E\r\nLILÁS EM VASO DE CERÂMICA PRETO&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size: 9.5pt; line-height: 115%; font-family: Arial, sans-serif; color: rgb(34, 34, 34); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;&lt;span style=&quot;font-family: arial, sans-serif; font-size: 12.8px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size: 9.5pt; line-height: 115%; font-family: Arial, sans-serif; color: rgb(34, 34, 34); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;&lt;span style=&quot;font-family: arial, sans-serif; font-size: 12.8px;&quot;&gt;Altura total arranjo: aproximadamente 30 a 35cm&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size: 9.5pt; line-height: 115%; font-family: Arial, sans-serif; color: rgb(34, 34, 34); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;&quot;&gt;&lt;span style=&quot;font-family: arial, sans-serif; font-size: 12.8px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;br style=&quot;font-family: arial, sans-serif; font-size: 12.8px;&quot;&gt;&lt;span style=&quot;font-family: arial, sans-serif; font-size: 12.8px;&quot;&gt;Vaso de cerâmica com 10 cm de altura x 10 cm de largura x 10 cm profundidade&lt;/span&gt;&lt;br&gt;&lt;/span&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/p&gt;','','MINI ORQUÍDEA BRANCA E LILÁS EM VASO DE CERÂMICA PRETO - 004','MINI ORQUÍDEA BRANCA E LILÁS EM VASO DE CERÂMICA PRETO - 004','MINI ORQUÍDEA BRANCA E LILÁS EM VASO DE CERÂMICA PRETO - 004'),(140,4,'ORQUÍDEA PHALAENOPSIS BRANCA 2 HASTES - 001','&lt;p&gt;ORQUÍDEA PHALAENOPSIS BRANCA&lt;/p&gt;&lt;p&gt;Linda orquídea contendo 2 hastes com 16 a 20 flores em média.&lt;/p&gt;&lt;p&gt;Vaso com 17 cm de altura x 17 cm de largura x 17 cm de profundidade&lt;/p&gt;&lt;p&gt;Temos várias opções de tipos e cores de orquídeas diariamente na loja!&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','ORQUÍDEA PHALAENOPSIS BRANCA 2 HASTES - 001','ORQUÍDEA PHALAENOPSIS BRANCA 2 HASTES - 001','ORQUÍDEA PHALAENOPSIS BRANCA 2 HASTES - 001'),(138,4,'ORQUÍDEAS PHALAENOPSIS BRANCAS COM 12 BRIGADEIROS - 003','&lt;p&gt;ORQUÍDEA PHALAENOPSIS &amp;nbsp;BRANCA COM 12 BRIGADEIROS&lt;/p&gt;&lt;p&gt;Linda orquídea contendo 2 hastes com 16 a 20 flores em média.&lt;/p&gt;&lt;p&gt;Vaso com 17 cm de altura x 17 cm de largura x 17 cm de profundidade&lt;/p&gt;&lt;p&gt;Temos várias opções de tipos e cores de orquídeas diariamente na loja!&lt;/p&gt;','','ORQUÍDEAS PHALAENOPSIS BRANCAS COM 12 BRIGADEIROS','ORQUÍDEAS PHALAENOPSIS BRANCAS COM 12 BRIGADEIROS','ORQUÍDEAS PHALAENOPSIS BRANCAS COM 12 BRIGADEIROS'),(185,4,'Cartão para Presente 12','&lt;p&gt;Cartão para Presente 12&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 12','Cartão para Presente 12','Cartão para Presente 12'),(186,4,'Cartão para Presente 13','&lt;p&gt;Cartão para Presente 13&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 13','Cartão para Presente 13','Cartão para Presente 13'),(187,4,'Cartão para Presente 14','&lt;p&gt;Cartão para Presente 14&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 14','Cartão para Presente 14','Cartão para Presente 14'),(188,4,'Cartão para Presente 15','&lt;p&gt;Cartão para Presente 15&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 15','Cartão para Presente 15','Cartão para Presente 15'),(189,4,'Cartão para Presente 16','&lt;p&gt;Cartão para Presente 16&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 16','Cartão para Presente 16','Cartão para Presente 16'),(190,4,'Cartão para Presente 17','&lt;p&gt;Cartão para Presente 17&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 17','Cartão para Presente 17','Cartão para Presente 17'),(191,4,'Cartão para Presente 18','&lt;p&gt;Cartão para Presente 18&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 18','Cartão para Presente 18','Cartão para Presente 18'),(192,4,'Cartão para Presente 19','&lt;p&gt;Cartão para Presente 19&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 19','Cartão para Presente 19','Cartão para Presente 19'),(193,4,'Cartão para Presente 20','&lt;p&gt;Cartão para Presente 20&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 20','Cartão para Presente 20','Cartão para Presente 20'),(194,4,'Cartão para Presente 21','&lt;p&gt;Cartão para Presente 21&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 21','Cartão para Presente 21','Cartão para Presente 21'),(195,4,'Cartão para Presente 22','&lt;p&gt;Cartão para Presente 22&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 22','Cartão para Presente 22','Cartão para Presente 22'),(196,4,'Cartão para Presente 23','&lt;p&gt;Cartão para Presente 23&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 23','Cartão para Presente 23','Cartão para Presente 23'),(197,4,'Cartão para Presente 24','&lt;p&gt;Cartão para Presente 24&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 24','Cartão para Presente 24','Cartão para Presente 24'),(198,4,'Cartão para Presente 25','&lt;p&gt;Cartão para Presente 25&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 25','Cartão para Presente 25','Cartão para Presente 25'),(199,4,'Cartão para Presente 26','&lt;p&gt;Cartão para Presente 26&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 26','Cartão para Presente 26','Cartão para Presente 26'),(200,4,'Cartão para Presente 27','&lt;p&gt;Cartão para Presente 27&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 27','Cartão para Presente 27','Cartão para Presente 27'),(201,4,'Cartão para Presente 28','&lt;p&gt;Cartão para Presente 28&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 28','Cartão para Presente 28','Cartão para Presente 28'),(202,4,'Cartão para Presente 29','&lt;p&gt;Cartão para Presente 29&lt;br&gt;&lt;/p&gt;','','Cartão para Presente 29','Cartão para Presente 29','Cartão para Presente 29');
/*!40000 ALTER TABLE `oc_product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=495 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_discount`
--

LOCK TABLES `oc_product_discount` WRITE;
/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_filter`
--

LOCK TABLES `oc_product_filter` WRITE;
/*!40000 ALTER TABLE `oc_product_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3975 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_image`
--

LOCK TABLES `oc_product_image` WRITE;
/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
INSERT INTO `oc_product_image` VALUES (3677,58,'catalog/Produtos/Secret/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 23_2.jpg',0),(3676,60,'catalog/Produtos/Secret/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 25_2.jpg',2),(3675,60,'catalog/Produtos/Secret/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 26_1.jpg',1),(3674,59,'catalog/Produtos/Secret/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 26_1.jpg',0),(3889,103,'catalog/Produtos/Flores e doces/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 63.jpg',0),(3888,103,'catalog/Produtos/Flores e doces/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 65.jpg',0),(3887,103,'catalog/Produtos/Flores e doces/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 66.jpg',0),(3682,112,'catalog/Produtos/Tag/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 77.jpg',0),(3918,114,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 80.jpg',0),(3921,115,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 82.jpg',0),(3923,116,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 84.jpg',0),(3924,117,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 86.jpg',0),(3925,118,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 88.jpg',0),(3926,119,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 93.jpg',0),(3927,120,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 95.jpg',0),(3928,121,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 97.jpg',0),(3929,122,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 99.jpg',0),(3919,123,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 101.jpg',0),(3920,124,'catalog/Produtos/Cartão/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 102.jpg',0),(3893,104,'catalog/Produtos/Flores e doces/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 104.jpg',0),(3892,104,'catalog/Produtos/Flores e doces/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 105.jpg',0),(3891,104,'catalog/Produtos/Flores e doces/20160529 - CASA FLORES - NOVO SITE - FOTO PRODUTO 107.jpg',0),(3852,134,'catalog/Produtos/Arranjo/Astromélias/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 130_2_1.jpg',0),(3851,134,'catalog/Produtos/Arranjo/Astromélias/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 130_3_1.jpg',0),(3853,135,'catalog/Produtos/Arranjo/Astromélias/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 132_2.jpg',0),(3882,136,'catalog/Produtos/Arranjo/Gérberas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 135_2.jpg',0),(3881,136,'catalog/Produtos/Arranjo/Gérberas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 135_3.jpg',0),(3880,136,'catalog/Produtos/Arranjo/Gérberas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 135_4.jpg',0),(3861,137,'catalog/Produtos/Arranjo/Lisianthus e Rosas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 136_3.jpg',0),(3860,137,'catalog/Produtos/Arranjo/Lisianthus e Rosas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 136_2.jpg',0),(3915,140,'catalog/Produtos/Arranjo/Orquídeas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 137_2.jpg',0),(3911,138,'catalog/Produtos/Arranjo/Orquídeas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 137_3.jpg',0),(3910,138,'catalog/Produtos/Arranjo/Orquídeas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 137_2.jpg',0),(3914,140,'catalog/Produtos/Arranjo/Orquídeas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 137_3.jpg',0),(3871,141,'catalog/Produtos/Arranjo/Rosas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 139_2.jpg',0),(3870,141,'catalog/Produtos/Arranjo/Rosas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 139_3.jpg',0),(3857,142,'catalog/Produtos/Arranjo/Rosas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 139_3.jpg',0),(3856,142,'catalog/Produtos/Arranjo/Rosas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 140_2.jpg',0),(3795,143,'catalog/Produtos/Arranjo/Rosas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 141_3.jpg',0),(3794,143,'catalog/Produtos/Arranjo/Rosas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 141_2.jpg',0),(3873,157,'catalog/Produtos/Arranjo/Rosas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 143_3.jpg',0),(3872,157,'catalog/Produtos/Arranjo/Rosas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 143_2.jpg',0),(3883,168,'catalog/Produtos/Flores e doces/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 144_2.jpg',0),(3886,169,'catalog/Produtos/Flores e doces/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 145_2.jpg',0),(3885,169,'catalog/Produtos/Flores e doces/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 145_3.jpg',0),(3884,169,'catalog/Produtos/Flores e doces/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 145_4.jpg',0),(3890,170,'catalog/Produtos/Buquês/Frésias/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 162_2.jpg',0),(3936,185,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 170.jpg',0),(3937,186,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 172.jpg',0),(3917,184,'catalog/Produtos/Orquídeas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 168_3.jpg',0),(3916,184,'catalog/Produtos/Orquídeas/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 168_2.jpg',0),(3938,187,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 174.jpg',0),(3941,188,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 176.jpg',0),(3943,189,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 178.jpg',0),(3949,190,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 180.jpg',0),(3950,191,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 182.jpg',0),(3952,192,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 184.jpg',0),(3954,193,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 186.jpg',0),(3957,194,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 188.jpg',0),(3959,195,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 189.jpg',0),(3962,196,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 192.jpg',0),(3964,197,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 194.jpg',0),(3966,198,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 198.jpg',0),(3968,199,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 200.jpg',0),(3970,200,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 202.jpg',0),(3972,201,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 204.jpg',0),(3974,202,'catalog/Produtos/Cartão/20160916 - CASA FLORES - NOVO SITE - FOTO PRODUTO 206.jpg',0);
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=272 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option`
--

LOCK TABLES `oc_product_option` WRITE;
/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
INSERT INTO `oc_product_option` VALUES (271,163,14,'',0),(269,163,8,'',1),(270,163,5,'',1);
/*!40000 ALTER TABLE `oc_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option_value`
--

LOCK TABLES `oc_product_option_value` WRITE;
/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
INSERT INTO `oc_product_option_value` VALUES (128,270,163,5,39,1000,0,0.0000,'+',0,'+',0.00000000,'+'),(129,270,163,5,40,1000,0,0.0000,'+',0,'+',0.00000000,'+');
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_recurring`
--

DROP TABLE IF EXISTS `oc_product_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_recurring`
--

LOCK TABLES `oc_product_recurring` WRITE;
/*!40000 ALTER TABLE `oc_product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_related`
--

LOCK TABLES `oc_product_related` WRITE;
/*!40000 ALTER TABLE `oc_product_related` DISABLE KEYS */;
INSERT INTO `oc_product_related` VALUES (57,71),(61,71),(71,57),(71,61);
/*!40000 ALTER TABLE `oc_product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=778 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_reward`
--

LOCK TABLES `oc_product_reward` WRITE;
/*!40000 ALTER TABLE `oc_product_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=614 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_special`
--

LOCK TABLES `oc_product_special` WRITE;
/*!40000 ALTER TABLE `oc_product_special` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_category`
--

LOCK TABLES `oc_product_to_category` WRITE;
/*!40000 ALTER TABLE `oc_product_to_category` DISABLE KEYS */;
INSERT INTO `oc_product_to_category` VALUES (50,37),(50,44),(52,38),(52,42),(53,38),(53,42),(54,38),(55,38),(55,42),(56,53),(57,37),(57,58),(58,47),(58,49),(59,47),(59,49),(60,47),(60,49),(61,38),(61,56),(61,57),(62,38),(62,42),(63,38),(63,42),(63,50),(64,38),(64,42),(65,37),(65,53),(66,37),(67,37),(68,37),(68,53),(68,55),(69,38),(69,56),(70,37),(70,53),(71,37),(71,57),(73,37),(74,37),(75,37),(75,58),(76,37),(76,44),(77,37),(77,44),(78,47),(78,61),(79,62),(80,62),(81,62),(82,62),(83,47),(83,62),(85,47),(85,62),(86,47),(86,62),(87,47),(87,62),(88,47),(88,62),(89,47),(89,62),(90,47),(90,62),(91,47),(91,61),(91,70),(92,37),(92,53),(92,57),(93,37),(93,57),(93,74),(94,47),(94,64),(95,47),(95,64),(96,37),(97,37),(97,47),(97,70),(97,75),(98,37),(98,47),(98,70),(98,75),(99,37),(99,47),(99,70),(99,75),(100,37),(100,47),(101,37),(101,47),(101,48),(101,53),(102,37),(102,47),(102,48),(102,55),(103,47),(103,69),(104,47),(104,69),(105,47),(105,61),(106,47),(106,61),(106,70),(106,71),(107,47),(107,61),(107,70),(107,71),(108,47),(108,61),(108,70),(108,71),(109,62),(110,62),(111,62),(112,62),(113,62),(114,67),(115,67),(116,67),(117,67),(118,67),(119,67),(120,67),(121,67),(122,67),(123,67),(124,67),(125,47),(125,65),(125,68),(126,47),(126,65),(126,68),(127,47),(127,65),(127,68),(128,47),(128,65),(128,68),(129,47),(129,68),(130,47),(130,68),(131,47),(131,65),(131,68),(132,62),(133,62),(134,37),(134,57),(135,37),(135,57),(136,37),(136,76),(136,78),(137,37),(137,53),(137,77),(138,69),(138,78),(140,47),(141,37),(141,78),(142,37),(142,47),(142,48),(142,53),(143,37),(143,78),(144,62),(144,78),(145,62),(145,78),(146,62),(146,78),(147,62),(147,78),(148,62),(148,78),(149,62),(149,78),(150,62),(150,78),(151,62),(151,78),(152,62),(152,78),(153,62),(153,78),(154,62),(154,78),(155,62),(155,78),(156,62),(156,78),(157,78),(158,47),(158,65),(159,47),(159,48),(159,69),(160,47),(160,69),(161,47),(161,48),(161,55),(161,69),(162,47),(162,65),(162,68),(163,47),(163,65),(163,68),(164,47),(164,65),(164,68),(165,47),(165,65),(165,68),(166,47),(166,65),(166,68),(167,47),(167,65),(167,68),(168,47),(168,69),(169,47),(169,69),(170,38),(170,47),(170,78),(170,79),(171,37),(171,47),(171,53),(172,37),(172,47),(172,53),(172,78),(173,37),(173,47),(173,65),(174,37),(174,47),(174,65),(175,37),(175,48),(175,53),(176,37),(176,78),(177,44),(178,38),(178,79),(179,47),(179,55),(179,69),(179,78),(180,55),(180,78),(181,55),(182,47),(184,37),(184,44),(185,67),(185,68),(186,67),(186,68),(187,67),(187,68),(188,67),(188,68),(189,67),(189,68),(190,67),(190,68),(191,67),(191,68),(192,67),(192,68),(193,67),(193,68),(194,67),(194,68),(195,67),(195,68),(196,67),(196,68),(197,67),(197,68),(198,67),(198,68),(199,67),(199,68),(200,67),(200,68),(201,67),(201,68),(202,67),(202,68);
/*!40000 ALTER TABLE `oc_product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_download`
--

LOCK TABLES `oc_product_to_download` WRITE;
/*!40000 ALTER TABLE `oc_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_layout`
--

LOCK TABLES `oc_product_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_product_to_layout` DISABLE KEYS */;
INSERT INTO `oc_product_to_layout` VALUES (202,0,0),(201,0,0),(200,0,0),(199,0,0),(198,0,0),(197,0,0),(196,0,0),(195,0,0),(194,0,0),(193,0,0),(192,0,0),(191,0,0),(190,0,0),(189,0,0),(188,0,0),(187,0,0),(186,0,0),(185,0,0),(122,0,0),(121,0,0),(120,0,0),(119,0,0),(118,0,0),(117,0,0),(116,0,0),(115,0,0),(124,0,0),(123,0,0),(114,0,0),(94,0,0),(95,0,0),(158,0,0),(182,0,0),(138,0,0),(140,0,0),(104,0,0),(178,0,0),(170,0,0),(103,0,0),(180,0,0),(169,0,0),(168,0,0),(136,0,0),(184,0,0),(141,0,0),(68,0,0),(137,0,0),(171,0,0),(101,0,0),(96,0,0),(98,0,0),(99,0,0),(172,0,0),(70,0,0),(65,0,0),(77,0,0),(76,0,0),(50,0,0),(71,0,0),(157,0,0),(135,0,0),(134,0,0),(92,0,0),(57,0,0),(75,0,0),(69,0,0),(62,0,0),(63,0,0),(52,0,0),(53,0,0),(64,0,0),(61,0,0),(142,0,0),(176,0,0),(175,0,0),(163,0,0);
/*!40000 ALTER TABLE `oc_product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_store`
--

LOCK TABLES `oc_product_to_store` WRITE;
/*!40000 ALTER TABLE `oc_product_to_store` DISABLE KEYS */;
INSERT INTO `oc_product_to_store` VALUES (50,0),(51,0),(52,0),(53,0),(54,0),(55,0),(56,0),(57,0),(58,0),(59,0),(60,0),(61,0),(62,0),(63,0),(64,0),(65,0),(66,0),(67,0),(68,0),(69,0),(70,0),(71,0),(72,0),(73,0),(74,0),(75,0),(76,0),(77,0),(78,0),(79,0),(80,0),(81,0),(82,0),(83,0),(85,0),(86,0),(87,0),(88,0),(89,0),(90,0),(91,0),(92,0),(93,0),(94,0),(95,0),(96,0),(97,0),(98,0),(99,0),(100,0),(101,0),(102,0),(103,0),(104,0),(105,0),(106,0),(107,0),(108,0),(109,0),(110,0),(111,0),(112,0),(113,0),(114,0),(115,0),(116,0),(117,0),(118,0),(119,0),(120,0),(121,0),(122,0),(123,0),(124,0),(125,0),(126,0),(127,0),(128,0),(129,0),(130,0),(131,0),(132,0),(133,0),(134,0),(135,0),(136,0),(137,0),(138,0),(140,0),(141,0),(142,0),(143,0),(144,0),(145,0),(146,0),(147,0),(148,0),(149,0),(150,0),(151,0),(152,0),(153,0),(154,0),(155,0),(156,0),(157,0),(158,0),(159,0),(160,0),(161,0),(162,0),(163,0),(164,0),(165,0),(166,0),(167,0),(168,0),(169,0),(170,0),(171,0),(172,0),(173,0),(174,0),(175,0),(176,0),(177,0),(178,0),(179,0),(180,0),(181,0),(182,0),(184,0),(185,0),(186,0),(187,0),(188,0),(189,0),(190,0),(191,0),(192,0),(193,0),(194,0),(195,0),(196,0),(197,0),(198,0),(199,0),(200,0),(201,0),(202,0);
/*!40000 ALTER TABLE `oc_product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring`
--

DROP TABLE IF EXISTS `oc_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring`
--

LOCK TABLES `oc_recurring` WRITE;
/*!40000 ALTER TABLE `oc_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring_description`
--

DROP TABLE IF EXISTS `oc_recurring_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring_description`
--

LOCK TABLES `oc_recurring_description` WRITE;
/*!40000 ALTER TABLE `oc_recurring_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return`
--

LOCK TABLES `oc_return` WRITE;
/*!40000 ALTER TABLE `oc_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_action`
--

LOCK TABLES `oc_return_action` WRITE;
/*!40000 ALTER TABLE `oc_return_action` DISABLE KEYS */;
INSERT INTO `oc_return_action` VALUES (1,4,'Refunded'),(2,4,'Credit Issued'),(3,4,'Replacement Sent');
/*!40000 ALTER TABLE `oc_return_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_history`
--

LOCK TABLES `oc_return_history` WRITE;
/*!40000 ALTER TABLE `oc_return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_reason`
--

LOCK TABLES `oc_return_reason` WRITE;
/*!40000 ALTER TABLE `oc_return_reason` DISABLE KEYS */;
INSERT INTO `oc_return_reason` VALUES (1,4,'Perdido no transporte'),(2,4,'Recebi item incorreto'),(3,4,'Pedido incorreto'),(4,4,'Quebrado, especifique os detalhes'),(5,4,'Outros, especifique os detalhes');
/*!40000 ALTER TABLE `oc_return_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_status`
--

LOCK TABLES `oc_return_status` WRITE;
/*!40000 ALTER TABLE `oc_return_status` DISABLE KEYS */;
INSERT INTO `oc_return_status` VALUES (1,4,'Pendente'),(3,4,'Completo'),(2,4,'Aguardando produto');
/*!40000 ALTER TABLE `oc_return_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_review`
--

LOCK TABLES `oc_review` WRITE;
/*!40000 ALTER TABLE `oc_review` DISABLE KEYS */;
INSERT INTO `oc_review` VALUES (51,54,0,'Fausto Simaro Vieira','Ótima opção de presente para o Dia dos Namorados!!!',5,1,'2016-06-01 10:01:12','2016-09-29 20:42:10');
/*!40000 ALTER TABLE `oc_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17995 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_setting`
--

LOCK TABLES `oc_setting` WRITE;
/*!40000 ALTER TABLE `oc_setting` DISABLE KEYS */;
INSERT INTO `oc_setting` VALUES (1,0,'shipping','shipping_sort_order','3',0),(2,0,'sub_total','sub_total_sort_order','1',0),(3,0,'sub_total','sub_total_status','1',0),(4,0,'tax','tax_status','1',0),(5,0,'total','total_sort_order','9',0),(6,0,'total','total_status','1',0),(7,0,'tax','tax_sort_order','5',0),(16626,0,'pagseguro','pagseguro_order_cancelada','22',0),(14,0,'shipping','shipping_status','1',0),(15,0,'shipping','shipping_estimator','1',0),(27,0,'coupon','coupon_sort_order','4',0),(28,0,'coupon','coupon_status','1',0),(16634,0,'joseanmatias_faixa_cep','joseanmatias_faixa_cep_sort_order','0',0),(42,0,'credit','credit_sort_order','7',0),(43,0,'credit','credit_status','1',0),(53,0,'reward','reward_sort_order','2',0),(54,0,'reward','reward_status','1',0),(837,0,'category','category_status','1',0),(158,0,'account','account_status','1',0),(954,0,'affiliate','affiliate_status','1',0),(94,0,'voucher','voucher_sort_order','8',0),(95,0,'voucher','voucher_status','1',0),(16625,0,'pagseguro','pagseguro_order_devolvida','21',0),(16624,0,'pagseguro','pagseguro_order_disputa','20',0),(11498,0,'export_import','export_import_settings_use_import_cache','0',0),(11497,0,'export_import','export_import_settings_use_export_cache','0',0),(11496,0,'export_import','export_import_settings_use_attribute_id','1',0),(7545,0,'filter','filter_status','1',0),(17989,0,'config','config_simple_blog_limit','4',0),(17984,0,'config','config_google_analytics_status','1',0),(17985,0,'config','config_google_captcha_public','',0),(17986,0,'config','config_google_captcha_secret','',0),(17987,0,'config','config_google_captcha_status','0',0),(17988,0,'config','config_simple_blog_status','1',0),(17972,0,'config','config_seo_url','1',0),(17973,0,'config','config_file_max_size','300000',0),(17974,0,'config','config_file_ext_allowed','txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods',0),(17975,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet',0),(17976,0,'config','config_maintenance','0',0),(17977,0,'config','config_password','1',0),(17978,0,'config','config_encryption','23440b71fe05d975643733c980ad05fe',0),(17979,0,'config','config_compression','0',0),(17980,0,'config','config_error_display','1',0),(17981,0,'config','config_error_log','1',0),(17982,0,'config','config_error_filename','error.log',0),(17983,0,'config','config_google_analytics','&lt;script&gt;\r\n  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,\'script\',\'https://www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n  ga(\'create\', \'UA-79020639-1\', \'auto\');\r\n  ga(\'send\', \'pageview\');\r\n\r\n&lt;/script&gt;',0),(17969,0,'config','config_secure','1',0),(17970,0,'config','config_shared','0',0),(17971,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),(17968,0,'config','config_mail_alert','fausto.vieira@agenciaisland.com.br, patricia@casaflores.com.br, fernando.mendes@webca.com.br',0),(17967,0,'config','config_mail_smtp_timeout','5',0),(17966,0,'config','config_mail_smtp_port','25',0),(17965,0,'config','config_mail_smtp_password','',0),(17964,0,'config','config_mail_smtp_username','',0),(17963,0,'config','config_mail_smtp_hostname','',0),(17962,0,'config','config_mail_parameter','',0),(16333,0,'google_base','google_base_status','1',0),(17961,0,'config','config_mail_protocol','mail',0),(17959,0,'config','config_ftp_root','/',0),(17960,0,'config','config_ftp_status','1',0),(17958,0,'config','config_ftp_password','wJfeyf63gdD',0),(17957,0,'config','config_ftp_username','casaflores',0),(17956,0,'config','config_ftp_port','21',0),(17955,0,'config','config_ftp_hostname','172.17.0.1',0),(17954,0,'config','config_image_location_height','50',0),(17953,0,'config','config_image_location_width','268',0),(17952,0,'config','config_image_cart_height','100',0),(17951,0,'config','config_image_cart_width','100',0),(17950,0,'config','config_image_wishlist_height','47',0),(17949,0,'config','config_image_wishlist_width','47',0),(17946,0,'config','config_image_related_height','500',0),(17947,0,'config','config_image_compare_width','180',0),(17948,0,'config','config_image_compare_height','180',0),(17945,0,'config','config_image_related_width','500',0),(17943,0,'config','config_image_additional_width','88',0),(17944,0,'config','config_image_additional_height','88',0),(17941,0,'config','config_image_product_width','500',0),(17942,0,'config','config_image_product_height','500',0),(17940,0,'config','config_image_popup_height','600',0),(17939,0,'config','config_image_popup_width','600',0),(16635,0,'joseanmatias_faixa_cep','joseanmatias_faixa_cep_interval','{\"ion5i61t4fxfq9b7kaat3mcxr\":{\"title\":\"Zona Sul I\",\"order_total\":\"1\",\"cep\":\"04000000:04999999\",\"cost\":\"20\"},\"d9sel3l7nojtuvtu6wkrcnmi\":{\"title\":\"Zona Sul II\",\"order_total\":\"1\",\"cep\":\"05800000:05900000\",\"cost\":\"25\"},\"aj9kexxustob72yf6cxtuik9\":{\"title\":\"Centro e Avenida Paulista\",\"order_total\":\"1\",\"cep\":\"01000000:19999999\",\"cost\":\"25\"},\"8a0ku9ur53ink05vkzode7b9\":{\"title\":\"Zona Oeste\",\"order_total\":\"1\",\"cep\":\"05000000:05599999\",\"cost\":\"20\"}}',0),(16622,0,'pagseguro','pagseguro_order_analise','17',0),(16623,0,'pagseguro','pagseguro_order_paga','19',0),(16621,0,'pagseguro','pagseguro_order_aguardando_pagamento','18',0),(16620,0,'pagseguro','pagseguro_tipo_frete','0',0),(16618,0,'pagseguro','pagseguro_posfixo','',0),(16619,0,'pagseguro','pagseguro_update_status_alert','1',0),(17938,0,'config','config_image_thumb_height','800',0),(17937,0,'config','config_image_thumb_width','800',0),(17936,0,'config','config_image_category_height','190',0),(17934,0,'config','config_icon','catalog/favicon.png',0),(17935,0,'config','config_image_category_width','190',0),(17933,0,'config','config_logo','catalog/logo.png',0),(17932,0,'config','config_return_status_id','2',0),(17930,0,'config','config_affiliate_mail','0',0),(17931,0,'config','config_return_id','0',0),(17929,0,'config','config_affiliate_id','4',0),(17928,0,'config','config_affiliate_commission','5',0),(17927,0,'config','config_affiliate_auto','0',0),(17926,0,'config','config_affiliate_approval','0',0),(17925,0,'config','config_stock_checkout','0',0),(17923,0,'config','config_stock_display','0',0),(17924,0,'config','config_stock_warning','0',0),(17921,0,'config','config_complete_status','a:1:{i:0;s:1:\"5\";}',1),(16627,0,'pagseguro','pagseguro_geo_zone_id','0',0),(16617,0,'pagseguro','pagseguro_total','1',0),(16616,0,'pagseguro','pagseguro_email','gilberto@casaflores.com.br',0),(16615,0,'pagseguro','pagseguro_token','929E4A31421A47208E0E61E54758863F',0),(16628,0,'pagseguro','pagseguro_status','1',0),(16629,0,'pagseguro','pagseguro_sort_order','1',0),(16633,0,'joseanmatias_faixa_cep','joseanmatias_faixa_cep_status','1',0),(16636,0,'free','free_total','',0),(16637,0,'free','free_geo_zone_id','5',0),(16638,0,'free','free_status','0',0),(16639,0,'free','free_sort_order','',0),(17922,0,'config','config_order_mail','1',0),(17920,0,'config','config_processing_status','a:1:{i:0;s:1:\"2\";}',1),(17919,0,'config','config_order_status_id','1',0),(17918,0,'config','config_checkout_id','5',0),(17917,0,'config','config_checkout_guest','0',0),(17916,0,'config','config_cart_weight','0',0),(17915,0,'config','config_api_id','0',0),(17914,0,'config','config_invoice_prefix','CASAFLORES-',0),(17912,0,'config','config_account_id','3',0),(17913,0,'config','config_account_mail','1',0),(17911,0,'config','config_login_attempts','5',0),(17910,0,'config','config_customer_price','0',0),(17909,0,'config','config_customer_group_display','a:1:{i:0;s:1:\"1\";}',1),(17908,0,'config','config_customer_group_id','1',0),(17907,0,'config','config_customer_online','0',0),(17906,0,'config','config_tax_customer','shipping',0),(17905,0,'config','config_tax_default','shipping',0),(17904,0,'config','config_tax','0',0),(17903,0,'config','config_voucher_max','1000',0),(17902,0,'config','config_voucher_min','1',0),(17901,0,'config','config_review_mail','1',0),(17900,0,'config','config_review_guest','1',0),(17899,0,'config','config_review_status','1',0),(17897,0,'config','config_product_description_length','100',0),(17898,0,'config','config_limit_admin','500',0),(17896,0,'config','config_product_limit','20',0),(17895,0,'config','config_product_count','1',0),(17894,0,'config','config_weight_class_id','1',0),(17893,0,'config','config_length_class_id','1',0),(17892,0,'config','config_currency_auto','1',0),(17884,0,'config','config_meta_keyword','Casa Flores - Floricultura na Vila Olímpia, Buquês, Arranjos, Orquídeas e muitos outros Presentes com Flores',0),(17885,0,'config','config_template','theme631',0),(17886,0,'config','config_layout_id','4',0),(17887,0,'config','config_country_id','30',0),(17888,0,'config','config_zone_id','464',0),(17889,0,'config','config_language','pt-br',0),(17890,0,'config','config_admin_language','pt-br',0),(17891,0,'config','config_currency','BRL',0),(17882,0,'config','config_meta_title','Casa Flores - Floricultura na Vila Olímpia, Buquês, Arranjos, Orquídeas e muitos outros Presentes com Flores',0),(17883,0,'config','config_meta_description','Com mais de 16 anos de experiência, a Casa Flores é uma empresa que une técnica, criatividade, bom gosto e cordialidade no atendimento. Somos uma empresa familiar e que traz no seu DNA a paixão pelas flores e pelo bairro da Vila Olímpia, onde tudo começou.\r\n\r\nAtendemos a grande São Paulo na confecção de arranjos e buquês, presentes com flores, assinaturas de flores, paisagismo e decoração de eventos.\r\n',0),(17881,0,'config','config_comment','',0),(17878,0,'config','config_fax','',0),(17879,0,'config','config_image','',0),(17880,0,'config','config_open','segunda-feira - 08:30–19:00\r\nterça-feira - 08:30–19:00\r\nquarta-feira - 08:30–19:00\r\nquinta-feira - 08:30–19:00\r\nsexta-feira - 08:30–19:00\r\nsábado - Fechado\r\ndomingo - Fechado\r\n',0),(17877,0,'config','config_telephone','(11) 3845-1157 | (11) 3805-1157 ',0),(17876,0,'config','config_email','casaflores@casaflores.com.br',0),(17875,0,'config','config_geocode','https://goo.gl/maps/cHxKFWfFM6D2',0),(17874,0,'config','config_address','Rua Dr. Cardoso de Melo, 1.280 - Vila Olimpia - São Paulo - SP \r\nCEP. 04548-004',0),(17873,0,'config','config_owner','Casa Flores',0),(17872,0,'config','config_name','Casa Flores',0),(17990,0,'config','config_simple_blog_description_limit','200',0),(17991,0,'config','config_simple_blog_comment_auto_approval','0',0),(17992,0,'config','config_simple_blog_author_information','1',0),(17993,0,'config','config_simple_blog_related_articles','1',0),(17994,0,'config','config_simple_blog_share_social_site','1',0);
/*!40000 ALTER TABLE `oc_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_simple_blog_article`
--

DROP TABLE IF EXISTS `oc_simple_blog_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_simple_blog_article` (
  `simple_blog_article_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_author_id` int(16) NOT NULL,
  `allow_comment` tinyint(1) NOT NULL,
  `image` mediumtext NOT NULL,
  `featured_image` mediumtext NOT NULL,
  `article_related_method` varchar(64) NOT NULL,
  `article_related_option` mediumtext NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_simple_blog_article`
--

LOCK TABLES `oc_simple_blog_article` WRITE;
/*!40000 ALTER TABLE `oc_simple_blog_article` DISABLE KEYS */;
INSERT INTO `oc_simple_blog_article` VALUES (1,1,1,'','catalog/blog/post-1.jpg','product_wise','',0,1,'2015-09-16 17:26:55','2015-09-28 17:10:13'),(2,1,1,'','catalog/blog/post-2.jpg','product_wise','',1,1,'2015-09-17 10:25:42','2015-09-28 17:12:45'),(3,2,1,'','catalog/blog/post-3.jpg','category_wise','a:1:{s:13:\"category_wise\";a:1:{i:0;s:2:\"25\";}}',2,1,'2015-09-17 10:28:08','2015-09-28 17:14:21'),(4,3,0,'','catalog/blog/post-4.jpg','manufacturer_wise','a:1:{s:17:\"manufacturer_wise\";a:2:{i:0;s:1:\"9\";i:1;s:1:\"6\";}}',3,1,'2015-09-21 16:51:28','2015-09-29 10:36:04'),(5,3,1,'','catalog/blog/post-5.jpg','category_wise','a:1:{s:13:\"category_wise\";a:1:{i:0;s:2:\"25\";}}',4,1,'2015-09-21 16:53:36','2015-09-29 10:34:25'),(6,4,1,'','catalog/blog/post-6.jpg','product_wise','',5,1,'2015-09-21 16:55:11','2015-09-29 10:35:57'),(7,4,1,'','catalog/blog/post-7.jpg','product_wise','',6,1,'2015-09-21 16:57:06','2015-09-29 10:35:49'),(8,2,1,'','catalog/blog/post-8.jpg','product_wise','',7,1,'2015-09-21 16:59:22','2015-09-29 10:35:41'),(9,1,1,'','catalog/blog/post-9.jpg','product_wise','',8,1,'2015-09-21 17:01:01','2015-09-29 10:35:34'),(13,6,1,'','','product_wise','',0,1,'2016-09-28 21:18:16','2016-09-29 04:33:29'),(14,6,1,'','','product_wise','',0,1,'2016-10-16 23:13:51','2016-10-16 23:31:17');
/*!40000 ALTER TABLE `oc_simple_blog_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_simple_blog_article_description`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_simple_blog_article_description` (
  `simple_blog_article_description_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `article_title` varchar(256) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  PRIMARY KEY (`simple_blog_article_description_id`)
) ENGINE=MyISAM AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_simple_blog_article_description`
--

LOCK TABLES `oc_simple_blog_article_description` WRITE;
/*!40000 ALTER TABLE `oc_simple_blog_article_description` DISABLE KEYS */;
INSERT INTO `oc_simple_blog_article_description` VALUES (122,2,2,'Believe in the Business of Your Dreams','&lt;p&gt;What is stopping you from believing in the business of your dreams? Insecurity? Fear? Lack of confidence? All of the above? How can you overcome these obstructions?&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Your Mantras&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;You may be wondering if you have the necessary skills, time, connections, and a million other things in order to create the business of your dreams. If you let your uncertainty and insecurity overpower you, you won\'t ever be able to unleash your true business potential. To unlock the positive forces of your creativity and drive that will yield amazing results, make these your mantras:\r\n&quot;I will abandon all negative thoughts that prevent me from realizing my business objectives.&quot;\r\n&quot;I will focus my energy on growing the business of my dreams.&quot;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;A Dreamer and a Doer&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;It is important to take time to develop your vision; and your practical thinking should be geared to this vision. You need to work with conviction. Being a dreamer does not mean that you can\'t also be a doer. In fact, having a dream is the starting point for building your dream business. The problem starts when you stop there instead of setting realizable immediate targets. Success cannot come from one day to the next. So you need to build your dream business bit by bit. When your dreams begin to be transformed into reality thanks to your actions, you become aware of the power you possess for catalyzing success; and this further strengthens your determination to reach every single one of your business goals.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Make It Happen&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Nothing can happen without tenacity, fortitude, and courage. Be bold enough to make choices; don\'t just let things happen to you. Though you cannot have control over everything, you can focus on what you can handle and influence with your actions in a given situation. You have the power to make decisions that will move your business forward. You should not feel daunted by your lack of knowledge of business strategies either. You learn and grow while building your business. No women entrepreneur/mompreneur possesses absolute knowledge; there are so many examples of hugely successful businesswomen who started out without having any clue about business promotion techniques. Their motivation to learn, their unwavering belief that they could create the business of their dreams, and their steadfastness were key factors for their success.\r\n&lt;/p&gt;','',''),(123,2,3,'Believe in the Business of Your Dreams','&lt;p&gt;What is stopping you from believing in the business of your dreams? Insecurity? Fear? Lack of confidence? All of the above? How can you overcome these obstructions?&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Your Mantras&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;You may be wondering if you have the necessary skills, time, connections, and a million other things in order to create the business of your dreams. If you let your uncertainty and insecurity overpower you, you won\'t ever be able to unleash your true business potential. To unlock the positive forces of your creativity and drive that will yield amazing results, make these your mantras:\r\n&quot;I will abandon all negative thoughts that prevent me from realizing my business objectives.&quot;\r\n&quot;I will focus my energy on growing the business of my dreams.&quot;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;A Dreamer and a Doer&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;It is important to take time to develop your vision; and your practical thinking should be geared to this vision. You need to work with conviction. Being a dreamer does not mean that you can\'t also be a doer. In fact, having a dream is the starting point for building your dream business. The problem starts when you stop there instead of setting realizable immediate targets. Success cannot come from one day to the next. So you need to build your dream business bit by bit. When your dreams begin to be transformed into reality thanks to your actions, you become aware of the power you possess for catalyzing success; and this further strengthens your determination to reach every single one of your business goals.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Make It Happen&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Nothing can happen without tenacity, fortitude, and courage. Be bold enough to make choices; don\'t just let things happen to you. Though you cannot have control over everything, you can focus on what you can handle and influence with your actions in a given situation. You have the power to make decisions that will move your business forward. You should not feel daunted by your lack of knowledge of business strategies either. You learn and grow while building your business. No women entrepreneur/mompreneur possesses absolute knowledge; there are so many examples of hugely successful businesswomen who started out without having any clue about business promotion techniques. Their motivation to learn, their unwavering belief that they could create the business of their dreams, and their steadfastness were key factors for their success.\r\n&lt;/p&gt;','',''),(172,4,1,'How to increase customer flow','&lt;p&gt;Many students are cash-strapped, nowadays. Nevertheless, their purchasing power is very high. Research reveals that 20 million students in the US have a combined disposable income of $417 billion. Moreover, another survey of students\' parents reveals that students now make 70 percent of their purchases themselves. These purchases are often made on credit cards. Therefore, students often have a significantly higher purchasing power.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p&gt;If you know this, you can utilize it to capture the attention of the 16-24 age demographic. However, it is essential for your product or service to appeal to the lifestyle of the students. Additionally, student ambassadors should be utilized to spread the word about your product or service to their friends and classmates.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p&gt;If you have not yet considered this demographic, it is time to reach out to them now!\r\nSocial media is a popular method for socialization and communication between many young people. Students are the majority users of social networking sites like Facebook and Twitter. These are the right places to introduce brands to young people.It is probably the right place to introduce a brand to them. To capture the student audience, it is essential to be a part of the conversation; it is also important to keep them engaged. Social media is the ideal platform for this.&lt;/p&gt;\r\n\r\n&lt;p&gt;However, studies state that half of these social media savvy youngsters fail to follow brands on social networking sites. Students who do follow often only show temporary, marginal support. Social media is definitely a great platform for engaging students and spreading the word. However, it is definitely not the best for brand introduction and recognition.&lt;/p&gt;','',''),(173,4,2,'How to increase customer flow','&lt;p&gt;Many students are cash-strapped, nowadays. Nevertheless, their purchasing power is very high. Research reveals that 20 million students in the US have a combined disposable income of $417 billion. Moreover, another survey of students\' parents reveals that students now make 70 percent of their purchases themselves. These purchases are often made on credit cards. Therefore, students often have a significantly higher purchasing power.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p&gt;If you know this, you can utilize it to capture the attention of the 16-24 age demographic. However, it is essential for your product or service to appeal to the lifestyle of the students. Additionally, student ambassadors should be utilized to spread the word about your product or service to their friends and classmates.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p&gt;If you have not yet considered this demographic, it is time to reach out to them now!\r\nSocial media is a popular method for socialization and communication between many young people. Students are the majority users of social networking sites like Facebook and Twitter. These are the right places to introduce brands to young people.It is probably the right place to introduce a brand to them. To capture the student audience, it is essential to be a part of the conversation; it is also important to keep them engaged. Social media is the ideal platform for this.&lt;/p&gt;\r\n\r\n&lt;p&gt;However, studies state that half of these social media savvy youngsters fail to follow brands on social networking sites. Students who do follow often only show temporary, marginal support. Social media is definitely a great platform for engaging students and spreading the word. However, it is definitely not the best for brand introduction and recognition.&lt;/p&gt;','',''),(174,4,3,'How to increase customer flow','&lt;p&gt;Many students are cash-strapped, nowadays. Nevertheless, their purchasing power is very high. Research reveals that 20 million students in the US have a combined disposable income of $417 billion. Moreover, another survey of students\' parents reveals that students now make 70 percent of their purchases themselves. These purchases are often made on credit cards. Therefore, students often have a significantly higher purchasing power.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p&gt;If you know this, you can utilize it to capture the attention of the 16-24 age demographic. However, it is essential for your product or service to appeal to the lifestyle of the students. Additionally, student ambassadors should be utilized to spread the word about your product or service to their friends and classmates.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p&gt;If you have not yet considered this demographic, it is time to reach out to them now!\r\nSocial media is a popular method for socialization and communication between many young people. Students are the majority users of social networking sites like Facebook and Twitter. These are the right places to introduce brands to young people.It is probably the right place to introduce a brand to them. To capture the student audience, it is essential to be a part of the conversation; it is also important to keep them engaged. Social media is the ideal platform for this.&lt;/p&gt;\r\n\r\n&lt;p&gt;However, studies state that half of these social media savvy youngsters fail to follow brands on social networking sites. Students who do follow often only show temporary, marginal support. Social media is definitely a great platform for engaging students and spreading the word. However, it is definitely not the best for brand introduction and recognition.&lt;/p&gt;','',''),(169,6,1,'Looking into the future','&lt;p&gt;Thousands of people dream of having their own business and even more so be a successful entrepreneur. But what does it take to achieve success in the business industry?&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;One of the most successful entrepreneurs featured at the Forbes website, Wendy Lipton - Dibner said that &quot;the success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot;.\r\nShe shared her success story at the Forbes website and said that when she was young she learned a very important business objective from her high school activity and that is to go out, explore, come back and explain how money is made in business. This is an objective she never forgot until she made millions for herself.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p&gt;When she was already very successful, she never stopped understanding business and how it really works. Profit is the number one goal in business and how you make it is a natural talent. Yes, there may be a lot of guidelines given and showed on television and the internet but only you know how you will make your sales to the top.\r\n&lt;/p&gt;\r\n\r\n&lt;p&gt;Try to ponder on these notes when thinking of a business:\r\n&lt;/p&gt;\r\n\r\n\r\n&lt;ol&gt;\r\n&lt;li&gt;Passion. Business may be set on profit but the core of your business should be something you love. Passion counts a lot in businesses because it also builds your determination in achieving your goal.&lt;/li&gt;\r\n\r\n&lt;li&gt; Impact. Business is a big and competitive world, what will matter is how you make a difference to your market. How your business will impact your market. The profit of your business will rely on the impact of your business. The mark it will leave to your customers will make it grow.&lt;/li&gt;\r\n\r\n&lt;li&gt;Three Guidelines.&lt;/li&gt;\r\n\r\n&lt;/ol&gt;\r\n&lt;p&gt;If you have noticed, the three guidelines below are very simple and natural.&lt;/p&gt;','',''),(170,6,2,'Looking into the future','&lt;p&gt;Thousands of people dream of having their own business and even more so be a successful entrepreneur. But what does it take to achieve success in the business industry?&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;One of the most successful entrepreneurs featured at the Forbes website, Wendy Lipton - Dibner said that &quot;the success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot;.\r\nShe shared her success story at the Forbes website and said that when she was young she learned a very important business objective from her high school activity and that is to go out, explore, come back and explain how money is made in business. This is an objective she never forgot until she made millions for herself.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p&gt;When she was already very successful, she never stopped understanding business and how it really works. Profit is the number one goal in business and how you make it is a natural talent. Yes, there may be a lot of guidelines given and showed on television and the internet but only you know how you will make your sales to the top.\r\n&lt;/p&gt;\r\n\r\n&lt;p&gt;Try to ponder on these notes when thinking of a business:\r\n&lt;/p&gt;\r\n\r\n\r\n&lt;ol&gt;\r\n&lt;li&gt;Passion. Business may be set on profit but the core of your business should be something you love. Passion counts a lot in businesses because it also builds your determination in achieving your goal.&lt;/li&gt;\r\n\r\n&lt;li&gt; Impact. Business is a big and competitive world, what will matter is how you make a difference to your market. How your business will impact your market. The profit of your business will rely on the impact of your business. The mark it will leave to your customers will make it grow.&lt;/li&gt;\r\n\r\n&lt;li&gt;Three Guidelines.&lt;/li&gt;\r\n\r\n&lt;/ol&gt;\r\n&lt;p&gt;If you have noticed, the three guidelines below are very simple and natural.&lt;/p&gt;','',''),(171,6,3,'Looking into the future','&lt;p&gt;Thousands of people dream of having their own business and even more so be a successful entrepreneur. But what does it take to achieve success in the business industry?&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;One of the most successful entrepreneurs featured at the Forbes website, Wendy Lipton - Dibner said that &quot;the success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot;.\r\nShe shared her success story at the Forbes website and said that when she was young she learned a very important business objective from her high school activity and that is to go out, explore, come back and explain how money is made in business. This is an objective she never forgot until she made millions for herself.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p&gt;When she was already very successful, she never stopped understanding business and how it really works. Profit is the number one goal in business and how you make it is a natural talent. Yes, there may be a lot of guidelines given and showed on television and the internet but only you know how you will make your sales to the top.\r\n&lt;/p&gt;\r\n\r\n&lt;p&gt;Try to ponder on these notes when thinking of a business:\r\n&lt;/p&gt;\r\n\r\n\r\n&lt;ol&gt;\r\n&lt;li&gt;Passion. Business may be set on profit but the core of your business should be something you love. Passion counts a lot in businesses because it also builds your determination in achieving your goal.&lt;/li&gt;\r\n\r\n&lt;li&gt; Impact. Business is a big and competitive world, what will matter is how you make a difference to your market. How your business will impact your market. The profit of your business will rely on the impact of your business. The mark it will leave to your customers will make it grow.&lt;/li&gt;\r\n\r\n&lt;li&gt;Three Guidelines.&lt;/li&gt;\r\n\r\n&lt;/ol&gt;\r\n&lt;p&gt;If you have noticed, the three guidelines below are very simple and natural.&lt;/p&gt;','',''),(126,3,3,'Impact - The Heart of Business','&lt;p&gt;Thousands of people dream of having their own business and even more so be a successful entrepreneur. But what does it take to achieve success in the business industry?&lt;/p&gt;\r\n\r\n&lt;p&gt;One of the most successful entrepreneurs featured at the Forbes website, Wendy Lipton - Dibner said that &quot;the success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot;.\r\nShe shared her success story at the Forbes website and said that when she was young she learned a very important business objective from her high school activity and that is to go out, explore, come back and explain how money is made in business. This is an objective she never forgot until she made millions for herself.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;When she was already very successful, she never stopped understanding business and how it really works. Profit is the number one goal in business and how you make it is a natural talent. Yes, there may be a lot of guidelines given and showed on television and the internet but only you know how you will make your sales to the top.\r\n&lt;/p&gt;\r\n&lt;p&gt;Try to ponder on these notes when thinking of a business:\r\n&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n&lt;li&gt;Passion. Business may be set on profit but the core of your business should be something you love. Passion counts a lot in businesses because it also builds your determination in achieving your goal.&lt;/li&gt;\r\n&lt;li&gt; Impact. Business is a big and competitive world, what will matter is how you make a difference to your market. How your business will impact your market. The profit of your business will rely on the impact of your business. The mark it will leave to your customers will make it grow.&lt;/li&gt;\r\n&lt;li&gt;Three Guidelines.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;If you have noticed, the three guidelines below are very simple and natural.&lt;/p&gt;','',''),(124,3,1,'Impact - The Heart of Business','&lt;p&gt;Thousands of people dream of having their own business and even more so be a successful entrepreneur. But what does it take to achieve success in the business industry?&lt;/p&gt;\r\n\r\n&lt;p&gt;One of the most successful entrepreneurs featured at the Forbes website, Wendy Lipton - Dibner said that &quot;the success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot;.\r\nShe shared her success story at the Forbes website and said that when she was young she learned a very important business objective from her high school activity and that is to go out, explore, come back and explain how money is made in business. This is an objective she never forgot until she made millions for herself.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;When she was already very successful, she never stopped understanding business and how it really works. Profit is the number one goal in business and how you make it is a natural talent. Yes, there may be a lot of guidelines given and showed on television and the internet but only you know how you will make your sales to the top.\r\n&lt;/p&gt;\r\n&lt;p&gt;Try to ponder on these notes when thinking of a business:\r\n&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n&lt;li&gt;Passion. Business may be set on profit but the core of your business should be something you love. Passion counts a lot in businesses because it also builds your determination in achieving your goal.&lt;/li&gt;\r\n&lt;li&gt; Impact. Business is a big and competitive world, what will matter is how you make a difference to your market. How your business will impact your market. The profit of your business will rely on the impact of your business. The mark it will leave to your customers will make it grow.&lt;/li&gt;\r\n&lt;li&gt;Three Guidelines.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;If you have noticed, the three guidelines below are very simple and natural.&lt;/p&gt;','',''),(125,3,2,'Impact - The Heart of Business','&lt;p&gt;Thousands of people dream of having their own business and even more so be a successful entrepreneur. But what does it take to achieve success in the business industry?&lt;/p&gt;\r\n\r\n&lt;p&gt;One of the most successful entrepreneurs featured at the Forbes website, Wendy Lipton - Dibner said that &quot;the success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot;.\r\nShe shared her success story at the Forbes website and said that when she was young she learned a very important business objective from her high school activity and that is to go out, explore, come back and explain how money is made in business. This is an objective she never forgot until she made millions for herself.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;When she was already very successful, she never stopped understanding business and how it really works. Profit is the number one goal in business and how you make it is a natural talent. Yes, there may be a lot of guidelines given and showed on television and the internet but only you know how you will make your sales to the top.\r\n&lt;/p&gt;\r\n&lt;p&gt;Try to ponder on these notes when thinking of a business:\r\n&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n&lt;li&gt;Passion. Business may be set on profit but the core of your business should be something you love. Passion counts a lot in businesses because it also builds your determination in achieving your goal.&lt;/li&gt;\r\n&lt;li&gt; Impact. Business is a big and competitive world, what will matter is how you make a difference to your market. How your business will impact your market. The profit of your business will rely on the impact of your business. The mark it will leave to your customers will make it grow.&lt;/li&gt;\r\n&lt;li&gt;Three Guidelines.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;If you have noticed, the three guidelines below are very simple and natural.&lt;/p&gt;','',''),(166,7,1,'Some advice for buyers','&lt;p&gt;Many students are cash-strapped, nowadays. Nevertheless, their purchasing power is very high. Research reveals that 20 million students in the US have a combined disposable income of $417 billion. Moreover, another survey of students\' parents reveals that students now make 70 percent of their purchases themselves. These purchases are often made on credit cards. Therefore, students often have a significantly higher purchasing power.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p&gt;If you know this, you can utilize it to capture the attention of the 16-24 age demographic. However, it is essential for your product or service to appeal to the lifestyle of the students. Additionally, student ambassadors should be utilized to spread the word about your product or service to their friends and classmates.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p&gt;If you have not yet considered this demographic, it is time to reach out to them now!\r\nSocial media is a popular method for socialization and communication between many young people. Students are the majority users of social networking sites like Facebook and Twitter. These are the right places to introduce brands to young people.It is probably the right place to introduce a brand to them. To capture the student audience, it is essential to be a part of the conversation; it is also important to keep them engaged. Social media is the ideal platform for this.&lt;/p&gt;\r\n\r\n&lt;p&gt;However, studies state that half of these social media savvy youngsters fail to follow brands on social networking sites. Students who do follow often only show temporary, marginal support. Social media is definitely a great platform for engaging students and spreading the word. However, it is definitely not the best for brand introduction and recognition.&lt;/p&gt;','',''),(167,7,2,'Some advice for buyers','&lt;p&gt;Many students are cash-strapped, nowadays. Nevertheless, their purchasing power is very high. Research reveals that 20 million students in the US have a combined disposable income of $417 billion. Moreover, another survey of students\' parents reveals that students now make 70 percent of their purchases themselves. These purchases are often made on credit cards. Therefore, students often have a significantly higher purchasing power.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p&gt;If you know this, you can utilize it to capture the attention of the 16-24 age demographic. However, it is essential for your product or service to appeal to the lifestyle of the students. Additionally, student ambassadors should be utilized to spread the word about your product or service to their friends and classmates.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p&gt;If you have not yet considered this demographic, it is time to reach out to them now!\r\nSocial media is a popular method for socialization and communication between many young people. Students are the majority users of social networking sites like Facebook and Twitter. These are the right places to introduce brands to young people.It is probably the right place to introduce a brand to them. To capture the student audience, it is essential to be a part of the conversation; it is also important to keep them engaged. Social media is the ideal platform for this.&lt;/p&gt;\r\n\r\n&lt;p&gt;However, studies state that half of these social media savvy youngsters fail to follow brands on social networking sites. Students who do follow often only show temporary, marginal support. Social media is definitely a great platform for engaging students and spreading the word. However, it is definitely not the best for brand introduction and recognition.&lt;/p&gt;','',''),(168,7,3,'Some advice for buyers','&lt;p&gt;Many students are cash-strapped, nowadays. Nevertheless, their purchasing power is very high. Research reveals that 20 million students in the US have a combined disposable income of $417 billion. Moreover, another survey of students\' parents reveals that students now make 70 percent of their purchases themselves. These purchases are often made on credit cards. Therefore, students often have a significantly higher purchasing power.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p&gt;If you know this, you can utilize it to capture the attention of the 16-24 age demographic. However, it is essential for your product or service to appeal to the lifestyle of the students. Additionally, student ambassadors should be utilized to spread the word about your product or service to their friends and classmates.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p&gt;If you have not yet considered this demographic, it is time to reach out to them now!\r\nSocial media is a popular method for socialization and communication between many young people. Students are the majority users of social networking sites like Facebook and Twitter. These are the right places to introduce brands to young people.It is probably the right place to introduce a brand to them. To capture the student audience, it is essential to be a part of the conversation; it is also important to keep them engaged. Social media is the ideal platform for this.&lt;/p&gt;\r\n\r\n&lt;p&gt;However, studies state that half of these social media savvy youngsters fail to follow brands on social networking sites. Students who do follow often only show temporary, marginal support. Social media is definitely a great platform for engaging students and spreading the word. However, it is definitely not the best for brand introduction and recognition.&lt;/p&gt;','',''),(165,8,3,'Product of the year','&lt;p&gt;What is stopping you from believing in the business of your dreams? Insecurity? Fear? Lack of confidence? All of the above? How can you overcome these obstructions?&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Your Mantras&lt;/strong&gt;&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;You may be wondering if you have the necessary skills, time, connections, and a million other things in order to create the business of your dreams. If you let your uncertainty and insecurity overpower you, you won\'t ever be able to unleash your true business potential. To unlock the positive forces of your creativity and drive that will yield amazing results, make these your mantras:\r\n&quot;I will abandon all negative thoughts that prevent me from realizing my business objectives.&quot;\r\n&quot;I will focus my energy on growing the business of my dreams.&quot;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;A Dreamer and a Doer&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;It is important to take time to develop your vision; and your practical thinking should be geared to this vision. You need to work with conviction. Being a dreamer does not mean that you can\'t also be a doer. In fact, having a dream is the starting point for building your dream business. The problem starts when you stop there instead of setting realizable immediate targets. Success cannot come from one day to the next. So you need to build your dream business bit by bit. When your dreams begin to be transformed into reality thanks to your actions, you become aware of the power you possess for catalyzing success; and this further strengthens your determination to reach every single one of your business goals.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Make It Happen&lt;/strong&gt;&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;Nothing can happen without tenacity, fortitude, and courage. Be bold enough to make choices; don\'t just let things happen to you. Though you cannot have control over everything, you can focus on what you can handle and influence with your actions in a given situation. You have the power to make decisions that will move your business forward. You should not feel daunted by your lack of knowledge of business strategies either. You learn and grow while building your business. No women entrepreneur/mompreneur possesses absolute knowledge; there are so many examples of hugely successful businesswomen who started out without having any clue about business promotion techniques. Their motivation to learn, their unwavering belief that they could create the business of their dreams, and their steadfastness were key factors for their success.\r\n&lt;/p&gt;','',''),(163,8,1,'Product of the year','&lt;p&gt;What is stopping you from believing in the business of your dreams? Insecurity? Fear? Lack of confidence? All of the above? How can you overcome these obstructions?&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Your Mantras&lt;/strong&gt;&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;You may be wondering if you have the necessary skills, time, connections, and a million other things in order to create the business of your dreams. If you let your uncertainty and insecurity overpower you, you won\'t ever be able to unleash your true business potential. To unlock the positive forces of your creativity and drive that will yield amazing results, make these your mantras:\r\n&quot;I will abandon all negative thoughts that prevent me from realizing my business objectives.&quot;\r\n&quot;I will focus my energy on growing the business of my dreams.&quot;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;A Dreamer and a Doer&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;It is important to take time to develop your vision; and your practical thinking should be geared to this vision. You need to work with conviction. Being a dreamer does not mean that you can\'t also be a doer. In fact, having a dream is the starting point for building your dream business. The problem starts when you stop there instead of setting realizable immediate targets. Success cannot come from one day to the next. So you need to build your dream business bit by bit. When your dreams begin to be transformed into reality thanks to your actions, you become aware of the power you possess for catalyzing success; and this further strengthens your determination to reach every single one of your business goals.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Make It Happen&lt;/strong&gt;&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;Nothing can happen without tenacity, fortitude, and courage. Be bold enough to make choices; don\'t just let things happen to you. Though you cannot have control over everything, you can focus on what you can handle and influence with your actions in a given situation. You have the power to make decisions that will move your business forward. You should not feel daunted by your lack of knowledge of business strategies either. You learn and grow while building your business. No women entrepreneur/mompreneur possesses absolute knowledge; there are so many examples of hugely successful businesswomen who started out without having any clue about business promotion techniques. Their motivation to learn, their unwavering belief that they could create the business of their dreams, and their steadfastness were key factors for their success.\r\n&lt;/p&gt;','',''),(164,8,2,'Product of the year','&lt;p&gt;What is stopping you from believing in the business of your dreams? Insecurity? Fear? Lack of confidence? All of the above? How can you overcome these obstructions?&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Your Mantras&lt;/strong&gt;&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;You may be wondering if you have the necessary skills, time, connections, and a million other things in order to create the business of your dreams. If you let your uncertainty and insecurity overpower you, you won\'t ever be able to unleash your true business potential. To unlock the positive forces of your creativity and drive that will yield amazing results, make these your mantras:\r\n&quot;I will abandon all negative thoughts that prevent me from realizing my business objectives.&quot;\r\n&quot;I will focus my energy on growing the business of my dreams.&quot;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;A Dreamer and a Doer&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;It is important to take time to develop your vision; and your practical thinking should be geared to this vision. You need to work with conviction. Being a dreamer does not mean that you can\'t also be a doer. In fact, having a dream is the starting point for building your dream business. The problem starts when you stop there instead of setting realizable immediate targets. Success cannot come from one day to the next. So you need to build your dream business bit by bit. When your dreams begin to be transformed into reality thanks to your actions, you become aware of the power you possess for catalyzing success; and this further strengthens your determination to reach every single one of your business goals.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Make It Happen&lt;/strong&gt;&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;Nothing can happen without tenacity, fortitude, and courage. Be bold enough to make choices; don\'t just let things happen to you. Though you cannot have control over everything, you can focus on what you can handle and influence with your actions in a given situation. You have the power to make decisions that will move your business forward. You should not feel daunted by your lack of knowledge of business strategies either. You learn and grow while building your business. No women entrepreneur/mompreneur possesses absolute knowledge; there are so many examples of hugely successful businesswomen who started out without having any clue about business promotion techniques. Their motivation to learn, their unwavering belief that they could create the business of their dreams, and their steadfastness were key factors for their success.\r\n&lt;/p&gt;','',''),(162,9,3,'Some amazing facts','&lt;p&gt;Thousands of people dream of having their own business and even more so be a successful entrepreneur. But what does it take to achieve success in the business industry?&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;One of the most successful entrepreneurs featured at the Forbes website, Wendy Lipton - Dibner said that &quot;the success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot;.\r\nShe shared her success story at the Forbes website and said that when she was young she learned a very important business objective from her high school activity and that is to go out, explore, come back and explain how money is made in business. This is an objective she never forgot until she made millions for herself.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p&gt;When she was already very successful, she never stopped understanding business and how it really works. Profit is the number one goal in business and how you make it is a natural talent. Yes, there may be a lot of guidelines given and showed on television and the internet but only you know how you will make your sales to the top.\r\n&lt;/p&gt;\r\n\r\n&lt;p&gt;Try to ponder on these notes when thinking of a business:\r\n&lt;/p&gt;\r\n\r\n\r\n&lt;ol&gt;\r\n&lt;li&gt;Passion. Business may be set on profit but the core of your business should be something you love. Passion counts a lot in businesses because it also builds your determination in achieving your goal.&lt;/li&gt;\r\n\r\n&lt;li&gt; Impact. Business is a big and competitive world, what will matter is how you make a difference to your market. How your business will impact your market. The profit of your business will rely on the impact of your business. The mark it will leave to your customers will make it grow.&lt;/li&gt;\r\n\r\n&lt;li&gt;Three Guidelines.&lt;/li&gt;\r\n\r\n&lt;/ol&gt;\r\n&lt;p&gt;If you have noticed, the three guidelines below are very simple and natural.&lt;/p&gt;','',''),(160,9,1,'Some amazing facts','&lt;p&gt;Thousands of people dream of having their own business and even more so be a successful entrepreneur. But what does it take to achieve success in the business industry?&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;One of the most successful entrepreneurs featured at the Forbes website, Wendy Lipton - Dibner said that &quot;the success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot;.\r\nShe shared her success story at the Forbes website and said that when she was young she learned a very important business objective from her high school activity and that is to go out, explore, come back and explain how money is made in business. This is an objective she never forgot until she made millions for herself.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p&gt;When she was already very successful, she never stopped understanding business and how it really works. Profit is the number one goal in business and how you make it is a natural talent. Yes, there may be a lot of guidelines given and showed on television and the internet but only you know how you will make your sales to the top.\r\n&lt;/p&gt;\r\n\r\n&lt;p&gt;Try to ponder on these notes when thinking of a business:\r\n&lt;/p&gt;\r\n\r\n\r\n&lt;ol&gt;\r\n&lt;li&gt;Passion. Business may be set on profit but the core of your business should be something you love. Passion counts a lot in businesses because it also builds your determination in achieving your goal.&lt;/li&gt;\r\n\r\n&lt;li&gt; Impact. Business is a big and competitive world, what will matter is how you make a difference to your market. How your business will impact your market. The profit of your business will rely on the impact of your business. The mark it will leave to your customers will make it grow.&lt;/li&gt;\r\n\r\n&lt;li&gt;Three Guidelines.&lt;/li&gt;\r\n\r\n&lt;/ol&gt;\r\n&lt;p&gt;If you have noticed, the three guidelines below are very simple and natural.&lt;/p&gt;','',''),(161,9,2,'Some amazing facts','&lt;p&gt;Thousands of people dream of having their own business and even more so be a successful entrepreneur. But what does it take to achieve success in the business industry?&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;One of the most successful entrepreneurs featured at the Forbes website, Wendy Lipton - Dibner said that &quot;the success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot;.\r\nShe shared her success story at the Forbes website and said that when she was young she learned a very important business objective from her high school activity and that is to go out, explore, come back and explain how money is made in business. This is an objective she never forgot until she made millions for herself.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;p&gt;When she was already very successful, she never stopped understanding business and how it really works. Profit is the number one goal in business and how you make it is a natural talent. Yes, there may be a lot of guidelines given and showed on television and the internet but only you know how you will make your sales to the top.\r\n&lt;/p&gt;\r\n\r\n&lt;p&gt;Try to ponder on these notes when thinking of a business:\r\n&lt;/p&gt;\r\n\r\n\r\n&lt;ol&gt;\r\n&lt;li&gt;Passion. Business may be set on profit but the core of your business should be something you love. Passion counts a lot in businesses because it also builds your determination in achieving your goal.&lt;/li&gt;\r\n\r\n&lt;li&gt; Impact. Business is a big and competitive world, what will matter is how you make a difference to your market. How your business will impact your market. The profit of your business will rely on the impact of your business. The mark it will leave to your customers will make it grow.&lt;/li&gt;\r\n\r\n&lt;li&gt;Three Guidelines.&lt;/li&gt;\r\n\r\n&lt;/ol&gt;\r\n&lt;p&gt;If you have noticed, the three guidelines below are very simple and natural.&lt;/p&gt;','',''),(150,5,3,'New trends of the season','&lt;p&gt;What is stopping you from believing in the business of your dreams? Insecurity? Fear? Lack of confidence? All of the above? How can you overcome these obstructions?&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Your Mantras&lt;/strong&gt;&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;You may be wondering if you have the necessary skills, time, connections, and a million other things in order to create the business of your dreams. If you let your uncertainty and insecurity overpower you, you won\'t ever be able to unleash your true business potential. To unlock the positive forces of your creativity and drive that will yield amazing results, make these your mantras:\r\n&quot;I will abandon all negative thoughts that prevent me from realizing my business objectives.&quot;\r\n&quot;I will focus my energy on growing the business of my dreams.&quot;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;A Dreamer and a Doer&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;It is important to take time to develop your vision; and your practical thinking should be geared to this vision. You need to work with conviction. Being a dreamer does not mean that you can\'t also be a doer. In fact, having a dream is the starting point for building your dream business. The problem starts when you stop there instead of setting realizable immediate targets. Success cannot come from one day to the next. So you need to build your dream business bit by bit. When your dreams begin to be transformed into reality thanks to your actions, you become aware of the power you possess for catalyzing success; and this further strengthens your determination to reach every single one of your business goals.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Make It Happen&lt;/strong&gt;&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;Nothing can happen without tenacity, fortitude, and courage. Be bold enough to make choices; don\'t just let things happen to you. Though you cannot have control over everything, you can focus on what you can handle and influence with your actions in a given situation. You have the power to make decisions that will move your business forward. You should not feel daunted by your lack of knowledge of business strategies either. You learn and grow while building your business. No women entrepreneur/mompreneur possesses absolute knowledge; there are so many examples of hugely successful businesswomen who started out without having any clue about business promotion techniques. Their motivation to learn, their unwavering belief that they could create the business of their dreams, and their steadfastness were key factors for their success.\r\n&lt;/p&gt;','',''),(149,5,2,'New trends of the season','&lt;p&gt;What is stopping you from believing in the business of your dreams? Insecurity? Fear? Lack of confidence? All of the above? How can you overcome these obstructions?&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Your Mantras&lt;/strong&gt;&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;You may be wondering if you have the necessary skills, time, connections, and a million other things in order to create the business of your dreams. If you let your uncertainty and insecurity overpower you, you won\'t ever be able to unleash your true business potential. To unlock the positive forces of your creativity and drive that will yield amazing results, make these your mantras:\r\n&quot;I will abandon all negative thoughts that prevent me from realizing my business objectives.&quot;\r\n&quot;I will focus my energy on growing the business of my dreams.&quot;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;A Dreamer and a Doer&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;It is important to take time to develop your vision; and your practical thinking should be geared to this vision. You need to work with conviction. Being a dreamer does not mean that you can\'t also be a doer. In fact, having a dream is the starting point for building your dream business. The problem starts when you stop there instead of setting realizable immediate targets. Success cannot come from one day to the next. So you need to build your dream business bit by bit. When your dreams begin to be transformed into reality thanks to your actions, you become aware of the power you possess for catalyzing success; and this further strengthens your determination to reach every single one of your business goals.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Make It Happen&lt;/strong&gt;&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;Nothing can happen without tenacity, fortitude, and courage. Be bold enough to make choices; don\'t just let things happen to you. Though you cannot have control over everything, you can focus on what you can handle and influence with your actions in a given situation. You have the power to make decisions that will move your business forward. You should not feel daunted by your lack of knowledge of business strategies either. You learn and grow while building your business. No women entrepreneur/mompreneur possesses absolute knowledge; there are so many examples of hugely successful businesswomen who started out without having any clue about business promotion techniques. Their motivation to learn, their unwavering belief that they could create the business of their dreams, and their steadfastness were key factors for their success.\r\n&lt;/p&gt;','',''),(148,5,1,'New trends of the season','&lt;p&gt;What is stopping you from believing in the business of your dreams? Insecurity? Fear? Lack of confidence? All of the above? How can you overcome these obstructions?&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Your Mantras&lt;/strong&gt;&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;You may be wondering if you have the necessary skills, time, connections, and a million other things in order to create the business of your dreams. If you let your uncertainty and insecurity overpower you, you won\'t ever be able to unleash your true business potential. To unlock the positive forces of your creativity and drive that will yield amazing results, make these your mantras:\r\n&quot;I will abandon all negative thoughts that prevent me from realizing my business objectives.&quot;\r\n&quot;I will focus my energy on growing the business of my dreams.&quot;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;A Dreamer and a Doer&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;It is important to take time to develop your vision; and your practical thinking should be geared to this vision. You need to work with conviction. Being a dreamer does not mean that you can\'t also be a doer. In fact, having a dream is the starting point for building your dream business. The problem starts when you stop there instead of setting realizable immediate targets. Success cannot come from one day to the next. So you need to build your dream business bit by bit. When your dreams begin to be transformed into reality thanks to your actions, you become aware of the power you possess for catalyzing success; and this further strengthens your determination to reach every single one of your business goals.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Make It Happen&lt;/strong&gt;&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;Nothing can happen without tenacity, fortitude, and courage. Be bold enough to make choices; don\'t just let things happen to you. Though you cannot have control over everything, you can focus on what you can handle and influence with your actions in a given situation. You have the power to make decisions that will move your business forward. You should not feel daunted by your lack of knowledge of business strategies either. You learn and grow while building your business. No women entrepreneur/mompreneur possesses absolute knowledge; there are so many examples of hugely successful businesswomen who started out without having any clue about business promotion techniques. Their motivation to learn, their unwavering belief that they could create the business of their dreams, and their steadfastness were key factors for their success.\r\n&lt;/p&gt;','',''),(118,1,1,'Establishing Your Brand on College Campuses','&lt;p&gt;Many students are cash-strapped, nowadays. Nevertheless, their purchasing power is very high. Research reveals that 20 million students in the US have a combined disposable income of $417 billion. Moreover, another survey of students\' parents reveals that students now make 70 percent of their purchases themselves. These purchases are often made on credit cards. Therefore, students often have a significantly higher purchasing power.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you know this, you can utilize it to capture the attention of the 16-24 age demographic. However, it is essential for your product or service to appeal to the lifestyle of the students. Additionally, student ambassadors should be utilized to spread the word about your product or service to their friends and classmates.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you have not yet considered this demographic, it is time to reach out to them now!\r\nSocial media is a popular method for socialization and communication between many young people. Students are the majority users of social networking sites like Facebook and Twitter. These are the right places to introduce brands to young people.It is probably the right place to introduce a brand to them. To capture the student audience, it is essential to be a part of the conversation; it is also important to keep them engaged. Social media is the ideal platform for this.&lt;/p&gt;\r\n&lt;p&gt;However, studies state that half of these social media savvy youngsters fail to follow brands on social networking sites. Students who do follow often only show temporary, marginal support. Social media is definitely a great platform for engaging students and spreading the word. However, it is definitely not the best for brand introduction and recognition.&lt;/p&gt;','',''),(119,1,2,'Establishing Your Brand on College Campuses','&lt;p&gt;Many students are cash-strapped, nowadays. Nevertheless, their purchasing power is very high. Research reveals that 20 million students in the US have a combined disposable income of $417 billion. Moreover, another survey of students\' parents reveals that students now make 70 percent of their purchases themselves. These purchases are often made on credit cards. Therefore, students often have a significantly higher purchasing power.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you know this, you can utilize it to capture the attention of the 16-24 age demographic. However, it is essential for your product or service to appeal to the lifestyle of the students. Additionally, student ambassadors should be utilized to spread the word about your product or service to their friends and classmates.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you have not yet considered this demographic, it is time to reach out to them now!\r\nSocial media is a popular method for socialization and communication between many young people. Students are the majority users of social networking sites like Facebook and Twitter. These are the right places to introduce brands to young people.It is probably the right place to introduce a brand to them. To capture the student audience, it is essential to be a part of the conversation; it is also important to keep them engaged. Social media is the ideal platform for this.&lt;/p&gt;\r\n&lt;p&gt;However, studies state that half of these social media savvy youngsters fail to follow brands on social networking sites. Students who do follow often only show temporary, marginal support. Social media is definitely a great platform for engaging students and spreading the word. However, it is definitely not the best for brand introduction and recognition.&lt;/p&gt;','',''),(120,1,3,'Establishing Your Brand on College Campuses','&lt;p&gt;Many students are cash-strapped, nowadays. Nevertheless, their purchasing power is very high. Research reveals that 20 million students in the US have a combined disposable income of $417 billion. Moreover, another survey of students\' parents reveals that students now make 70 percent of their purchases themselves. These purchases are often made on credit cards. Therefore, students often have a significantly higher purchasing power.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you know this, you can utilize it to capture the attention of the 16-24 age demographic. However, it is essential for your product or service to appeal to the lifestyle of the students. Additionally, student ambassadors should be utilized to spread the word about your product or service to their friends and classmates.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you have not yet considered this demographic, it is time to reach out to them now!\r\nSocial media is a popular method for socialization and communication between many young people. Students are the majority users of social networking sites like Facebook and Twitter. These are the right places to introduce brands to young people.It is probably the right place to introduce a brand to them. To capture the student audience, it is essential to be a part of the conversation; it is also important to keep them engaged. Social media is the ideal platform for this.&lt;/p&gt;\r\n&lt;p&gt;However, studies state that half of these social media savvy youngsters fail to follow brands on social networking sites. Students who do follow often only show temporary, marginal support. Social media is definitely a great platform for engaging students and spreading the word. However, it is definitely not the best for brand introduction and recognition.&lt;/p&gt;','',''),(121,2,1,'Believe in the Business of Your Dreams','&lt;p&gt;What is stopping you from believing in the business of your dreams? Insecurity? Fear? Lack of confidence? All of the above? How can you overcome these obstructions?&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Your Mantras&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;You may be wondering if you have the necessary skills, time, connections, and a million other things in order to create the business of your dreams. If you let your uncertainty and insecurity overpower you, you won\'t ever be able to unleash your true business potential. To unlock the positive forces of your creativity and drive that will yield amazing results, make these your mantras:\r\n&quot;I will abandon all negative thoughts that prevent me from realizing my business objectives.&quot;\r\n&quot;I will focus my energy on growing the business of my dreams.&quot;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;A Dreamer and a Doer&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;It is important to take time to develop your vision; and your practical thinking should be geared to this vision. You need to work with conviction. Being a dreamer does not mean that you can\'t also be a doer. In fact, having a dream is the starting point for building your dream business. The problem starts when you stop there instead of setting realizable immediate targets. Success cannot come from one day to the next. So you need to build your dream business bit by bit. When your dreams begin to be transformed into reality thanks to your actions, you become aware of the power you possess for catalyzing success; and this further strengthens your determination to reach every single one of your business goals.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Make It Happen&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Nothing can happen without tenacity, fortitude, and courage. Be bold enough to make choices; don\'t just let things happen to you. Though you cannot have control over everything, you can focus on what you can handle and influence with your actions in a given situation. You have the power to make decisions that will move your business forward. You should not feel daunted by your lack of knowledge of business strategies either. You learn and grow while building your business. No women entrepreneur/mompreneur possesses absolute knowledge; there are so many examples of hugely successful businesswomen who started out without having any clue about business promotion techniques. Their motivation to learn, their unwavering belief that they could create the business of their dreams, and their steadfastness were key factors for their success.\r\n&lt;/p&gt;','',''),(188,13,4,'Blog Casa Flores - Em Breve','&lt;p&gt;O blog da Casa Flores está quase pronto!&lt;/p&gt;&lt;p&gt;Logo, logo, teremos um canal super especial, onde você poderá encontrar novidades, dicas e muito mais sobre o mundo das flores.&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Fiquem ligados!&lt;/p&gt;','Blog Casa Flores, um canal super especial, onde você poderá encontrar novidades, dicas e muito mais sobre o mundo das flores.','Blog Casa Flores novidades dicas plantas '),(192,14,4,'Mesa do Arraial do Programa Papo Vip com Amanda Françoso - 16 de julho de 2016','&lt;center&gt;&lt;p&gt;Em 16 de julho de 2016, a Casa Flores teve o prazer de levar mais cores e flores para a mesa o arraial do Programa Papo Vip, com Amanda Françoso, da RBTV.&lt;/p&gt;&lt;p&gt;Confira algumas imagens dos lindos arranjos que foram criados pela Casa Flores para decorar o Programa nesse dia:&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://casaflores.com.br/image/catalog/Blog/Posts/Imagens/20161016 - CASA FLORES - BLOG - POST - ARRAIAL PAPO VIP - 16 JUL 2016 - 1.jpg&quot;&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://casaflores.com.br/image/catalog/Blog/Posts/Imagens/20161016 - CASA FLORES - BLOG - POST - ARRAIAL PAPO VIP - 16 JUL 2016 - 2.1.jpg&quot;&gt;&amp;nbsp; &amp;nbsp;&lt;img src=&quot;http://casaflores.com.br/image/catalog/Blog/Posts/Imagens/20161016 - CASA FLORES - BLOG - POST - ARRAIAL PAPO VIP - 16 JUL 2016 - 2.1.jpg&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;/center&gt;','Em 16 de julho de 2016, a Casa Flores teve o prazer de levar mais cores e flores da Casa Flores para o arraial do Programa Papo Vip com Amanda Françoso, da RBTV.','Mesa do Arraial do Programa Papo Vip com Amanda Françoso - 16 de julho de 2016');
/*!40000 ALTER TABLE `oc_simple_blog_article_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_simple_blog_article_description_additional`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_description_additional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_simple_blog_article_description_additional` (
  `simple_blog_article_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `additional_description` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_simple_blog_article_description_additional`
--

LOCK TABLES `oc_simple_blog_article_description_additional` WRITE;
/*!40000 ALTER TABLE `oc_simple_blog_article_description_additional` DISABLE KEYS */;
INSERT INTO `oc_simple_blog_article_description_additional` VALUES (3,3,'&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet architecto beatae consectetur ducimus esse necessitatibus quisquam rerum velit voluptas voluptates!&lt;/p&gt;'),(3,2,'&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet architecto beatae consectetur ducimus esse necessitatibus quisquam rerum velit voluptas voluptates!&lt;/p&gt;'),(3,1,'&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet architecto beatae consectetur ducimus esse necessitatibus quisquam rerum velit voluptas voluptates!&lt;/p&gt;'),(13,4,'&lt;p&gt;Em Breve&lt;br&gt;&lt;/p&gt;');
/*!40000 ALTER TABLE `oc_simple_blog_article_description_additional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_simple_blog_article_product_related`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_simple_blog_article_product_related` (
  `simple_blog_article_id` int(16) NOT NULL,
  `product_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_simple_blog_article_product_related`
--

LOCK TABLES `oc_simple_blog_article_product_related` WRITE;
/*!40000 ALTER TABLE `oc_simple_blog_article_product_related` DISABLE KEYS */;
INSERT INTO `oc_simple_blog_article_product_related` VALUES (4,30),(3,46),(3,43),(3,31),(5,46),(5,43),(5,31);
/*!40000 ALTER TABLE `oc_simple_blog_article_product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_simple_blog_article_to_category`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_simple_blog_article_to_category` (
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_category_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_simple_blog_article_to_category`
--

LOCK TABLES `oc_simple_blog_article_to_category` WRITE;
/*!40000 ALTER TABLE `oc_simple_blog_article_to_category` DISABLE KEYS */;
INSERT INTO `oc_simple_blog_article_to_category` VALUES (2,2),(4,4),(4,2),(6,2),(6,1),(3,2),(7,4),(7,3),(8,4),(8,1),(9,4),(9,2),(9,1),(5,2),(5,3),(1,1),(14,8),(13,7);
/*!40000 ALTER TABLE `oc_simple_blog_article_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_simple_blog_article_to_layout`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_simple_blog_article_to_layout` (
  `simple_blog_article_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL,
  `layout_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_simple_blog_article_to_layout`
--

LOCK TABLES `oc_simple_blog_article_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_simple_blog_article_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_simple_blog_article_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_simple_blog_article_to_store`
--

DROP TABLE IF EXISTS `oc_simple_blog_article_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_simple_blog_article_to_store` (
  `simple_blog_article_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_simple_blog_article_to_store`
--

LOCK TABLES `oc_simple_blog_article_to_store` WRITE;
/*!40000 ALTER TABLE `oc_simple_blog_article_to_store` DISABLE KEYS */;
INSERT INTO `oc_simple_blog_article_to_store` VALUES (2,0),(4,0),(6,0),(3,0),(7,0),(8,0),(9,0),(5,0),(1,0),(14,0),(13,0);
/*!40000 ALTER TABLE `oc_simple_blog_article_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_simple_blog_author`
--

DROP TABLE IF EXISTS `oc_simple_blog_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_simple_blog_author` (
  `simple_blog_author_id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `image` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_author_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_simple_blog_author`
--

LOCK TABLES `oc_simple_blog_author` WRITE;
/*!40000 ALTER TABLE `oc_simple_blog_author` DISABLE KEYS */;
INSERT INTO `oc_simple_blog_author` VALUES (1,'Jessica Prinston','catalog/avatar.jpg',1,'2015-09-16 17:26:04','2015-09-29 17:51:00'),(2,'Sam Kromstain','catalog/avatar.jpg',1,'2015-09-17 10:26:40','2015-09-29 17:52:05'),(3,'Robert Johnson','catalog/avatar.jpg',1,'2015-09-21 16:32:38','2015-09-29 17:51:32'),(4,'Edna Barton','catalog/avatar.jpg',1,'2015-09-21 16:34:45','2015-09-29 17:52:34'),(6,'Fausto Simaro Vieira','',1,'2016-09-18 23:18:44','2016-09-18 23:18:44'),(7,'Patricia Olivani','',1,'2016-10-16 22:53:14','2016-10-16 22:53:14'),(8,'Giuliana','',1,'2016-10-16 22:53:41','2016-10-16 22:53:41');
/*!40000 ALTER TABLE `oc_simple_blog_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_simple_blog_author_description`
--

DROP TABLE IF EXISTS `oc_simple_blog_author_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_simple_blog_author_description` (
  `simple_blog_author_description_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_author_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_author_description_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_simple_blog_author_description`
--

LOCK TABLES `oc_simple_blog_author_description` WRITE;
/*!40000 ALTER TABLE `oc_simple_blog_author_description` DISABLE KEYS */;
INSERT INTO `oc_simple_blog_author_description` VALUES (36,1,3,'&lt;p&gt;Mega positive shop assistant always ready to help you make the right choice and charm you with a smile.&lt;/p&gt;','','','0000-00-00 00:00:00'),(34,1,1,'&lt;p&gt;Mega positive shop assistant always ready to help you make the right choice and charm you with a smile.&lt;/p&gt;','','','0000-00-00 00:00:00'),(35,1,2,'&lt;p&gt;Mega positive shop assistant always ready to help you make the right choice and charm you with a smile.&lt;/p&gt;','','','0000-00-00 00:00:00'),(42,2,3,'&lt;p&gt;Wholesale manager. Contact him if you want to buy a batch of the products offered at our store. &lt;/p&gt;','','','0000-00-00 00:00:00'),(40,2,1,'&lt;p&gt;Wholesale manager. Contact him if you want to buy a batch of the products offered at our store. &lt;/p&gt;','','','0000-00-00 00:00:00'),(41,2,2,'&lt;p&gt;Wholesale manager. Contact him if you want to buy a batch of the products offered at our store. &lt;/p&gt;','','','0000-00-00 00:00:00'),(39,3,3,'&lt;p&gt;Senior salesman with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;','','','0000-00-00 00:00:00'),(37,3,1,'&lt;p&gt;Senior salesman with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;','','','0000-00-00 00:00:00'),(38,3,2,'&lt;p&gt;Senior salesman with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;','','','0000-00-00 00:00:00'),(45,4,3,'&lt;p&gt;Quality control manager. Her mission is to check the products we ship and settle quality issues if any.&lt;/p&gt;','','','0000-00-00 00:00:00'),(43,4,1,'&lt;p&gt;Quality control manager. Her mission is to check the products we ship and settle quality issues if any.&lt;/p&gt;','','','0000-00-00 00:00:00'),(44,4,2,'&lt;p&gt;Quality control manager. Her mission is to check the products we ship and settle quality issues if any.&lt;/p&gt;','','','0000-00-00 00:00:00'),(47,6,4,'&lt;p&gt;&lt;br&gt;&lt;/p&gt;','','','0000-00-00 00:00:00'),(48,7,4,'&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Patricia Olivani','Patricia Olivani','0000-00-00 00:00:00'),(49,8,4,'&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Giuliana','Giuliana','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_simple_blog_author_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_simple_blog_category`
--

DROP TABLE IF EXISTS `oc_simple_blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_simple_blog_category` (
  `simple_blog_category_id` int(16) NOT NULL AUTO_INCREMENT,
  `image` mediumtext NOT NULL,
  `parent_id` int(16) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `blog_category_column` int(16) NOT NULL,
  `column` int(8) NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_simple_blog_category`
--

LOCK TABLES `oc_simple_blog_category` WRITE;
/*!40000 ALTER TABLE `oc_simple_blog_category` DISABLE KEYS */;
INSERT INTO `oc_simple_blog_category` VALUES (1,'',0,1,0,3,0,1,'2015-09-16 17:23:22','2015-09-28 17:00:31'),(2,'catalog/product-1.png',0,0,0,5,0,1,'2015-09-17 10:24:12','2015-09-28 17:05:27'),(3,'',0,0,0,5,0,1,'2015-09-21 16:44:25','2015-09-28 17:01:16'),(4,'',0,1,0,5,3,1,'2015-09-28 17:06:19','2015-09-28 17:06:19'),(8,'',0,1,1,10,0,1,'2016-10-16 22:59:57','2016-10-16 23:17:15'),(7,'',0,1,1,10,0,1,'2016-09-22 06:16:28','2016-09-29 04:34:30');
/*!40000 ALTER TABLE `oc_simple_blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_simple_blog_category_description`
--

DROP TABLE IF EXISTS `oc_simple_blog_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_simple_blog_category_description` (
  `simple_blog_category_description_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_category_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  PRIMARY KEY (`simple_blog_category_description_id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_simple_blog_category_description`
--

LOCK TABLES `oc_simple_blog_category_description` WRITE;
/*!40000 ALTER TABLE `oc_simple_blog_category_description` DISABLE KEYS */;
INSERT INTO `oc_simple_blog_category_description` VALUES (49,2,1,'Customer Service','','',''),(50,2,2,'Customer Service','','',''),(51,2,3,'Customer Service','','',''),(52,4,1,'Management','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','',''),(53,4,2,'Management','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','',''),(54,4,3,'Management','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','',''),(46,3,1,'Consulting','&lt;br&gt;','',''),(47,3,2,'Consulting','','',''),(48,3,3,'Consulting','&lt;br&gt;','',''),(43,1,1,'Branding','','',''),(44,1,2,'Branding','','',''),(45,1,3,'Branding','','',''),(60,7,4,'Novidades Casa Flores - Em Breve','&lt;p&gt;Novidades Casa Flores - Em Breve&lt;br&gt;&lt;/p&gt;','Novidades Casa Flores - Em Breve','Novidades Casa Flores - Em Breve'),(63,8,4,'Casa Flores na TV','&lt;p&gt;Participações especiais da equipe Casa Flores em programas e/ou campanhas na televisão.&lt;/p&gt;','Participações especiais da equipe Casa Flores em programas e/ou campanhas na televisão.','Casa Flores na TV');
/*!40000 ALTER TABLE `oc_simple_blog_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_simple_blog_category_to_layout`
--

DROP TABLE IF EXISTS `oc_simple_blog_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_simple_blog_category_to_layout` (
  `simple_blog_category_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL,
  `layout_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_simple_blog_category_to_layout`
--

LOCK TABLES `oc_simple_blog_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_simple_blog_category_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_simple_blog_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_simple_blog_category_to_store`
--

DROP TABLE IF EXISTS `oc_simple_blog_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_simple_blog_category_to_store` (
  `simple_blog_category_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_simple_blog_category_to_store`
--

LOCK TABLES `oc_simple_blog_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc_simple_blog_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_simple_blog_category_to_store` VALUES (2,0),(3,0),(1,0),(4,0),(8,0),(7,0);
/*!40000 ALTER TABLE `oc_simple_blog_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_simple_blog_comment`
--

DROP TABLE IF EXISTS `oc_simple_blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_simple_blog_comment` (
  `simple_blog_comment_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_article_reply_id` int(16) NOT NULL,
  `author` varchar(64) NOT NULL,
  `comment` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_simple_blog_comment`
--

LOCK TABLES `oc_simple_blog_comment` WRITE;
/*!40000 ALTER TABLE `oc_simple_blog_comment` DISABLE KEYS */;
INSERT INTO `oc_simple_blog_comment` VALUES (1,1,0,'Bernard Show','That’s awesome! Future belongs to youngsters, so businessmen can’t ignore their needs in any case.',1,'2015-09-17 10:05:35','2015-09-28 17:18:32'),(16,2,0,'Max Harris','Will try to repeat your mantras every day. Hopefully they will help in my current project.',1,'2015-09-28 17:20:59','2015-09-28 17:20:59'),(2,3,0,'Zack Hernandez','The success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot; – very true to life statement',1,'2015-09-18 11:39:25','2015-09-28 17:19:38'),(3,3,0,'James Anderson',' I am thinking of starting my own business and will ponder on the author’s notes. Concise and understandable, good job.',1,'2015-09-18 11:48:36','2015-09-28 17:20:05'),(15,2,0,'Taylor Miller','Follow your dream and it will turn to reality. A very inspiring article. Thanks for sharing!',1,'2015-09-28 17:20:34','2015-09-28 17:20:34'),(4,3,0,'Greg Wilson','Unbelievable… Three simple guidelines to follow that can change your life. Worth trying out, sure they will work as everything genius is simple.',1,'2015-09-18 12:08:42','2015-09-28 17:19:53'),(6,1,0,'Michael Ventura','Completely agree with the author. Modern businessmen should involve young people, introduce brands to them, socialize… Looks like a fresh product market!',1,'2015-09-21 18:18:56','2015-09-28 17:18:47'),(14,1,1,'Sarah Cole','The author did a great job with all these research work. Really valuable information, thank you!',1,'2015-09-28 17:18:32','2015-09-28 17:18:32'),(17,2,0,'Sidney Garcia','I thought I am just a dreamer, but now I know how to become a doer. That’s cool, appreciate it!',1,'2015-09-28 17:21:18','2015-09-28 17:21:18');
/*!40000 ALTER TABLE `oc_simple_blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_simple_blog_related_article`
--

DROP TABLE IF EXISTS `oc_simple_blog_related_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_simple_blog_related_article` (
  `simple_blog_related_article_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_article_related_id` int(16) NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_related_article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_simple_blog_related_article`
--

LOCK TABLES `oc_simple_blog_related_article` WRITE;
/*!40000 ALTER TABLE `oc_simple_blog_related_article` DISABLE KEYS */;
INSERT INTO `oc_simple_blog_related_article` VALUES (29,2,1,0,1,'2015-09-28 17:12:45'),(34,4,1,0,1,'2015-09-29 10:36:04'),(31,3,2,1,1,'2015-09-28 17:14:21'),(30,3,1,2,1,'2015-09-28 17:14:21'),(28,1,7,0,1,'2015-09-28 17:10:13');
/*!40000 ALTER TABLE `oc_simple_blog_related_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_simple_blog_view`
--

DROP TABLE IF EXISTS `oc_simple_blog_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_simple_blog_view` (
  `simple_blog_view_id` int(16) NOT NULL AUTO_INCREMENT,
  `simple_blog_article_id` int(16) NOT NULL,
  `view` int(16) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`simple_blog_view_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_simple_blog_view`
--

LOCK TABLES `oc_simple_blog_view` WRITE;
/*!40000 ALTER TABLE `oc_simple_blog_view` DISABLE KEYS */;
INSERT INTO `oc_simple_blog_view` VALUES (1,1,76,'2015-09-16 18:15:21','2015-09-30 17:48:39'),(2,3,146,'2015-09-17 10:28:27','2015-09-25 16:06:00'),(3,2,4,'2015-09-21 16:08:28','2015-09-28 17:21:28'),(10,6,2,'2015-09-29 10:44:23','2015-09-29 17:49:46'),(5,7,8,'2015-09-21 17:30:47','2015-09-29 10:44:19'),(6,5,15,'2015-09-21 17:53:05','2015-09-25 17:56:03'),(7,8,1,'2015-09-22 12:42:49','2015-09-22 12:42:49'),(8,4,3,'2015-09-23 17:59:14','2015-09-29 17:52:46'),(9,9,1,'2015-09-25 17:55:16','2015-09-25 17:55:16'),(11,13,22,'2016-09-28 21:54:32','2016-10-27 20:13:30'),(13,14,18,'2016-10-16 23:15:16','2016-10-27 12:28:54');
/*!40000 ALTER TABLE `oc_simple_blog_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_stock_status`
--

LOCK TABLES `oc_stock_status` WRITE;
/*!40000 ALTER TABLE `oc_stock_status` DISABLE KEYS */;
INSERT INTO `oc_stock_status` VALUES (7,4,'Em estoque'),(8,4,'Pre-Order'),(5,4,'Fora de estoque'),(6,4,'Encomendar'),(9,4,'Indisponível');
/*!40000 ALTER TABLE `oc_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_store`
--

LOCK TABLES `oc_store` WRITE;
/*!40000 ALTER TABLE `oc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_class`
--

LOCK TABLES `oc_tax_class` WRITE;
/*!40000 ALTER TABLE `oc_tax_class` DISABLE KEYS */;
INSERT INTO `oc_tax_class` VALUES (9,'Taxable Goods','Taxed goods','2009-01-06 23:21:53','2011-09-23 14:07:50'),(10,'Downloadable Products','Downloadable','2011-09-21 22:19:39','2011-09-22 10:27:36');
/*!40000 ALTER TABLE `oc_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate`
--

LOCK TABLES `oc_tax_rate` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate` DISABLE KEYS */;
INSERT INTO `oc_tax_rate` VALUES (86,3,'VAT (20%)',20.0000,'P','2011-03-09 21:17:10','2011-09-22 22:24:29'),(87,3,'Eco Tax (-2.00)',2.0000,'F','2011-09-21 21:49:23','2011-09-23 00:40:19');
/*!40000 ALTER TABLE `oc_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

LOCK TABLES `oc_tax_rate_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `oc_tax_rate_to_customer_group` VALUES (86,1),(87,1);
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rule`
--

LOCK TABLES `oc_tax_rule` WRITE;
/*!40000 ALTER TABLE `oc_tax_rule` DISABLE KEYS */;
INSERT INTO `oc_tax_rule` VALUES (121,10,86,'payment',1),(120,10,87,'store',0),(128,9,86,'shipping',1),(127,9,87,'shipping',2);
/*!40000 ALTER TABLE `oc_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tm_newsletter`
--

DROP TABLE IF EXISTS `oc_tm_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tm_newsletter` (
  `tm_newsletter_id` int(11) NOT NULL AUTO_INCREMENT,
  `tm_newsletter_email` varchar(255) NOT NULL,
  PRIMARY KEY (`tm_newsletter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tm_newsletter`
--

LOCK TABLES `oc_tm_newsletter` WRITE;
/*!40000 ALTER TABLE `oc_tm_newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_tm_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_upload`
--

DROP TABLE IF EXISTS `oc_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_upload`
--

LOCK TABLES `oc_upload` WRITE;
/*!40000 ALTER TABLE `oc_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_url_alias`
--

DROP TABLE IF EXISTS `oc_url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=1652 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_url_alias`
--

LOCK TABLES `oc_url_alias` WRITE;
/*!40000 ALTER TABLE `oc_url_alias` DISABLE KEYS */;
INSERT INTO `oc_url_alias` VALUES (1324,'category_id=48','presentes_floremcaixa'),(834,'category_id=26','pc'),(835,'category_id=27','mac'),(1453,'information_id=4','sobre'),(1392,'category_id=47','presentes'),(1338,'category_id=53','arranjos_rosas'),(1475,'category_id=59','entrega'),(785,'category_id=57','tablet'),(791,'category_id=44','test12'),(793,'category_id=48','test16'),(1433,'information_id=3','privacidade'),(795,'category_id=50','test18'),(798,'category_id=58','test25'),(799,'category_id=53','test21'),(1359,'category_id=56','buques_mixdeflores'),(1391,'category_id=38','buques'),(1390,'category_id=37','arranjos'),(1472,'category_id=60','encomende'),(808,'category_id=42','test9'),(1352,'category_id=57','arranjos_astromelias'),(1313,'category_id=42','buques_rosas'),(1316,'category_id=44','arranjos_orquideas'),(1619,'product_id=50','miniorquideasnacesta'),(1373,'product_id=51','miniorquideasnacorrosavaso'),(1640,'simple_blog_author_id=7','Patricia Olivani'),(1442,'manufacturer_id=11',''),(1521,'category_id=61','cestasdecafedamanha'),(1428,'information_id=6','delivery'),(1434,'information_id=5','termos'),(845,'common/home',''),(846,'information/contact','contact-us'),(847,'information/sitemap','sitemap'),(848,'product/special','specials'),(849,'product/manufacturer','brands'),(850,'product/compare','compare-products'),(851,'product/search','search'),(852,'checkout/cart','cart'),(853,'checkout/checkout','checkout'),(854,'account/login','login'),(855,'account/logout','logout'),(856,'account/voucher','vouchers'),(857,'account/wishlist','wishlist'),(858,'account/account','my-account'),(859,'account/order','order-history'),(860,'account/newsletter','newsletter'),(861,'account/return/add','return-add'),(862,'account/forgotten','forgot-password'),(863,'account/download','downloads'),(864,'account/return','returns'),(865,'account/transaction','transactions'),(866,'account/register','create-account'),(867,'account/recurring','recurring'),(868,'account/address','address-book'),(869,'account/reward','reward-points'),(870,'affiliate/forgotten','affiliate-forgot-password'),(871,'affiliate/register','create-affiliate-account'),(872,'affiliate/login','affiliate-login'),(873,'affiliate/account','affiliates'),(1225,'simple_blog_author_id=1','jessica-prinston'),(1186,'simple_blog_article_id=1','lorem'),(1187,'simple_blog_article_id=2','test'),(1227,'simple_blog_author_id=2','sam-kromstain'),(1188,'simple_blog_article_id=3','test2'),(1226,'simple_blog_author_id=3','robert-johnson'),(1228,'simple_blog_author_id=4','edna-barton'),(1182,'simple_blog_category_id=1','brands'),(1184,'simple_blog_category_id=2','unisex'),(1183,'simple_blog_category_id=3','lady'),(1204,'simple_blog_article_id=4','delectus'),(1196,'simple_blog_article_id=5','eveniet'),(1203,'simple_blog_article_id=6','Incidunt'),(1202,'simple_blog_article_id=7','laboriosam'),(1201,'simple_blog_article_id=8','molestias'),(1200,'simple_blog_article_id=9','repellat'),(1185,'simple_blog_category_id=4','management'),(1328,'category_id=49','presentes_casafloressecret'),(1331,'category_id=50','buques_astromelias'),(1353,'category_id=58','arranjos_tulipas'),(1360,'category_id=55','arranjos_mixdeflores'),(1454,'manufacturer_id=12',''),(1473,'manufacturer_id=13',''),(1496,'category_id=65','presentes_maternidade'),(1554,'category_id=62','presentes_tagsparaflores'),(1481,'manufacturer_id=14',''),(1495,'category_id=64','presentes_garrafacomflor'),(1494,'category_id=63','presentes_novidades'),(1497,'category_id=66','presentes_maternidade_orquideas'),(1499,'category_id=67','presentes_cartoesparaflores'),(1500,'category_id=68','presentes_acessorios'),(1501,'category_id=69','presentes_floresedoces'),(1552,'category_id=70','presentes_diadospais'),(1503,'category_id=71','presentes_diadospais_cestas'),(1504,'category_id=72','presentes_diadospais_floremcaixa'),(1549,'category_id=73','presentes_diadospais_buquesmasculinos'),(1508,'category_id=74','arranjos_cravinas'),(1513,'category_id=75','arranjos_cravos'),(1558,'category_id=76','arranjos_gerberas'),(1559,'category_id=77','arranjos_lisianthus'),(1648,'simple_blog_article_id=14','Mesa do Arraial do Programa Papo Vip 16 de julho de 2016'),(1561,'manufacturer_id=15',''),(1568,'category_id=78','presentes_diadasecretaria'),(1584,'manufacturer_id=16',''),(1585,'simple_blog_author_id=6','Fausto Simaro Vieira'),(1641,'simple_blog_author_id=8','Giuliana'),(1646,'simple_blog_category_id=8','Casa Flores na TV'),(1617,'simple_blog_article_id=13','Noticia 01'),(1599,'category_id=79','buques_fresias'),(1603,'category_id=80','blogcasaflores'),(1618,'simple_blog_category_id=7','Novidades Casa Flores'),(1651,'category_id=82','Compre online');
/*!40000 ALTER TABLE `oc_url_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user`
--

LOCK TABLES `oc_user` WRITE;
/*!40000 ALTER TABLE `oc_user` DISABLE KEYS */;
INSERT INTO `oc_user` VALUES (1,1,'admin','315f6ae69f800b988ad2d17b718977913ac21318','92dc7dd49','John','Doe','fernando.mendes@webca.com.br','','','172.17.0.1',1,'2016-05-31 00:01:19'),(2,1,'casaflores','48bbf999640be5cf909a3252ffca56932b396e84','5c2b2d023','casaflores','casaflores','','','','172.17.0.1',1,'2016-05-31 01:12:33');
/*!40000 ALTER TABLE `oc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_group`
--

LOCK TABLES `oc_user_group` WRITE;
/*!40000 ALTER TABLE `oc_user_group` DISABLE KEYS */;
INSERT INTO `oc_user_group` VALUES (1,'Administrator','a:2:{s:6:\"access\";a:223:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:17:\"catalog/recurring\";i:10;s:14:\"catalog/review\";i:11;s:18:\"common/column_left\";i:12;s:18:\"common/filemanager\";i:13;s:11:\"common/menu\";i:14;s:14:\"common/profile\";i:15;s:12:\"common/stats\";i:16;s:13:\"design/banner\";i:17;s:13:\"design/layout\";i:18;s:14:\"extension/feed\";i:19;s:15:\"extension/fraud\";i:20;s:19:\"extension/installer\";i:21;s:22:\"extension/modification\";i:22;s:16:\"extension/module\";i:23;s:17:\"extension/openbay\";i:24;s:17:\"extension/payment\";i:25;s:18:\"extension/shipping\";i:26;s:15:\"extension/total\";i:27;s:16:\"feed/google_base\";i:28;s:19:\"feed/google_sitemap\";i:29;s:15:\"feed/openbaypro\";i:30;s:18:\"fraud/fraudlabspro\";i:31;s:13:\"fraud/maxmind\";i:32;s:20:\"localisation/country\";i:33;s:21:\"localisation/currency\";i:34;s:21:\"localisation/geo_zone\";i:35;s:21:\"localisation/language\";i:36;s:25:\"localisation/length_class\";i:37;s:21:\"localisation/location\";i:38;s:25:\"localisation/order_status\";i:39;s:26:\"localisation/return_action\";i:40;s:26:\"localisation/return_reason\";i:41;s:26:\"localisation/return_status\";i:42;s:25:\"localisation/stock_status\";i:43;s:22:\"localisation/tax_class\";i:44;s:21:\"localisation/tax_rate\";i:45;s:25:\"localisation/weight_class\";i:46;s:17:\"localisation/zone\";i:47;s:19:\"marketing/affiliate\";i:48;s:17:\"marketing/contact\";i:49;s:16:\"marketing/coupon\";i:50;s:19:\"marketing/marketing\";i:51;s:14:\"module/account\";i:52;s:16:\"module/affiliate\";i:53;s:20:\"module/amazon_button\";i:54;s:19:\"module/amazon_login\";i:55;s:17:\"module/amazon_pay\";i:56;s:13:\"module/banner\";i:57;s:17:\"module/bestseller\";i:58;s:15:\"module/carousel\";i:59;s:15:\"module/category\";i:60;s:19:\"module/ebay_listing\";i:61;s:15:\"module/featured\";i:62;s:13:\"module/filter\";i:63;s:22:\"module/google_hangouts\";i:64;s:11:\"module/html\";i:65;s:18:\"module/information\";i:66;s:13:\"module/latest\";i:67;s:12:\"module/olark\";i:68;s:15:\"module/parallax\";i:69;s:16:\"module/pp_button\";i:70;s:15:\"module/pp_login\";i:71;s:16:\"module/slideshow\";i:72;s:14:\"module/special\";i:73;s:12:\"module/store\";i:74;s:23:\"module/tm_blog_articles\";i:75;s:23:\"module/tm_blog_category\";i:76;s:18:\"module/tm_category\";i:77;s:23:\"module/tm_category_menu\";i:78;s:23:\"module/tm_cookie_policy\";i:79;s:15:\"module/tm_fbbox\";i:80;s:20:\"module/tm_google_map\";i:81;s:19:\"module/tm_instagram\";i:82;s:22:\"module/tm_manufacturer\";i:83;s:20:\"module/tm_module_tab\";i:84;s:20:\"module/tm_newsletter\";i:85;s:26:\"module/tm_newsletter_popup\";i:86;s:19:\"module/tm_pinterest\";i:87;s:27:\"module/tm_product_slideshow\";i:88;s:23:\"module/tm_progress_bars\";i:89;s:33:\"module/tm_single_category_product\";i:90;s:19:\"module/tm_slideshow\";i:91;s:21:\"module/tm_social_list\";i:92;s:17:\"module/tm_twitter\";i:93;s:17:\"module/tm_videobg\";i:94;s:14:\"openbay/amazon\";i:95;s:22:\"openbay/amazon_listing\";i:96;s:22:\"openbay/amazon_product\";i:97;s:16:\"openbay/amazonus\";i:98;s:24:\"openbay/amazonus_listing\";i:99;s:24:\"openbay/amazonus_product\";i:100;s:12:\"openbay/ebay\";i:101;s:20:\"openbay/ebay_profile\";i:102;s:21:\"openbay/ebay_template\";i:103;s:12:\"openbay/etsy\";i:104;s:20:\"openbay/etsy_product\";i:105;s:21:\"openbay/etsy_shipping\";i:106;s:17:\"openbay/etsy_shop\";i:107;s:23:\"payment/amazon_checkout\";i:108;s:24:\"payment/amazon_login_pay\";i:109;s:24:\"payment/authorizenet_aim\";i:110;s:24:\"payment/authorizenet_sim\";i:111;s:21:\"payment/bank_transfer\";i:112;s:22:\"payment/bluepay_hosted\";i:113;s:24:\"payment/bluepay_redirect\";i:114;s:14:\"payment/cheque\";i:115;s:11:\"payment/cod\";i:116;s:17:\"payment/firstdata\";i:117;s:24:\"payment/firstdata_remote\";i:118;s:21:\"payment/free_checkout\";i:119;s:14:\"payment/g2apay\";i:120;s:17:\"payment/globalpay\";i:121;s:24:\"payment/globalpay_remote\";i:122;s:22:\"payment/klarna_account\";i:123;s:22:\"payment/klarna_invoice\";i:124;s:14:\"payment/liqpay\";i:125;s:14:\"payment/nochex\";i:126;s:15:\"payment/paymate\";i:127;s:16:\"payment/paypoint\";i:128;s:13:\"payment/payza\";i:129;s:26:\"payment/perpetual_payments\";i:130;s:18:\"payment/pp_express\";i:131;s:18:\"payment/pp_payflow\";i:132;s:25:\"payment/pp_payflow_iframe\";i:133;s:14:\"payment/pp_pro\";i:134;s:21:\"payment/pp_pro_iframe\";i:135;s:19:\"payment/pp_standard\";i:136;s:14:\"payment/realex\";i:137;s:21:\"payment/realex_remote\";i:138;s:22:\"payment/sagepay_direct\";i:139;s:22:\"payment/sagepay_server\";i:140;s:18:\"payment/sagepay_us\";i:141;s:24:\"payment/securetrading_pp\";i:142;s:24:\"payment/securetrading_ws\";i:143;s:14:\"payment/skrill\";i:144;s:19:\"payment/twocheckout\";i:145;s:28:\"payment/web_payment_software\";i:146;s:16:\"payment/worldpay\";i:147;s:16:\"report/affiliate\";i:148;s:25:\"report/affiliate_activity\";i:149;s:22:\"report/affiliate_login\";i:150;s:24:\"report/customer_activity\";i:151;s:22:\"report/customer_credit\";i:152;s:21:\"report/customer_login\";i:153;s:22:\"report/customer_online\";i:154;s:21:\"report/customer_order\";i:155;s:22:\"report/customer_reward\";i:156;s:16:\"report/marketing\";i:157;s:24:\"report/product_purchased\";i:158;s:21:\"report/product_viewed\";i:159;s:18:\"report/sale_coupon\";i:160;s:17:\"report/sale_order\";i:161;s:18:\"report/sale_return\";i:162;s:20:\"report/sale_shipping\";i:163;s:15:\"report/sale_tax\";i:164;s:17:\"sale/custom_field\";i:165;s:13:\"sale/customer\";i:166;s:20:\"sale/customer_ban_ip\";i:167;s:19:\"sale/customer_group\";i:168;s:10:\"sale/order\";i:169;s:14:\"sale/recurring\";i:170;s:11:\"sale/return\";i:171;s:12:\"sale/voucher\";i:172;s:18:\"sale/voucher_theme\";i:173;s:15:\"setting/setting\";i:174;s:13:\"setting/store\";i:175;s:16:\"shipping/auspost\";i:176;s:17:\"shipping/citylink\";i:177;s:14:\"shipping/fedex\";i:178;s:13:\"shipping/flat\";i:179;s:13:\"shipping/free\";i:180;s:13:\"shipping/item\";i:181;s:23:\"shipping/parcelforce_48\";i:182;s:15:\"shipping/pickup\";i:183;s:19:\"shipping/royal_mail\";i:184;s:12:\"shipping/ups\";i:185;s:13:\"shipping/usps\";i:186;s:15:\"shipping/weight\";i:187;s:19:\"simple_blog/article\";i:188;s:18:\"simple_blog/author\";i:189;s:20:\"simple_blog/category\";i:190;s:19:\"simple_blog/comment\";i:191;s:19:\"simple_blog/install\";i:192;s:18:\"simple_blog/report\";i:193;s:11:\"tool/backup\";i:194;s:14:\"tool/error_log\";i:195;s:18:\"tool/export_import\";i:196;s:11:\"tool/upload\";i:197;s:12:\"total/coupon\";i:198;s:12:\"total/credit\";i:199;s:14:\"total/handling\";i:200;s:16:\"total/klarna_fee\";i:201;s:19:\"total/low_order_fee\";i:202;s:12:\"total/reward\";i:203;s:14:\"total/shipping\";i:204;s:15:\"total/sub_total\";i:205;s:9:\"total/tax\";i:206;s:11:\"total/total\";i:207;s:13:\"total/voucher\";i:208;s:8:\"user/api\";i:209;s:9:\"user/user\";i:210;s:20:\"user/user_permission\";i:211;s:11:\"module/html\";i:212;s:26:\"module/tm_newsletter_popup\";i:213;s:17:\"module/tm_videobg\";i:214;s:15:\"module/parallax\";i:215;s:16:\"module/slideshow\";i:216;s:15:\"module/carousel\";i:217;s:16:\"feed/google_base\";i:218;s:31:\"shipping/joseanmatias_faixa_cep\";i:219;s:17:\"payment/pagseguro\";i:220;s:20:\"module/scrollingcart\";i:221;s:13:\"shipping/free\";i:222;s:20:\"module/scrollingcart\";}s:6:\"modify\";a:223:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:17:\"catalog/recurring\";i:10;s:14:\"catalog/review\";i:11;s:18:\"common/column_left\";i:12;s:18:\"common/filemanager\";i:13;s:11:\"common/menu\";i:14;s:14:\"common/profile\";i:15;s:12:\"common/stats\";i:16;s:13:\"design/banner\";i:17;s:13:\"design/layout\";i:18;s:14:\"extension/feed\";i:19;s:15:\"extension/fraud\";i:20;s:19:\"extension/installer\";i:21;s:22:\"extension/modification\";i:22;s:16:\"extension/module\";i:23;s:17:\"extension/openbay\";i:24;s:17:\"extension/payment\";i:25;s:18:\"extension/shipping\";i:26;s:15:\"extension/total\";i:27;s:16:\"feed/google_base\";i:28;s:19:\"feed/google_sitemap\";i:29;s:15:\"feed/openbaypro\";i:30;s:18:\"fraud/fraudlabspro\";i:31;s:13:\"fraud/maxmind\";i:32;s:20:\"localisation/country\";i:33;s:21:\"localisation/currency\";i:34;s:21:\"localisation/geo_zone\";i:35;s:21:\"localisation/language\";i:36;s:25:\"localisation/length_class\";i:37;s:21:\"localisation/location\";i:38;s:25:\"localisation/order_status\";i:39;s:26:\"localisation/return_action\";i:40;s:26:\"localisation/return_reason\";i:41;s:26:\"localisation/return_status\";i:42;s:25:\"localisation/stock_status\";i:43;s:22:\"localisation/tax_class\";i:44;s:21:\"localisation/tax_rate\";i:45;s:25:\"localisation/weight_class\";i:46;s:17:\"localisation/zone\";i:47;s:19:\"marketing/affiliate\";i:48;s:17:\"marketing/contact\";i:49;s:16:\"marketing/coupon\";i:50;s:19:\"marketing/marketing\";i:51;s:14:\"module/account\";i:52;s:16:\"module/affiliate\";i:53;s:20:\"module/amazon_button\";i:54;s:19:\"module/amazon_login\";i:55;s:17:\"module/amazon_pay\";i:56;s:13:\"module/banner\";i:57;s:17:\"module/bestseller\";i:58;s:15:\"module/carousel\";i:59;s:15:\"module/category\";i:60;s:19:\"module/ebay_listing\";i:61;s:15:\"module/featured\";i:62;s:13:\"module/filter\";i:63;s:22:\"module/google_hangouts\";i:64;s:11:\"module/html\";i:65;s:18:\"module/information\";i:66;s:13:\"module/latest\";i:67;s:12:\"module/olark\";i:68;s:15:\"module/parallax\";i:69;s:16:\"module/pp_button\";i:70;s:15:\"module/pp_login\";i:71;s:16:\"module/slideshow\";i:72;s:14:\"module/special\";i:73;s:12:\"module/store\";i:74;s:23:\"module/tm_blog_articles\";i:75;s:23:\"module/tm_blog_category\";i:76;s:18:\"module/tm_category\";i:77;s:23:\"module/tm_category_menu\";i:78;s:23:\"module/tm_cookie_policy\";i:79;s:15:\"module/tm_fbbox\";i:80;s:20:\"module/tm_google_map\";i:81;s:19:\"module/tm_instagram\";i:82;s:22:\"module/tm_manufacturer\";i:83;s:20:\"module/tm_module_tab\";i:84;s:20:\"module/tm_newsletter\";i:85;s:26:\"module/tm_newsletter_popup\";i:86;s:19:\"module/tm_pinterest\";i:87;s:27:\"module/tm_product_slideshow\";i:88;s:23:\"module/tm_progress_bars\";i:89;s:33:\"module/tm_single_category_product\";i:90;s:19:\"module/tm_slideshow\";i:91;s:21:\"module/tm_social_list\";i:92;s:17:\"module/tm_twitter\";i:93;s:17:\"module/tm_videobg\";i:94;s:14:\"openbay/amazon\";i:95;s:22:\"openbay/amazon_listing\";i:96;s:22:\"openbay/amazon_product\";i:97;s:16:\"openbay/amazonus\";i:98;s:24:\"openbay/amazonus_listing\";i:99;s:24:\"openbay/amazonus_product\";i:100;s:12:\"openbay/ebay\";i:101;s:20:\"openbay/ebay_profile\";i:102;s:21:\"openbay/ebay_template\";i:103;s:12:\"openbay/etsy\";i:104;s:20:\"openbay/etsy_product\";i:105;s:21:\"openbay/etsy_shipping\";i:106;s:17:\"openbay/etsy_shop\";i:107;s:23:\"payment/amazon_checkout\";i:108;s:24:\"payment/amazon_login_pay\";i:109;s:24:\"payment/authorizenet_aim\";i:110;s:24:\"payment/authorizenet_sim\";i:111;s:21:\"payment/bank_transfer\";i:112;s:22:\"payment/bluepay_hosted\";i:113;s:24:\"payment/bluepay_redirect\";i:114;s:14:\"payment/cheque\";i:115;s:11:\"payment/cod\";i:116;s:17:\"payment/firstdata\";i:117;s:24:\"payment/firstdata_remote\";i:118;s:21:\"payment/free_checkout\";i:119;s:14:\"payment/g2apay\";i:120;s:17:\"payment/globalpay\";i:121;s:24:\"payment/globalpay_remote\";i:122;s:22:\"payment/klarna_account\";i:123;s:22:\"payment/klarna_invoice\";i:124;s:14:\"payment/liqpay\";i:125;s:14:\"payment/nochex\";i:126;s:15:\"payment/paymate\";i:127;s:16:\"payment/paypoint\";i:128;s:13:\"payment/payza\";i:129;s:26:\"payment/perpetual_payments\";i:130;s:18:\"payment/pp_express\";i:131;s:18:\"payment/pp_payflow\";i:132;s:25:\"payment/pp_payflow_iframe\";i:133;s:14:\"payment/pp_pro\";i:134;s:21:\"payment/pp_pro_iframe\";i:135;s:19:\"payment/pp_standard\";i:136;s:14:\"payment/realex\";i:137;s:21:\"payment/realex_remote\";i:138;s:22:\"payment/sagepay_direct\";i:139;s:22:\"payment/sagepay_server\";i:140;s:18:\"payment/sagepay_us\";i:141;s:24:\"payment/securetrading_pp\";i:142;s:24:\"payment/securetrading_ws\";i:143;s:14:\"payment/skrill\";i:144;s:19:\"payment/twocheckout\";i:145;s:28:\"payment/web_payment_software\";i:146;s:16:\"payment/worldpay\";i:147;s:16:\"report/affiliate\";i:148;s:25:\"report/affiliate_activity\";i:149;s:22:\"report/affiliate_login\";i:150;s:24:\"report/customer_activity\";i:151;s:22:\"report/customer_credit\";i:152;s:21:\"report/customer_login\";i:153;s:22:\"report/customer_online\";i:154;s:21:\"report/customer_order\";i:155;s:22:\"report/customer_reward\";i:156;s:16:\"report/marketing\";i:157;s:24:\"report/product_purchased\";i:158;s:21:\"report/product_viewed\";i:159;s:18:\"report/sale_coupon\";i:160;s:17:\"report/sale_order\";i:161;s:18:\"report/sale_return\";i:162;s:20:\"report/sale_shipping\";i:163;s:15:\"report/sale_tax\";i:164;s:17:\"sale/custom_field\";i:165;s:13:\"sale/customer\";i:166;s:20:\"sale/customer_ban_ip\";i:167;s:19:\"sale/customer_group\";i:168;s:10:\"sale/order\";i:169;s:14:\"sale/recurring\";i:170;s:11:\"sale/return\";i:171;s:12:\"sale/voucher\";i:172;s:18:\"sale/voucher_theme\";i:173;s:15:\"setting/setting\";i:174;s:13:\"setting/store\";i:175;s:16:\"shipping/auspost\";i:176;s:17:\"shipping/citylink\";i:177;s:14:\"shipping/fedex\";i:178;s:13:\"shipping/flat\";i:179;s:13:\"shipping/free\";i:180;s:13:\"shipping/item\";i:181;s:23:\"shipping/parcelforce_48\";i:182;s:15:\"shipping/pickup\";i:183;s:19:\"shipping/royal_mail\";i:184;s:12:\"shipping/ups\";i:185;s:13:\"shipping/usps\";i:186;s:15:\"shipping/weight\";i:187;s:19:\"simple_blog/article\";i:188;s:18:\"simple_blog/author\";i:189;s:20:\"simple_blog/category\";i:190;s:19:\"simple_blog/comment\";i:191;s:19:\"simple_blog/install\";i:192;s:18:\"simple_blog/report\";i:193;s:11:\"tool/backup\";i:194;s:14:\"tool/error_log\";i:195;s:18:\"tool/export_import\";i:196;s:11:\"tool/upload\";i:197;s:12:\"total/coupon\";i:198;s:12:\"total/credit\";i:199;s:14:\"total/handling\";i:200;s:16:\"total/klarna_fee\";i:201;s:19:\"total/low_order_fee\";i:202;s:12:\"total/reward\";i:203;s:14:\"total/shipping\";i:204;s:15:\"total/sub_total\";i:205;s:9:\"total/tax\";i:206;s:11:\"total/total\";i:207;s:13:\"total/voucher\";i:208;s:8:\"user/api\";i:209;s:9:\"user/user\";i:210;s:20:\"user/user_permission\";i:211;s:11:\"module/html\";i:212;s:26:\"module/tm_newsletter_popup\";i:213;s:17:\"module/tm_videobg\";i:214;s:15:\"module/parallax\";i:215;s:16:\"module/slideshow\";i:216;s:15:\"module/carousel\";i:217;s:16:\"feed/google_base\";i:218;s:31:\"shipping/joseanmatias_faixa_cep\";i:219;s:17:\"payment/pagseguro\";i:220;s:20:\"module/scrollingcart\";i:221;s:13:\"shipping/free\";i:222;s:20:\"module/scrollingcart\";}}'),(10,'Demonstration','');
/*!40000 ALTER TABLE `oc_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher`
--

LOCK TABLES `oc_voucher` WRITE;
/*!40000 ALTER TABLE `oc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_history`
--

LOCK TABLES `oc_voucher_history` WRITE;
/*!40000 ALTER TABLE `oc_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme`
--

LOCK TABLES `oc_voucher_theme` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme` VALUES (8,'catalog/demo/canon_eos_5d_2.jpg'),(7,'catalog/demo/gift-voucher-birthday.jpg'),(6,'catalog/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `oc_voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme_description`
--

LOCK TABLES `oc_voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme_description` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme_description` VALUES (6,4,'Christmas'),(7,4,'Birthday'),(8,4,'General');
/*!40000 ALTER TABLE `oc_voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class`
--

LOCK TABLES `oc_weight_class` WRITE;
/*!40000 ALTER TABLE `oc_weight_class` DISABLE KEYS */;
INSERT INTO `oc_weight_class` VALUES (1,1.00000000),(2,1000.00000000),(5,2.20460000),(6,35.27400000);
/*!40000 ALTER TABLE `oc_weight_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class_description`
--

LOCK TABLES `oc_weight_class_description` WRITE;
/*!40000 ALTER TABLE `oc_weight_class_description` DISABLE KEYS */;
INSERT INTO `oc_weight_class_description` VALUES (1,4,'Kilogram','kg'),(2,4,'Gram','g'),(5,4,'Pound ','lb'),(6,4,'Ounce','oz');
/*!40000 ALTER TABLE `oc_weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4225 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone`
--

LOCK TABLES `oc_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone` DISABLE KEYS */;
INSERT INTO `oc_zone` VALUES (1,1,'Badakhshan','BDS',1),(2,1,'Badghis','BDG',1),(3,1,'Baghlan','BGL',1),(4,1,'Balkh','BAL',1),(5,1,'Bamian','BAM',1),(6,1,'Farah','FRA',1),(7,1,'Faryab','FYB',1),(8,1,'Ghazni','GHA',1),(9,1,'Ghowr','GHO',1),(10,1,'Helmand','HEL',1),(11,1,'Herat','HER',1),(12,1,'Jowzjan','JOW',1),(13,1,'Kabul','KAB',1),(14,1,'Kandahar','KAN',1),(15,1,'Kapisa','KAP',1),(16,1,'Khost','KHO',1),(17,1,'Konar','KNR',1),(18,1,'Kondoz','KDZ',1),(19,1,'Laghman','LAG',1),(20,1,'Lowgar','LOW',1),(21,1,'Nangrahar','NAN',1),(22,1,'Nimruz','NIM',1),(23,1,'Nurestan','NUR',1),(24,1,'Oruzgan','ORU',1),(25,1,'Paktia','PIA',1),(26,1,'Paktika','PKA',1),(27,1,'Parwan','PAR',1),(28,1,'Samangan','SAM',1),(29,1,'Sar-e Pol','SAR',1),(30,1,'Takhar','TAK',1),(31,1,'Wardak','WAR',1),(32,1,'Zabol','ZAB',1),(33,2,'Berat','BR',1),(34,2,'Bulqize','BU',1),(35,2,'Delvine','DL',1),(36,2,'Devoll','DV',1),(37,2,'Diber','DI',1),(38,2,'Durres','DR',1),(39,2,'Elbasan','EL',1),(40,2,'Kolonje','ER',1),(41,2,'Fier','FR',1),(42,2,'Gjirokaster','GJ',1),(43,2,'Gramsh','GR',1),(44,2,'Has','HA',1),(45,2,'Kavaje','KA',1),(46,2,'Kurbin','KB',1),(47,2,'Kucove','KC',1),(48,2,'Korce','KO',1),(49,2,'Kruje','KR',1),(50,2,'Kukes','KU',1),(51,2,'Librazhd','LB',1),(52,2,'Lezhe','LE',1),(53,2,'Lushnje','LU',1),(54,2,'Malesi e Madhe','MM',1),(55,2,'Mallakaster','MK',1),(56,2,'Mat','MT',1),(57,2,'Mirdite','MR',1),(58,2,'Peqin','PQ',1),(59,2,'Permet','PR',1),(60,2,'Pogradec','PG',1),(61,2,'Puke','PU',1),(62,2,'Shkoder','SH',1),(63,2,'Skrapar','SK',1),(64,2,'Sarande','SR',1),(65,2,'Tepelene','TE',1),(66,2,'Tropoje','TP',1),(67,2,'Tirane','TR',1),(68,2,'Vlore','VL',1),(69,3,'Adrar','ADR',1),(70,3,'Ain Defla','ADE',1),(71,3,'Ain Temouchent','ATE',1),(72,3,'Alger','ALG',1),(73,3,'Annaba','ANN',1),(74,3,'Batna','BAT',1),(75,3,'Bechar','BEC',1),(76,3,'Bejaia','BEJ',1),(77,3,'Biskra','BIS',1),(78,3,'Blida','BLI',1),(79,3,'Bordj Bou Arreridj','BBA',1),(80,3,'Bouira','BOA',1),(81,3,'Boumerdes','BMD',1),(82,3,'Chlef','CHL',1),(83,3,'Constantine','CON',1),(84,3,'Djelfa','DJE',1),(85,3,'El Bayadh','EBA',1),(86,3,'El Oued','EOU',1),(87,3,'El Tarf','ETA',1),(88,3,'Ghardaia','GHA',1),(89,3,'Guelma','GUE',1),(90,3,'Illizi','ILL',1),(91,3,'Jijel','JIJ',1),(92,3,'Khenchela','KHE',1),(93,3,'Laghouat','LAG',1),(94,3,'Muaskar','MUA',1),(95,3,'Medea','MED',1),(96,3,'Mila','MIL',1),(97,3,'Mostaganem','MOS',1),(98,3,'M\'Sila','MSI',1),(99,3,'Naama','NAA',1),(100,3,'Oran','ORA',1),(101,3,'Ouargla','OUA',1),(102,3,'Oum el-Bouaghi','OEB',1),(103,3,'Relizane','REL',1),(104,3,'Saida','SAI',1),(105,3,'Setif','SET',1),(106,3,'Sidi Bel Abbes','SBA',1),(107,3,'Skikda','SKI',1),(108,3,'Souk Ahras','SAH',1),(109,3,'Tamanghasset','TAM',1),(110,3,'Tebessa','TEB',1),(111,3,'Tiaret','TIA',1),(112,3,'Tindouf','TIN',1),(113,3,'Tipaza','TIP',1),(114,3,'Tissemsilt','TIS',1),(115,3,'Tizi Ouzou','TOU',1),(116,3,'Tlemcen','TLE',1),(117,4,'Eastern','E',1),(118,4,'Manu\'a','M',1),(119,4,'Rose Island','R',1),(120,4,'Swains Island','S',1),(121,4,'Western','W',1),(122,5,'Andorra la Vella','ALV',1),(123,5,'Canillo','CAN',1),(124,5,'Encamp','ENC',1),(125,5,'Escaldes-Engordany','ESE',1),(126,5,'La Massana','LMA',1),(127,5,'Ordino','ORD',1),(128,5,'Sant Julia de Loria','SJL',1),(129,6,'Bengo','BGO',1),(130,6,'Benguela','BGU',1),(131,6,'Bie','BIE',1),(132,6,'Cabinda','CAB',1),(133,6,'Cuando-Cubango','CCU',1),(134,6,'Cuanza Norte','CNO',1),(135,6,'Cuanza Sul','CUS',1),(136,6,'Cunene','CNN',1),(137,6,'Huambo','HUA',1),(138,6,'Huila','HUI',1),(139,6,'Luanda','LUA',1),(140,6,'Lunda Norte','LNO',1),(141,6,'Lunda Sul','LSU',1),(142,6,'Malange','MAL',1),(143,6,'Moxico','MOX',1),(144,6,'Namibe','NAM',1),(145,6,'Uige','UIG',1),(146,6,'Zaire','ZAI',1),(147,9,'Saint George','ASG',1),(148,9,'Saint John','ASJ',1),(149,9,'Saint Mary','ASM',1),(150,9,'Saint Paul','ASL',1),(151,9,'Saint Peter','ASR',1),(152,9,'Saint Philip','ASH',1),(153,9,'Barbuda','BAR',1),(154,9,'Redonda','RED',1),(155,10,'Antartida e Islas del Atlantico','AN',1),(156,10,'Buenos Aires','BA',1),(157,10,'Catamarca','CA',1),(158,10,'Chaco','CH',1),(159,10,'Chubut','CU',1),(160,10,'Cordoba','CO',1),(161,10,'Corrientes','CR',1),(162,10,'Distrito Federal','DF',1),(163,10,'Entre Rios','ER',1),(164,10,'Formosa','FO',1),(165,10,'Jujuy','JU',1),(166,10,'La Pampa','LP',1),(167,10,'La Rioja','LR',1),(168,10,'Mendoza','ME',1),(169,10,'Misiones','MI',1),(170,10,'Neuquen','NE',1),(171,10,'Rio Negro','RN',1),(172,10,'Salta','SA',1),(173,10,'San Juan','SJ',1),(174,10,'San Luis','SL',1),(175,10,'Santa Cruz','SC',1),(176,10,'Santa Fe','SF',1),(177,10,'Santiago del Estero','SD',1),(178,10,'Tierra del Fuego','TF',1),(179,10,'Tucuman','TU',1),(180,11,'Aragatsotn','AGT',1),(181,11,'Ararat','ARR',1),(182,11,'Armavir','ARM',1),(183,11,'Geghark\'unik\'','GEG',1),(184,11,'Kotayk\'','KOT',1),(185,11,'Lorri','LOR',1),(186,11,'Shirak','SHI',1),(187,11,'Syunik\'','SYU',1),(188,11,'Tavush','TAV',1),(189,11,'Vayots\' Dzor','VAY',1),(190,11,'Yerevan','YER',1),(191,13,'Australian Capital Territory','ACT',1),(192,13,'New South Wales','NSW',1),(193,13,'Northern Territory','NT',1),(194,13,'Queensland','QLD',1),(195,13,'South Australia','SA',1),(196,13,'Tasmania','TAS',1),(197,13,'Victoria','VIC',1),(198,13,'Western Australia','WA',1),(199,14,'Burgenland','BUR',1),(200,14,'Kärnten','KAR',1),(201,14,'Nieder&ouml;sterreich','NOS',1),(202,14,'Ober&ouml;sterreich','OOS',1),(203,14,'Salzburg','SAL',1),(204,14,'Steiermark','STE',1),(205,14,'Tirol','TIR',1),(206,14,'Vorarlberg','VOR',1),(207,14,'Wien','WIE',1),(208,15,'Ali Bayramli','AB',1),(209,15,'Abseron','ABS',1),(210,15,'AgcabAdi','AGC',1),(211,15,'Agdam','AGM',1),(212,15,'Agdas','AGS',1),(213,15,'Agstafa','AGA',1),(214,15,'Agsu','AGU',1),(215,15,'Astara','AST',1),(216,15,'Baki','BA',1),(217,15,'BabAk','BAB',1),(218,15,'BalakAn','BAL',1),(219,15,'BArdA','BAR',1),(220,15,'Beylaqan','BEY',1),(221,15,'Bilasuvar','BIL',1),(222,15,'Cabrayil','CAB',1),(223,15,'Calilabab','CAL',1),(224,15,'Culfa','CUL',1),(225,15,'Daskasan','DAS',1),(226,15,'Davaci','DAV',1),(227,15,'Fuzuli','FUZ',1),(228,15,'Ganca','GA',1),(229,15,'Gadabay','GAD',1),(230,15,'Goranboy','GOR',1),(231,15,'Goycay','GOY',1),(232,15,'Haciqabul','HAC',1),(233,15,'Imisli','IMI',1),(234,15,'Ismayilli','ISM',1),(235,15,'Kalbacar','KAL',1),(236,15,'Kurdamir','KUR',1),(237,15,'Lankaran','LA',1),(238,15,'Lacin','LAC',1),(239,15,'Lankaran','LAN',1),(240,15,'Lerik','LER',1),(241,15,'Masalli','MAS',1),(242,15,'Mingacevir','MI',1),(243,15,'Naftalan','NA',1),(244,15,'Neftcala','NEF',1),(245,15,'Oguz','OGU',1),(246,15,'Ordubad','ORD',1),(247,15,'Qabala','QAB',1),(248,15,'Qax','QAX',1),(249,15,'Qazax','QAZ',1),(250,15,'Qobustan','QOB',1),(251,15,'Quba','QBA',1),(252,15,'Qubadli','QBI',1),(253,15,'Qusar','QUS',1),(254,15,'Saki','SA',1),(255,15,'Saatli','SAT',1),(256,15,'Sabirabad','SAB',1),(257,15,'Sadarak','SAD',1),(258,15,'Sahbuz','SAH',1),(259,15,'Saki','SAK',1),(260,15,'Salyan','SAL',1),(261,15,'Sumqayit','SM',1),(262,15,'Samaxi','SMI',1),(263,15,'Samkir','SKR',1),(264,15,'Samux','SMX',1),(265,15,'Sarur','SAR',1),(266,15,'Siyazan','SIY',1),(267,15,'Susa','SS',1),(268,15,'Susa','SUS',1),(269,15,'Tartar','TAR',1),(270,15,'Tovuz','TOV',1),(271,15,'Ucar','UCA',1),(272,15,'Xankandi','XA',1),(273,15,'Xacmaz','XAC',1),(274,15,'Xanlar','XAN',1),(275,15,'Xizi','XIZ',1),(276,15,'Xocali','XCI',1),(277,15,'Xocavand','XVD',1),(278,15,'Yardimli','YAR',1),(279,15,'Yevlax','YEV',1),(280,15,'Zangilan','ZAN',1),(281,15,'Zaqatala','ZAQ',1),(282,15,'Zardab','ZAR',1),(283,15,'Naxcivan','NX',1),(284,16,'Acklins','ACK',1),(285,16,'Berry Islands','BER',1),(286,16,'Bimini','BIM',1),(287,16,'Black Point','BLK',1),(288,16,'Cat Island','CAT',1),(289,16,'Central Abaco','CAB',1),(290,16,'Central Andros','CAN',1),(291,16,'Central Eleuthera','CEL',1),(292,16,'City of Freeport','FRE',1),(293,16,'Crooked Island','CRO',1),(294,16,'East Grand Bahama','EGB',1),(295,16,'Exuma','EXU',1),(296,16,'Grand Cay','GRD',1),(297,16,'Harbour Island','HAR',1),(298,16,'Hope Town','HOP',1),(299,16,'Inagua','INA',1),(300,16,'Long Island','LNG',1),(301,16,'Mangrove Cay','MAN',1),(302,16,'Mayaguana','MAY',1),(303,16,'Moore\'s Island','MOO',1),(304,16,'North Abaco','NAB',1),(305,16,'North Andros','NAN',1),(306,16,'North Eleuthera','NEL',1),(307,16,'Ragged Island','RAG',1),(308,16,'Rum Cay','RUM',1),(309,16,'San Salvador','SAL',1),(310,16,'South Abaco','SAB',1),(311,16,'South Andros','SAN',1),(312,16,'South Eleuthera','SEL',1),(313,16,'Spanish Wells','SWE',1),(314,16,'West Grand Bahama','WGB',1),(315,17,'Capital','CAP',1),(316,17,'Central','CEN',1),(317,17,'Muharraq','MUH',1),(318,17,'Northern','NOR',1),(319,17,'Southern','SOU',1),(320,18,'Barisal','BAR',1),(321,18,'Chittagong','CHI',1),(322,18,'Dhaka','DHA',1),(323,18,'Khulna','KHU',1),(324,18,'Rajshahi','RAJ',1),(325,18,'Sylhet','SYL',1),(326,19,'Christ Church','CC',1),(327,19,'Saint Andrew','AND',1),(328,19,'Saint George','GEO',1),(329,19,'Saint James','JAM',1),(330,19,'Saint John','JOH',1),(331,19,'Saint Joseph','JOS',1),(332,19,'Saint Lucy','LUC',1),(333,19,'Saint Michael','MIC',1),(334,19,'Saint Peter','PET',1),(335,19,'Saint Philip','PHI',1),(336,19,'Saint Thomas','THO',1),(337,20,'Brestskaya (Brest)','BR',1),(338,20,'Homyel\'skaya (Homyel\')','HO',1),(339,20,'Horad Minsk','HM',1),(340,20,'Hrodzyenskaya (Hrodna)','HR',1),(341,20,'Mahilyowskaya (Mahilyow)','MA',1),(342,20,'Minskaya','MI',1),(343,20,'Vitsyebskaya (Vitsyebsk)','VI',1),(344,21,'Antwerpen','VAN',1),(345,21,'Brabant Wallon','WBR',1),(346,21,'Hainaut','WHT',1),(347,21,'Liège','WLG',1),(348,21,'Limburg','VLI',1),(349,21,'Luxembourg','WLX',1),(350,21,'Namur','WNA',1),(351,21,'Oost-Vlaanderen','VOV',1),(352,21,'Vlaams Brabant','VBR',1),(353,21,'West-Vlaanderen','VWV',1),(354,22,'Belize','BZ',1),(355,22,'Cayo','CY',1),(356,22,'Corozal','CR',1),(357,22,'Orange Walk','OW',1),(358,22,'Stann Creek','SC',1),(359,22,'Toledo','TO',1),(360,23,'Alibori','AL',1),(361,23,'Atakora','AK',1),(362,23,'Atlantique','AQ',1),(363,23,'Borgou','BO',1),(364,23,'Collines','CO',1),(365,23,'Donga','DO',1),(366,23,'Kouffo','KO',1),(367,23,'Littoral','LI',1),(368,23,'Mono','MO',1),(369,23,'Oueme','OU',1),(370,23,'Plateau','PL',1),(371,23,'Zou','ZO',1),(372,24,'Devonshire','DS',1),(373,24,'Hamilton City','HC',1),(374,24,'Hamilton','HA',1),(375,24,'Paget','PG',1),(376,24,'Pembroke','PB',1),(377,24,'Saint George City','GC',1),(378,24,'Saint George\'s','SG',1),(379,24,'Sandys','SA',1),(380,24,'Smith\'s','SM',1),(381,24,'Southampton','SH',1),(382,24,'Warwick','WA',1),(383,25,'Bumthang','BUM',1),(384,25,'Chukha','CHU',1),(385,25,'Dagana','DAG',1),(386,25,'Gasa','GAS',1),(387,25,'Haa','HAA',1),(388,25,'Lhuntse','LHU',1),(389,25,'Mongar','MON',1),(390,25,'Paro','PAR',1),(391,25,'Pemagatshel','PEM',1),(392,25,'Punakha','PUN',1),(393,25,'Samdrup Jongkhar','SJO',1),(394,25,'Samtse','SAT',1),(395,25,'Sarpang','SAR',1),(396,25,'Thimphu','THI',1),(397,25,'Trashigang','TRG',1),(398,25,'Trashiyangste','TRY',1),(399,25,'Trongsa','TRO',1),(400,25,'Tsirang','TSI',1),(401,25,'Wangdue Phodrang','WPH',1),(402,25,'Zhemgang','ZHE',1),(403,26,'Beni','BEN',1),(404,26,'Chuquisaca','CHU',1),(405,26,'Cochabamba','COC',1),(406,26,'La Paz','LPZ',1),(407,26,'Oruro','ORU',1),(408,26,'Pando','PAN',1),(409,26,'Potosi','POT',1),(410,26,'Santa Cruz','SCZ',1),(411,26,'Tarija','TAR',1),(412,27,'Brcko district','BRO',1),(413,27,'Unsko-Sanski Kanton','FUS',1),(414,27,'Posavski Kanton','FPO',1),(415,27,'Tuzlanski Kanton','FTU',1),(416,27,'Zenicko-Dobojski Kanton','FZE',1),(417,27,'Bosanskopodrinjski Kanton','FBP',1),(418,27,'Srednjebosanski Kanton','FSB',1),(419,27,'Hercegovacko-neretvanski Kanton','FHN',1),(420,27,'Zapadnohercegovacka Zupanija','FZH',1),(421,27,'Kanton Sarajevo','FSA',1),(422,27,'Zapadnobosanska','FZA',1),(423,27,'Banja Luka','SBL',1),(424,27,'Doboj','SDO',1),(425,27,'Bijeljina','SBI',1),(426,27,'Vlasenica','SVL',1),(427,27,'Sarajevo-Romanija or Sokolac','SSR',1),(428,27,'Foca','SFO',1),(429,27,'Trebinje','STR',1),(430,28,'Central','CE',1),(431,28,'Ghanzi','GH',1),(432,28,'Kgalagadi','KD',1),(433,28,'Kgatleng','KT',1),(434,28,'Kweneng','KW',1),(435,28,'Ngamiland','NG',1),(436,28,'North East','NE',1),(437,28,'North West','NW',1),(438,28,'South East','SE',1),(439,28,'Southern','SO',1),(440,30,'Acre','AC',1),(441,30,'Alagoas','AL',1),(442,30,'Amapá','AP',1),(443,30,'Amazonas','AM',1),(444,30,'Bahia','BA',1),(445,30,'Ceará','CE',1),(446,30,'Distrito Federal','DF',1),(447,30,'Espírito Santo','ES',1),(448,30,'Goiás','GO',1),(449,30,'Maranhão','MA',1),(450,30,'Mato Grosso','MT',1),(451,30,'Mato Grosso do Sul','MS',1),(452,30,'Minas Gerais','MG',1),(453,30,'Pará','PA',1),(454,30,'Paraíba','PB',1),(455,30,'Paraná','PR',1),(456,30,'Pernambuco','PE',1),(457,30,'Piauí','PI',1),(458,30,'Rio de Janeiro','RJ',1),(459,30,'Rio Grande do Norte','RN',1),(460,30,'Rio Grande do Sul','RS',1),(461,30,'Rondônia','RO',1),(462,30,'Roraima','RR',1),(463,30,'Santa Catarina','SC',1),(464,30,'São Paulo','SP',1),(465,30,'Sergipe','SE',1),(466,30,'Tocantins','TO',1),(467,31,'Peros Banhos','PB',1),(468,31,'Salomon Islands','SI',1),(469,31,'Nelsons Island','NI',1),(470,31,'Three Brothers','TB',1),(471,31,'Eagle Islands','EA',1),(472,31,'Danger Island','DI',1),(473,31,'Egmont Islands','EG',1),(474,31,'Diego Garcia','DG',1),(475,32,'Belait','BEL',1),(476,32,'Brunei and Muara','BRM',1),(477,32,'Temburong','TEM',1),(478,32,'Tutong','TUT',1),(479,33,'Blagoevgrad','',1),(480,33,'Burgas','',1),(481,33,'Dobrich','',1),(482,33,'Gabrovo','',1),(483,33,'Haskovo','',1),(484,33,'Kardjali','',1),(485,33,'Kyustendil','',1),(486,33,'Lovech','',1),(487,33,'Montana','',1),(488,33,'Pazardjik','',1),(489,33,'Pernik','',1),(490,33,'Pleven','',1),(491,33,'Plovdiv','',1),(492,33,'Razgrad','',1),(493,33,'Shumen','',1),(494,33,'Silistra','',1),(495,33,'Sliven','',1),(496,33,'Smolyan','',1),(497,33,'Sofia','',1),(498,33,'Sofia - town','',1),(499,33,'Stara Zagora','',1),(500,33,'Targovishte','',1),(501,33,'Varna','',1),(502,33,'Veliko Tarnovo','',1),(503,33,'Vidin','',1),(504,33,'Vratza','',1),(505,33,'Yambol','',1),(506,34,'Bale','BAL',1),(507,34,'Bam','BAM',1),(508,34,'Banwa','BAN',1),(509,34,'Bazega','BAZ',1),(510,34,'Bougouriba','BOR',1),(511,34,'Boulgou','BLG',1),(512,34,'Boulkiemde','BOK',1),(513,34,'Comoe','COM',1),(514,34,'Ganzourgou','GAN',1),(515,34,'Gnagna','GNA',1),(516,34,'Gourma','GOU',1),(517,34,'Houet','HOU',1),(518,34,'Ioba','IOA',1),(519,34,'Kadiogo','KAD',1),(520,34,'Kenedougou','KEN',1),(521,34,'Komondjari','KOD',1),(522,34,'Kompienga','KOP',1),(523,34,'Kossi','KOS',1),(524,34,'Koulpelogo','KOL',1),(525,34,'Kouritenga','KOT',1),(526,34,'Kourweogo','KOW',1),(527,34,'Leraba','LER',1),(528,34,'Loroum','LOR',1),(529,34,'Mouhoun','MOU',1),(530,34,'Nahouri','NAH',1),(531,34,'Namentenga','NAM',1),(532,34,'Nayala','NAY',1),(533,34,'Noumbiel','NOU',1),(534,34,'Oubritenga','OUB',1),(535,34,'Oudalan','OUD',1),(536,34,'Passore','PAS',1),(537,34,'Poni','PON',1),(538,34,'Sanguie','SAG',1),(539,34,'Sanmatenga','SAM',1),(540,34,'Seno','SEN',1),(541,34,'Sissili','SIS',1),(542,34,'Soum','SOM',1),(543,34,'Sourou','SOR',1),(544,34,'Tapoa','TAP',1),(545,34,'Tuy','TUY',1),(546,34,'Yagha','YAG',1),(547,34,'Yatenga','YAT',1),(548,34,'Ziro','ZIR',1),(549,34,'Zondoma','ZOD',1),(550,34,'Zoundweogo','ZOW',1),(551,35,'Bubanza','BB',1),(552,35,'Bujumbura','BJ',1),(553,35,'Bururi','BR',1),(554,35,'Cankuzo','CA',1),(555,35,'Cibitoke','CI',1),(556,35,'Gitega','GI',1),(557,35,'Karuzi','KR',1),(558,35,'Kayanza','KY',1),(559,35,'Kirundo','KI',1),(560,35,'Makamba','MA',1),(561,35,'Muramvya','MU',1),(562,35,'Muyinga','MY',1),(563,35,'Mwaro','MW',1),(564,35,'Ngozi','NG',1),(565,35,'Rutana','RT',1),(566,35,'Ruyigi','RY',1),(567,36,'Phnom Penh','PP',1),(568,36,'Preah Seihanu (Kompong Som or Sihanoukville)','PS',1),(569,36,'Pailin','PA',1),(570,36,'Keb','KB',1),(571,36,'Banteay Meanchey','BM',1),(572,36,'Battambang','BA',1),(573,36,'Kampong Cham','KM',1),(574,36,'Kampong Chhnang','KN',1),(575,36,'Kampong Speu','KU',1),(576,36,'Kampong Som','KO',1),(577,36,'Kampong Thom','KT',1),(578,36,'Kampot','KP',1),(579,36,'Kandal','KL',1),(580,36,'Kaoh Kong','KK',1),(581,36,'Kratie','KR',1),(582,36,'Mondul Kiri','MK',1),(583,36,'Oddar Meancheay','OM',1),(584,36,'Pursat','PU',1),(585,36,'Preah Vihear','PR',1),(586,36,'Prey Veng','PG',1),(587,36,'Ratanak Kiri','RK',1),(588,36,'Siemreap','SI',1),(589,36,'Stung Treng','ST',1),(590,36,'Svay Rieng','SR',1),(591,36,'Takeo','TK',1),(592,37,'Adamawa (Adamaoua)','ADA',1),(593,37,'Centre','CEN',1),(594,37,'East (Est)','EST',1),(595,37,'Extreme North (Extreme-Nord)','EXN',1),(596,37,'Littoral','LIT',1),(597,37,'North (Nord)','NOR',1),(598,37,'Northwest (Nord-Ouest)','NOT',1),(599,37,'West (Ouest)','OUE',1),(600,37,'South (Sud)','SUD',1),(601,37,'Southwest (Sud-Ouest).','SOU',1),(602,38,'Alberta','AB',1),(603,38,'British Columbia','BC',1),(604,38,'Manitoba','MB',1),(605,38,'New Brunswick','NB',1),(606,38,'Newfoundland and Labrador','NL',1),(607,38,'Northwest Territories','NT',1),(608,38,'Nova Scotia','NS',1),(609,38,'Nunavut','NU',1),(610,38,'Ontario','ON',1),(611,38,'Prince Edward Island','PE',1),(612,38,'Qu&eacute;bec','QC',1),(613,38,'Saskatchewan','SK',1),(614,38,'Yukon Territory','YT',1),(615,39,'Boa Vista','BV',1),(616,39,'Brava','BR',1),(617,39,'Calheta de Sao Miguel','CS',1),(618,39,'Maio','MA',1),(619,39,'Mosteiros','MO',1),(620,39,'Paul','PA',1),(621,39,'Porto Novo','PN',1),(622,39,'Praia','PR',1),(623,39,'Ribeira Grande','RG',1),(624,39,'Sal','SL',1),(625,39,'Santa Catarina','CA',1),(626,39,'Santa Cruz','CR',1),(627,39,'Sao Domingos','SD',1),(628,39,'Sao Filipe','SF',1),(629,39,'Sao Nicolau','SN',1),(630,39,'Sao Vicente','SV',1),(631,39,'Tarrafal','TA',1),(632,40,'Creek','CR',1),(633,40,'Eastern','EA',1),(634,40,'Midland','ML',1),(635,40,'South Town','ST',1),(636,40,'Spot Bay','SP',1),(637,40,'Stake Bay','SK',1),(638,40,'West End','WD',1),(639,40,'Western','WN',1),(640,41,'Bamingui-Bangoran','BBA',1),(641,41,'Basse-Kotto','BKO',1),(642,41,'Haute-Kotto','HKO',1),(643,41,'Haut-Mbomou','HMB',1),(644,41,'Kemo','KEM',1),(645,41,'Lobaye','LOB',1),(646,41,'Mambere-KadeÔ','MKD',1),(647,41,'Mbomou','MBO',1),(648,41,'Nana-Mambere','NMM',1),(649,41,'Ombella-M\'Poko','OMP',1),(650,41,'Ouaka','OUK',1),(651,41,'Ouham','OUH',1),(652,41,'Ouham-Pende','OPE',1),(653,41,'Vakaga','VAK',1),(654,41,'Nana-Grebizi','NGR',1),(655,41,'Sangha-Mbaere','SMB',1),(656,41,'Bangui','BAN',1),(657,42,'Batha','BA',1),(658,42,'Biltine','BI',1),(659,42,'Borkou-Ennedi-Tibesti','BE',1),(660,42,'Chari-Baguirmi','CB',1),(661,42,'Guera','GU',1),(662,42,'Kanem','KA',1),(663,42,'Lac','LA',1),(664,42,'Logone Occidental','LC',1),(665,42,'Logone Oriental','LR',1),(666,42,'Mayo-Kebbi','MK',1),(667,42,'Moyen-Chari','MC',1),(668,42,'Ouaddai','OU',1),(669,42,'Salamat','SA',1),(670,42,'Tandjile','TA',1),(671,43,'Aisen del General Carlos Ibanez','AI',1),(672,43,'Antofagasta','AN',1),(673,43,'Araucania','AR',1),(674,43,'Atacama','AT',1),(675,43,'Bio-Bio','BI',1),(676,43,'Coquimbo','CO',1),(677,43,'Libertador General Bernardo O\'Higgins','LI',1),(678,43,'Los Lagos','LL',1),(679,43,'Magallanes y de la Antartica Chilena','MA',1),(680,43,'Maule','ML',1),(681,43,'Region Metropolitana','RM',1),(682,43,'Tarapaca','TA',1),(683,43,'Valparaiso','VS',1),(684,44,'Anhui','AN',1),(685,44,'Beijing','BE',1),(686,44,'Chongqing','CH',1),(687,44,'Fujian','FU',1),(688,44,'Gansu','GA',1),(689,44,'Guangdong','GU',1),(690,44,'Guangxi','GX',1),(691,44,'Guizhou','GZ',1),(692,44,'Hainan','HA',1),(693,44,'Hebei','HB',1),(694,44,'Heilongjiang','HL',1),(695,44,'Henan','HE',1),(696,44,'Hong Kong','HK',1),(697,44,'Hubei','HU',1),(698,44,'Hunan','HN',1),(699,44,'Inner Mongolia','IM',1),(700,44,'Jiangsu','JI',1),(701,44,'Jiangxi','JX',1),(702,44,'Jilin','JL',1),(703,44,'Liaoning','LI',1),(704,44,'Macau','MA',1),(705,44,'Ningxia','NI',1),(706,44,'Shaanxi','SH',1),(707,44,'Shandong','SA',1),(708,44,'Shanghai','SG',1),(709,44,'Shanxi','SX',1),(710,44,'Sichuan','SI',1),(711,44,'Tianjin','TI',1),(712,44,'Xinjiang','XI',1),(713,44,'Yunnan','YU',1),(714,44,'Zhejiang','ZH',1),(715,46,'Direction Island','D',1),(716,46,'Home Island','H',1),(717,46,'Horsburgh Island','O',1),(718,46,'South Island','S',1),(719,46,'West Island','W',1),(720,47,'Amazonas','AMZ',1),(721,47,'Antioquia','ANT',1),(722,47,'Arauca','ARA',1),(723,47,'Atlantico','ATL',1),(724,47,'Bogota D.C.','BDC',1),(725,47,'Bolivar','BOL',1),(726,47,'Boyaca','BOY',1),(727,47,'Caldas','CAL',1),(728,47,'Caqueta','CAQ',1),(729,47,'Casanare','CAS',1),(730,47,'Cauca','CAU',1),(731,47,'Cesar','CES',1),(732,47,'Choco','CHO',1),(733,47,'Cordoba','COR',1),(734,47,'Cundinamarca','CAM',1),(735,47,'Guainia','GNA',1),(736,47,'Guajira','GJR',1),(737,47,'Guaviare','GVR',1),(738,47,'Huila','HUI',1),(739,47,'Magdalena','MAG',1),(740,47,'Meta','MET',1),(741,47,'Narino','NAR',1),(742,47,'Norte de Santander','NDS',1),(743,47,'Putumayo','PUT',1),(744,47,'Quindio','QUI',1),(745,47,'Risaralda','RIS',1),(746,47,'San Andres y Providencia','SAP',1),(747,47,'Santander','SAN',1),(748,47,'Sucre','SUC',1),(749,47,'Tolima','TOL',1),(750,47,'Valle del Cauca','VDC',1),(751,47,'Vaupes','VAU',1),(752,47,'Vichada','VIC',1),(753,48,'Grande Comore','G',1),(754,48,'Anjouan','A',1),(755,48,'Moheli','M',1),(756,49,'Bouenza','BO',1),(757,49,'Brazzaville','BR',1),(758,49,'Cuvette','CU',1),(759,49,'Cuvette-Ouest','CO',1),(760,49,'Kouilou','KO',1),(761,49,'Lekoumou','LE',1),(762,49,'Likouala','LI',1),(763,49,'Niari','NI',1),(764,49,'Plateaux','PL',1),(765,49,'Pool','PO',1),(766,49,'Sangha','SA',1),(767,50,'Pukapuka','PU',1),(768,50,'Rakahanga','RK',1),(769,50,'Manihiki','MK',1),(770,50,'Penrhyn','PE',1),(771,50,'Nassau Island','NI',1),(772,50,'Surwarrow','SU',1),(773,50,'Palmerston','PA',1),(774,50,'Aitutaki','AI',1),(775,50,'Manuae','MA',1),(776,50,'Takutea','TA',1),(777,50,'Mitiaro','MT',1),(778,50,'Atiu','AT',1),(779,50,'Mauke','MU',1),(780,50,'Rarotonga','RR',1),(781,50,'Mangaia','MG',1),(782,51,'Alajuela','AL',1),(783,51,'Cartago','CA',1),(784,51,'Guanacaste','GU',1),(785,51,'Heredia','HE',1),(786,51,'Limon','LI',1),(787,51,'Puntarenas','PU',1),(788,51,'San Jose','SJ',1),(789,52,'Abengourou','ABE',1),(790,52,'Abidjan','ABI',1),(791,52,'Aboisso','ABO',1),(792,52,'Adiake','ADI',1),(793,52,'Adzope','ADZ',1),(794,52,'Agboville','AGB',1),(795,52,'Agnibilekrou','AGN',1),(796,52,'Alepe','ALE',1),(797,52,'Bocanda','BOC',1),(798,52,'Bangolo','BAN',1),(799,52,'Beoumi','BEO',1),(800,52,'Biankouma','BIA',1),(801,52,'Bondoukou','BDK',1),(802,52,'Bongouanou','BGN',1),(803,52,'Bouafle','BFL',1),(804,52,'Bouake','BKE',1),(805,52,'Bouna','BNA',1),(806,52,'Boundiali','BDL',1),(807,52,'Dabakala','DKL',1),(808,52,'Dabou','DBU',1),(809,52,'Daloa','DAL',1),(810,52,'Danane','DAN',1),(811,52,'Daoukro','DAO',1),(812,52,'Dimbokro','DIM',1),(813,52,'Divo','DIV',1),(814,52,'Duekoue','DUE',1),(815,52,'Ferkessedougou','FER',1),(816,52,'Gagnoa','GAG',1),(817,52,'Grand-Bassam','GBA',1),(818,52,'Grand-Lahou','GLA',1),(819,52,'Guiglo','GUI',1),(820,52,'Issia','ISS',1),(821,52,'Jacqueville','JAC',1),(822,52,'Katiola','KAT',1),(823,52,'Korhogo','KOR',1),(824,52,'Lakota','LAK',1),(825,52,'Man','MAN',1),(826,52,'Mankono','MKN',1),(827,52,'Mbahiakro','MBA',1),(828,52,'Odienne','ODI',1),(829,52,'Oume','OUM',1),(830,52,'Sakassou','SAK',1),(831,52,'San-Pedro','SPE',1),(832,52,'Sassandra','SAS',1),(833,52,'Seguela','SEG',1),(834,52,'Sinfra','SIN',1),(835,52,'Soubre','SOU',1),(836,52,'Tabou','TAB',1),(837,52,'Tanda','TAN',1),(838,52,'Tiebissou','TIE',1),(839,52,'Tingrela','TIN',1),(840,52,'Tiassale','TIA',1),(841,52,'Touba','TBA',1),(842,52,'Toulepleu','TLP',1),(843,52,'Toumodi','TMD',1),(844,52,'Vavoua','VAV',1),(845,52,'Yamoussoukro','YAM',1),(846,52,'Zuenoula','ZUE',1),(847,53,'Bjelovarsko-bilogorska','BB',1),(848,53,'Grad Zagreb','GZ',1),(849,53,'Dubrovačko-neretvanska','DN',1),(850,53,'Istarska','IS',1),(851,53,'Karlovačka','KA',1),(852,53,'Koprivničko-križevačka','KK',1),(853,53,'Krapinsko-zagorska','KZ',1),(854,53,'Ličko-senjska','LS',1),(855,53,'Međimurska','ME',1),(856,53,'Osječko-baranjska','OB',1),(857,53,'Požeško-slavonska','PS',1),(858,53,'Primorsko-goranska','PG',1),(859,53,'Šibensko-kninska','SK',1),(860,53,'Sisačko-moslavačka','SM',1),(861,53,'Brodsko-posavska','BP',1),(862,53,'Splitsko-dalmatinska','SD',1),(863,53,'Varaždinska','VA',1),(864,53,'Virovitičko-podravska','VP',1),(865,53,'Vukovarsko-srijemska','VS',1),(866,53,'Zadarska','ZA',1),(867,53,'Zagrebačka','ZG',1),(868,54,'Camaguey','CA',1),(869,54,'Ciego de Avila','CD',1),(870,54,'Cienfuegos','CI',1),(871,54,'Ciudad de La Habana','CH',1),(872,54,'Granma','GR',1),(873,54,'Guantanamo','GU',1),(874,54,'Holguin','HO',1),(875,54,'Isla de la Juventud','IJ',1),(876,54,'La Habana','LH',1),(877,54,'Las Tunas','LT',1),(878,54,'Matanzas','MA',1),(879,54,'Pinar del Rio','PR',1),(880,54,'Sancti Spiritus','SS',1),(881,54,'Santiago de Cuba','SC',1),(882,54,'Villa Clara','VC',1),(883,55,'Famagusta','F',1),(884,55,'Kyrenia','K',1),(885,55,'Larnaca','A',1),(886,55,'Limassol','I',1),(887,55,'Nicosia','N',1),(888,55,'Paphos','P',1),(889,56,'Ústecký','U',1),(890,56,'Jihočeský','C',1),(891,56,'Jihomoravský','B',1),(892,56,'Karlovarský','K',1),(893,56,'Královehradecký','H',1),(894,56,'Liberecký','L',1),(895,56,'Moravskoslezský','T',1),(896,56,'Olomoucký','M',1),(897,56,'Pardubický','E',1),(898,56,'Plzeňský','P',1),(899,56,'Praha','A',1),(900,56,'Středočeský','S',1),(901,56,'Vysočina','J',1),(902,56,'Zlínský','Z',1),(903,57,'Arhus','AR',1),(904,57,'Bornholm','BH',1),(905,57,'Copenhagen','CO',1),(906,57,'Faroe Islands','FO',1),(907,57,'Frederiksborg','FR',1),(908,57,'Fyn','FY',1),(909,57,'Kobenhavn','KO',1),(910,57,'Nordjylland','NO',1),(911,57,'Ribe','RI',1),(912,57,'Ringkobing','RK',1),(913,57,'Roskilde','RO',1),(914,57,'Sonderjylland','SO',1),(915,57,'Storstrom','ST',1),(916,57,'Vejle','VK',1),(917,57,'Vestj&aelig;lland','VJ',1),(918,57,'Viborg','VB',1),(919,58,'\'Ali Sabih','S',1),(920,58,'Dikhil','K',1),(921,58,'Djibouti','J',1),(922,58,'Obock','O',1),(923,58,'Tadjoura','T',1),(924,59,'Saint Andrew Parish','AND',1),(925,59,'Saint David Parish','DAV',1),(926,59,'Saint George Parish','GEO',1),(927,59,'Saint John Parish','JOH',1),(928,59,'Saint Joseph Parish','JOS',1),(929,59,'Saint Luke Parish','LUK',1),(930,59,'Saint Mark Parish','MAR',1),(931,59,'Saint Patrick Parish','PAT',1),(932,59,'Saint Paul Parish','PAU',1),(933,59,'Saint Peter Parish','PET',1),(934,60,'Distrito Nacional','DN',1),(935,60,'Azua','AZ',1),(936,60,'Baoruco','BC',1),(937,60,'Barahona','BH',1),(938,60,'Dajabon','DJ',1),(939,60,'Duarte','DU',1),(940,60,'Elias Pina','EL',1),(941,60,'El Seybo','SY',1),(942,60,'Espaillat','ET',1),(943,60,'Hato Mayor','HM',1),(944,60,'Independencia','IN',1),(945,60,'La Altagracia','AL',1),(946,60,'La Romana','RO',1),(947,60,'La Vega','VE',1),(948,60,'Maria Trinidad Sanchez','MT',1),(949,60,'Monsenor Nouel','MN',1),(950,60,'Monte Cristi','MC',1),(951,60,'Monte Plata','MP',1),(952,60,'Pedernales','PD',1),(953,60,'Peravia (Bani)','PR',1),(954,60,'Puerto Plata','PP',1),(955,60,'Salcedo','SL',1),(956,60,'Samana','SM',1),(957,60,'Sanchez Ramirez','SH',1),(958,60,'San Cristobal','SC',1),(959,60,'San Jose de Ocoa','JO',1),(960,60,'San Juan','SJ',1),(961,60,'San Pedro de Macoris','PM',1),(962,60,'Santiago','SA',1),(963,60,'Santiago Rodriguez','ST',1),(964,60,'Santo Domingo','SD',1),(965,60,'Valverde','VA',1),(966,61,'Aileu','AL',1),(967,61,'Ainaro','AN',1),(968,61,'Baucau','BA',1),(969,61,'Bobonaro','BO',1),(970,61,'Cova Lima','CO',1),(971,61,'Dili','DI',1),(972,61,'Ermera','ER',1),(973,61,'Lautem','LA',1),(974,61,'Liquica','LI',1),(975,61,'Manatuto','MT',1),(976,61,'Manufahi','MF',1),(977,61,'Oecussi','OE',1),(978,61,'Viqueque','VI',1),(979,62,'Azuay','AZU',1),(980,62,'Bolivar','BOL',1),(981,62,'Ca&ntilde;ar','CAN',1),(982,62,'Carchi','CAR',1),(983,62,'Chimborazo','CHI',1),(984,62,'Cotopaxi','COT',1),(985,62,'El Oro','EOR',1),(986,62,'Esmeraldas','ESM',1),(987,62,'Gal&aacute;pagos','GPS',1),(988,62,'Guayas','GUA',1),(989,62,'Imbabura','IMB',1),(990,62,'Loja','LOJ',1),(991,62,'Los Rios','LRO',1),(992,62,'Manab&iacute;','MAN',1),(993,62,'Morona Santiago','MSA',1),(994,62,'Napo','NAP',1),(995,62,'Orellana','ORE',1),(996,62,'Pastaza','PAS',1),(997,62,'Pichincha','PIC',1),(998,62,'Sucumb&iacute;os','SUC',1),(999,62,'Tungurahua','TUN',1),(1000,62,'Zamora Chinchipe','ZCH',1),(1001,63,'Ad Daqahliyah','DHY',1),(1002,63,'Al Bahr al Ahmar','BAM',1),(1003,63,'Al Buhayrah','BHY',1),(1004,63,'Al Fayyum','FYM',1),(1005,63,'Al Gharbiyah','GBY',1),(1006,63,'Al Iskandariyah','IDR',1),(1007,63,'Al Isma\'iliyah','IML',1),(1008,63,'Al Jizah','JZH',1),(1009,63,'Al Minufiyah','MFY',1),(1010,63,'Al Minya','MNY',1),(1011,63,'Al Qahirah','QHR',1),(1012,63,'Al Qalyubiyah','QLY',1),(1013,63,'Al Wadi al Jadid','WJD',1),(1014,63,'Ash Sharqiyah','SHQ',1),(1015,63,'As Suways','SWY',1),(1016,63,'Aswan','ASW',1),(1017,63,'Asyut','ASY',1),(1018,63,'Bani Suwayf','BSW',1),(1019,63,'Bur Sa\'id','BSD',1),(1020,63,'Dumyat','DMY',1),(1021,63,'Janub Sina\'','JNS',1),(1022,63,'Kafr ash Shaykh','KSH',1),(1023,63,'Matruh','MAT',1),(1024,63,'Qina','QIN',1),(1025,63,'Shamal Sina\'','SHS',1),(1026,63,'Suhaj','SUH',1),(1027,64,'Ahuachapan','AH',1),(1028,64,'Cabanas','CA',1),(1029,64,'Chalatenango','CH',1),(1030,64,'Cuscatlan','CU',1),(1031,64,'La Libertad','LB',1),(1032,64,'La Paz','PZ',1),(1033,64,'La Union','UN',1),(1034,64,'Morazan','MO',1),(1035,64,'San Miguel','SM',1),(1036,64,'San Salvador','SS',1),(1037,64,'San Vicente','SV',1),(1038,64,'Santa Ana','SA',1),(1039,64,'Sonsonate','SO',1),(1040,64,'Usulutan','US',1),(1041,65,'Provincia Annobon','AN',1),(1042,65,'Provincia Bioko Norte','BN',1),(1043,65,'Provincia Bioko Sur','BS',1),(1044,65,'Provincia Centro Sur','CS',1),(1045,65,'Provincia Kie-Ntem','KN',1),(1046,65,'Provincia Litoral','LI',1),(1047,65,'Provincia Wele-Nzas','WN',1),(1048,66,'Central (Maekel)','MA',1),(1049,66,'Anseba (Keren)','KE',1),(1050,66,'Southern Red Sea (Debub-Keih-Bahri)','DK',1),(1051,66,'Northern Red Sea (Semien-Keih-Bahri)','SK',1),(1052,66,'Southern (Debub)','DE',1),(1053,66,'Gash-Barka (Barentu)','BR',1),(1054,67,'Harjumaa (Tallinn)','HA',1),(1055,67,'Hiiumaa (Kardla)','HI',1),(1056,67,'Ida-Virumaa (Johvi)','IV',1),(1057,67,'Jarvamaa (Paide)','JA',1),(1058,67,'Jogevamaa (Jogeva)','JO',1),(1059,67,'Laane-Virumaa (Rakvere)','LV',1),(1060,67,'Laanemaa (Haapsalu)','LA',1),(1061,67,'Parnumaa (Parnu)','PA',1),(1062,67,'Polvamaa (Polva)','PO',1),(1063,67,'Raplamaa (Rapla)','RA',1),(1064,67,'Saaremaa (Kuessaare)','SA',1),(1065,67,'Tartumaa (Tartu)','TA',1),(1066,67,'Valgamaa (Valga)','VA',1),(1067,67,'Viljandimaa (Viljandi)','VI',1),(1068,67,'Vorumaa (Voru)','VO',1),(1069,68,'Afar','AF',1),(1070,68,'Amhara','AH',1),(1071,68,'Benishangul-Gumaz','BG',1),(1072,68,'Gambela','GB',1),(1073,68,'Hariai','HR',1),(1074,68,'Oromia','OR',1),(1075,68,'Somali','SM',1),(1076,68,'Southern Nations - Nationalities and Peoples Region','SN',1),(1077,68,'Tigray','TG',1),(1078,68,'Addis Ababa','AA',1),(1079,68,'Dire Dawa','DD',1),(1080,71,'Central Division','C',1),(1081,71,'Northern Division','N',1),(1082,71,'Eastern Division','E',1),(1083,71,'Western Division','W',1),(1084,71,'Rotuma','R',1),(1085,72,'Ahvenanmaan lääni','AL',1),(1086,72,'Etelä-Suomen lääni','ES',1),(1087,72,'Itä-Suomen lääni','IS',1),(1088,72,'Länsi-Suomen lääni','LS',1),(1089,72,'Lapin lääni','LA',1),(1090,72,'Oulun lääni','OU',1),(1114,74,'Ain','01',1),(1115,74,'Aisne','02',1),(1116,74,'Allier','03',1),(1117,74,'Alpes de Haute Provence','04',1),(1118,74,'Hautes-Alpes','05',1),(1119,74,'Alpes Maritimes','06',1),(1120,74,'Ard&egrave;che','07',1),(1121,74,'Ardennes','08',1),(1122,74,'Ari&egrave;ge','09',1),(1123,74,'Aube','10',1),(1124,74,'Aude','11',1),(1125,74,'Aveyron','12',1),(1126,74,'Bouches du Rh&ocirc;ne','13',1),(1127,74,'Calvados','14',1),(1128,74,'Cantal','15',1),(1129,74,'Charente','16',1),(1130,74,'Charente Maritime','17',1),(1131,74,'Cher','18',1),(1132,74,'Corr&egrave;ze','19',1),(1133,74,'Corse du Sud','2A',1),(1134,74,'Haute Corse','2B',1),(1135,74,'C&ocirc;te d&#039;or','21',1),(1136,74,'C&ocirc;tes d&#039;Armor','22',1),(1137,74,'Creuse','23',1),(1138,74,'Dordogne','24',1),(1139,74,'Doubs','25',1),(1140,74,'Dr&ocirc;me','26',1),(1141,74,'Eure','27',1),(1142,74,'Eure et Loir','28',1),(1143,74,'Finist&egrave;re','29',1),(1144,74,'Gard','30',1),(1145,74,'Haute Garonne','31',1),(1146,74,'Gers','32',1),(1147,74,'Gironde','33',1),(1148,74,'H&eacute;rault','34',1),(1149,74,'Ille et Vilaine','35',1),(1150,74,'Indre','36',1),(1151,74,'Indre et Loire','37',1),(1152,74,'Is&eacute;re','38',1),(1153,74,'Jura','39',1),(1154,74,'Landes','40',1),(1155,74,'Loir et Cher','41',1),(1156,74,'Loire','42',1),(1157,74,'Haute Loire','43',1),(1158,74,'Loire Atlantique','44',1),(1159,74,'Loiret','45',1),(1160,74,'Lot','46',1),(1161,74,'Lot et Garonne','47',1),(1162,74,'Loz&egrave;re','48',1),(1163,74,'Maine et Loire','49',1),(1164,74,'Manche','50',1),(1165,74,'Marne','51',1),(1166,74,'Haute Marne','52',1),(1167,74,'Mayenne','53',1),(1168,74,'Meurthe et Moselle','54',1),(1169,74,'Meuse','55',1),(1170,74,'Morbihan','56',1),(1171,74,'Moselle','57',1),(1172,74,'Ni&egrave;vre','58',1),(1173,74,'Nord','59',1),(1174,74,'Oise','60',1),(1175,74,'Orne','61',1),(1176,74,'Pas de Calais','62',1),(1177,74,'Puy de D&ocirc;me','63',1),(1178,74,'Pyr&eacute;n&eacute;es Atlantiques','64',1),(1179,74,'Hautes Pyr&eacute;n&eacute;es','65',1),(1180,74,'Pyr&eacute;n&eacute;es Orientales','66',1),(1181,74,'Bas Rhin','67',1),(1182,74,'Haut Rhin','68',1),(1183,74,'Rh&ocirc;ne','69',1),(1184,74,'Haute Sa&ocirc;ne','70',1),(1185,74,'Sa&ocirc;ne et Loire','71',1),(1186,74,'Sarthe','72',1),(1187,74,'Savoie','73',1),(1188,74,'Haute Savoie','74',1),(1189,74,'Paris','75',1),(1190,74,'Seine Maritime','76',1),(1191,74,'Seine et Marne','77',1),(1192,74,'Yvelines','78',1),(1193,74,'Deux S&egrave;vres','79',1),(1194,74,'Somme','80',1),(1195,74,'Tarn','81',1),(1196,74,'Tarn et Garonne','82',1),(1197,74,'Var','83',1),(1198,74,'Vaucluse','84',1),(1199,74,'Vend&eacute;e','85',1),(1200,74,'Vienne','86',1),(1201,74,'Haute Vienne','87',1),(1202,74,'Vosges','88',1),(1203,74,'Yonne','89',1),(1204,74,'Territoire de Belfort','90',1),(1205,74,'Essonne','91',1),(1206,74,'Hauts de Seine','92',1),(1207,74,'Seine St-Denis','93',1),(1208,74,'Val de Marne','94',1),(1209,74,'Val d\'Oise','95',1),(1210,76,'Archipel des Marquises','M',1),(1211,76,'Archipel des Tuamotu','T',1),(1212,76,'Archipel des Tubuai','I',1),(1213,76,'Iles du Vent','V',1),(1214,76,'Iles Sous-le-Vent','S',1),(1215,77,'Iles Crozet','C',1),(1216,77,'Iles Kerguelen','K',1),(1217,77,'Ile Amsterdam','A',1),(1218,77,'Ile Saint-Paul','P',1),(1219,77,'Adelie Land','D',1),(1220,78,'Estuaire','ES',1),(1221,78,'Haut-Ogooue','HO',1),(1222,78,'Moyen-Ogooue','MO',1),(1223,78,'Ngounie','NG',1),(1224,78,'Nyanga','NY',1),(1225,78,'Ogooue-Ivindo','OI',1),(1226,78,'Ogooue-Lolo','OL',1),(1227,78,'Ogooue-Maritime','OM',1),(1228,78,'Woleu-Ntem','WN',1),(1229,79,'Banjul','BJ',1),(1230,79,'Basse','BS',1),(1231,79,'Brikama','BR',1),(1232,79,'Janjangbure','JA',1),(1233,79,'Kanifeng','KA',1),(1234,79,'Kerewan','KE',1),(1235,79,'Kuntaur','KU',1),(1236,79,'Mansakonko','MA',1),(1237,79,'Lower River','LR',1),(1238,79,'Central River','CR',1),(1239,79,'North Bank','NB',1),(1240,79,'Upper River','UR',1),(1241,79,'Western','WE',1),(1242,80,'Abkhazia','AB',1),(1243,80,'Ajaria','AJ',1),(1244,80,'Tbilisi','TB',1),(1245,80,'Guria','GU',1),(1246,80,'Imereti','IM',1),(1247,80,'Kakheti','KA',1),(1248,80,'Kvemo Kartli','KK',1),(1249,80,'Mtskheta-Mtianeti','MM',1),(1250,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),(1251,80,'Samegrelo-Zemo Svaneti','SZ',1),(1252,80,'Samtskhe-Javakheti','SJ',1),(1253,80,'Shida Kartli','SK',1),(1254,81,'Baden-W&uuml;rttemberg','BAW',1),(1255,81,'Bayern','BAY',1),(1256,81,'Berlin','BER',1),(1257,81,'Brandenburg','BRG',1),(1258,81,'Bremen','BRE',1),(1259,81,'Hamburg','HAM',1),(1260,81,'Hessen','HES',1),(1261,81,'Mecklenburg-Vorpommern','MEC',1),(1262,81,'Niedersachsen','NDS',1),(1263,81,'Nordrhein-Westfalen','NRW',1),(1264,81,'Rheinland-Pfalz','RHE',1),(1265,81,'Saarland','SAR',1),(1266,81,'Sachsen','SAS',1),(1267,81,'Sachsen-Anhalt','SAC',1),(1268,81,'Schleswig-Holstein','SCN',1),(1269,81,'Th&uuml;ringen','THE',1),(1270,82,'Ashanti Region','AS',1),(1271,82,'Brong-Ahafo Region','BA',1),(1272,82,'Central Region','CE',1),(1273,82,'Eastern Region','EA',1),(1274,82,'Greater Accra Region','GA',1),(1275,82,'Northern Region','NO',1),(1276,82,'Upper East Region','UE',1),(1277,82,'Upper West Region','UW',1),(1278,82,'Volta Region','VO',1),(1279,82,'Western Region','WE',1),(1280,84,'Attica','AT',1),(1281,84,'Central Greece','CN',1),(1282,84,'Central Macedonia','CM',1),(1283,84,'Crete','CR',1),(1284,84,'East Macedonia and Thrace','EM',1),(1285,84,'Epirus','EP',1),(1286,84,'Ionian Islands','II',1),(1287,84,'North Aegean','NA',1),(1288,84,'Peloponnesos','PP',1),(1289,84,'South Aegean','SA',1),(1290,84,'Thessaly','TH',1),(1291,84,'West Greece','WG',1),(1292,84,'West Macedonia','WM',1),(1293,85,'Avannaa','A',1),(1294,85,'Tunu','T',1),(1295,85,'Kitaa','K',1),(1296,86,'Saint Andrew','A',1),(1297,86,'Saint David','D',1),(1298,86,'Saint George','G',1),(1299,86,'Saint John','J',1),(1300,86,'Saint Mark','M',1),(1301,86,'Saint Patrick','P',1),(1302,86,'Carriacou','C',1),(1303,86,'Petit Martinique','Q',1),(1304,89,'Alta Verapaz','AV',1),(1305,89,'Baja Verapaz','BV',1),(1306,89,'Chimaltenango','CM',1),(1307,89,'Chiquimula','CQ',1),(1308,89,'El Peten','PE',1),(1309,89,'El Progreso','PR',1),(1310,89,'El Quiche','QC',1),(1311,89,'Escuintla','ES',1),(1312,89,'Guatemala','GU',1),(1313,89,'Huehuetenango','HU',1),(1314,89,'Izabal','IZ',1),(1315,89,'Jalapa','JA',1),(1316,89,'Jutiapa','JU',1),(1317,89,'Quetzaltenango','QZ',1),(1318,89,'Retalhuleu','RE',1),(1319,89,'Sacatepequez','ST',1),(1320,89,'San Marcos','SM',1),(1321,89,'Santa Rosa','SR',1),(1322,89,'Solola','SO',1),(1323,89,'Suchitepequez','SU',1),(1324,89,'Totonicapan','TO',1),(1325,89,'Zacapa','ZA',1),(1326,90,'Conakry','CNK',1),(1327,90,'Beyla','BYL',1),(1328,90,'Boffa','BFA',1),(1329,90,'Boke','BOK',1),(1330,90,'Coyah','COY',1),(1331,90,'Dabola','DBL',1),(1332,90,'Dalaba','DLB',1),(1333,90,'Dinguiraye','DGR',1),(1334,90,'Dubreka','DBR',1),(1335,90,'Faranah','FRN',1),(1336,90,'Forecariah','FRC',1),(1337,90,'Fria','FRI',1),(1338,90,'Gaoual','GAO',1),(1339,90,'Gueckedou','GCD',1),(1340,90,'Kankan','KNK',1),(1341,90,'Kerouane','KRN',1),(1342,90,'Kindia','KND',1),(1343,90,'Kissidougou','KSD',1),(1344,90,'Koubia','KBA',1),(1345,90,'Koundara','KDA',1),(1346,90,'Kouroussa','KRA',1),(1347,90,'Labe','LAB',1),(1348,90,'Lelouma','LLM',1),(1349,90,'Lola','LOL',1),(1350,90,'Macenta','MCT',1),(1351,90,'Mali','MAL',1),(1352,90,'Mamou','MAM',1),(1353,90,'Mandiana','MAN',1),(1354,90,'Nzerekore','NZR',1),(1355,90,'Pita','PIT',1),(1356,90,'Siguiri','SIG',1),(1357,90,'Telimele','TLM',1),(1358,90,'Tougue','TOG',1),(1359,90,'Yomou','YOM',1),(1360,91,'Bafata Region','BF',1),(1361,91,'Biombo Region','BB',1),(1362,91,'Bissau Region','BS',1),(1363,91,'Bolama Region','BL',1),(1364,91,'Cacheu Region','CA',1),(1365,91,'Gabu Region','GA',1),(1366,91,'Oio Region','OI',1),(1367,91,'Quinara Region','QU',1),(1368,91,'Tombali Region','TO',1),(1369,92,'Barima-Waini','BW',1),(1370,92,'Cuyuni-Mazaruni','CM',1),(1371,92,'Demerara-Mahaica','DM',1),(1372,92,'East Berbice-Corentyne','EC',1),(1373,92,'Essequibo Islands-West Demerara','EW',1),(1374,92,'Mahaica-Berbice','MB',1),(1375,92,'Pomeroon-Supenaam','PM',1),(1376,92,'Potaro-Siparuni','PI',1),(1377,92,'Upper Demerara-Berbice','UD',1),(1378,92,'Upper Takutu-Upper Essequibo','UT',1),(1379,93,'Artibonite','AR',1),(1380,93,'Centre','CE',1),(1381,93,'Grand\'Anse','GA',1),(1382,93,'Nord','ND',1),(1383,93,'Nord-Est','NE',1),(1384,93,'Nord-Ouest','NO',1),(1385,93,'Ouest','OU',1),(1386,93,'Sud','SD',1),(1387,93,'Sud-Est','SE',1),(1388,94,'Flat Island','F',1),(1389,94,'McDonald Island','M',1),(1390,94,'Shag Island','S',1),(1391,94,'Heard Island','H',1),(1392,95,'Atlantida','AT',1),(1393,95,'Choluteca','CH',1),(1394,95,'Colon','CL',1),(1395,95,'Comayagua','CM',1),(1396,95,'Copan','CP',1),(1397,95,'Cortes','CR',1),(1398,95,'El Paraiso','PA',1),(1399,95,'Francisco Morazan','FM',1),(1400,95,'Gracias a Dios','GD',1),(1401,95,'Intibuca','IN',1),(1402,95,'Islas de la Bahia (Bay Islands)','IB',1),(1403,95,'La Paz','PZ',1),(1404,95,'Lempira','LE',1),(1405,95,'Ocotepeque','OC',1),(1406,95,'Olancho','OL',1),(1407,95,'Santa Barbara','SB',1),(1408,95,'Valle','VA',1),(1409,95,'Yoro','YO',1),(1410,96,'Central and Western Hong Kong Island','HCW',1),(1411,96,'Eastern Hong Kong Island','HEA',1),(1412,96,'Southern Hong Kong Island','HSO',1),(1413,96,'Wan Chai Hong Kong Island','HWC',1),(1414,96,'Kowloon City Kowloon','KKC',1),(1415,96,'Kwun Tong Kowloon','KKT',1),(1416,96,'Sham Shui Po Kowloon','KSS',1),(1417,96,'Wong Tai Sin Kowloon','KWT',1),(1418,96,'Yau Tsim Mong Kowloon','KYT',1),(1419,96,'Islands New Territories','NIS',1),(1420,96,'Kwai Tsing New Territories','NKT',1),(1421,96,'North New Territories','NNO',1),(1422,96,'Sai Kung New Territories','NSK',1),(1423,96,'Sha Tin New Territories','NST',1),(1424,96,'Tai Po New Territories','NTP',1),(1425,96,'Tsuen Wan New Territories','NTW',1),(1426,96,'Tuen Mun New Territories','NTM',1),(1427,96,'Yuen Long New Territories','NYL',1),(1467,98,'Austurland','AL',1),(1468,98,'Hofuoborgarsvaeoi','HF',1),(1469,98,'Norourland eystra','NE',1),(1470,98,'Norourland vestra','NV',1),(1471,98,'Suourland','SL',1),(1472,98,'Suournes','SN',1),(1473,98,'Vestfiroir','VF',1),(1474,98,'Vesturland','VL',1),(1475,99,'Andaman and Nicobar Islands','AN',1),(1476,99,'Andhra Pradesh','AP',1),(1477,99,'Arunachal Pradesh','AR',1),(1478,99,'Assam','AS',1),(1479,99,'Bihar','BI',1),(1480,99,'Chandigarh','CH',1),(1481,99,'Dadra and Nagar Haveli','DA',1),(1482,99,'Daman and Diu','DM',1),(1483,99,'Delhi','DE',1),(1484,99,'Goa','GO',1),(1485,99,'Gujarat','GU',1),(1486,99,'Haryana','HA',1),(1487,99,'Himachal Pradesh','HP',1),(1488,99,'Jammu and Kashmir','JA',1),(1489,99,'Karnataka','KA',1),(1490,99,'Kerala','KE',1),(1491,99,'Lakshadweep Islands','LI',1),(1492,99,'Madhya Pradesh','MP',1),(1493,99,'Maharashtra','MA',1),(1494,99,'Manipur','MN',1),(1495,99,'Meghalaya','ME',1),(1496,99,'Mizoram','MI',1),(1497,99,'Nagaland','NA',1),(1498,99,'Orissa','OR',1),(1499,99,'Pondicherry','PO',1),(1500,99,'Punjab','PU',1),(1501,99,'Rajasthan','RA',1),(1502,99,'Sikkim','SI',1),(1503,99,'Tamil Nadu','TN',1),(1504,99,'Tripura','TR',1),(1505,99,'Uttar Pradesh','UP',1),(1506,99,'West Bengal','WB',1),(1507,100,'Aceh','AC',1),(1508,100,'Bali','BA',1),(1509,100,'Banten','BT',1),(1510,100,'Bengkulu','BE',1),(1511,100,'BoDeTaBek','BD',1),(1512,100,'Gorontalo','GO',1),(1513,100,'Jakarta Raya','JK',1),(1514,100,'Jambi','JA',1),(1515,100,'Jawa Barat','JB',1),(1516,100,'Jawa Tengah','JT',1),(1517,100,'Jawa Timur','JI',1),(1518,100,'Kalimantan Barat','KB',1),(1519,100,'Kalimantan Selatan','KS',1),(1520,100,'Kalimantan Tengah','KT',1),(1521,100,'Kalimantan Timur','KI',1),(1522,100,'Kepulauan Bangka Belitung','BB',1),(1523,100,'Lampung','LA',1),(1524,100,'Maluku','MA',1),(1525,100,'Maluku Utara','MU',1),(1526,100,'Nusa Tenggara Barat','NB',1),(1527,100,'Nusa Tenggara Timur','NT',1),(1528,100,'Papua','PA',1),(1529,100,'Riau','RI',1),(1530,100,'Sulawesi Selatan','SN',1),(1531,100,'Sulawesi Tengah','ST',1),(1532,100,'Sulawesi Tenggara','SG',1),(1533,100,'Sulawesi Utara','SA',1),(1534,100,'Sumatera Barat','SB',1),(1535,100,'Sumatera Selatan','SS',1),(1536,100,'Sumatera Utara','SU',1),(1537,100,'Yogyakarta','YO',1),(1538,101,'Tehran','TEH',1),(1539,101,'Qom','QOM',1),(1540,101,'Markazi','MKZ',1),(1541,101,'Qazvin','QAZ',1),(1542,101,'Gilan','GIL',1),(1543,101,'Ardabil','ARD',1),(1544,101,'Zanjan','ZAN',1),(1545,101,'East Azarbaijan','EAZ',1),(1546,101,'West Azarbaijan','WEZ',1),(1547,101,'Kurdistan','KRD',1),(1548,101,'Hamadan','HMD',1),(1549,101,'Kermanshah','KRM',1),(1550,101,'Ilam','ILM',1),(1551,101,'Lorestan','LRS',1),(1552,101,'Khuzestan','KZT',1),(1553,101,'Chahar Mahaal and Bakhtiari','CMB',1),(1554,101,'Kohkiluyeh and Buyer Ahmad','KBA',1),(1555,101,'Bushehr','BSH',1),(1556,101,'Fars','FAR',1),(1557,101,'Hormozgan','HRM',1),(1558,101,'Sistan and Baluchistan','SBL',1),(1559,101,'Kerman','KRB',1),(1560,101,'Yazd','YZD',1),(1561,101,'Esfahan','EFH',1),(1562,101,'Semnan','SMN',1),(1563,101,'Mazandaran','MZD',1),(1564,101,'Golestan','GLS',1),(1565,101,'North Khorasan','NKH',1),(1566,101,'Razavi Khorasan','RKH',1),(1567,101,'South Khorasan','SKH',1),(1568,102,'Baghdad','BD',1),(1569,102,'Salah ad Din','SD',1),(1570,102,'Diyala','DY',1),(1571,102,'Wasit','WS',1),(1572,102,'Maysan','MY',1),(1573,102,'Al Basrah','BA',1),(1574,102,'Dhi Qar','DQ',1),(1575,102,'Al Muthanna','MU',1),(1576,102,'Al Qadisyah','QA',1),(1577,102,'Babil','BB',1),(1578,102,'Al Karbala','KB',1),(1579,102,'An Najaf','NJ',1),(1580,102,'Al Anbar','AB',1),(1581,102,'Ninawa','NN',1),(1582,102,'Dahuk','DH',1),(1583,102,'Arbil','AL',1),(1584,102,'At Ta\'mim','TM',1),(1585,102,'As Sulaymaniyah','SL',1),(1586,103,'Carlow','CA',1),(1587,103,'Cavan','CV',1),(1588,103,'Clare','CL',1),(1589,103,'Cork','CO',1),(1590,103,'Donegal','DO',1),(1591,103,'Dublin','DU',1),(1592,103,'Galway','GA',1),(1593,103,'Kerry','KE',1),(1594,103,'Kildare','KI',1),(1595,103,'Kilkenny','KL',1),(1596,103,'Laois','LA',1),(1597,103,'Leitrim','LE',1),(1598,103,'Limerick','LI',1),(1599,103,'Longford','LO',1),(1600,103,'Louth','LU',1),(1601,103,'Mayo','MA',1),(1602,103,'Meath','ME',1),(1603,103,'Monaghan','MO',1),(1604,103,'Offaly','OF',1),(1605,103,'Roscommon','RO',1),(1606,103,'Sligo','SL',1),(1607,103,'Tipperary','TI',1),(1608,103,'Waterford','WA',1),(1609,103,'Westmeath','WE',1),(1610,103,'Wexford','WX',1),(1611,103,'Wicklow','WI',1),(1612,104,'Be\'er Sheva','BS',1),(1613,104,'Bika\'at Hayarden','BH',1),(1614,104,'Eilat and Arava','EA',1),(1615,104,'Galil','GA',1),(1616,104,'Haifa','HA',1),(1617,104,'Jehuda Mountains','JM',1),(1618,104,'Jerusalem','JE',1),(1619,104,'Negev','NE',1),(1620,104,'Semaria','SE',1),(1621,104,'Sharon','SH',1),(1622,104,'Tel Aviv (Gosh Dan)','TA',1),(3860,105,'Caltanissetta','CL',1),(3842,105,'Agrigento','AG',1),(3843,105,'Alessandria','AL',1),(3844,105,'Ancona','AN',1),(3845,105,'Aosta','AO',1),(3846,105,'Arezzo','AR',1),(3847,105,'Ascoli Piceno','AP',1),(3848,105,'Asti','AT',1),(3849,105,'Avellino','AV',1),(3850,105,'Bari','BA',1),(3851,105,'Belluno','BL',1),(3852,105,'Benevento','BN',1),(3853,105,'Bergamo','BG',1),(3854,105,'Biella','BI',1),(3855,105,'Bologna','BO',1),(3856,105,'Bolzano','BZ',1),(3857,105,'Brescia','BS',1),(3858,105,'Brindisi','BR',1),(3859,105,'Cagliari','CA',1),(1643,106,'Clarendon Parish','CLA',1),(1644,106,'Hanover Parish','HAN',1),(1645,106,'Kingston Parish','KIN',1),(1646,106,'Manchester Parish','MAN',1),(1647,106,'Portland Parish','POR',1),(1648,106,'Saint Andrew Parish','AND',1),(1649,106,'Saint Ann Parish','ANN',1),(1650,106,'Saint Catherine Parish','CAT',1),(1651,106,'Saint Elizabeth Parish','ELI',1),(1652,106,'Saint James Parish','JAM',1),(1653,106,'Saint Mary Parish','MAR',1),(1654,106,'Saint Thomas Parish','THO',1),(1655,106,'Trelawny Parish','TRL',1),(1656,106,'Westmoreland Parish','WML',1),(1657,107,'Aichi','AI',1),(1658,107,'Akita','AK',1),(1659,107,'Aomori','AO',1),(1660,107,'Chiba','CH',1),(1661,107,'Ehime','EH',1),(1662,107,'Fukui','FK',1),(1663,107,'Fukuoka','FU',1),(1664,107,'Fukushima','FS',1),(1665,107,'Gifu','GI',1),(1666,107,'Gumma','GU',1),(1667,107,'Hiroshima','HI',1),(1668,107,'Hokkaido','HO',1),(1669,107,'Hyogo','HY',1),(1670,107,'Ibaraki','IB',1),(1671,107,'Ishikawa','IS',1),(1672,107,'Iwate','IW',1),(1673,107,'Kagawa','KA',1),(1674,107,'Kagoshima','KG',1),(1675,107,'Kanagawa','KN',1),(1676,107,'Kochi','KO',1),(1677,107,'Kumamoto','KU',1),(1678,107,'Kyoto','KY',1),(1679,107,'Mie','MI',1),(1680,107,'Miyagi','MY',1),(1681,107,'Miyazaki','MZ',1),(1682,107,'Nagano','NA',1),(1683,107,'Nagasaki','NG',1),(1684,107,'Nara','NR',1),(1685,107,'Niigata','NI',1),(1686,107,'Oita','OI',1),(1687,107,'Okayama','OK',1),(1688,107,'Okinawa','ON',1),(1689,107,'Osaka','OS',1),(1690,107,'Saga','SA',1),(1691,107,'Saitama','SI',1),(1692,107,'Shiga','SH',1),(1693,107,'Shimane','SM',1),(1694,107,'Shizuoka','SZ',1),(1695,107,'Tochigi','TO',1),(1696,107,'Tokushima','TS',1),(1697,107,'Tokyo','TK',1),(1698,107,'Tottori','TT',1),(1699,107,'Toyama','TY',1),(1700,107,'Wakayama','WA',1),(1701,107,'Yamagata','YA',1),(1702,107,'Yamaguchi','YM',1),(1703,107,'Yamanashi','YN',1),(1704,108,'\'Amman','AM',1),(1705,108,'Ajlun','AJ',1),(1706,108,'Al \'Aqabah','AA',1),(1707,108,'Al Balqa\'','AB',1),(1708,108,'Al Karak','AK',1),(1709,108,'Al Mafraq','AL',1),(1710,108,'At Tafilah','AT',1),(1711,108,'Az Zarqa\'','AZ',1),(1712,108,'Irbid','IR',1),(1713,108,'Jarash','JA',1),(1714,108,'Ma\'an','MA',1),(1715,108,'Madaba','MD',1),(1716,109,'Almaty','AL',1),(1717,109,'Almaty City','AC',1),(1718,109,'Aqmola','AM',1),(1719,109,'Aqtobe','AQ',1),(1720,109,'Astana City','AS',1),(1721,109,'Atyrau','AT',1),(1722,109,'Batys Qazaqstan','BA',1),(1723,109,'Bayqongyr City','BY',1),(1724,109,'Mangghystau','MA',1),(1725,109,'Ongtustik Qazaqstan','ON',1),(1726,109,'Pavlodar','PA',1),(1727,109,'Qaraghandy','QA',1),(1728,109,'Qostanay','QO',1),(1729,109,'Qyzylorda','QY',1),(1730,109,'Shyghys Qazaqstan','SH',1),(1731,109,'Soltustik Qazaqstan','SO',1),(1732,109,'Zhambyl','ZH',1),(1733,110,'Central','CE',1),(1734,110,'Coast','CO',1),(1735,110,'Eastern','EA',1),(1736,110,'Nairobi Area','NA',1),(1737,110,'North Eastern','NE',1),(1738,110,'Nyanza','NY',1),(1739,110,'Rift Valley','RV',1),(1740,110,'Western','WE',1),(1741,111,'Abaiang','AG',1),(1742,111,'Abemama','AM',1),(1743,111,'Aranuka','AK',1),(1744,111,'Arorae','AO',1),(1745,111,'Banaba','BA',1),(1746,111,'Beru','BE',1),(1747,111,'Butaritari','bT',1),(1748,111,'Kanton','KA',1),(1749,111,'Kiritimati','KR',1),(1750,111,'Kuria','KU',1),(1751,111,'Maiana','MI',1),(1752,111,'Makin','MN',1),(1753,111,'Marakei','ME',1),(1754,111,'Nikunau','NI',1),(1755,111,'Nonouti','NO',1),(1756,111,'Onotoa','ON',1),(1757,111,'Tabiteuea','TT',1),(1758,111,'Tabuaeran','TR',1),(1759,111,'Tamana','TM',1),(1760,111,'Tarawa','TW',1),(1761,111,'Teraina','TE',1),(1762,112,'Chagang-do','CHA',1),(1763,112,'Hamgyong-bukto','HAB',1),(1764,112,'Hamgyong-namdo','HAN',1),(1765,112,'Hwanghae-bukto','HWB',1),(1766,112,'Hwanghae-namdo','HWN',1),(1767,112,'Kangwon-do','KAN',1),(1768,112,'P\'yongan-bukto','PYB',1),(1769,112,'P\'yongan-namdo','PYN',1),(1770,112,'Ryanggang-do (Yanggang-do)','YAN',1),(1771,112,'Rason Directly Governed City','NAJ',1),(1772,112,'P\'yongyang Special City','PYO',1),(1773,113,'Ch\'ungch\'ong-bukto','CO',1),(1774,113,'Ch\'ungch\'ong-namdo','CH',1),(1775,113,'Cheju-do','CD',1),(1776,113,'Cholla-bukto','CB',1),(1777,113,'Cholla-namdo','CN',1),(1778,113,'Inch\'on-gwangyoksi','IG',1),(1779,113,'Kangwon-do','KA',1),(1780,113,'Kwangju-gwangyoksi','KG',1),(1781,113,'Kyonggi-do','KD',1),(1782,113,'Kyongsang-bukto','KB',1),(1783,113,'Kyongsang-namdo','KN',1),(1784,113,'Pusan-gwangyoksi','PG',1),(1785,113,'Soul-t\'ukpyolsi','SO',1),(1786,113,'Taegu-gwangyoksi','TA',1),(1787,113,'Taejon-gwangyoksi','TG',1),(1788,114,'Al \'Asimah','AL',1),(1789,114,'Al Ahmadi','AA',1),(1790,114,'Al Farwaniyah','AF',1),(1791,114,'Al Jahra\'','AJ',1),(1792,114,'Hawalli','HA',1),(1793,115,'Bishkek','GB',1),(1794,115,'Batken','B',1),(1795,115,'Chu','C',1),(1796,115,'Jalal-Abad','J',1),(1797,115,'Naryn','N',1),(1798,115,'Osh','O',1),(1799,115,'Talas','T',1),(1800,115,'Ysyk-Kol','Y',1),(1801,116,'Vientiane','VT',1),(1802,116,'Attapu','AT',1),(1803,116,'Bokeo','BK',1),(1804,116,'Bolikhamxai','BL',1),(1805,116,'Champasak','CH',1),(1806,116,'Houaphan','HO',1),(1807,116,'Khammouan','KH',1),(1808,116,'Louang Namtha','LM',1),(1809,116,'Louangphabang','LP',1),(1810,116,'Oudomxai','OU',1),(1811,116,'Phongsali','PH',1),(1812,116,'Salavan','SL',1),(1813,116,'Savannakhet','SV',1),(1814,116,'Vientiane','VI',1),(1815,116,'Xaignabouli','XA',1),(1816,116,'Xekong','XE',1),(1817,116,'Xiangkhoang','XI',1),(1818,116,'Xaisomboun','XN',1),(1852,119,'Berea','BE',1),(1853,119,'Butha-Buthe','BB',1),(1854,119,'Leribe','LE',1),(1855,119,'Mafeteng','MF',1),(1856,119,'Maseru','MS',1),(1857,119,'Mohale\'s Hoek','MH',1),(1858,119,'Mokhotlong','MK',1),(1859,119,'Qacha\'s Nek','QN',1),(1860,119,'Quthing','QT',1),(1861,119,'Thaba-Tseka','TT',1),(1862,120,'Bomi','BI',1),(1863,120,'Bong','BG',1),(1864,120,'Grand Bassa','GB',1),(1865,120,'Grand Cape Mount','CM',1),(1866,120,'Grand Gedeh','GG',1),(1867,120,'Grand Kru','GK',1),(1868,120,'Lofa','LO',1),(1869,120,'Margibi','MG',1),(1870,120,'Maryland','ML',1),(1871,120,'Montserrado','MS',1),(1872,120,'Nimba','NB',1),(1873,120,'River Cess','RC',1),(1874,120,'Sinoe','SN',1),(1875,121,'Ajdabiya','AJ',1),(1876,121,'Al \'Aziziyah','AZ',1),(1877,121,'Al Fatih','FA',1),(1878,121,'Al Jabal al Akhdar','JA',1),(1879,121,'Al Jufrah','JU',1),(1880,121,'Al Khums','KH',1),(1881,121,'Al Kufrah','KU',1),(1882,121,'An Nuqat al Khams','NK',1),(1883,121,'Ash Shati\'','AS',1),(1884,121,'Awbari','AW',1),(1885,121,'Az Zawiyah','ZA',1),(1886,121,'Banghazi','BA',1),(1887,121,'Darnah','DA',1),(1888,121,'Ghadamis','GD',1),(1889,121,'Gharyan','GY',1),(1890,121,'Misratah','MI',1),(1891,121,'Murzuq','MZ',1),(1892,121,'Sabha','SB',1),(1893,121,'Sawfajjin','SW',1),(1894,121,'Surt','SU',1),(1895,121,'Tarabulus (Tripoli)','TL',1),(1896,121,'Tarhunah','TH',1),(1897,121,'Tubruq','TU',1),(1898,121,'Yafran','YA',1),(1899,121,'Zlitan','ZL',1),(1900,122,'Vaduz','V',1),(1901,122,'Schaan','A',1),(1902,122,'Balzers','B',1),(1903,122,'Triesen','N',1),(1904,122,'Eschen','E',1),(1905,122,'Mauren','M',1),(1906,122,'Triesenberg','T',1),(1907,122,'Ruggell','R',1),(1908,122,'Gamprin','G',1),(1909,122,'Schellenberg','L',1),(1910,122,'Planken','P',1),(1911,123,'Alytus','AL',1),(1912,123,'Kaunas','KA',1),(1913,123,'Klaipeda','KL',1),(1914,123,'Marijampole','MA',1),(1915,123,'Panevezys','PA',1),(1916,123,'Siauliai','SI',1),(1917,123,'Taurage','TA',1),(1918,123,'Telsiai','TE',1),(1919,123,'Utena','UT',1),(1920,123,'Vilnius','VI',1),(1921,124,'Diekirch','DD',1),(1922,124,'Clervaux','DC',1),(1923,124,'Redange','DR',1),(1924,124,'Vianden','DV',1),(1925,124,'Wiltz','DW',1),(1926,124,'Grevenmacher','GG',1),(1927,124,'Echternach','GE',1),(1928,124,'Remich','GR',1),(1929,124,'Luxembourg','LL',1),(1930,124,'Capellen','LC',1),(1931,124,'Esch-sur-Alzette','LE',1),(1932,124,'Mersch','LM',1),(1933,125,'Our Lady Fatima Parish','OLF',1),(1934,125,'St. Anthony Parish','ANT',1),(1935,125,'St. Lazarus Parish','LAZ',1),(1936,125,'Cathedral Parish','CAT',1),(1937,125,'St. Lawrence Parish','LAW',1),(1938,127,'Antananarivo','AN',1),(1939,127,'Antsiranana','AS',1),(1940,127,'Fianarantsoa','FN',1),(1941,127,'Mahajanga','MJ',1),(1942,127,'Toamasina','TM',1),(1943,127,'Toliara','TL',1),(1944,128,'Balaka','BLK',1),(1945,128,'Blantyre','BLT',1),(1946,128,'Chikwawa','CKW',1),(1947,128,'Chiradzulu','CRD',1),(1948,128,'Chitipa','CTP',1),(1949,128,'Dedza','DDZ',1),(1950,128,'Dowa','DWA',1),(1951,128,'Karonga','KRG',1),(1952,128,'Kasungu','KSG',1),(1953,128,'Likoma','LKM',1),(1954,128,'Lilongwe','LLG',1),(1955,128,'Machinga','MCG',1),(1956,128,'Mangochi','MGC',1),(1957,128,'Mchinji','MCH',1),(1958,128,'Mulanje','MLJ',1),(1959,128,'Mwanza','MWZ',1),(1960,128,'Mzimba','MZM',1),(1961,128,'Ntcheu','NTU',1),(1962,128,'Nkhata Bay','NKB',1),(1963,128,'Nkhotakota','NKH',1),(1964,128,'Nsanje','NSJ',1),(1965,128,'Ntchisi','NTI',1),(1966,128,'Phalombe','PHL',1),(1967,128,'Rumphi','RMP',1),(1968,128,'Salima','SLM',1),(1969,128,'Thyolo','THY',1),(1970,128,'Zomba','ZBA',1),(1971,129,'Johor','MY-01',1),(1972,129,'Kedah','MY-02',1),(1973,129,'Kelantan','MY-03',1),(1974,129,'Labuan','MY-15',1),(1975,129,'Melaka','MY-04',1),(1976,129,'Negeri Sembilan','MY-05',1),(1977,129,'Pahang','MY-06',1),(1978,129,'Perak','MY-08',1),(1979,129,'Perlis','MY-09',1),(1980,129,'Pulau Pinang','MY-07',1),(1981,129,'Sabah','MY-12',1),(1982,129,'Sarawak','MY-13',1),(1983,129,'Selangor','MY-10',1),(1984,129,'Terengganu','MY-11',1),(1985,129,'Kuala Lumpur','MY-14',1),(4035,129,'Putrajaya','MY-16',1),(1986,130,'Thiladhunmathi Uthuru','THU',1),(1987,130,'Thiladhunmathi Dhekunu','THD',1),(1988,130,'Miladhunmadulu Uthuru','MLU',1),(1989,130,'Miladhunmadulu Dhekunu','MLD',1),(1990,130,'Maalhosmadulu Uthuru','MAU',1),(1991,130,'Maalhosmadulu Dhekunu','MAD',1),(1992,130,'Faadhippolhu','FAA',1),(1993,130,'Male Atoll','MAA',1),(1994,130,'Ari Atoll Uthuru','AAU',1),(1995,130,'Ari Atoll Dheknu','AAD',1),(1996,130,'Felidhe Atoll','FEA',1),(1997,130,'Mulaku Atoll','MUA',1),(1998,130,'Nilandhe Atoll Uthuru','NAU',1),(1999,130,'Nilandhe Atoll Dhekunu','NAD',1),(2000,130,'Kolhumadulu','KLH',1),(2001,130,'Hadhdhunmathi','HDH',1),(2002,130,'Huvadhu Atoll Uthuru','HAU',1),(2003,130,'Huvadhu Atoll Dhekunu','HAD',1),(2004,130,'Fua Mulaku','FMU',1),(2005,130,'Addu','ADD',1),(2006,131,'Gao','GA',1),(2007,131,'Kayes','KY',1),(2008,131,'Kidal','KD',1),(2009,131,'Koulikoro','KL',1),(2010,131,'Mopti','MP',1),(2011,131,'Segou','SG',1),(2012,131,'Sikasso','SK',1),(2013,131,'Tombouctou','TB',1),(2014,131,'Bamako Capital District','CD',1),(2015,132,'Attard','ATT',1),(2016,132,'Balzan','BAL',1),(2017,132,'Birgu','BGU',1),(2018,132,'Birkirkara','BKK',1),(2019,132,'Birzebbuga','BRZ',1),(2020,132,'Bormla','BOR',1),(2021,132,'Dingli','DIN',1),(2022,132,'Fgura','FGU',1),(2023,132,'Floriana','FLO',1),(2024,132,'Gudja','GDJ',1),(2025,132,'Gzira','GZR',1),(2026,132,'Gargur','GRG',1),(2027,132,'Gaxaq','GXQ',1),(2028,132,'Hamrun','HMR',1),(2029,132,'Iklin','IKL',1),(2030,132,'Isla','ISL',1),(2031,132,'Kalkara','KLK',1),(2032,132,'Kirkop','KRK',1),(2033,132,'Lija','LIJ',1),(2034,132,'Luqa','LUQ',1),(2035,132,'Marsa','MRS',1),(2036,132,'Marsaskala','MKL',1),(2037,132,'Marsaxlokk','MXL',1),(2038,132,'Mdina','MDN',1),(2039,132,'Melliea','MEL',1),(2040,132,'Mgarr','MGR',1),(2041,132,'Mosta','MST',1),(2042,132,'Mqabba','MQA',1),(2043,132,'Msida','MSI',1),(2044,132,'Mtarfa','MTF',1),(2045,132,'Naxxar','NAX',1),(2046,132,'Paola','PAO',1),(2047,132,'Pembroke','PEM',1),(2048,132,'Pieta','PIE',1),(2049,132,'Qormi','QOR',1),(2050,132,'Qrendi','QRE',1),(2051,132,'Rabat','RAB',1),(2052,132,'Safi','SAF',1),(2053,132,'San Giljan','SGI',1),(2054,132,'Santa Lucija','SLU',1),(2055,132,'San Pawl il-Bahar','SPB',1),(2056,132,'San Gwann','SGW',1),(2057,132,'Santa Venera','SVE',1),(2058,132,'Siggiewi','SIG',1),(2059,132,'Sliema','SLM',1),(2060,132,'Swieqi','SWQ',1),(2061,132,'Ta Xbiex','TXB',1),(2062,132,'Tarxien','TRX',1),(2063,132,'Valletta','VLT',1),(2064,132,'Xgajra','XGJ',1),(2065,132,'Zabbar','ZBR',1),(2066,132,'Zebbug','ZBG',1),(2067,132,'Zejtun','ZJT',1),(2068,132,'Zurrieq','ZRQ',1),(2069,132,'Fontana','FNT',1),(2070,132,'Ghajnsielem','GHJ',1),(2071,132,'Gharb','GHR',1),(2072,132,'Ghasri','GHS',1),(2073,132,'Kercem','KRC',1),(2074,132,'Munxar','MUN',1),(2075,132,'Nadur','NAD',1),(2076,132,'Qala','QAL',1),(2077,132,'Victoria','VIC',1),(2078,132,'San Lawrenz','SLA',1),(2079,132,'Sannat','SNT',1),(2080,132,'Xagra','ZAG',1),(2081,132,'Xewkija','XEW',1),(2082,132,'Zebbug','ZEB',1),(2083,133,'Ailinginae','ALG',1),(2084,133,'Ailinglaplap','ALL',1),(2085,133,'Ailuk','ALK',1),(2086,133,'Arno','ARN',1),(2087,133,'Aur','AUR',1),(2088,133,'Bikar','BKR',1),(2089,133,'Bikini','BKN',1),(2090,133,'Bokak','BKK',1),(2091,133,'Ebon','EBN',1),(2092,133,'Enewetak','ENT',1),(2093,133,'Erikub','EKB',1),(2094,133,'Jabat','JBT',1),(2095,133,'Jaluit','JLT',1),(2096,133,'Jemo','JEM',1),(2097,133,'Kili','KIL',1),(2098,133,'Kwajalein','KWJ',1),(2099,133,'Lae','LAE',1),(2100,133,'Lib','LIB',1),(2101,133,'Likiep','LKP',1),(2102,133,'Majuro','MJR',1),(2103,133,'Maloelap','MLP',1),(2104,133,'Mejit','MJT',1),(2105,133,'Mili','MIL',1),(2106,133,'Namorik','NMK',1),(2107,133,'Namu','NAM',1),(2108,133,'Rongelap','RGL',1),(2109,133,'Rongrik','RGK',1),(2110,133,'Toke','TOK',1),(2111,133,'Ujae','UJA',1),(2112,133,'Ujelang','UJL',1),(2113,133,'Utirik','UTK',1),(2114,133,'Wotho','WTH',1),(2115,133,'Wotje','WTJ',1),(2116,135,'Adrar','AD',1),(2117,135,'Assaba','AS',1),(2118,135,'Brakna','BR',1),(2119,135,'Dakhlet Nouadhibou','DN',1),(2120,135,'Gorgol','GO',1),(2121,135,'Guidimaka','GM',1),(2122,135,'Hodh Ech Chargui','HC',1),(2123,135,'Hodh El Gharbi','HG',1),(2124,135,'Inchiri','IN',1),(2125,135,'Tagant','TA',1),(2126,135,'Tiris Zemmour','TZ',1),(2127,135,'Trarza','TR',1),(2128,135,'Nouakchott','NO',1),(2129,136,'Beau Bassin-Rose Hill','BR',1),(2130,136,'Curepipe','CU',1),(2131,136,'Port Louis','PU',1),(2132,136,'Quatre Bornes','QB',1),(2133,136,'Vacoas-Phoenix','VP',1),(2134,136,'Agalega Islands','AG',1),(2135,136,'Cargados Carajos Shoals (Saint Brandon Islands)','CC',1),(2136,136,'Rodrigues','RO',1),(2137,136,'Black River','BL',1),(2138,136,'Flacq','FL',1),(2139,136,'Grand Port','GP',1),(2140,136,'Moka','MO',1),(2141,136,'Pamplemousses','PA',1),(2142,136,'Plaines Wilhems','PW',1),(2143,136,'Port Louis','PL',1),(2144,136,'Riviere du Rempart','RR',1),(2145,136,'Savanne','SA',1),(2146,138,'Baja California Norte','BN',1),(2147,138,'Baja California Sur','BS',1),(2148,138,'Campeche','CA',1),(2149,138,'Chiapas','CI',1),(2150,138,'Chihuahua','CH',1),(2151,138,'Coahuila de Zaragoza','CZ',1),(2152,138,'Colima','CL',1),(2153,138,'Distrito Federal','DF',1),(2154,138,'Durango','DU',1),(2155,138,'Guanajuato','GA',1),(2156,138,'Guerrero','GE',1),(2157,138,'Hidalgo','HI',1),(2158,138,'Jalisco','JA',1),(2159,138,'Mexico','ME',1),(2160,138,'Michoacan de Ocampo','MI',1),(2161,138,'Morelos','MO',1),(2162,138,'Nayarit','NA',1),(2163,138,'Nuevo Leon','NL',1),(2164,138,'Oaxaca','OA',1),(2165,138,'Puebla','PU',1),(2166,138,'Queretaro de Arteaga','QA',1),(2167,138,'Quintana Roo','QR',1),(2168,138,'San Luis Potosi','SA',1),(2169,138,'Sinaloa','SI',1),(2170,138,'Sonora','SO',1),(2171,138,'Tabasco','TB',1),(2172,138,'Tamaulipas','TM',1),(2173,138,'Tlaxcala','TL',1),(2174,138,'Veracruz-Llave','VE',1),(2175,138,'Yucatan','YU',1),(2176,138,'Zacatecas','ZA',1),(2177,139,'Chuuk','C',1),(2178,139,'Kosrae','K',1),(2179,139,'Pohnpei','P',1),(2180,139,'Yap','Y',1),(2181,140,'Gagauzia','GA',1),(2182,140,'Chisinau','CU',1),(2183,140,'Balti','BA',1),(2184,140,'Cahul','CA',1),(2185,140,'Edinet','ED',1),(2186,140,'Lapusna','LA',1),(2187,140,'Orhei','OR',1),(2188,140,'Soroca','SO',1),(2189,140,'Tighina','TI',1),(2190,140,'Ungheni','UN',1),(2191,140,'St‚nga Nistrului','SN',1),(2192,141,'Fontvieille','FV',1),(2193,141,'La Condamine','LC',1),(2194,141,'Monaco-Ville','MV',1),(2195,141,'Monte-Carlo','MC',1),(2196,142,'Ulanbaatar','1',1),(2197,142,'Orhon','035',1),(2198,142,'Darhan uul','037',1),(2199,142,'Hentiy','039',1),(2200,142,'Hovsgol','041',1),(2201,142,'Hovd','043',1),(2202,142,'Uvs','046',1),(2203,142,'Tov','047',1),(2204,142,'Selenge','049',1),(2205,142,'Suhbaatar','051',1),(2206,142,'Omnogovi','053',1),(2207,142,'Ovorhangay','055',1),(2208,142,'Dzavhan','057',1),(2209,142,'DundgovL','059',1),(2210,142,'Dornod','061',1),(2211,142,'Dornogov','063',1),(2212,142,'Govi-Sumber','064',1),(2213,142,'Govi-Altay','065',1),(2214,142,'Bulgan','067',1),(2215,142,'Bayanhongor','069',1),(2216,142,'Bayan-Olgiy','071',1),(2217,142,'Arhangay','073',1),(2218,143,'Saint Anthony','A',1),(2219,143,'Saint Georges','G',1),(2220,143,'Saint Peter','P',1),(2221,144,'Agadir','AGD',1),(2222,144,'Al Hoceima','HOC',1),(2223,144,'Azilal','AZI',1),(2224,144,'Beni Mellal','BME',1),(2225,144,'Ben Slimane','BSL',1),(2226,144,'Boulemane','BLM',1),(2227,144,'Casablanca','CBL',1),(2228,144,'Chaouen','CHA',1),(2229,144,'El Jadida','EJA',1),(2230,144,'El Kelaa des Sraghna','EKS',1),(2231,144,'Er Rachidia','ERA',1),(2232,144,'Essaouira','ESS',1),(2233,144,'Fes','FES',1),(2234,144,'Figuig','FIG',1),(2235,144,'Guelmim','GLM',1),(2236,144,'Ifrane','IFR',1),(2237,144,'Kenitra','KEN',1),(2238,144,'Khemisset','KHM',1),(2239,144,'Khenifra','KHN',1),(2240,144,'Khouribga','KHO',1),(2241,144,'Laayoune','LYN',1),(2242,144,'Larache','LAR',1),(2243,144,'Marrakech','MRK',1),(2244,144,'Meknes','MKN',1),(2245,144,'Nador','NAD',1),(2246,144,'Ouarzazate','ORZ',1),(2247,144,'Oujda','OUJ',1),(2248,144,'Rabat-Sale','RSA',1),(2249,144,'Safi','SAF',1),(2250,144,'Settat','SET',1),(2251,144,'Sidi Kacem','SKA',1),(2252,144,'Tangier','TGR',1),(2253,144,'Tan-Tan','TAN',1),(2254,144,'Taounate','TAO',1),(2255,144,'Taroudannt','TRD',1),(2256,144,'Tata','TAT',1),(2257,144,'Taza','TAZ',1),(2258,144,'Tetouan','TET',1),(2259,144,'Tiznit','TIZ',1),(2260,144,'Ad Dakhla','ADK',1),(2261,144,'Boujdour','BJD',1),(2262,144,'Es Smara','ESM',1),(2263,145,'Cabo Delgado','CD',1),(2264,145,'Gaza','GZ',1),(2265,145,'Inhambane','IN',1),(2266,145,'Manica','MN',1),(2267,145,'Maputo (city)','MC',1),(2268,145,'Maputo','MP',1),(2269,145,'Nampula','NA',1),(2270,145,'Niassa','NI',1),(2271,145,'Sofala','SO',1),(2272,145,'Tete','TE',1),(2273,145,'Zambezia','ZA',1),(2274,146,'Ayeyarwady','AY',1),(2275,146,'Bago','BG',1),(2276,146,'Magway','MG',1),(2277,146,'Mandalay','MD',1),(2278,146,'Sagaing','SG',1),(2279,146,'Tanintharyi','TN',1),(2280,146,'Yangon','YG',1),(2281,146,'Chin State','CH',1),(2282,146,'Kachin State','KC',1),(2283,146,'Kayah State','KH',1),(2284,146,'Kayin State','KN',1),(2285,146,'Mon State','MN',1),(2286,146,'Rakhine State','RK',1),(2287,146,'Shan State','SH',1),(2288,147,'Caprivi','CA',1),(2289,147,'Erongo','ER',1),(2290,147,'Hardap','HA',1),(2291,147,'Karas','KR',1),(2292,147,'Kavango','KV',1),(2293,147,'Khomas','KH',1),(2294,147,'Kunene','KU',1),(2295,147,'Ohangwena','OW',1),(2296,147,'Omaheke','OK',1),(2297,147,'Omusati','OT',1),(2298,147,'Oshana','ON',1),(2299,147,'Oshikoto','OO',1),(2300,147,'Otjozondjupa','OJ',1),(2301,148,'Aiwo','AO',1),(2302,148,'Anabar','AA',1),(2303,148,'Anetan','AT',1),(2304,148,'Anibare','AI',1),(2305,148,'Baiti','BA',1),(2306,148,'Boe','BO',1),(2307,148,'Buada','BU',1),(2308,148,'Denigomodu','DE',1),(2309,148,'Ewa','EW',1),(2310,148,'Ijuw','IJ',1),(2311,148,'Meneng','ME',1),(2312,148,'Nibok','NI',1),(2313,148,'Uaboe','UA',1),(2314,148,'Yaren','YA',1),(2315,149,'Bagmati','BA',1),(2316,149,'Bheri','BH',1),(2317,149,'Dhawalagiri','DH',1),(2318,149,'Gandaki','GA',1),(2319,149,'Janakpur','JA',1),(2320,149,'Karnali','KA',1),(2321,149,'Kosi','KO',1),(2322,149,'Lumbini','LU',1),(2323,149,'Mahakali','MA',1),(2324,149,'Mechi','ME',1),(2325,149,'Narayani','NA',1),(2326,149,'Rapti','RA',1),(2327,149,'Sagarmatha','SA',1),(2328,149,'Seti','SE',1),(2329,150,'Drenthe','DR',1),(2330,150,'Flevoland','FL',1),(2331,150,'Friesland','FR',1),(2332,150,'Gelderland','GE',1),(2333,150,'Groningen','GR',1),(2334,150,'Limburg','LI',1),(2335,150,'Noord Brabant','NB',1),(2336,150,'Noord Holland','NH',1),(2337,150,'Overijssel','OV',1),(2338,150,'Utrecht','UT',1),(2339,150,'Zeeland','ZE',1),(2340,150,'Zuid Holland','ZH',1),(2341,152,'Iles Loyaute','L',1),(2342,152,'Nord','N',1),(2343,152,'Sud','S',1),(2344,153,'Auckland','AUK',1),(2345,153,'Bay of Plenty','BOP',1),(2346,153,'Canterbury','CAN',1),(2347,153,'Coromandel','COR',1),(2348,153,'Gisborne','GIS',1),(2349,153,'Fiordland','FIO',1),(2350,153,'Hawke\'s Bay','HKB',1),(2351,153,'Marlborough','MBH',1),(2352,153,'Manawatu-Wanganui','MWT',1),(2353,153,'Mt Cook-Mackenzie','MCM',1),(2354,153,'Nelson','NSN',1),(2355,153,'Northland','NTL',1),(2356,153,'Otago','OTA',1),(2357,153,'Southland','STL',1),(2358,153,'Taranaki','TKI',1),(2359,153,'Wellington','WGN',1),(2360,153,'Waikato','WKO',1),(2361,153,'Wairarapa','WAI',1),(2362,153,'West Coast','WTC',1),(2363,154,'Atlantico Norte','AN',1),(2364,154,'Atlantico Sur','AS',1),(2365,154,'Boaco','BO',1),(2366,154,'Carazo','CA',1),(2367,154,'Chinandega','CI',1),(2368,154,'Chontales','CO',1),(2369,154,'Esteli','ES',1),(2370,154,'Granada','GR',1),(2371,154,'Jinotega','JI',1),(2372,154,'Leon','LE',1),(2373,154,'Madriz','MD',1),(2374,154,'Managua','MN',1),(2375,154,'Masaya','MS',1),(2376,154,'Matagalpa','MT',1),(2377,154,'Nuevo Segovia','NS',1),(2378,154,'Rio San Juan','RS',1),(2379,154,'Rivas','RI',1),(2380,155,'Agadez','AG',1),(2381,155,'Diffa','DF',1),(2382,155,'Dosso','DS',1),(2383,155,'Maradi','MA',1),(2384,155,'Niamey','NM',1),(2385,155,'Tahoua','TH',1),(2386,155,'Tillaberi','TL',1),(2387,155,'Zinder','ZD',1),(2388,156,'Abia','AB',1),(2389,156,'Abuja Federal Capital Territory','CT',1),(2390,156,'Adamawa','AD',1),(2391,156,'Akwa Ibom','AK',1),(2392,156,'Anambra','AN',1),(2393,156,'Bauchi','BC',1),(2394,156,'Bayelsa','BY',1),(2395,156,'Benue','BN',1),(2396,156,'Borno','BO',1),(2397,156,'Cross River','CR',1),(2398,156,'Delta','DE',1),(2399,156,'Ebonyi','EB',1),(2400,156,'Edo','ED',1),(2401,156,'Ekiti','EK',1),(2402,156,'Enugu','EN',1),(2403,156,'Gombe','GO',1),(2404,156,'Imo','IM',1),(2405,156,'Jigawa','JI',1),(2406,156,'Kaduna','KD',1),(2407,156,'Kano','KN',1),(2408,156,'Katsina','KT',1),(2409,156,'Kebbi','KE',1),(2410,156,'Kogi','KO',1),(2411,156,'Kwara','KW',1),(2412,156,'Lagos','LA',1),(2413,156,'Nassarawa','NA',1),(2414,156,'Niger','NI',1),(2415,156,'Ogun','OG',1),(2416,156,'Ondo','ONG',1),(2417,156,'Osun','OS',1),(2418,156,'Oyo','OY',1),(2419,156,'Plateau','PL',1),(2420,156,'Rivers','RI',1),(2421,156,'Sokoto','SO',1),(2422,156,'Taraba','TA',1),(2423,156,'Yobe','YO',1),(2424,156,'Zamfara','ZA',1),(2425,159,'Northern Islands','N',1),(2426,159,'Rota','R',1),(2427,159,'Saipan','S',1),(2428,159,'Tinian','T',1),(2429,160,'Akershus','AK',1),(2430,160,'Aust-Agder','AA',1),(2431,160,'Buskerud','BU',1),(2432,160,'Finnmark','FM',1),(2433,160,'Hedmark','HM',1),(2434,160,'Hordaland','HL',1),(2435,160,'More og Romdal','MR',1),(2436,160,'Nord-Trondelag','NT',1),(2437,160,'Nordland','NL',1),(2438,160,'Ostfold','OF',1),(2439,160,'Oppland','OP',1),(2440,160,'Oslo','OL',1),(2441,160,'Rogaland','RL',1),(2442,160,'Sor-Trondelag','ST',1),(2443,160,'Sogn og Fjordane','SJ',1),(2444,160,'Svalbard','SV',1),(2445,160,'Telemark','TM',1),(2446,160,'Troms','TR',1),(2447,160,'Vest-Agder','VA',1),(2448,160,'Vestfold','VF',1),(2449,161,'Ad Dakhiliyah','DA',1),(2450,161,'Al Batinah','BA',1),(2451,161,'Al Wusta','WU',1),(2452,161,'Ash Sharqiyah','SH',1),(2453,161,'Az Zahirah','ZA',1),(2454,161,'Masqat','MA',1),(2455,161,'Musandam','MU',1),(2456,161,'Zufar','ZU',1),(2457,162,'Balochistan','B',1),(2458,162,'Federally Administered Tribal Areas','T',1),(2459,162,'Islamabad Capital Territory','I',1),(2460,162,'North-West Frontier','N',1),(2461,162,'Punjab','P',1),(2462,162,'Sindh','S',1),(2463,163,'Aimeliik','AM',1),(2464,163,'Airai','AR',1),(2465,163,'Angaur','AN',1),(2466,163,'Hatohobei','HA',1),(2467,163,'Kayangel','KA',1),(2468,163,'Koror','KO',1),(2469,163,'Melekeok','ME',1),(2470,163,'Ngaraard','NA',1),(2471,163,'Ngarchelong','NG',1),(2472,163,'Ngardmau','ND',1),(2473,163,'Ngatpang','NT',1),(2474,163,'Ngchesar','NC',1),(2475,163,'Ngeremlengui','NR',1),(2476,163,'Ngiwal','NW',1),(2477,163,'Peleliu','PE',1),(2478,163,'Sonsorol','SO',1),(2479,164,'Bocas del Toro','BT',1),(2480,164,'Chiriqui','CH',1),(2481,164,'Cocle','CC',1),(2482,164,'Colon','CL',1),(2483,164,'Darien','DA',1),(2484,164,'Herrera','HE',1),(2485,164,'Los Santos','LS',1),(2486,164,'Panama','PA',1),(2487,164,'San Blas','SB',1),(2488,164,'Veraguas','VG',1),(2489,165,'Bougainville','BV',1),(2490,165,'Central','CE',1),(2491,165,'Chimbu','CH',1),(2492,165,'Eastern Highlands','EH',1),(2493,165,'East New Britain','EB',1),(2494,165,'East Sepik','ES',1),(2495,165,'Enga','EN',1),(2496,165,'Gulf','GU',1),(2497,165,'Madang','MD',1),(2498,165,'Manus','MN',1),(2499,165,'Milne Bay','MB',1),(2500,165,'Morobe','MR',1),(2501,165,'National Capital','NC',1),(2502,165,'New Ireland','NI',1),(2503,165,'Northern','NO',1),(2504,165,'Sandaun','SA',1),(2505,165,'Southern Highlands','SH',1),(2506,165,'Western','WE',1),(2507,165,'Western Highlands','WH',1),(2508,165,'West New Britain','WB',1),(2509,166,'Alto Paraguay','AG',1),(2510,166,'Alto Parana','AN',1),(2511,166,'Amambay','AM',1),(2512,166,'Asuncion','AS',1),(2513,166,'Boqueron','BO',1),(2514,166,'Caaguazu','CG',1),(2515,166,'Caazapa','CZ',1),(2516,166,'Canindeyu','CN',1),(2517,166,'Central','CE',1),(2518,166,'Concepcion','CC',1),(2519,166,'Cordillera','CD',1),(2520,166,'Guaira','GU',1),(2521,166,'Itapua','IT',1),(2522,166,'Misiones','MI',1),(2523,166,'Neembucu','NE',1),(2524,166,'Paraguari','PA',1),(2525,166,'Presidente Hayes','PH',1),(2526,166,'San Pedro','SP',1),(2527,167,'Amazonas','AM',1),(2528,167,'Ancash','AN',1),(2529,167,'Apurimac','AP',1),(2530,167,'Arequipa','AR',1),(2531,167,'Ayacucho','AY',1),(2532,167,'Cajamarca','CJ',1),(2533,167,'Callao','CL',1),(2534,167,'Cusco','CU',1),(2535,167,'Huancavelica','HV',1),(2536,167,'Huanuco','HO',1),(2537,167,'Ica','IC',1),(2538,167,'Junin','JU',1),(2539,167,'La Libertad','LD',1),(2540,167,'Lambayeque','LY',1),(2541,167,'Lima','LI',1),(2542,167,'Loreto','LO',1),(2543,167,'Madre de Dios','MD',1),(2544,167,'Moquegua','MO',1),(2545,167,'Pasco','PA',1),(2546,167,'Piura','PI',1),(2547,167,'Puno','PU',1),(2548,167,'San Martin','SM',1),(2549,167,'Tacna','TA',1),(2550,167,'Tumbes','TU',1),(2551,167,'Ucayali','UC',1),(2552,168,'Abra','ABR',1),(2553,168,'Agusan del Norte','ANO',1),(2554,168,'Agusan del Sur','ASU',1),(2555,168,'Aklan','AKL',1),(2556,168,'Albay','ALB',1),(2557,168,'Antique','ANT',1),(2558,168,'Apayao','APY',1),(2559,168,'Aurora','AUR',1),(2560,168,'Basilan','BAS',1),(2561,168,'Bataan','BTA',1),(2562,168,'Batanes','BTE',1),(2563,168,'Batangas','BTG',1),(2564,168,'Biliran','BLR',1),(2565,168,'Benguet','BEN',1),(2566,168,'Bohol','BOL',1),(2567,168,'Bukidnon','BUK',1),(2568,168,'Bulacan','BUL',1),(2569,168,'Cagayan','CAG',1),(2570,168,'Camarines Norte','CNO',1),(2571,168,'Camarines Sur','CSU',1),(2572,168,'Camiguin','CAM',1),(2573,168,'Capiz','CAP',1),(2574,168,'Catanduanes','CAT',1),(2575,168,'Cavite','CAV',1),(2576,168,'Cebu','CEB',1),(2577,168,'Compostela','CMP',1),(2578,168,'Davao del Norte','DNO',1),(2579,168,'Davao del Sur','DSU',1),(2580,168,'Davao Oriental','DOR',1),(2581,168,'Eastern Samar','ESA',1),(2582,168,'Guimaras','GUI',1),(2583,168,'Ifugao','IFU',1),(2584,168,'Ilocos Norte','INO',1),(2585,168,'Ilocos Sur','ISU',1),(2586,168,'Iloilo','ILO',1),(2587,168,'Isabela','ISA',1),(2588,168,'Kalinga','KAL',1),(2589,168,'Laguna','LAG',1),(2590,168,'Lanao del Norte','LNO',1),(2591,168,'Lanao del Sur','LSU',1),(2592,168,'La Union','UNI',1),(2593,168,'Leyte','LEY',1),(2594,168,'Maguindanao','MAG',1),(2595,168,'Marinduque','MRN',1),(2596,168,'Masbate','MSB',1),(2597,168,'Mindoro Occidental','MIC',1),(2598,168,'Mindoro Oriental','MIR',1),(2599,168,'Misamis Occidental','MSC',1),(2600,168,'Misamis Oriental','MOR',1),(2601,168,'Mountain','MOP',1),(2602,168,'Negros Occidental','NOC',1),(2603,168,'Negros Oriental','NOR',1),(2604,168,'North Cotabato','NCT',1),(2605,168,'Northern Samar','NSM',1),(2606,168,'Nueva Ecija','NEC',1),(2607,168,'Nueva Vizcaya','NVZ',1),(2608,168,'Palawan','PLW',1),(2609,168,'Pampanga','PMP',1),(2610,168,'Pangasinan','PNG',1),(2611,168,'Quezon','QZN',1),(2612,168,'Quirino','QRN',1),(2613,168,'Rizal','RIZ',1),(2614,168,'Romblon','ROM',1),(2615,168,'Samar','SMR',1),(2616,168,'Sarangani','SRG',1),(2617,168,'Siquijor','SQJ',1),(2618,168,'Sorsogon','SRS',1),(2619,168,'South Cotabato','SCO',1),(2620,168,'Southern Leyte','SLE',1),(2621,168,'Sultan Kudarat','SKU',1),(2622,168,'Sulu','SLU',1),(2623,168,'Surigao del Norte','SNO',1),(2624,168,'Surigao del Sur','SSU',1),(2625,168,'Tarlac','TAR',1),(2626,168,'Tawi-Tawi','TAW',1),(2627,168,'Zambales','ZBL',1),(2628,168,'Zamboanga del Norte','ZNO',1),(2629,168,'Zamboanga del Sur','ZSU',1),(2630,168,'Zamboanga Sibugay','ZSI',1),(2631,170,'Dolnoslaskie','DO',1),(2632,170,'Kujawsko-Pomorskie','KP',1),(2633,170,'Lodzkie','LO',1),(2634,170,'Lubelskie','LL',1),(2635,170,'Lubuskie','LU',1),(2636,170,'Malopolskie','ML',1),(2637,170,'Mazowieckie','MZ',1),(2638,170,'Opolskie','OP',1),(2639,170,'Podkarpackie','PP',1),(2640,170,'Podlaskie','PL',1),(2641,170,'Pomorskie','PM',1),(2642,170,'Slaskie','SL',1),(2643,170,'Swietokrzyskie','SW',1),(2644,170,'Warminsko-Mazurskie','WM',1),(2645,170,'Wielkopolskie','WP',1),(2646,170,'Zachodniopomorskie','ZA',1),(2647,198,'Saint Pierre','P',1),(2648,198,'Miquelon','M',1),(2649,171,'A&ccedil;ores','AC',1),(2650,171,'Aveiro','AV',1),(2651,171,'Beja','BE',1),(2652,171,'Braga','BR',1),(2653,171,'Bragan&ccedil;a','BA',1),(2654,171,'Castelo Branco','CB',1),(2655,171,'Coimbra','CO',1),(2656,171,'&Eacute;vora','EV',1),(2657,171,'Faro','FA',1),(2658,171,'Guarda','GU',1),(2659,171,'Leiria','LE',1),(2660,171,'Lisboa','LI',1),(2661,171,'Madeira','ME',1),(2662,171,'Portalegre','PO',1),(2663,171,'Porto','PR',1),(2664,171,'Santar&eacute;m','SA',1),(2665,171,'Set&uacute;bal','SE',1),(2666,171,'Viana do Castelo','VC',1),(2667,171,'Vila Real','VR',1),(2668,171,'Viseu','VI',1),(2669,173,'Ad Dawhah','DW',1),(2670,173,'Al Ghuwayriyah','GW',1),(2671,173,'Al Jumayliyah','JM',1),(2672,173,'Al Khawr','KR',1),(2673,173,'Al Wakrah','WK',1),(2674,173,'Ar Rayyan','RN',1),(2675,173,'Jarayan al Batinah','JB',1),(2676,173,'Madinat ash Shamal','MS',1),(2677,173,'Umm Sa\'id','UD',1),(2678,173,'Umm Salal','UL',1),(2679,175,'Alba','AB',1),(2680,175,'Arad','AR',1),(2681,175,'Arges','AG',1),(2682,175,'Bacau','BC',1),(2683,175,'Bihor','BH',1),(2684,175,'Bistrita-Nasaud','BN',1),(2685,175,'Botosani','BT',1),(2686,175,'Brasov','BV',1),(2687,175,'Braila','BR',1),(2688,175,'Bucuresti','B',1),(2689,175,'Buzau','BZ',1),(2690,175,'Caras-Severin','CS',1),(2691,175,'Calarasi','CL',1),(2692,175,'Cluj','CJ',1),(2693,175,'Constanta','CT',1),(2694,175,'Covasna','CV',1),(2695,175,'Dimbovita','DB',1),(2696,175,'Dolj','DJ',1),(2697,175,'Galati','GL',1),(2698,175,'Giurgiu','GR',1),(2699,175,'Gorj','GJ',1),(2700,175,'Harghita','HR',1),(2701,175,'Hunedoara','HD',1),(2702,175,'Ialomita','IL',1),(2703,175,'Iasi','IS',1),(2704,175,'Ilfov','IF',1),(2705,175,'Maramures','MM',1),(2706,175,'Mehedinti','MH',1),(2707,175,'Mures','MS',1),(2708,175,'Neamt','NT',1),(2709,175,'Olt','OT',1),(2710,175,'Prahova','PH',1),(2711,175,'Satu-Mare','SM',1),(2712,175,'Salaj','SJ',1),(2713,175,'Sibiu','SB',1),(2714,175,'Suceava','SV',1),(2715,175,'Teleorman','TR',1),(2716,175,'Timis','TM',1),(2717,175,'Tulcea','TL',1),(2718,175,'Vaslui','VS',1),(2719,175,'Valcea','VL',1),(2720,175,'Vrancea','VN',1),(2721,176,'Abakan','AB',1),(2722,176,'Aginskoye','AG',1),(2723,176,'Anadyr','AN',1),(2724,176,'Arkahangelsk','AR',1),(2725,176,'Astrakhan','AS',1),(2726,176,'Barnaul','BA',1),(2727,176,'Belgorod','BE',1),(2728,176,'Birobidzhan','BI',1),(2729,176,'Blagoveshchensk','BL',1),(2730,176,'Bryansk','BR',1),(2731,176,'Cheboksary','CH',1),(2732,176,'Chelyabinsk','CL',1),(2733,176,'Cherkessk','CR',1),(2734,176,'Chita','CI',1),(2735,176,'Dudinka','DU',1),(2736,176,'Elista','EL',1),(2737,176,'Gomo-Altaysk','GO',1),(2738,176,'Gorno-Altaysk','GA',1),(2739,176,'Groznyy','GR',1),(2740,176,'Irkutsk','IR',1),(2741,176,'Ivanovo','IV',1),(2742,176,'Izhevsk','IZ',1),(2743,176,'Kalinigrad','KA',1),(2744,176,'Kaluga','KL',1),(2745,176,'Kasnodar','KS',1),(2746,176,'Kazan','KZ',1),(2747,176,'Kemerovo','KE',1),(2748,176,'Khabarovsk','KH',1),(2749,176,'Khanty-Mansiysk','KM',1),(2750,176,'Kostroma','KO',1),(2751,176,'Krasnodar','KR',1),(2752,176,'Krasnoyarsk','KN',1),(2753,176,'Kudymkar','KU',1),(2754,176,'Kurgan','KG',1),(2755,176,'Kursk','KK',1),(2756,176,'Kyzyl','KY',1),(2757,176,'Lipetsk','LI',1),(2758,176,'Magadan','MA',1),(2759,176,'Makhachkala','MK',1),(2760,176,'Maykop','MY',1),(2761,176,'Moscow','MO',1),(2762,176,'Murmansk','MU',1),(2763,176,'Nalchik','NA',1),(2764,176,'Naryan Mar','NR',1),(2765,176,'Nazran','NZ',1),(2766,176,'Nizhniy Novgorod','NI',1),(2767,176,'Novgorod','NO',1),(2768,176,'Novosibirsk','NV',1),(2769,176,'Omsk','OM',1),(2770,176,'Orel','OR',1),(2771,176,'Orenburg','OE',1),(2772,176,'Palana','PA',1),(2773,176,'Penza','PE',1),(2774,176,'Perm','PR',1),(2775,176,'Petropavlovsk-Kamchatskiy','PK',1),(2776,176,'Petrozavodsk','PT',1),(2777,176,'Pskov','PS',1),(2778,176,'Rostov-na-Donu','RO',1),(2779,176,'Ryazan','RY',1),(2780,176,'Salekhard','SL',1),(2781,176,'Samara','SA',1),(2782,176,'Saransk','SR',1),(2783,176,'Saratov','SV',1),(2784,176,'Smolensk','SM',1),(2785,176,'St. Petersburg','SP',1),(2786,176,'Stavropol','ST',1),(2787,176,'Syktyvkar','SY',1),(2788,176,'Tambov','TA',1),(2789,176,'Tomsk','TO',1),(2790,176,'Tula','TU',1),(2791,176,'Tura','TR',1),(2792,176,'Tver','TV',1),(2793,176,'Tyumen','TY',1),(2794,176,'Ufa','UF',1),(2795,176,'Ul\'yanovsk','UL',1),(2796,176,'Ulan-Ude','UU',1),(2797,176,'Ust\'-Ordynskiy','US',1),(2798,176,'Vladikavkaz','VL',1),(2799,176,'Vladimir','VA',1),(2800,176,'Vladivostok','VV',1),(2801,176,'Volgograd','VG',1),(2802,176,'Vologda','VD',1),(2803,176,'Voronezh','VO',1),(2804,176,'Vyatka','VY',1),(2805,176,'Yakutsk','YA',1),(2806,176,'Yaroslavl','YR',1),(2807,176,'Yekaterinburg','YE',1),(2808,176,'Yoshkar-Ola','YO',1),(2809,177,'Butare','BU',1),(2810,177,'Byumba','BY',1),(2811,177,'Cyangugu','CY',1),(2812,177,'Gikongoro','GK',1),(2813,177,'Gisenyi','GS',1),(2814,177,'Gitarama','GT',1),(2815,177,'Kibungo','KG',1),(2816,177,'Kibuye','KY',1),(2817,177,'Kigali Rurale','KR',1),(2818,177,'Kigali-ville','KV',1),(2819,177,'Ruhengeri','RU',1),(2820,177,'Umutara','UM',1),(2821,178,'Christ Church Nichola Town','CCN',1),(2822,178,'Saint Anne Sandy Point','SAS',1),(2823,178,'Saint George Basseterre','SGB',1),(2824,178,'Saint George Gingerland','SGG',1),(2825,178,'Saint James Windward','SJW',1),(2826,178,'Saint John Capesterre','SJC',1),(2827,178,'Saint John Figtree','SJF',1),(2828,178,'Saint Mary Cayon','SMC',1),(2829,178,'Saint Paul Capesterre','CAP',1),(2830,178,'Saint Paul Charlestown','CHA',1),(2831,178,'Saint Peter Basseterre','SPB',1),(2832,178,'Saint Thomas Lowland','STL',1),(2833,178,'Saint Thomas Middle Island','STM',1),(2834,178,'Trinity Palmetto Point','TPP',1),(2835,179,'Anse-la-Raye','AR',1),(2836,179,'Castries','CA',1),(2837,179,'Choiseul','CH',1),(2838,179,'Dauphin','DA',1),(2839,179,'Dennery','DE',1),(2840,179,'Gros-Islet','GI',1),(2841,179,'Laborie','LA',1),(2842,179,'Micoud','MI',1),(2843,179,'Praslin','PR',1),(2844,179,'Soufriere','SO',1),(2845,179,'Vieux-Fort','VF',1),(2846,180,'Charlotte','C',1),(2847,180,'Grenadines','R',1),(2848,180,'Saint Andrew','A',1),(2849,180,'Saint David','D',1),(2850,180,'Saint George','G',1),(2851,180,'Saint Patrick','P',1),(2852,181,'A\'ana','AN',1),(2853,181,'Aiga-i-le-Tai','AI',1),(2854,181,'Atua','AT',1),(2855,181,'Fa\'asaleleaga','FA',1),(2856,181,'Gaga\'emauga','GE',1),(2857,181,'Gagaifomauga','GF',1),(2858,181,'Palauli','PA',1),(2859,181,'Satupa\'itea','SA',1),(2860,181,'Tuamasaga','TU',1),(2861,181,'Va\'a-o-Fonoti','VF',1),(2862,181,'Vaisigano','VS',1),(2863,182,'Acquaviva','AC',1),(2864,182,'Borgo Maggiore','BM',1),(2865,182,'Chiesanuova','CH',1),(2866,182,'Domagnano','DO',1),(2867,182,'Faetano','FA',1),(2868,182,'Fiorentino','FI',1),(2869,182,'Montegiardino','MO',1),(2870,182,'Citta di San Marino','SM',1),(2871,182,'Serravalle','SE',1),(2872,183,'Sao Tome','S',1),(2873,183,'Principe','P',1),(2874,184,'Al Bahah','BH',1),(2875,184,'Al Hudud ash Shamaliyah','HS',1),(2876,184,'Al Jawf','JF',1),(2877,184,'Al Madinah','MD',1),(2878,184,'Al Qasim','QS',1),(2879,184,'Ar Riyad','RD',1),(2880,184,'Ash Sharqiyah (Eastern)','AQ',1),(2881,184,'\'Asir','AS',1),(2882,184,'Ha\'il','HL',1),(2883,184,'Jizan','JZ',1),(2884,184,'Makkah','ML',1),(2885,184,'Najran','NR',1),(2886,184,'Tabuk','TB',1),(2887,185,'Dakar','DA',1),(2888,185,'Diourbel','DI',1),(2889,185,'Fatick','FA',1),(2890,185,'Kaolack','KA',1),(2891,185,'Kolda','KO',1),(2892,185,'Louga','LO',1),(2893,185,'Matam','MA',1),(2894,185,'Saint-Louis','SL',1),(2895,185,'Tambacounda','TA',1),(2896,185,'Thies','TH',1),(2897,185,'Ziguinchor','ZI',1),(2898,186,'Anse aux Pins','AP',1),(2899,186,'Anse Boileau','AB',1),(2900,186,'Anse Etoile','AE',1),(2901,186,'Anse Louis','AL',1),(2902,186,'Anse Royale','AR',1),(2903,186,'Baie Lazare','BL',1),(2904,186,'Baie Sainte Anne','BS',1),(2905,186,'Beau Vallon','BV',1),(2906,186,'Bel Air','BA',1),(2907,186,'Bel Ombre','BO',1),(2908,186,'Cascade','CA',1),(2909,186,'Glacis','GL',1),(2910,186,'Grand\' Anse (on Mahe)','GM',1),(2911,186,'Grand\' Anse (on Praslin)','GP',1),(2912,186,'La Digue','DG',1),(2913,186,'La Riviere Anglaise','RA',1),(2914,186,'Mont Buxton','MB',1),(2915,186,'Mont Fleuri','MF',1),(2916,186,'Plaisance','PL',1),(2917,186,'Pointe La Rue','PR',1),(2918,186,'Port Glaud','PG',1),(2919,186,'Saint Louis','SL',1),(2920,186,'Takamaka','TA',1),(2921,187,'Eastern','E',1),(2922,187,'Northern','N',1),(2923,187,'Southern','S',1),(2924,187,'Western','W',1),(2925,189,'Banskobystrický','BA',1),(2926,189,'Bratislavský','BR',1),(2927,189,'Košický','KO',1),(2928,189,'Nitriansky','NI',1),(2929,189,'Prešovský','PR',1),(2930,189,'Trenčiansky','TC',1),(2931,189,'Trnavský','TV',1),(2932,189,'Žilinský','ZI',1),(2933,191,'Central','CE',1),(2934,191,'Choiseul','CH',1),(2935,191,'Guadalcanal','GC',1),(2936,191,'Honiara','HO',1),(2937,191,'Isabel','IS',1),(2938,191,'Makira','MK',1),(2939,191,'Malaita','ML',1),(2940,191,'Rennell and Bellona','RB',1),(2941,191,'Temotu','TM',1),(2942,191,'Western','WE',1),(2943,192,'Awdal','AW',1),(2944,192,'Bakool','BK',1),(2945,192,'Banaadir','BN',1),(2946,192,'Bari','BR',1),(2947,192,'Bay','BY',1),(2948,192,'Galguduud','GA',1),(2949,192,'Gedo','GE',1),(2950,192,'Hiiraan','HI',1),(2951,192,'Jubbada Dhexe','JD',1),(2952,192,'Jubbada Hoose','JH',1),(2953,192,'Mudug','MU',1),(2954,192,'Nugaal','NU',1),(2955,192,'Sanaag','SA',1),(2956,192,'Shabeellaha Dhexe','SD',1),(2957,192,'Shabeellaha Hoose','SH',1),(2958,192,'Sool','SL',1),(2959,192,'Togdheer','TO',1),(2960,192,'Woqooyi Galbeed','WG',1),(2961,193,'Eastern Cape','EC',1),(2962,193,'Free State','FS',1),(2963,193,'Gauteng','GT',1),(2964,193,'KwaZulu-Natal','KN',1),(2965,193,'Limpopo','LP',1),(2966,193,'Mpumalanga','MP',1),(2967,193,'North West','NW',1),(2968,193,'Northern Cape','NC',1),(2969,193,'Western Cape','WC',1),(2970,195,'La Coru&ntilde;a','CA',1),(2971,195,'&Aacute;lava','AL',1),(2972,195,'Albacete','AB',1),(2973,195,'Alicante','AC',1),(2974,195,'Almeria','AM',1),(2975,195,'Asturias','AS',1),(2976,195,'&Aacute;vila','AV',1),(2977,195,'Badajoz','BJ',1),(2978,195,'Baleares','IB',1),(2979,195,'Barcelona','BA',1),(2980,195,'Burgos','BU',1),(2981,195,'C&aacute;ceres','CC',1),(2982,195,'C&aacute;diz','CZ',1),(2983,195,'Cantabria','CT',1),(2984,195,'Castell&oacute;n','CL',1),(2985,195,'Ceuta','CE',1),(2986,195,'Ciudad Real','CR',1),(2987,195,'C&oacute;rdoba','CD',1),(2988,195,'Cuenca','CU',1),(2989,195,'Girona','GI',1),(2990,195,'Granada','GD',1),(2991,195,'Guadalajara','GJ',1),(2992,195,'Guip&uacute;zcoa','GP',1),(2993,195,'Huelva','HL',1),(2994,195,'Huesca','HS',1),(2995,195,'Ja&eacute;n','JN',1),(2996,195,'La Rioja','RJ',1),(2997,195,'Las Palmas','PM',1),(2998,195,'Leon','LE',1),(2999,195,'Lleida','LL',1),(3000,195,'Lugo','LG',1),(3001,195,'Madrid','MD',1),(3002,195,'Malaga','MA',1),(3003,195,'Melilla','ML',1),(3004,195,'Murcia','MU',1),(3005,195,'Navarra','NV',1),(3006,195,'Ourense','OU',1),(3007,195,'Palencia','PL',1),(3008,195,'Pontevedra','PO',1),(3009,195,'Salamanca','SL',1),(3010,195,'Santa Cruz de Tenerife','SC',1),(3011,195,'Segovia','SG',1),(3012,195,'Sevilla','SV',1),(3013,195,'Soria','SO',1),(3014,195,'Tarragona','TA',1),(3015,195,'Teruel','TE',1),(3016,195,'Toledo','TO',1),(3017,195,'Valencia','VC',1),(3018,195,'Valladolid','VD',1),(3019,195,'Vizcaya','VZ',1),(3020,195,'Zamora','ZM',1),(3021,195,'Zaragoza','ZR',1),(3022,196,'Central','CE',1),(3023,196,'Eastern','EA',1),(3024,196,'North Central','NC',1),(3025,196,'Northern','NO',1),(3026,196,'North Western','NW',1),(3027,196,'Sabaragamuwa','SA',1),(3028,196,'Southern','SO',1),(3029,196,'Uva','UV',1),(3030,196,'Western','WE',1),(3032,197,'Saint Helena','S',1),(3034,199,'A\'ali an Nil','ANL',1),(3035,199,'Al Bahr al Ahmar','BAM',1),(3036,199,'Al Buhayrat','BRT',1),(3037,199,'Al Jazirah','JZR',1),(3038,199,'Al Khartum','KRT',1),(3039,199,'Al Qadarif','QDR',1),(3040,199,'Al Wahdah','WDH',1),(3041,199,'An Nil al Abyad','ANB',1),(3042,199,'An Nil al Azraq','ANZ',1),(3043,199,'Ash Shamaliyah','ASH',1),(3044,199,'Bahr al Jabal','BJA',1),(3045,199,'Gharb al Istiwa\'iyah','GIS',1),(3046,199,'Gharb Bahr al Ghazal','GBG',1),(3047,199,'Gharb Darfur','GDA',1),(3048,199,'Gharb Kurdufan','GKU',1),(3049,199,'Janub Darfur','JDA',1),(3050,199,'Janub Kurdufan','JKU',1),(3051,199,'Junqali','JQL',1),(3052,199,'Kassala','KSL',1),(3053,199,'Nahr an Nil','NNL',1),(3054,199,'Shamal Bahr al Ghazal','SBG',1),(3055,199,'Shamal Darfur','SDA',1),(3056,199,'Shamal Kurdufan','SKU',1),(3057,199,'Sharq al Istiwa\'iyah','SIS',1),(3058,199,'Sinnar','SNR',1),(3059,199,'Warab','WRB',1),(3060,200,'Brokopondo','BR',1),(3061,200,'Commewijne','CM',1),(3062,200,'Coronie','CR',1),(3063,200,'Marowijne','MA',1),(3064,200,'Nickerie','NI',1),(3065,200,'Para','PA',1),(3066,200,'Paramaribo','PM',1),(3067,200,'Saramacca','SA',1),(3068,200,'Sipaliwini','SI',1),(3069,200,'Wanica','WA',1),(3070,202,'Hhohho','H',1),(3071,202,'Lubombo','L',1),(3072,202,'Manzini','M',1),(3073,202,'Shishelweni','S',1),(3074,203,'Blekinge','K',1),(3075,203,'Dalarna','W',1),(3076,203,'G&auml;vleborg','X',1),(3077,203,'Gotland','I',1),(3078,203,'Halland','N',1),(3079,203,'J&auml;mtland','Z',1),(3080,203,'J&ouml;nk&ouml;ping','F',1),(3081,203,'Kalmar','H',1),(3082,203,'Kronoberg','G',1),(3083,203,'Norrbotten','BD',1),(3084,203,'&Ouml;rebro','T',1),(3085,203,'&Ouml;sterg&ouml;tland','E',1),(3086,203,'Sk&aring;ne','M',1),(3087,203,'S&ouml;dermanland','D',1),(3088,203,'Stockholm','AB',1),(3089,203,'Uppsala','C',1),(3090,203,'V&auml;rmland','S',1),(3091,203,'V&auml;sterbotten','AC',1),(3092,203,'V&auml;sternorrland','Y',1),(3093,203,'V&auml;stmanland','U',1),(3094,203,'V&auml;stra G&ouml;taland','O',1),(3095,204,'Aargau','AG',1),(3096,204,'Appenzell Ausserrhoden','AR',1),(3097,204,'Appenzell Innerrhoden','AI',1),(3098,204,'Basel-Stadt','BS',1),(3099,204,'Basel-Landschaft','BL',1),(3100,204,'Bern','BE',1),(3101,204,'Fribourg','FR',1),(3102,204,'Gen&egrave;ve','GE',1),(3103,204,'Glarus','GL',1),(3104,204,'Graub&uuml;nden','GR',1),(3105,204,'Jura','JU',1),(3106,204,'Luzern','LU',1),(3107,204,'Neuch&acirc;tel','NE',1),(3108,204,'Nidwald','NW',1),(3109,204,'Obwald','OW',1),(3110,204,'St. Gallen','SG',1),(3111,204,'Schaffhausen','SH',1),(3112,204,'Schwyz','SZ',1),(3113,204,'Solothurn','SO',1),(3114,204,'Thurgau','TG',1),(3115,204,'Ticino','TI',1),(3116,204,'Uri','UR',1),(3117,204,'Valais','VS',1),(3118,204,'Vaud','VD',1),(3119,204,'Zug','ZG',1),(3120,204,'Z&uuml;rich','ZH',1),(3121,205,'Al Hasakah','HA',1),(3122,205,'Al Ladhiqiyah','LA',1),(3123,205,'Al Qunaytirah','QU',1),(3124,205,'Ar Raqqah','RQ',1),(3125,205,'As Suwayda','SU',1),(3126,205,'Dara','DA',1),(3127,205,'Dayr az Zawr','DZ',1),(3128,205,'Dimashq','DI',1),(3129,205,'Halab','HL',1),(3130,205,'Hamah','HM',1),(3131,205,'Hims','HI',1),(3132,205,'Idlib','ID',1),(3133,205,'Rif Dimashq','RD',1),(3134,205,'Tartus','TA',1),(3135,206,'Chang-hua','CH',1),(3136,206,'Chia-i','CI',1),(3137,206,'Hsin-chu','HS',1),(3138,206,'Hua-lien','HL',1),(3139,206,'I-lan','IL',1),(3140,206,'Kao-hsiung county','KH',1),(3141,206,'Kin-men','KM',1),(3142,206,'Lien-chiang','LC',1),(3143,206,'Miao-li','ML',1),(3144,206,'Nan-t\'ou','NT',1),(3145,206,'P\'eng-hu','PH',1),(3146,206,'P\'ing-tung','PT',1),(3147,206,'T\'ai-chung','TG',1),(3148,206,'T\'ai-nan','TA',1),(3149,206,'T\'ai-pei county','TP',1),(3150,206,'T\'ai-tung','TT',1),(3151,206,'T\'ao-yuan','TY',1),(3152,206,'Yun-lin','YL',1),(3153,206,'Chia-i city','CC',1),(3154,206,'Chi-lung','CL',1),(3155,206,'Hsin-chu','HC',1),(3156,206,'T\'ai-chung','TH',1),(3157,206,'T\'ai-nan','TN',1),(3158,206,'Kao-hsiung city','KC',1),(3159,206,'T\'ai-pei city','TC',1),(3160,207,'Gorno-Badakhstan','GB',1),(3161,207,'Khatlon','KT',1),(3162,207,'Sughd','SU',1),(3163,208,'Arusha','AR',1),(3164,208,'Dar es Salaam','DS',1),(3165,208,'Dodoma','DO',1),(3166,208,'Iringa','IR',1),(3167,208,'Kagera','KA',1),(3168,208,'Kigoma','KI',1),(3169,208,'Kilimanjaro','KJ',1),(3170,208,'Lindi','LN',1),(3171,208,'Manyara','MY',1),(3172,208,'Mara','MR',1),(3173,208,'Mbeya','MB',1),(3174,208,'Morogoro','MO',1),(3175,208,'Mtwara','MT',1),(3176,208,'Mwanza','MW',1),(3177,208,'Pemba North','PN',1),(3178,208,'Pemba South','PS',1),(3179,208,'Pwani','PW',1),(3180,208,'Rukwa','RK',1),(3181,208,'Ruvuma','RV',1),(3182,208,'Shinyanga','SH',1),(3183,208,'Singida','SI',1),(3184,208,'Tabora','TB',1),(3185,208,'Tanga','TN',1),(3186,208,'Zanzibar Central/South','ZC',1),(3187,208,'Zanzibar North','ZN',1),(3188,208,'Zanzibar Urban/West','ZU',1),(3189,209,'Amnat Charoen','Amnat Charoen',1),(3190,209,'Ang Thong','Ang Thong',1),(3191,209,'Ayutthaya','Ayutthaya',1),(3192,209,'Bangkok','Bangkok',1),(3193,209,'Buriram','Buriram',1),(3194,209,'Chachoengsao','Chachoengsao',1),(3195,209,'Chai Nat','Chai Nat',1),(3196,209,'Chaiyaphum','Chaiyaphum',1),(3197,209,'Chanthaburi','Chanthaburi',1),(3198,209,'Chiang Mai','Chiang Mai',1),(3199,209,'Chiang Rai','Chiang Rai',1),(3200,209,'Chon Buri','Chon Buri',1),(3201,209,'Chumphon','Chumphon',1),(3202,209,'Kalasin','Kalasin',1),(3203,209,'Kamphaeng Phet','Kamphaeng Phet',1),(3204,209,'Kanchanaburi','Kanchanaburi',1),(3205,209,'Khon Kaen','Khon Kaen',1),(3206,209,'Krabi','Krabi',1),(3207,209,'Lampang','Lampang',1),(3208,209,'Lamphun','Lamphun',1),(3209,209,'Loei','Loei',1),(3210,209,'Lop Buri','Lop Buri',1),(3211,209,'Mae Hong Son','Mae Hong Son',1),(3212,209,'Maha Sarakham','Maha Sarakham',1),(3213,209,'Mukdahan','Mukdahan',1),(3214,209,'Nakhon Nayok','Nakhon Nayok',1),(3215,209,'Nakhon Pathom','Nakhon Pathom',1),(3216,209,'Nakhon Phanom','Nakhon Phanom',1),(3217,209,'Nakhon Ratchasima','Nakhon Ratchasima',1),(3218,209,'Nakhon Sawan','Nakhon Sawan',1),(3219,209,'Nakhon Si Thammarat','Nakhon Si Thammarat',1),(3220,209,'Nan','Nan',1),(3221,209,'Narathiwat','Narathiwat',1),(3222,209,'Nong Bua Lamphu','Nong Bua Lamphu',1),(3223,209,'Nong Khai','Nong Khai',1),(3224,209,'Nonthaburi','Nonthaburi',1),(3225,209,'Pathum Thani','Pathum Thani',1),(3226,209,'Pattani','Pattani',1),(3227,209,'Phangnga','Phangnga',1),(3228,209,'Phatthalung','Phatthalung',1),(3229,209,'Phayao','Phayao',1),(3230,209,'Phetchabun','Phetchabun',1),(3231,209,'Phetchaburi','Phetchaburi',1),(3232,209,'Phichit','Phichit',1),(3233,209,'Phitsanulok','Phitsanulok',1),(3234,209,'Phrae','Phrae',1),(3235,209,'Phuket','Phuket',1),(3236,209,'Prachin Buri','Prachin Buri',1),(3237,209,'Prachuap Khiri Khan','Prachuap Khiri Khan',1),(3238,209,'Ranong','Ranong',1),(3239,209,'Ratchaburi','Ratchaburi',1),(3240,209,'Rayong','Rayong',1),(3241,209,'Roi Et','Roi Et',1),(3242,209,'Sa Kaeo','Sa Kaeo',1),(3243,209,'Sakon Nakhon','Sakon Nakhon',1),(3244,209,'Samut Prakan','Samut Prakan',1),(3245,209,'Samut Sakhon','Samut Sakhon',1),(3246,209,'Samut Songkhram','Samut Songkhram',1),(3247,209,'Sara Buri','Sara Buri',1),(3248,209,'Satun','Satun',1),(3249,209,'Sing Buri','Sing Buri',1),(3250,209,'Sisaket','Sisaket',1),(3251,209,'Songkhla','Songkhla',1),(3252,209,'Sukhothai','Sukhothai',1),(3253,209,'Suphan Buri','Suphan Buri',1),(3254,209,'Surat Thani','Surat Thani',1),(3255,209,'Surin','Surin',1),(3256,209,'Tak','Tak',1),(3257,209,'Trang','Trang',1),(3258,209,'Trat','Trat',1),(3259,209,'Ubon Ratchathani','Ubon Ratchathani',1),(3260,209,'Udon Thani','Udon Thani',1),(3261,209,'Uthai Thani','Uthai Thani',1),(3262,209,'Uttaradit','Uttaradit',1),(3263,209,'Yala','Yala',1),(3264,209,'Yasothon','Yasothon',1),(3265,210,'Kara','K',1),(3266,210,'Plateaux','P',1),(3267,210,'Savanes','S',1),(3268,210,'Centrale','C',1),(3269,210,'Maritime','M',1),(3270,211,'Atafu','A',1),(3271,211,'Fakaofo','F',1),(3272,211,'Nukunonu','N',1),(3273,212,'Ha\'apai','H',1),(3274,212,'Tongatapu','T',1),(3275,212,'Vava\'u','V',1),(3276,213,'Couva/Tabaquite/Talparo','CT',1),(3277,213,'Diego Martin','DM',1),(3278,213,'Mayaro/Rio Claro','MR',1),(3279,213,'Penal/Debe','PD',1),(3280,213,'Princes Town','PT',1),(3281,213,'Sangre Grande','SG',1),(3282,213,'San Juan/Laventille','SL',1),(3283,213,'Siparia','SI',1),(3284,213,'Tunapuna/Piarco','TP',1),(3285,213,'Port of Spain','PS',1),(3286,213,'San Fernando','SF',1),(3287,213,'Arima','AR',1),(3288,213,'Point Fortin','PF',1),(3289,213,'Chaguanas','CH',1),(3290,213,'Tobago','TO',1),(3291,214,'Ariana','AR',1),(3292,214,'Beja','BJ',1),(3293,214,'Ben Arous','BA',1),(3294,214,'Bizerte','BI',1),(3295,214,'Gabes','GB',1),(3296,214,'Gafsa','GF',1),(3297,214,'Jendouba','JE',1),(3298,214,'Kairouan','KR',1),(3299,214,'Kasserine','KS',1),(3300,214,'Kebili','KB',1),(3301,214,'Kef','KF',1),(3302,214,'Mahdia','MH',1),(3303,214,'Manouba','MN',1),(3304,214,'Medenine','ME',1),(3305,214,'Monastir','MO',1),(3306,214,'Nabeul','NA',1),(3307,214,'Sfax','SF',1),(3308,214,'Sidi','SD',1),(3309,214,'Siliana','SL',1),(3310,214,'Sousse','SO',1),(3311,214,'Tataouine','TA',1),(3312,214,'Tozeur','TO',1),(3313,214,'Tunis','TU',1),(3314,214,'Zaghouan','ZA',1),(3315,215,'Adana','ADA',1),(3316,215,'Adıyaman','ADI',1),(3317,215,'Afyonkarahisar','AFY',1),(3318,215,'Ağrı','AGR',1),(3319,215,'Aksaray','AKS',1),(3320,215,'Amasya','AMA',1),(3321,215,'Ankara','ANK',1),(3322,215,'Antalya','ANT',1),(3323,215,'Ardahan','ARD',1),(3324,215,'Artvin','ART',1),(3325,215,'Aydın','AYI',1),(3326,215,'Balıkesir','BAL',1),(3327,215,'Bartın','BAR',1),(3328,215,'Batman','BAT',1),(3329,215,'Bayburt','BAY',1),(3330,215,'Bilecik','BIL',1),(3331,215,'Bingöl','BIN',1),(3332,215,'Bitlis','BIT',1),(3333,215,'Bolu','BOL',1),(3334,215,'Burdur','BRD',1),(3335,215,'Bursa','BRS',1),(3336,215,'Çanakkale','CKL',1),(3337,215,'Çankırı','CKR',1),(3338,215,'Çorum','COR',1),(3339,215,'Denizli','DEN',1),(3340,215,'Diyarbakır','DIY',1),(3341,215,'Düzce','DUZ',1),(3342,215,'Edirne','EDI',1),(3343,215,'Elazığ','ELA',1),(3344,215,'Erzincan','EZC',1),(3345,215,'Erzurum','EZR',1),(3346,215,'Eskişehir','ESK',1),(3347,215,'Gaziantep','GAZ',1),(3348,215,'Giresun','GIR',1),(3349,215,'Gümüşhane','GMS',1),(3350,215,'Hakkari','HKR',1),(3351,215,'Hatay','HTY',1),(3352,215,'Iğdır','IGD',1),(3353,215,'Isparta','ISP',1),(3354,215,'İstanbul','IST',1),(3355,215,'İzmir','IZM',1),(3356,215,'Kahramanmaraş','KAH',1),(3357,215,'Karabük','KRB',1),(3358,215,'Karaman','KRM',1),(3359,215,'Kars','KRS',1),(3360,215,'Kastamonu','KAS',1),(3361,215,'Kayseri','KAY',1),(3362,215,'Kilis','KLS',1),(3363,215,'Kırıkkale','KRK',1),(3364,215,'Kırklareli','KLR',1),(3365,215,'Kırşehir','KRH',1),(3366,215,'Kocaeli','KOC',1),(3367,215,'Konya','KON',1),(3368,215,'Kütahya','KUT',1),(3369,215,'Malatya','MAL',1),(3370,215,'Manisa','MAN',1),(3371,215,'Mardin','MAR',1),(3372,215,'Mersin','MER',1),(3373,215,'Muğla','MUG',1),(3374,215,'Muş','MUS',1),(3375,215,'Nevşehir','NEV',1),(3376,215,'Niğde','NIG',1),(3377,215,'Ordu','ORD',1),(3378,215,'Osmaniye','OSM',1),(3379,215,'Rize','RIZ',1),(3380,215,'Sakarya','SAK',1),(3381,215,'Samsun','SAM',1),(3382,215,'Şanlıurfa','SAN',1),(3383,215,'Siirt','SII',1),(3384,215,'Sinop','SIN',1),(3385,215,'Şırnak','SIR',1),(3386,215,'Sivas','SIV',1),(3387,215,'Tekirdağ','TEL',1),(3388,215,'Tokat','TOK',1),(3389,215,'Trabzon','TRA',1),(3390,215,'Tunceli','TUN',1),(3391,215,'Uşak','USK',1),(3392,215,'Van','VAN',1),(3393,215,'Yalova','YAL',1),(3394,215,'Yozgat','YOZ',1),(3395,215,'Zonguldak','ZON',1),(3396,216,'Ahal Welayaty','A',1),(3397,216,'Balkan Welayaty','B',1),(3398,216,'Dashhowuz Welayaty','D',1),(3399,216,'Lebap Welayaty','L',1),(3400,216,'Mary Welayaty','M',1),(3401,217,'Ambergris Cays','AC',1),(3402,217,'Dellis Cay','DC',1),(3403,217,'French Cay','FC',1),(3404,217,'Little Water Cay','LW',1),(3405,217,'Parrot Cay','RC',1),(3406,217,'Pine Cay','PN',1),(3407,217,'Salt Cay','SL',1),(3408,217,'Grand Turk','GT',1),(3409,217,'South Caicos','SC',1),(3410,217,'East Caicos','EC',1),(3411,217,'Middle Caicos','MC',1),(3412,217,'North Caicos','NC',1),(3413,217,'Providenciales','PR',1),(3414,217,'West Caicos','WC',1),(3415,218,'Nanumanga','NMG',1),(3416,218,'Niulakita','NLK',1),(3417,218,'Niutao','NTO',1),(3418,218,'Funafuti','FUN',1),(3419,218,'Nanumea','NME',1),(3420,218,'Nui','NUI',1),(3421,218,'Nukufetau','NFT',1),(3422,218,'Nukulaelae','NLL',1),(3423,218,'Vaitupu','VAI',1),(3424,219,'Kalangala','KAL',1),(3425,219,'Kampala','KMP',1),(3426,219,'Kayunga','KAY',1),(3427,219,'Kiboga','KIB',1),(3428,219,'Luwero','LUW',1),(3429,219,'Masaka','MAS',1),(3430,219,'Mpigi','MPI',1),(3431,219,'Mubende','MUB',1),(3432,219,'Mukono','MUK',1),(3433,219,'Nakasongola','NKS',1),(3434,219,'Rakai','RAK',1),(3435,219,'Sembabule','SEM',1),(3436,219,'Wakiso','WAK',1),(3437,219,'Bugiri','BUG',1),(3438,219,'Busia','BUS',1),(3439,219,'Iganga','IGA',1),(3440,219,'Jinja','JIN',1),(3441,219,'Kaberamaido','KAB',1),(3442,219,'Kamuli','KML',1),(3443,219,'Kapchorwa','KPC',1),(3444,219,'Katakwi','KTK',1),(3445,219,'Kumi','KUM',1),(3446,219,'Mayuge','MAY',1),(3447,219,'Mbale','MBA',1),(3448,219,'Pallisa','PAL',1),(3449,219,'Sironko','SIR',1),(3450,219,'Soroti','SOR',1),(3451,219,'Tororo','TOR',1),(3452,219,'Adjumani','ADJ',1),(3453,219,'Apac','APC',1),(3454,219,'Arua','ARU',1),(3455,219,'Gulu','GUL',1),(3456,219,'Kitgum','KIT',1),(3457,219,'Kotido','KOT',1),(3458,219,'Lira','LIR',1),(3459,219,'Moroto','MRT',1),(3460,219,'Moyo','MOY',1),(3461,219,'Nakapiripirit','NAK',1),(3462,219,'Nebbi','NEB',1),(3463,219,'Pader','PAD',1),(3464,219,'Yumbe','YUM',1),(3465,219,'Bundibugyo','BUN',1),(3466,219,'Bushenyi','BSH',1),(3467,219,'Hoima','HOI',1),(3468,219,'Kabale','KBL',1),(3469,219,'Kabarole','KAR',1),(3470,219,'Kamwenge','KAM',1),(3471,219,'Kanungu','KAN',1),(3472,219,'Kasese','KAS',1),(3473,219,'Kibaale','KBA',1),(3474,219,'Kisoro','KIS',1),(3475,219,'Kyenjojo','KYE',1),(3476,219,'Masindi','MSN',1),(3477,219,'Mbarara','MBR',1),(3478,219,'Ntungamo','NTU',1),(3479,219,'Rukungiri','RUK',1),(3480,220,'Cherkas\'ka Oblast\'','71',1),(3481,220,'Chernihivs\'ka Oblast\'','74',1),(3482,220,'Chernivets\'ka Oblast\'','77',1),(3483,220,'Crimea','43',1),(3484,220,'Dnipropetrovs\'ka Oblast\'','12',1),(3485,220,'Donets\'ka Oblast\'','14',1),(3486,220,'Ivano-Frankivs\'ka Oblast\'','26',1),(3487,220,'Khersons\'ka Oblast\'','65',1),(3488,220,'Khmel\'nyts\'ka Oblast\'','68',1),(3489,220,'Kirovohrads\'ka Oblast\'','35',1),(3490,220,'Kyiv','30',1),(3491,220,'Kyivs\'ka Oblast\'','32',1),(3492,220,'Luhans\'ka Oblast\'','09',1),(3493,220,'L\'vivs\'ka Oblast\'','46',1),(3494,220,'Mykolayivs\'ka Oblast\'','48',1),(3495,220,'Odes\'ka Oblast\'','51',1),(3496,220,'Poltavs\'ka Oblast\'','53',1),(3497,220,'Rivnens\'ka Oblast\'','56',1),(3498,220,'Sevastopol\'','40',1),(3499,220,'Sums\'ka Oblast\'','59',1),(3500,220,'Ternopil\'s\'ka Oblast\'','61',1),(3501,220,'Vinnyts\'ka Oblast\'','05',1),(3502,220,'Volyns\'ka Oblast\'','07',1),(3503,220,'Zakarpats\'ka Oblast\'','21',1),(3504,220,'Zaporiz\'ka Oblast\'','23',1),(3505,220,'Zhytomyrs\'ka oblast\'','18',1),(3506,221,'Abu Zaby','AZ',1),(3507,221,'\'Ajman','AJ',1),(3508,221,'Al Fujayrah','FU',1),(3509,221,'Ash Shariqah','SH',1),(3510,221,'Dubayy','DU',1),(3511,221,'R\'as al Khaymah','RK',1),(3512,221,'Umm al Qaywayn','UQ',1),(3513,222,'Aberdeen','ABN',1),(3514,222,'Aberdeenshire','ABNS',1),(3515,222,'Anglesey','ANG',1),(3516,222,'Angus','AGS',1),(3517,222,'Argyll and Bute','ARY',1),(3518,222,'Bedfordshire','BEDS',1),(3519,222,'Berkshire','BERKS',1),(3520,222,'Blaenau Gwent','BLA',1),(3521,222,'Bridgend','BRI',1),(3522,222,'Bristol','BSTL',1),(3523,222,'Buckinghamshire','BUCKS',1),(3524,222,'Caerphilly','CAE',1),(3525,222,'Cambridgeshire','CAMBS',1),(3526,222,'Cardiff','CDF',1),(3527,222,'Carmarthenshire','CARM',1),(3528,222,'Ceredigion','CDGN',1),(3529,222,'Cheshire','CHES',1),(3530,222,'Clackmannanshire','CLACK',1),(3531,222,'Conwy','CON',1),(3532,222,'Cornwall','CORN',1),(3533,222,'Denbighshire','DNBG',1),(3534,222,'Derbyshire','DERBY',1),(3535,222,'Devon','DVN',1),(3536,222,'Dorset','DOR',1),(3537,222,'Dumfries and Galloway','DGL',1),(3538,222,'Dundee','DUND',1),(3539,222,'Durham','DHM',1),(3540,222,'East Ayrshire','ARYE',1),(3541,222,'East Dunbartonshire','DUNBE',1),(3542,222,'East Lothian','LOTE',1),(3543,222,'East Renfrewshire','RENE',1),(3544,222,'East Riding of Yorkshire','ERYS',1),(3545,222,'East Sussex','SXE',1),(3546,222,'Edinburgh','EDIN',1),(3547,222,'Essex','ESX',1),(3548,222,'Falkirk','FALK',1),(3549,222,'Fife','FFE',1),(3550,222,'Flintshire','FLINT',1),(3551,222,'Glasgow','GLAS',1),(3552,222,'Gloucestershire','GLOS',1),(3553,222,'Greater London','LDN',1),(3554,222,'Greater Manchester','MCH',1),(3555,222,'Gwynedd','GDD',1),(3556,222,'Hampshire','HANTS',1),(3557,222,'Herefordshire','HWR',1),(3558,222,'Hertfordshire','HERTS',1),(3559,222,'Highlands','HLD',1),(3560,222,'Inverclyde','IVER',1),(3561,222,'Isle of Wight','IOW',1),(3562,222,'Kent','KNT',1),(3563,222,'Lancashire','LANCS',1),(3564,222,'Leicestershire','LEICS',1),(3565,222,'Lincolnshire','LINCS',1),(3566,222,'Merseyside','MSY',1),(3567,222,'Merthyr Tydfil','MERT',1),(3568,222,'Midlothian','MLOT',1),(3569,222,'Monmouthshire','MMOUTH',1),(3570,222,'Moray','MORAY',1),(3571,222,'Neath Port Talbot','NPRTAL',1),(3572,222,'Newport','NEWPT',1),(3573,222,'Norfolk','NOR',1),(3574,222,'North Ayrshire','ARYN',1),(3575,222,'North Lanarkshire','LANN',1),(3576,222,'North Yorkshire','YSN',1),(3577,222,'Northamptonshire','NHM',1),(3578,222,'Northumberland','NLD',1),(3579,222,'Nottinghamshire','NOT',1),(3580,222,'Orkney Islands','ORK',1),(3581,222,'Oxfordshire','OFE',1),(3582,222,'Pembrokeshire','PEM',1),(3583,222,'Perth and Kinross','PERTH',1),(3584,222,'Powys','PWS',1),(3585,222,'Renfrewshire','REN',1),(3586,222,'Rhondda Cynon Taff','RHON',1),(3587,222,'Rutland','RUT',1),(3588,222,'Scottish Borders','BOR',1),(3589,222,'Shetland Islands','SHET',1),(3590,222,'Shropshire','SPE',1),(3591,222,'Somerset','SOM',1),(3592,222,'South Ayrshire','ARYS',1),(3593,222,'South Lanarkshire','LANS',1),(3594,222,'South Yorkshire','YSS',1),(3595,222,'Staffordshire','SFD',1),(3596,222,'Stirling','STIR',1),(3597,222,'Suffolk','SFK',1),(3598,222,'Surrey','SRY',1),(3599,222,'Swansea','SWAN',1),(3600,222,'Torfaen','TORF',1),(3601,222,'Tyne and Wear','TWR',1),(3602,222,'Vale of Glamorgan','VGLAM',1),(3603,222,'Warwickshire','WARKS',1),(3604,222,'West Dunbartonshire','WDUN',1),(3605,222,'West Lothian','WLOT',1),(3606,222,'West Midlands','WMD',1),(3607,222,'West Sussex','SXW',1),(3608,222,'West Yorkshire','YSW',1),(3609,222,'Western Isles','WIL',1),(3610,222,'Wiltshire','WLT',1),(3611,222,'Worcestershire','WORCS',1),(3612,222,'Wrexham','WRX',1),(3613,223,'Alabama','AL',1),(3614,223,'Alaska','AK',1),(3615,223,'American Samoa','AS',1),(3616,223,'Arizona','AZ',1),(3617,223,'Arkansas','AR',1),(3618,223,'Armed Forces Africa','AF',1),(3619,223,'Armed Forces Americas','AA',1),(3620,223,'Armed Forces Canada','AC',1),(3621,223,'Armed Forces Europe','AE',1),(3622,223,'Armed Forces Middle East','AM',1),(3623,223,'Armed Forces Pacific','AP',1),(3624,223,'California','CA',1),(3625,223,'Colorado','CO',1),(3626,223,'Connecticut','CT',1),(3627,223,'Delaware','DE',1),(3628,223,'District of Columbia','DC',1),(3629,223,'Federated States Of Micronesia','FM',1),(3630,223,'Florida','FL',1),(3631,223,'Georgia','GA',1),(3632,223,'Guam','GU',1),(3633,223,'Hawaii','HI',1),(3634,223,'Idaho','ID',1),(3635,223,'Illinois','IL',1),(3636,223,'Indiana','IN',1),(3637,223,'Iowa','IA',1),(3638,223,'Kansas','KS',1),(3639,223,'Kentucky','KY',1),(3640,223,'Louisiana','LA',1),(3641,223,'Maine','ME',1),(3642,223,'Marshall Islands','MH',1),(3643,223,'Maryland','MD',1),(3644,223,'Massachusetts','MA',1),(3645,223,'Michigan','MI',1),(3646,223,'Minnesota','MN',1),(3647,223,'Mississippi','MS',1),(3648,223,'Missouri','MO',1),(3649,223,'Montana','MT',1),(3650,223,'Nebraska','NE',1),(3651,223,'Nevada','NV',1),(3652,223,'New Hampshire','NH',1),(3653,223,'New Jersey','NJ',1),(3654,223,'New Mexico','NM',1),(3655,223,'New York','NY',1),(3656,223,'North Carolina','NC',1),(3657,223,'North Dakota','ND',1),(3658,223,'Northern Mariana Islands','MP',1),(3659,223,'Ohio','OH',1),(3660,223,'Oklahoma','OK',1),(3661,223,'Oregon','OR',1),(3662,223,'Palau','PW',1),(3663,223,'Pennsylvania','PA',1),(3664,223,'Puerto Rico','PR',1),(3665,223,'Rhode Island','RI',1),(3666,223,'South Carolina','SC',1),(3667,223,'South Dakota','SD',1),(3668,223,'Tennessee','TN',1),(3669,223,'Texas','TX',1),(3670,223,'Utah','UT',1),(3671,223,'Vermont','VT',1),(3672,223,'Virgin Islands','VI',1),(3673,223,'Virginia','VA',1),(3674,223,'Washington','WA',1),(3675,223,'West Virginia','WV',1),(3676,223,'Wisconsin','WI',1),(3677,223,'Wyoming','WY',1),(3678,224,'Baker Island','BI',1),(3679,224,'Howland Island','HI',1),(3680,224,'Jarvis Island','JI',1),(3681,224,'Johnston Atoll','JA',1),(3682,224,'Kingman Reef','KR',1),(3683,224,'Midway Atoll','MA',1),(3684,224,'Navassa Island','NI',1),(3685,224,'Palmyra Atoll','PA',1),(3686,224,'Wake Island','WI',1),(3687,225,'Artigas','AR',1),(3688,225,'Canelones','CA',1),(3689,225,'Cerro Largo','CL',1),(3690,225,'Colonia','CO',1),(3691,225,'Durazno','DU',1),(3692,225,'Flores','FS',1),(3693,225,'Florida','FA',1),(3694,225,'Lavalleja','LA',1),(3695,225,'Maldonado','MA',1),(3696,225,'Montevideo','MO',1),(3697,225,'Paysandu','PA',1),(3698,225,'Rio Negro','RN',1),(3699,225,'Rivera','RV',1),(3700,225,'Rocha','RO',1),(3701,225,'Salto','SL',1),(3702,225,'San Jose','SJ',1),(3703,225,'Soriano','SO',1),(3704,225,'Tacuarembo','TA',1),(3705,225,'Treinta y Tres','TT',1),(3706,226,'Andijon','AN',1),(3707,226,'Buxoro','BU',1),(3708,226,'Farg\'ona','FA',1),(3709,226,'Jizzax','JI',1),(3710,226,'Namangan','NG',1),(3711,226,'Navoiy','NW',1),(3712,226,'Qashqadaryo','QA',1),(3713,226,'Qoraqalpog\'iston Republikasi','QR',1),(3714,226,'Samarqand','SA',1),(3715,226,'Sirdaryo','SI',1),(3716,226,'Surxondaryo','SU',1),(3717,226,'Toshkent City','TK',1),(3718,226,'Toshkent Region','TO',1),(3719,226,'Xorazm','XO',1),(3720,227,'Malampa','MA',1),(3721,227,'Penama','PE',1),(3722,227,'Sanma','SA',1),(3723,227,'Shefa','SH',1),(3724,227,'Tafea','TA',1),(3725,227,'Torba','TO',1),(3726,229,'Amazonas','AM',1),(3727,229,'Anzoategui','AN',1),(3728,229,'Apure','AP',1),(3729,229,'Aragua','AR',1),(3730,229,'Barinas','BA',1),(3731,229,'Bolivar','BO',1),(3732,229,'Carabobo','CA',1),(3733,229,'Cojedes','CO',1),(3734,229,'Delta Amacuro','DA',1),(3735,229,'Dependencias Federales','DF',1),(3736,229,'Distrito Federal','DI',1),(3737,229,'Falcon','FA',1),(3738,229,'Guarico','GU',1),(3739,229,'Lara','LA',1),(3740,229,'Merida','ME',1),(3741,229,'Miranda','MI',1),(3742,229,'Monagas','MO',1),(3743,229,'Nueva Esparta','NE',1),(3744,229,'Portuguesa','PO',1),(3745,229,'Sucre','SU',1),(3746,229,'Tachira','TA',1),(3747,229,'Trujillo','TR',1),(3748,229,'Vargas','VA',1),(3749,229,'Yaracuy','YA',1),(3750,229,'Zulia','ZU',1),(3751,230,'An Giang','AG',1),(3752,230,'Bac Giang','BG',1),(3753,230,'Bac Kan','BK',1),(3754,230,'Bac Lieu','BL',1),(3755,230,'Bac Ninh','BC',1),(3756,230,'Ba Ria-Vung Tau','BR',1),(3757,230,'Ben Tre','BN',1),(3758,230,'Binh Dinh','BH',1),(3759,230,'Binh Duong','BU',1),(3760,230,'Binh Phuoc','BP',1),(3761,230,'Binh Thuan','BT',1),(3762,230,'Ca Mau','CM',1),(3763,230,'Can Tho','CT',1),(3764,230,'Cao Bang','CB',1),(3765,230,'Dak Lak','DL',1),(3766,230,'Dak Nong','DG',1),(3767,230,'Da Nang','DN',1),(3768,230,'Dien Bien','DB',1),(3769,230,'Dong Nai','DI',1),(3770,230,'Dong Thap','DT',1),(3771,230,'Gia Lai','GL',1),(3772,230,'Ha Giang','HG',1),(3773,230,'Hai Duong','HD',1),(3774,230,'Hai Phong','HP',1),(3775,230,'Ha Nam','HM',1),(3776,230,'Ha Noi','HI',1),(3777,230,'Ha Tay','HT',1),(3778,230,'Ha Tinh','HH',1),(3779,230,'Hoa Binh','HB',1),(3780,230,'Ho Chi Minh City','HC',1),(3781,230,'Hau Giang','HU',1),(3782,230,'Hung Yen','HY',1),(3783,232,'Saint Croix','C',1),(3784,232,'Saint John','J',1),(3785,232,'Saint Thomas','T',1),(3786,233,'Alo','A',1),(3787,233,'Sigave','S',1),(3788,233,'Wallis','W',1),(3789,235,'Abyan','AB',1),(3790,235,'Adan','AD',1),(3791,235,'Amran','AM',1),(3792,235,'Al Bayda','BA',1),(3793,235,'Ad Dali','DA',1),(3794,235,'Dhamar','DH',1),(3795,235,'Hadramawt','HD',1),(3796,235,'Hajjah','HJ',1),(3797,235,'Al Hudaydah','HU',1),(3798,235,'Ibb','IB',1),(3799,235,'Al Jawf','JA',1),(3800,235,'Lahij','LA',1),(3801,235,'Ma\'rib','MA',1),(3802,235,'Al Mahrah','MR',1),(3803,235,'Al Mahwit','MW',1),(3804,235,'Sa\'dah','SD',1),(3805,235,'San\'a','SN',1),(3806,235,'Shabwah','SH',1),(3807,235,'Ta\'izz','TA',1),(3812,237,'Bas-Congo','BC',1),(3813,237,'Bandundu','BN',1),(3814,237,'Equateur','EQ',1),(3815,237,'Katanga','KA',1),(3816,237,'Kasai-Oriental','KE',1),(3817,237,'Kinshasa','KN',1),(3818,237,'Kasai-Occidental','KW',1),(3819,237,'Maniema','MA',1),(3820,237,'Nord-Kivu','NK',1),(3821,237,'Orientale','OR',1),(3822,237,'Sud-Kivu','SK',1),(3823,238,'Central','CE',1),(3824,238,'Copperbelt','CB',1),(3825,238,'Eastern','EA',1),(3826,238,'Luapula','LP',1),(3827,238,'Lusaka','LK',1),(3828,238,'Northern','NO',1),(3829,238,'North-Western','NW',1),(3830,238,'Southern','SO',1),(3831,238,'Western','WE',1),(3832,239,'Bulawayo','BU',1),(3833,239,'Harare','HA',1),(3834,239,'Manicaland','ML',1),(3835,239,'Mashonaland Central','MC',1),(3836,239,'Mashonaland East','ME',1),(3837,239,'Mashonaland West','MW',1),(3838,239,'Masvingo','MV',1),(3839,239,'Matabeleland North','MN',1),(3840,239,'Matabeleland South','MS',1),(3841,239,'Midlands','MD',1),(3861,105,'Campobasso','CB',1),(3862,105,'Carbonia-Iglesias','CI',1),(3863,105,'Caserta','CE',1),(3864,105,'Catania','CT',1),(3865,105,'Catanzaro','CZ',1),(3866,105,'Chieti','CH',1),(3867,105,'Como','CO',1),(3868,105,'Cosenza','CS',1),(3869,105,'Cremona','CR',1),(3870,105,'Crotone','KR',1),(3871,105,'Cuneo','CN',1),(3872,105,'Enna','EN',1),(3873,105,'Ferrara','FE',1),(3874,105,'Firenze','FI',1),(3875,105,'Foggia','FG',1),(3876,105,'Forli-Cesena','FC',1),(3877,105,'Frosinone','FR',1),(3878,105,'Genova','GE',1),(3879,105,'Gorizia','GO',1),(3880,105,'Grosseto','GR',1),(3881,105,'Imperia','IM',1),(3882,105,'Isernia','IS',1),(3883,105,'L&#39;Aquila','AQ',1),(3884,105,'La Spezia','SP',1),(3885,105,'Latina','LT',1),(3886,105,'Lecce','LE',1),(3887,105,'Lecco','LC',1),(3888,105,'Livorno','LI',1),(3889,105,'Lodi','LO',1),(3890,105,'Lucca','LU',1),(3891,105,'Macerata','MC',1),(3892,105,'Mantova','MN',1),(3893,105,'Massa-Carrara','MS',1),(3894,105,'Matera','MT',1),(3895,105,'Medio Campidano','VS',1),(3896,105,'Messina','ME',1),(3897,105,'Milano','MI',1),(3898,105,'Modena','MO',1),(3899,105,'Napoli','NA',1),(3900,105,'Novara','NO',1),(3901,105,'Nuoro','NU',1),(3902,105,'Ogliastra','OG',1),(3903,105,'Olbia-Tempio','OT',1),(3904,105,'Oristano','OR',1),(3905,105,'Padova','PD',1),(3906,105,'Palermo','PA',1),(3907,105,'Parma','PR',1),(3908,105,'Pavia','PV',1),(3909,105,'Perugia','PG',1),(3910,105,'Pesaro e Urbino','PU',1),(3911,105,'Pescara','PE',1),(3912,105,'Piacenza','PC',1),(3913,105,'Pisa','PI',1),(3914,105,'Pistoia','PT',1),(3915,105,'Pordenone','PN',1),(3916,105,'Potenza','PZ',1),(3917,105,'Prato','PO',1),(3918,105,'Ragusa','RG',1),(3919,105,'Ravenna','RA',1),(3920,105,'Reggio Calabria','RC',1),(3921,105,'Reggio Emilia','RE',1),(3922,105,'Rieti','RI',1),(3923,105,'Rimini','RN',1),(3924,105,'Roma','RM',1),(3925,105,'Rovigo','RO',1),(3926,105,'Salerno','SA',1),(3927,105,'Sassari','SS',1),(3928,105,'Savona','SV',1),(3929,105,'Siena','SI',1),(3930,105,'Siracusa','SR',1),(3931,105,'Sondrio','SO',1),(3932,105,'Taranto','TA',1),(3933,105,'Teramo','TE',1),(3934,105,'Terni','TR',1),(3935,105,'Torino','TO',1),(3936,105,'Trapani','TP',1),(3937,105,'Trento','TN',1),(3938,105,'Treviso','TV',1),(3939,105,'Trieste','TS',1),(3940,105,'Udine','UD',1),(3941,105,'Varese','VA',1),(3942,105,'Venezia','VE',1),(3943,105,'Verbano-Cusio-Ossola','VB',1),(3944,105,'Vercelli','VC',1),(3945,105,'Verona','VR',1),(3946,105,'Vibo Valentia','VV',1),(3947,105,'Vicenza','VI',1),(3948,105,'Viterbo','VT',1),(3949,222,'County Antrim','ANT',1),(3950,222,'County Armagh','ARM',1),(3951,222,'County Down','DOW',1),(3952,222,'County Fermanagh','FER',1),(3953,222,'County Londonderry','LDY',1),(3954,222,'County Tyrone','TYR',1),(3955,222,'Cumbria','CMA',1),(3956,190,'Pomurska','1',1),(3957,190,'Podravska','2',1),(3958,190,'Koroška','3',1),(3959,190,'Savinjska','4',1),(3960,190,'Zasavska','5',1),(3961,190,'Spodnjeposavska','6',1),(3962,190,'Jugovzhodna Slovenija','7',1),(3963,190,'Osrednjeslovenska','8',1),(3964,190,'Gorenjska','9',1),(3965,190,'Notranjsko-kraška','10',1),(3966,190,'Goriška','11',1),(3967,190,'Obalno-kraška','12',1),(3968,33,'Ruse','',1),(3969,101,'Alborz','ALB',1),(3970,21,'Brussels-Capital Region','BRU',1),(3971,138,'Aguascalientes','AG',1),(3973,242,'Andrijevica','01',1),(3974,242,'Bar','02',1),(3975,242,'Berane','03',1),(3976,242,'Bijelo Polje','04',1),(3977,242,'Budva','05',1),(3978,242,'Cetinje','06',1),(3979,242,'Danilovgrad','07',1),(3980,242,'Herceg-Novi','08',1),(3981,242,'Kolašin','09',1),(3982,242,'Kotor','10',1),(3983,242,'Mojkovac','11',1),(3984,242,'Nikšić','12',1),(3985,242,'Plav','13',1),(3986,242,'Pljevlja','14',1),(3987,242,'Plužine','15',1),(3988,242,'Podgorica','16',1),(3989,242,'Rožaje','17',1),(3990,242,'Šavnik','18',1),(3991,242,'Tivat','19',1),(3992,242,'Ulcinj','20',1),(3993,242,'Žabljak','21',1),(3994,243,'Belgrade','00',1),(3995,243,'North Bačka','01',1),(3996,243,'Central Banat','02',1),(3997,243,'North Banat','03',1),(3998,243,'South Banat','04',1),(3999,243,'West Bačka','05',1),(4000,243,'South Bačka','06',1),(4001,243,'Srem','07',1),(4002,243,'Mačva','08',1),(4003,243,'Kolubara','09',1),(4004,243,'Podunavlje','10',1),(4005,243,'Braničevo','11',1),(4006,243,'Šumadija','12',1),(4007,243,'Pomoravlje','13',1),(4008,243,'Bor','14',1),(4009,243,'Zaječar','15',1),(4010,243,'Zlatibor','16',1),(4011,243,'Moravica','17',1),(4012,243,'Raška','18',1),(4013,243,'Rasina','19',1),(4014,243,'Nišava','20',1),(4015,243,'Toplica','21',1),(4016,243,'Pirot','22',1),(4017,243,'Jablanica','23',1),(4018,243,'Pčinja','24',1),(4020,245,'Bonaire','BO',1),(4021,245,'Saba','SA',1),(4022,245,'Sint Eustatius','SE',1),(4023,248,'Central Equatoria','EC',1),(4024,248,'Eastern Equatoria','EE',1),(4025,248,'Jonglei','JG',1),(4026,248,'Lakes','LK',1),(4027,248,'Northern Bahr el-Ghazal','BN',1),(4028,248,'Unity','UY',1),(4029,248,'Upper Nile','NU',1),(4030,248,'Warrap','WR',1),(4031,248,'Western Bahr el-Ghazal','BW',1),(4032,248,'Western Equatoria','EW',1),(4036,117,'Ainaži, Salacgrīvas novads','0661405',1),(4037,117,'Aizkraukle, Aizkraukles novads','0320201',1),(4038,117,'Aizkraukles novads','0320200',1),(4039,117,'Aizpute, Aizputes novads','0640605',1),(4040,117,'Aizputes novads','0640600',1),(4041,117,'Aknīste, Aknīstes novads','0560805',1),(4042,117,'Aknīstes novads','0560800',1),(4043,117,'Aloja, Alojas novads','0661007',1),(4044,117,'Alojas novads','0661000',1),(4045,117,'Alsungas novads','0624200',1),(4046,117,'Alūksne, Alūksnes novads','0360201',1),(4047,117,'Alūksnes novads','0360200',1),(4048,117,'Amatas novads','0424701',1),(4049,117,'Ape, Apes novads','0360805',1),(4050,117,'Apes novads','0360800',1),(4051,117,'Auce, Auces novads','0460805',1),(4052,117,'Auces novads','0460800',1),(4053,117,'Ādažu novads','0804400',1),(4054,117,'Babītes novads','0804900',1),(4055,117,'Baldone, Baldones novads','0800605',1),(4056,117,'Baldones novads','0800600',1),(4057,117,'Baloži, Ķekavas novads','0800807',1),(4058,117,'Baltinavas novads','0384400',1),(4059,117,'Balvi, Balvu novads','0380201',1),(4060,117,'Balvu novads','0380200',1),(4061,117,'Bauska, Bauskas novads','0400201',1),(4062,117,'Bauskas novads','0400200',1),(4063,117,'Beverīnas novads','0964700',1),(4064,117,'Brocēni, Brocēnu novads','0840605',1),(4065,117,'Brocēnu novads','0840601',1),(4066,117,'Burtnieku novads','0967101',1),(4067,117,'Carnikavas novads','0805200',1),(4068,117,'Cesvaine, Cesvaines novads','0700807',1),(4069,117,'Cesvaines novads','0700800',1),(4070,117,'Cēsis, Cēsu novads','0420201',1),(4071,117,'Cēsu novads','0420200',1),(4072,117,'Ciblas novads','0684901',1),(4073,117,'Dagda, Dagdas novads','0601009',1),(4074,117,'Dagdas novads','0601000',1),(4075,117,'Daugavpils','0050000',1),(4076,117,'Daugavpils novads','0440200',1),(4077,117,'Dobele, Dobeles novads','0460201',1),(4078,117,'Dobeles novads','0460200',1),(4079,117,'Dundagas novads','0885100',1),(4080,117,'Durbe, Durbes novads','0640807',1),(4081,117,'Durbes novads','0640801',1),(4082,117,'Engures novads','0905100',1),(4083,117,'Ērgļu novads','0705500',1),(4084,117,'Garkalnes novads','0806000',1),(4085,117,'Grobiņa, Grobiņas novads','0641009',1),(4086,117,'Grobiņas novads','0641000',1),(4087,117,'Gulbene, Gulbenes novads','0500201',1),(4088,117,'Gulbenes novads','0500200',1),(4089,117,'Iecavas novads','0406400',1),(4090,117,'Ikšķile, Ikšķiles novads','0740605',1),(4091,117,'Ikšķiles novads','0740600',1),(4092,117,'Ilūkste, Ilūkstes novads','0440807',1),(4093,117,'Ilūkstes novads','0440801',1),(4094,117,'Inčukalna novads','0801800',1),(4095,117,'Jaunjelgava, Jaunjelgavas novads','0321007',1),(4096,117,'Jaunjelgavas novads','0321000',1),(4097,117,'Jaunpiebalgas novads','0425700',1),(4098,117,'Jaunpils novads','0905700',1),(4099,117,'Jelgava','0090000',1),(4100,117,'Jelgavas novads','0540200',1),(4101,117,'Jēkabpils','0110000',1),(4102,117,'Jēkabpils novads','0560200',1),(4103,117,'Jūrmala','0130000',1),(4104,117,'Kalnciems, Jelgavas novads','0540211',1),(4105,117,'Kandava, Kandavas novads','0901211',1),(4106,117,'Kandavas novads','0901201',1),(4107,117,'Kārsava, Kārsavas novads','0681009',1),(4108,117,'Kārsavas novads','0681000',1),(4109,117,'Kocēnu novads ,bij. Valmieras)','0960200',1),(4110,117,'Kokneses novads','0326100',1),(4111,117,'Krāslava, Krāslavas novads','0600201',1),(4112,117,'Krāslavas novads','0600202',1),(4113,117,'Krimuldas novads','0806900',1),(4114,117,'Krustpils novads','0566900',1),(4115,117,'Kuldīga, Kuldīgas novads','0620201',1),(4116,117,'Kuldīgas novads','0620200',1),(4117,117,'Ķeguma novads','0741001',1),(4118,117,'Ķegums, Ķeguma novads','0741009',1),(4119,117,'Ķekavas novads','0800800',1),(4120,117,'Lielvārde, Lielvārdes novads','0741413',1),(4121,117,'Lielvārdes novads','0741401',1),(4122,117,'Liepāja','0170000',1),(4123,117,'Limbaži, Limbažu novads','0660201',1),(4124,117,'Limbažu novads','0660200',1),(4125,117,'Līgatne, Līgatnes novads','0421211',1),(4126,117,'Līgatnes novads','0421200',1),(4127,117,'Līvāni, Līvānu novads','0761211',1),(4128,117,'Līvānu novads','0761201',1),(4129,117,'Lubāna, Lubānas novads','0701413',1),(4130,117,'Lubānas novads','0701400',1),(4131,117,'Ludza, Ludzas novads','0680201',1),(4132,117,'Ludzas novads','0680200',1),(4133,117,'Madona, Madonas novads','0700201',1),(4134,117,'Madonas novads','0700200',1),(4135,117,'Mazsalaca, Mazsalacas novads','0961011',1),(4136,117,'Mazsalacas novads','0961000',1),(4137,117,'Mālpils novads','0807400',1),(4138,117,'Mārupes novads','0807600',1),(4139,117,'Mērsraga novads','0887600',1),(4140,117,'Naukšēnu novads','0967300',1),(4141,117,'Neretas novads','0327100',1),(4142,117,'Nīcas novads','0647900',1),(4143,117,'Ogre, Ogres novads','0740201',1),(4144,117,'Ogres novads','0740202',1),(4145,117,'Olaine, Olaines novads','0801009',1),(4146,117,'Olaines novads','0801000',1),(4147,117,'Ozolnieku novads','0546701',1),(4148,117,'Pārgaujas novads','0427500',1),(4149,117,'Pāvilosta, Pāvilostas novads','0641413',1),(4150,117,'Pāvilostas novads','0641401',1),(4151,117,'Piltene, Ventspils novads','0980213',1),(4152,117,'Pļaviņas, Pļaviņu novads','0321413',1),(4153,117,'Pļaviņu novads','0321400',1),(4154,117,'Preiļi, Preiļu novads','0760201',1),(4155,117,'Preiļu novads','0760202',1),(4156,117,'Priekule, Priekules novads','0641615',1),(4157,117,'Priekules novads','0641600',1),(4158,117,'Priekuļu novads','0427300',1),(4159,117,'Raunas novads','0427700',1),(4160,117,'Rēzekne','0210000',1),(4161,117,'Rēzeknes novads','0780200',1),(4162,117,'Riebiņu novads','0766300',1),(4163,117,'Rīga','0010000',1),(4164,117,'Rojas novads','0888300',1),(4165,117,'Ropažu novads','0808400',1),(4166,117,'Rucavas novads','0648500',1),(4167,117,'Rugāju novads','0387500',1),(4168,117,'Rundāles novads','0407700',1),(4169,117,'Rūjiena, Rūjienas novads','0961615',1),(4170,117,'Rūjienas novads','0961600',1),(4171,117,'Sabile, Talsu novads','0880213',1),(4172,117,'Salacgrīva, Salacgrīvas novads','0661415',1),(4173,117,'Salacgrīvas novads','0661400',1),(4174,117,'Salas novads','0568700',1),(4175,117,'Salaspils novads','0801200',1),(4176,117,'Salaspils, Salaspils novads','0801211',1),(4177,117,'Saldus novads','0840200',1),(4178,117,'Saldus, Saldus novads','0840201',1),(4179,117,'Saulkrasti, Saulkrastu novads','0801413',1),(4180,117,'Saulkrastu novads','0801400',1),(4181,117,'Seda, Strenču novads','0941813',1),(4182,117,'Sējas novads','0809200',1),(4183,117,'Sigulda, Siguldas novads','0801615',1),(4184,117,'Siguldas novads','0801601',1),(4185,117,'Skrīveru novads','0328200',1),(4186,117,'Skrunda, Skrundas novads','0621209',1),(4187,117,'Skrundas novads','0621200',1),(4188,117,'Smiltene, Smiltenes novads','0941615',1),(4189,117,'Smiltenes novads','0941600',1),(4190,117,'Staicele, Alojas novads','0661017',1),(4191,117,'Stende, Talsu novads','0880215',1),(4192,117,'Stopiņu novads','0809600',1),(4193,117,'Strenči, Strenču novads','0941817',1),(4194,117,'Strenču novads','0941800',1),(4195,117,'Subate, Ilūkstes novads','0440815',1),(4196,117,'Talsi, Talsu novads','0880201',1),(4197,117,'Talsu novads','0880200',1),(4198,117,'Tērvetes novads','0468900',1),(4199,117,'Tukuma novads','0900200',1),(4200,117,'Tukums, Tukuma novads','0900201',1),(4201,117,'Vaiņodes novads','0649300',1),(4202,117,'Valdemārpils, Talsu novads','0880217',1),(4203,117,'Valka, Valkas novads','0940201',1),(4204,117,'Valkas novads','0940200',1),(4205,117,'Valmiera','0250000',1),(4206,117,'Vangaži, Inčukalna novads','0801817',1),(4207,117,'Varakļāni, Varakļānu novads','0701817',1),(4208,117,'Varakļānu novads','0701800',1),(4209,117,'Vārkavas novads','0769101',1),(4210,117,'Vecpiebalgas novads','0429300',1),(4211,117,'Vecumnieku novads','0409500',1),(4212,117,'Ventspils','0270000',1),(4213,117,'Ventspils novads','0980200',1),(4214,117,'Viesīte, Viesītes novads','0561815',1),(4215,117,'Viesītes novads','0561800',1),(4216,117,'Viļaka, Viļakas novads','0381615',1),(4217,117,'Viļakas novads','0381600',1),(4218,117,'Viļāni, Viļānu novads','0781817',1),(4219,117,'Viļānu novads','0781800',1),(4220,117,'Zilupe, Zilupes novads','0681817',1),(4221,117,'Zilupes novads','0681801',1),(4222,43,'Arica y Parinacota','AP',1),(4223,43,'Los Rios','LR',1),(4224,220,'Kharkivs\'ka Oblast\'','63',1);
/*!40000 ALTER TABLE `oc_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

LOCK TABLES `oc_zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_zone_to_geo_zone` VALUES (1,222,0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,222,3513,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,222,3514,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,222,3515,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,222,3516,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,222,3517,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,222,3518,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,222,3519,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,222,3520,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,222,3521,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,222,3522,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,222,3523,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,222,3524,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,222,3525,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,222,3526,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,222,3527,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,222,3528,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,222,3529,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,222,3530,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,222,3531,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,222,3532,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,222,3533,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,222,3534,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,222,3535,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,222,3536,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,222,3537,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,222,3538,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,222,3539,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,222,3540,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,222,3541,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,222,3542,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,222,3543,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,222,3544,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,222,3545,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,222,3546,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,222,3547,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,222,3548,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,222,3549,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,222,3550,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,222,3551,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,222,3552,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,222,3553,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,222,3554,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,222,3555,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,222,3556,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,222,3557,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,222,3558,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,222,3559,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,222,3560,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,222,3561,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,222,3562,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,222,3563,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,222,3564,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,222,3565,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,222,3566,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,222,3567,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,222,3568,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,222,3569,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,222,3570,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,222,3571,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,222,3572,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,222,3573,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,222,3574,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,222,3575,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,222,3576,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,222,3577,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,222,3578,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,222,3579,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,222,3580,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,222,3581,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,222,3582,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,222,3583,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,222,3584,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,222,3585,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,222,3586,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,222,3587,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,222,3588,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,222,3589,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,222,3590,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,222,3591,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,222,3592,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,222,3593,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,222,3594,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,222,3595,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,222,3596,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,222,3597,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,222,3598,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,222,3599,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,222,3600,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,222,3601,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,222,3602,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,222,3603,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,222,3604,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,222,3605,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,222,3606,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,222,3607,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,222,3608,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,222,3609,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,222,3610,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,222,3611,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,222,3612,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,222,3949,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,222,3950,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,222,3951,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,222,3952,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,222,3953,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,222,3954,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,222,3955,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,222,3972,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(110,30,464,5,'2016-09-29 17:35:51','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wca_newsletter`
--

DROP TABLE IF EXISTS `wca_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wca_newsletter` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wca_newsletter`
--

LOCK TABLES `wca_newsletter` WRITE;
/*!40000 ALTER TABLE `wca_newsletter` DISABLE KEYS */;
INSERT INTO `wca_newsletter` VALUES (50,'fernando.mendes@webca.com.br'),(51,'fausto.vieira@agenciaisland.com.br'),(52,'patricia.olivani@gmail.com'),(53,'shymarow@hotmail.com'),(54,'fausto.vieira@agenciaisland.com.br'),(55,''),(56,''),(57,''),(58,'dvitacosmeticosltda@hotmail.com'),(59,'rosangela.reis@bm.com');
/*!40000 ALTER TABLE `wca_newsletter` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-31  3:51:32
