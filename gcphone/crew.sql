-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.1.36-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win32
-- HeidiSQL Sürüm:               11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- essentialmodeana için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `infinity` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `infinity`;

-- essentialmodeana.billing: ~14 rows (yaklaşık) tablosu için veriler indiriliyor esx_billing scripti gerekli!
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
REPLACE INTO `billing` (`id`, `identifier`, `sender`, `target_type`, `target`, `label`, `amount`) VALUES
	(318, 'steam:1100001190b3f39', 'steam:11000013ed26269', 'player', 'steam:11000013ed26269', 'Fatura Miktar', 40),
	(320, 'steam:110000109738f2d', 'steam:11000011b08272e', 'society', 'society_mechanic', 'Arac Teknik Servisi', 12000),
	(321, 'steam:1100001198c6272', 'steam:11000011b08272e', 'society', 'society_mechanic', 'Arac Teknik Servisi', 16000),
	(326, 'steam:110000117f324d0', 'steam:110000117988cfa', 'society', 'society_police', 'Fine:  Meurtre sur civil x1 | Non-respect d\'un feu rouge x1 | Arme léthale sortie en ville x1 |', 10430),
	(331, 'steam:1100001152318f7', 'steam:110000113168b4e', 'society', 'society_police', 'Ceza: Manifestation illégale', 250),
	(332, 'steam:1100001152318f7', 'steam:110000113168b4e', 'society', 'society_police', 'Ceza: Manifestation illégale', 250),
	(333, 'steam:1100001152318f7', 'steam:110000113168b4e', 'society', 'society_police', 'Ceza: Entrave opération de police', 130),
	(337, 'steam:110000142389c09', 'steam:110000107620ec5', 'society', 'society_mechanic', 'Arac Teknik Servisi', 350000),
	(348, 'steam:110000141feccfc', 'steam:110000136784e94', 'society', 'society_police', 'Ceza: Meurte sur agent de l\'état', 30000),
	(349, 'steam:11000014194bfbe', 'steam:1100001157c0d31', 'society', 'society_police', 'Ceza: Meurtre sur civil', 10000),
	(351, 'steam:1100001152318f7', 'steam:110000136784e94', 'society', 'society_police', 'Ceza: Meurte sur agent de l\'état', 30000),
	(354, 'steam:11000011d473a6b', 'steam:1100001157c0d31', 'society', 'society_police', 'Ceza: Fabriquation de drogue', 1500),
	(360, 'steam:11000011a3aba0f', 'steam:1100001176687eb', 'society', 'society_police', 'Ceza: Arme blanche sortie en ville', 120),
	(361, 'steam:11000011a3aba0f', 'steam:1100001176687eb', 'society', 'society_police', 'Ceza: Prise d\'ôtage agent de l\'état', 2000);
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;

-- tablo yapısı dökülüyor essentialmodeana.crew_phone_bank
CREATE TABLE IF NOT EXISTS `crew_phone_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '1',
  `identifier` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

-- essentialmodeana.crew_phone_bank: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `crew_phone_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `crew_phone_bank` ENABLE KEYS */;

-- tablo yapısı dökülüyor essentialmodeana.crew_phone_news
CREATE TABLE IF NOT EXISTS `crew_phone_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- essentialmodeana.crew_phone_news: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `crew_phone_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `crew_phone_news` ENABLE KEYS */;

-- tablo yapısı dökülüyor essentialmodeana.phone_app_chat
CREATE TABLE IF NOT EXISTS `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8;

-- essentialmodeana.phone_app_chat: ~12 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `phone_app_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_app_chat` ENABLE KEYS */;

-- tablo yapısı dökülüyor essentialmodeana.phone_calls
CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL,
  `num` varchar(10) NOT NULL,
  `incoming` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accepts` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16293 DEFAULT CHARSET=utf8;

-- essentialmodeana.phone_calls: ~2 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `phone_calls` DISABLE KEYS */;
REPLACE INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
	(16291, '7945281', '403-1447', 1, '2020-07-27 20:30:59', 0),
	(16292, '403-1447', '7945281', 0, '2020-07-27 20:30:59', 0);
/*!40000 ALTER TABLE `phone_calls` ENABLE KEYS */;

-- tablo yapısı dökülüyor essentialmodeana.phone_messages
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) NOT NULL DEFAULT '0',
  `owner` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45225 DEFAULT CHARSET=utf8;

-- essentialmodeana.phone_messages: 7 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
REPLACE INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
	(45219, '7945281', '403-1447', 'asd', '2020-07-27 20:31:16', 1, 0),
	(45220, '403-1447', '7945281', 'asd', '2020-07-27 20:31:16', 1, 1),
	(45221, '403-1447', '7945281', 's3ntex', '2020-07-27 20:31:51', 1, 0),
	(45222, '7945281', '403-1447', 's3ntex', '2020-07-27 20:31:51', 1, 1),
	(45223, '7945281', '403-1447', 's3ntex', '2020-07-27 20:31:58', 1, 0),
	(45224, '403-1447', '7945281', 's3ntex', '2020-07-27 20:31:58', 1, 1);
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;

-- tablo yapısı dökülüyor essentialmodeana.phone_users_contacts
CREATE TABLE IF NOT EXISTS `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=992 DEFAULT CHARSET=utf8;

-- essentialmodeana.phone_users_contacts: 1 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `phone_users_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_users_contacts` ENABLE KEYS */;

-- tablo yapısı dökülüyor essentialmodeana.twitter_accounts
CREATE TABLE IF NOT EXISTS `twitter_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1627 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- essentialmodeana.twitter_accounts: ~2 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `twitter_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_accounts` ENABLE KEYS */;

-- tablo yapısı dökülüyor essentialmodeana.twitter_likes
CREATE TABLE IF NOT EXISTS `twitter_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  KEY `FK_twitter_likes_twitter_tweets` (`tweetId`),
  CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=605 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- essentialmodeana.twitter_likes: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `twitter_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_likes` ENABLE KEYS */;

-- tablo yapısı dökülüyor essentialmodeana.twitter_tweets
CREATE TABLE IF NOT EXISTS `twitter_tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `likes` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_twitter_tweets_twitter_accounts` (`authorId`),
  CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10731 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- essentialmodeana.twitter_tweets: ~3 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `twitter_tweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `twitter_tweets` ENABLE KEYS */;

-- tablo yapısı dökülüyor essentialmodeana.user_billings
CREATE TABLE IF NOT EXISTS `user_billings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `amount` int(8) DEFAULT NULL,
  `sender` varchar(60) DEFAULT NULL,
  `receiverName` varchar(255) NOT NULL,
  `senderName` varchar(255) DEFAULT NULL,
  `jobb` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- essentialmodeana.user_billings: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `user_billings` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_billings` ENABLE KEYS */;

-- tablo yapısı dökülüyor essentialmodeana.yellowpages_posts
DROP TABLE IF EXISTS `yellowpages_posts`;
CREATE TABLE IF NOT EXISTS `yellowpages_posts` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`authorId` int(11) NOT NULL,
`realUser` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
`message` varchar(256) COLLATE utf8mb4_general_ci NOT NULL,
`image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
`time` timestamp NOT NULL DEFAULT current_timestamp(),
`phone` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
`likes` int(11) NOT NULL DEFAULT 0,
PRIMARY KEY (`id`),
KEY `FK_yellowpages_posts_twitter_accounts` (`authorId`),
CONSTRAINT `FK_yellowpages_posts_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb4 COLLATE=UTF8MB4_GENERAL_CI;


-- essentialmodeana.yellowpages_posts: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `yellowpages_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `yellowpages_posts` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
