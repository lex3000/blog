# ************************************************************
# Sequel Pro SQL dump
# Версия 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Адрес: 127.0.0.1 (MySQL 5.7.12)
# Схема: blog
# Время создания: 2016-07-12 11:45:39 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Дамп таблицы authors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `authors`;

CREATE TABLE `authors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `email`, `created_at`, `updated_at`)
VALUES
	(1,'Homer','Simpson','simpson@gmail.com','2016-07-11 12:02:49','2016-07-11 12:02:58');

/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`migration`, `batch`)
VALUES
	('2016_07_11_120045_create_authors_table',1),
	('2016_07_11_120146_create_posts_table',2),
	('2016_07_12_071036_create_tags_table',3),
	('2016_07_12_071301_create_taggables_table',3),
	('2016_07_12_105619_update_posts_add_live',4);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `teaser` text COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `live` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`),
  KEY `posts_author_id_foreign` (`author_id`),
  CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `author_id`, `title`, `slug`, `teaser`, `body`, `image`, `created_at`, `updated_at`, `live`)
VALUES
	(2,1,'Should you eat donuts?','should-you-eat-donuts','Apple pie jujubes gingerbread pastry bear claw. Ice cream chocolate cake candy canes sugar plum caramels ice cream cake. Lollipop tiramisu tiramisu. Muffin dragée lollipop chupa chups tootsie roll.','Apple pie jujubes gingerbread pastry bear claw. Ice cream chocolate cake candy canes sugar plum caramels ice cream cake. Lollipop tiramisu tiramisu. Muffin dragée lollipop chupa chups tootsie roll. Icing sesame snaps carrot cake pudding soufflé sugar plum sugar plum sweet. Cupcake danish tootsie roll chocolate candy canes cookie powder halvah tootsie roll. Bonbon gummi bears lemon drops gingerbread tiramisu croissant danish fruitcake oat cake. Pudding lemon drops chocolate cake. Candy canes caramels soufflé tiramisu wafer ice cream sugar plum topping caramels. Cupcake topping dragée jujubes chupa chups gummies jelly beans toffee macaroon. Dessert fruitcake gummies. Sesame snaps croissant chupa chups cheesecake cotton candy brownie sweet roll sweet roll gummies.\n\n__Pudding lemon drops chocolate cake. Candy canes caramels soufflé tiramisu wafer ice cream sugar plum topping caramels. Cupcake topping dragée jujubes chupa chups gummies jelly beans toffee macaroon. Dessert fruitcake gummies. Sesame snaps croissant chupa chups cheesecake cotton candy brownie sweet roll sweet roll gummies.__\n\nTiramisu jujubes bear claw sweet roll cheesecake. Fruitcake gummi bears liquorice donut. Bear claw pastry danish fruitcake croissant gingerbread croissant icing cheesecake. Tart jujubes topping. Topping bonbon liquorice sesame snaps chocolate cake macaroon toffee tootsie roll. Biscuit cupcake cookie chocolate cake sugar plum. Bonbon dessert brownie ice cream. Gingerbread ice cream topping. Cake tart donut gingerbread. Tootsie roll gummi bears chocolate wafer tootsie roll liquorice icing tiramisu. Halvah jujubes fruitcake. Sesame snaps wafer bonbon. Lemon drops icing fruitcake cupcake chupa chups jelly beans candy pudding liquorice. Chocolate bar gingerbread apple pie liquorice.\n\nSesame snaps tart brownie sweet roll gummies cotton candy candy chocolate topping. Brownie gummies chupa chups pudding oat cake topping jelly. Candy canes pie muffin topping marshmallow dragée jelly-o. Marshmallow halvah jujubes gummies croissant jujubes. Cake cheesecake pastry jujubes cheesecake tiramisu pie dessert. Toffee caramels cotton candy. Donut sweet roll carrot cake wafer cake caramels powder. Tiramisu cake tootsie roll sesame snaps bear claw bonbon candy canes. Biscuit jelly-o lemon drops jelly beans muffin. Soufflé danish dragée sweet roll donut cupcake. Toffee donut powder marzipan. Bear claw sweet chupa chups macaroon muffin cheesecake tootsie roll cookie apple pie.\n\nApple pie pastry caramels cotton candy sweet. Macaroon carrot cake cheesecake tart carrot cake icing jelly-o pudding chocolate bar. Topping muffin wafer. Cake oat cake carrot cake cotton candy candy canes liquorice. Jelly beans lemon drops marshmallow. Wafer icing lollipop. Croissant cotton candy gummi bears bear claw toffee cupcake marzipan. Halvah chocolate bar lollipop cookie jujubes. Dragée bear claw carrot cake chocolate bar. Soufflé sesame snaps topping gummies tart. Gingerbread chupa chups dessert lollipop tiramisu gummies liquorice jujubes. Cookie lollipop sugar plum dragée.\n\nCotton candy halvah halvah tiramisu cookie candy canes gummies bear claw. Chupa chups chupa chups powder gummies candy chocolate cake pastry. Pastry bonbon danish jelly beans pudding. Gummi bears tootsie roll chocolate sweet apple pie cheesecake topping candy. Tart sweet danish jelly-o chocolate bar gummies. Dragée marshmallow gummies cotton candy wafer sugar plum. Marshmallow tart dragée. Sweet roll apple pie jelly croissant wafer. Tootsie roll gummies cookie sweet roll donut pastry danish sugar plum macaroon. Chocolate cake halvah dessert cake lemon drops. Icing jujubes jelly beans marshmallow macaroon soufflé bonbon ice cream. Jelly beans chocolate cake pie jelly sesame snaps muffin powder.','http://blog.app:8000/img/bg.jpeg','2016-07-11 12:09:00','2016-07-11 12:09:00',1),
	(5,1,'Another post','another-post','Apple pie jujubes gingerbread pastry bear claw. Ice cream chocolate cake candy canes sugar plum caramels ice cream cake. Lollipop tiramisu tiramisu. Muffin dragée lollipop chupa chups tootsie roll.','Apple pie jujubes gingerbread pastry bear claw. Ice cream chocolate cake candy canes sugar plum caramels ice cream cake. Lollipop tiramisu tiramisu. Muffin dragée lollipop chupa chups tootsie roll. Icing sesame snaps carrot cake pudding soufflé sugar plum sugar plum sweet. Cupcake danish tootsie roll chocolate candy canes cookie powder halvah tootsie roll. Bonbon gummi bears lemon drops gingerbread tiramisu croissant danish fruitcake oat cake. Pudding lemon drops chocolate cake. Candy canes caramels soufflé tiramisu wafer ice cream sugar plum topping caramels. Cupcake topping dragée jujubes chupa chups gummies jelly beans toffee macaroon. Dessert fruitcake gummies. Sesame snaps croissant chupa chups cheesecake cotton candy brownie sweet roll sweet roll gummies.\n\nTiramisu jujubes bear claw sweet roll cheesecake. Fruitcake gummi bears liquorice donut. Bear claw pastry danish fruitcake croissant gingerbread croissant icing cheesecake. Tart jujubes topping. Topping bonbon liquorice sesame snaps chocolate cake macaroon toffee tootsie roll. Biscuit cupcake cookie chocolate cake sugar plum. Bonbon dessert brownie ice cream. Gingerbread ice cream topping. Cake tart donut gingerbread. Tootsie roll gummi bears chocolate wafer tootsie roll liquorice icing tiramisu. Halvah jujubes fruitcake. Sesame snaps wafer bonbon. Lemon drops icing fruitcake cupcake chupa chups jelly beans candy pudding liquorice. Chocolate bar gingerbread apple pie liquorice.\n\nSesame snaps tart brownie sweet roll gummies cotton candy candy chocolate topping. Brownie gummies chupa chups pudding oat cake topping jelly. Candy canes pie muffin topping marshmallow dragée jelly-o. Marshmallow halvah jujubes gummies croissant jujubes. Cake cheesecake pastry jujubes cheesecake tiramisu pie dessert. Toffee caramels cotton candy. Donut sweet roll carrot cake wafer cake caramels powder. Tiramisu cake tootsie roll sesame snaps bear claw bonbon candy canes. Biscuit jelly-o lemon drops jelly beans muffin. Soufflé danish dragée sweet roll donut cupcake. Toffee donut powder marzipan. Bear claw sweet chupa chups macaroon muffin cheesecake tootsie roll cookie apple pie.\n\nApple pie pastry caramels cotton candy sweet. Macaroon carrot cake cheesecake tart carrot cake icing jelly-o pudding chocolate bar. Topping muffin wafer. Cake oat cake carrot cake cotton candy candy canes liquorice. Jelly beans lemon drops marshmallow. Wafer icing lollipop. Croissant cotton candy gummi bears bear claw toffee cupcake marzipan. Halvah chocolate bar lollipop cookie jujubes. Dragée bear claw carrot cake chocolate bar. Soufflé sesame snaps topping gummies tart. Gingerbread chupa chups dessert lollipop tiramisu gummies liquorice jujubes. Cookie lollipop sugar plum dragée.\n\nCotton candy halvah halvah tiramisu cookie candy canes gummies bear claw. Chupa chups chupa chups powder gummies candy chocolate cake pastry. Pastry bonbon danish jelly beans pudding. Gummi bears tootsie roll chocolate sweet apple pie cheesecake topping candy. Tart sweet danish jelly-o chocolate bar gummies. Dragée marshmallow gummies cotton candy wafer sugar plum. Marshmallow tart dragée. Sweet roll apple pie jelly croissant wafer. Tootsie roll gummies cookie sweet roll donut pastry danish sugar plum macaroon. Chocolate cake halvah dessert cake lemon drops. Icing jujubes jelly beans marshmallow macaroon soufflé bonbon ice cream. Jelly beans chocolate cake pie jelly sesame snaps muffin powder.','http://blog.app:8000/img/bg.jpeg','2016-07-12 06:57:26','2016-07-12 06:57:11',1);

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы taggables
# ------------------------------------------------------------

DROP TABLE IF EXISTS `taggables`;

CREATE TABLE `taggables` (
  `tag_id` int(10) unsigned NOT NULL,
  `taggable_id` int(11) NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  KEY `taggables_tag_id_foreign` (`tag_id`),
  CONSTRAINT `taggables_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `taggables` WRITE;
/*!40000 ALTER TABLE `taggables` DISABLE KEYS */;

INSERT INTO `taggables` (`tag_id`, `taggable_id`, `taggable_type`)
VALUES
	(1,2,'App\\Post'),
	(2,2,'App\\Post'),
	(3,5,'App\\Post');

/*!40000 ALTER TABLE `taggables` ENABLE KEYS */;
UNLOCK TABLES;


# Дамп таблицы tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`)
VALUES
	(1,'Coding','coding','2016-07-12 07:19:03','2016-07-12 07:19:03'),
	(2,'Education','education','2016-07-12 07:19:27','2016-07-12 07:19:27'),
	(3,'Random','random','2016-07-12 07:19:46','2016-07-12 07:19:46');

/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
