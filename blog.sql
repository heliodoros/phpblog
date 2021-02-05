-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for blog
CREATE DATABASE IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `blog`;

-- Dumping structure for table blog.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table blog.posts: ~4 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT IGNORE INTO `posts` (`id`, `user_id`, `title`, `slug`, `views`, `image`, `body`, `published`, `created_at`, `updated_at`) VALUES
	(6, 1, 'First Post', 'first-post', 0, '61443142_10157164994767302_3199062925356564480_n.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc lectus orci, viverra ac tempus a, vulputate et velit. Mauris fermentum lectus at vulputate congue. Morbi posuere est quis tellus mattis viverra. Quisque tincidunt id sapien sit amet feugiat. Donec interdum volutpat suscipit. Fusce semper, felis a porta faucibus, nisl dolor convallis nibh, vitae posuere metus enim hendrerit tellus. Praesent eu feugiat lacus, non dictum ligula. Curabitur non ipsum tincidunt, aliquet tellus sed, pellentesque elit. Morbi finibus, felis quis tincidunt tristique, erat nulla volutpat lectus, ornare eleifend dui ex vitae eros. Vestibulum non gravida nibh. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.&lt;/p&gt;\r\n\r\n&lt;p&gt;Nulla tincidunt urna in felis luctus malesuada. Nam pretium nisi in nulla fringilla, vitae fringilla neque lobortis. In hac habitasse platea dictumst. Vivamus in ante laoreet arcu malesuada egestas sed ut dolor. In ac velit vulputate, varius tellus tincidunt, feugiat nulla. Nam pharetra, tellus in hendrerit tincidunt, neque purus elementum purus, ut vulputate quam ligula id nunc. In porttitor ornare tristique. Vivamus sit amet pulvinar arcu, non feugiat felis. Integer nulla risus, tincidunt id fringilla a, fringilla sed nisl. Praesent porttitor tellus ut vestibulum auctor. Sed luctus convallis consectetur. Duis egestas eros nisi, in aliquet metus faucibus sit amet. Nunc luctus ante non urna mollis fermentum.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mauris id sodales diam. Nullam porttitor lobortis vestibulum. Suspendisse mauris dui, rutrum ac consectetur ac, venenatis semper sapien. Donec et tempus neque, id placerat ligula. Etiam mi risus, posuere vel auctor ac, luctus ut dui. Sed quis auctor lectus. Pellentesque finibus id nibh in mattis. Aenean id leo lobortis, laoreet libero et, sollicitudin metus. Mauris et turpis posuere, venenatis ipsum sit amet, finibus elit. Nulla aliquam tristique arcu vel eleifend. Aenean id faucibus dui. Vivamus eget leo et ligula tincidunt pharetra quis eget nibh. Maecenas euismod elementum pulvinar. Proin a libero laoreet, interdum eros nec, sollicitudin velit. Cras vitae ligula tincidunt, semper tellus eu, malesuada purus. Donec lobortis lectus nulla, sit amet consequat est sodales et.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', 1, '2021-01-08 05:03:44', '2021-01-08 05:03:44'),
	(7, 1, 'Second Post ', 'second-post-', 0, '9-5ea2ccc530c0c__700.jpg', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc lectus orci, viverra ac tempus a, vulputate et velit. Mauris fermentum lectus at vulputate congue. Morbi posuere est quis tellus mattis viverra. Quisque tincidunt id sapien sit amet feugiat. Donec interdum volutpat suscipit. Fusce semper, felis a porta faucibus, nisl dolor convallis nibh, vitae posuere metus enim hendrerit tellus. Praesent eu feugiat lacus, non dictum ligula. Curabitur non ipsum tincidunt, aliquet tellus sed, pellentesque elit. Morbi finibus, felis quis tincidunt tristique, erat nulla volutpat lectus, ornare eleifend dui ex vitae eros. Vestibulum non gravida nibh. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.&lt;/p&gt;\r\n\r\n&lt;p&gt;Nulla tincidunt urna in felis luctus malesuada. Nam pretium nisi in nulla fringilla, vitae fringilla neque lobortis. In hac habitasse platea dictumst. Vivamus in ante laoreet arcu malesuada egestas sed ut dolor. In ac velit vulputate, varius tellus tincidunt, feugiat nulla. Nam pharetra, tellus in hendrerit tincidunt, neque purus elementum purus, ut vulputate quam ligula id nunc. In porttitor ornare tristique. Vivamus sit amet pulvinar arcu, non feugiat felis. Integer nulla risus, tincidunt id fringilla a, fringilla sed nisl. Praesent porttitor tellus ut vestibulum auctor. Sed luctus convallis consectetur. Duis egestas eros nisi, in aliquet metus faucibus sit amet. Nunc luctus ante non urna mollis fermentum.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mauris id sodales diam. Nullam porttitor lobortis vestibulum. Suspendisse mauris dui, rutrum ac consectetur ac, venenatis semper sapien. Donec et tempus neque, id placerat ligula. Etiam mi risus, posuere vel auctor ac, luctus ut dui. Sed quis auctor lectus. Pellentesque finibus id nibh in mattis. Aenean id leo lobortis, laoreet libero et, sollicitudin metus. Mauris et turpis posuere, venenatis ipsum sit amet, finibus elit. Nulla aliquam tristique arcu vel eleifend. Aenean id faucibus dui. Vivamus eget leo et ligula tincidunt pharetra quis eget nibh. Maecenas euismod elementum pulvinar. Proin a libero laoreet, interdum eros nec, sollicitudin velit. Cras vitae ligula tincidunt, semper tellus eu, malesuada purus. Donec lobortis lectus nulla, sit amet consequat est sodales et.&lt;/p&gt;\r\n', 1, '2021-01-08 05:04:00', '2021-01-08 05:04:00'),
	(10, 1, 'Chinese monk found levitating', 'chinese-monk-found-levitating', 0, 'dbf1a496bd3b1ab93ae0ab74402b0479.jpg', '&lt;h1&gt;Chinese monk found levitating&lt;/h1&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Lorem ipsum&lt;/strong&gt; dolor sit amet, consectetur &lt;em&gt;adipiscing &lt;/em&gt;elit. Nunc &lt;span class=&quot;marker&quot;&gt;lectus &lt;/span&gt;orci, viverra ac tempus a, vulputate et velit. Mauris fermentum lectus at vulputate congue. Morbi posuere est quis tellus mattis viverra. Quisque tincidunt id sapien sit amet feugiat. Donec interdum volutpat suscipit. Fusce semper, felis a porta faucibus, nisl dolor convallis nibh, vitae posuere metus enim hendrerit tellus. Praesent eu feugiat lacus, non dictum ligula. Curabitur non ipsum tincidunt, aliquet tellus sed, pellentesque elit. Morbi finibus, felis quis tincidunt tristique, erat nulla volutpat lectus, ornare eleifend dui ex vitae eros. Vestibulum non gravida nibh. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.&lt;/p&gt;\r\n\r\n&lt;p&gt;Nulla tincidunt urna in felis luctus malesuada. Nam pretium nisi in nulla fringilla, vitae fringilla neque lobortis. In hac habitasse platea dictumst. Vivamus in ante laoreet arcu malesuada egestas sed ut dolor. In ac velit vulputate, varius tellus tincidunt, feugiat nulla. Nam pharetra, tellus in hendrerit tincidunt, neque purus elementum purus, ut vulputate quam ligula id nunc. In porttitor ornare tristique. Vivamus sit amet pulvinar arcu, non feugiat felis. Integer nulla risus, tincidunt id fringilla a, fringilla sed nisl. Praesent porttitor tellus ut vestibulum auctor. Sed luctus convallis consectetur. Duis egestas eros nisi, in aliquet metus faucibus sit amet. Nunc luctus ante non urna mollis fermentum.&lt;/p&gt;\r\n\r\n&lt;p&gt;Mauris id sodales diam. Nullam porttitor lobortis vestibulum. Suspendisse mauris dui, rutrum ac consectetur ac, venenatis semper sapien. Donec et tempus neque, id placerat ligula. Etiam mi risus, posuere vel auctor ac, luctus ut dui. Sed quis auctor lectus. Pellentesque finibus id nibh in mattis. Aenean id leo lobortis, laoreet libero et, sollicitudin metus. Mauris et turpis posuere, venenatis ipsum sit amet, finibus elit. Nulla aliquam tristique arcu vel eleifend. Aenean id faucibus dui. Vivamus eget leo et ligula tincidunt pharetra quis eget nibh. Maecenas euismod elementum pulvinar. Proin a libero laoreet, interdum eros nec, sollicitudin velit. Cras vitae ligula tincidunt, semper tellus eu, malesuada purus. Donec lobortis lectus nulla, sit amet consequat est sodales et.&lt;/p&gt;\r\n', 1, '2021-02-05 18:20:37', '2021-02-05 18:20:37');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table blog.post_topic
CREATE TABLE IF NOT EXISTS `post_topic` (
  `post_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  UNIQUE KEY `Index 1` (`post_id`),
  KEY `topic_id` (`topic_id`),
  CONSTRAINT `post_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `topic_id` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table blog.post_topic: ~4 rows (approximately)
/*!40000 ALTER TABLE `post_topic` DISABLE KEYS */;
INSERT IGNORE INTO `post_topic` (`post_id`, `topic_id`) VALUES
	(6, 1),
	(7, 2),
	(10, 3);
/*!40000 ALTER TABLE `post_topic` ENABLE KEYS */;

-- Dumping structure for table blog.topics
CREATE TABLE IF NOT EXISTS `topics` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table blog.topics: ~3 rows (approximately)
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT IGNORE INTO `topics` (`id`, `name`, `slug`) VALUES
	(1, 'Inspiration', 'inspiration'),
	(2, 'Motivation', 'motivation'),
	(3, 'Diary', 'diary');
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;

-- Dumping structure for table blog.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Author','Admin') DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table blog.users: ~3 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT IGNORE INTO `users` (`id`, `username`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'info@blog.com', 'Admin', '21232f297a57a5a743894a0e4a801fc3', '2018-01-08 12:52:58', '2018-01-08 12:52:58');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
