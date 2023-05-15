-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 20, 2022 at 07:02 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartdirectory`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email_activation` tinyint(1) NOT NULL DEFAULT 0,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD/$',
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `currency_symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '$',
  `currency_type` enum('Symbol','Code') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Symbol',
  `messsage_notification` tinyint(1) NOT NULL DEFAULT 0,
  `review_notification` tinyint(1) NOT NULL DEFAULT 0,
  `list_view` tinyint(4) NOT NULL DEFAULT 12,
  `grid_view` tinyint(4) NOT NULL DEFAULT 12,
  `blog` tinyint(4) NOT NULL DEFAULT 12,
  `featured_list` tinyint(4) NOT NULL DEFAULT 3,
  `latest_list` tinyint(4) NOT NULL DEFAULT 3,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `email_activation`, `currency`, `currency_code`, `currency_symbol`, `currency_type`, `messsage_notification`, `review_notification`, `list_view`, `grid_view`, `blog`, `featured_list`, `latest_list`, `created_at`, `updated_at`) VALUES
(1, 0, 'USD/$', 'USD', '$', 'Symbol', 1, 0, 12, 12, 12, 3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `category_id`, `image`, `url`, `description`, `detail`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Organic Fresh Vegetables from Daily Fresh Kovil Palamudir', 10, 'm1YPqETuxDJ3RsOFqf1OaKVIPPmYB7Zbq9Sw1thp.jpg', 'organic-fresh-vegetables-from-daily-fresh-kovil-palamudir', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies tincidunt nunc sed gravida.', '{\"time\":1649066340423,\"blocks\":[{\"id\":\"L_nl7v-iE2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies tincidunt nunc sed gravida. Etiam luctus, erat ac luctus cursus, justo risus commodo diam, rhoncus ornare ligula nulla porta massa. Etiam molestie dui vel volutpat placerat. Cras neque mi, facilisis id felis sit amet, elementum lobortis leo. Duis venenatis a elit in pretium. Vivamus sed magna eget erat molestie posuere. Donec felis massa, tempor id tincidunt nec, gravida quis ante. Integer mi eros, ultrices vitae ex vitae, bibendum suscipit nulla. Proin feugiat justo id diam laoreet, nec convallis enim sodales. Proin eget quam mi. Proin fringilla diam ut tempor posuere. Sed ligula neque, fringilla in feugiat id, tristique quis nibh.\"}},{\"id\":\"FpLkodL6xY\",\"type\":\"paragraph\",\"data\":{\"text\":\"Etiam rutrum mauris nec est pretium fringilla. Praesent neque dui, laoreet ac aliquet in, imperdiet ut mauris. Maecenas nec varius velit, auctor volutpat eros. Quisque scelerisque pellentesque nisl id pellentesque. Ut ultrices rhoncus orci et scelerisque. Nunc dignissim felis fringilla ligula ultrices, non iaculis magna condimentum. Proin at blandit magna. Nullam sed elementum ipsum. Sed quis est non ante malesuada imperdiet nec non metus. Donec non commodo ante. Maecenas non suscipit dui, vitae malesuada nibh. Nunc justo nisi, mattis ut semper sit amet, congue ut risus. Nam tempus velit laoreet tellus volutpat interdum. Integer interdum fermentum nisi hendrerit rhoncus. Curabitur varius arcu id arcu hendrerit, eu tristique justo varius.\"}},{\"id\":\"3DauR9_I6U\",\"type\":\"header\",\"data\":{\"text\":\"Fresh Organic Vegetable \",\"level\":2}},{\"id\":\"Yj5WHeUiwt\",\"type\":\"paragraph\",\"data\":{\"text\":\"Fusce a magna vitae nunc aliquam volutpat sed sit amet quam. Nam ultricies fringilla lacus sed convallis. Suspendisse augue sapien, consectetur sed efficitur non, pharetra eget est. Maecenas accumsan, dolor sit amet facilisis venenatis, ex est mollis felis, at euismod lacus eros sit amet turpis. Phasellus ac mi lacinia, sagittis magna vel, condimentum mi. Sed facilisis nunc nulla, fermentum bibendum sem iaculis eu. Cras pharetra ante vitae pretium commodo. Vivamus vestibulum quam id nulla consequat, vestibulum euismod risus cursus. Ut cursus rutrum accumsan. Aliquam maximus metus nec laoreet tincidunt. Nulla laoreet libero vitae turpis molestie gravida. Donec bibendum convallis neque ut laoreet. Sed nec diam finibus, rutrum nisl vitae, auctor diam. Suspendisse bibendum sed nunc sit amet hendrerit.\"}},{\"id\":\"3tAQmUQ4Np\",\"type\":\"header\",\"data\":{\"text\":\"Pure Organic Fruits\",\"level\":2}},{\"id\":\"bvew5lMGqp\",\"type\":\"paragraph\",\"data\":{\"text\":\"Pellentesque laoreet faucibus est, sit amet placerat leo tristique placerat. Quisque molestie, ex ut feugiat semper, lacus augue convallis risus, eu tempus eros dolor ut dui. Integer ut quam est. Cras nec aliquam magna. Quisque bibendum nulla eget bibendum lobortis. Fusce ullamcorper mi at elit sagittis, nec laoreet massa accumsan. Proin commodo sapien quis mi placerat suscipit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus vel elementum augue. Sed volutpat quam a ligula lobortis posuere. Nullam condimentum tristique ante, id sollicitudin ipsum faucibus ut. Curabitur a pellentesque libero. Nulla ullamcorper ultricies ligula, id egestas leo eleifend ac.\"}},{\"id\":\"2YlVtdmuyy\",\"type\":\"paragraph\",\"data\":{\"text\":\"Etiam a nulla quis tortor malesuada vulputate. Cras id laoreet lacus. Cras ut tortor imperdiet, egestas ligula ac, dapibus augue. Proin auctor congue arcu, vitae sagittis ligula dapibus et. Curabitur ipsum sapien, fringilla vitae venenatis sed, lacinia sit amet felis. Vestibulum augue quam, tincidunt eu luctus at, aliquet quis massa. Aliquam nec eros nec lorem rutrum tempor in ut justo. Praesent pulvinar pharetra ligula, eu maximus elit tristique sit amet. Morbi vitae lacinia lacus. Nam vulputate sagittis tellus, nec venenatis ante pulvinar vitae. Vestibulum et turpis in felis egestas efficitur eget convallis ipsum.\"}}],\"version\":\"2.23.2\"}', NULL, NULL, NULL),
(2, '14 inch MacBook Pro Now Available on Stores from March', 10, 'Lj64iCJIcxxE0ywApFkLQc8m8wm8EyHkg4ZRLYJY.jpg', '14-inch-macbook-pro-now-available-on-stores-from-march', '. Proin eget quam mi. Proin fringilla diam ut tempor posuere. Sed ligula neque, fringilla in feugiat id, tristique quis', '{\"time\":1649067238286,\"blocks\":[{\"id\":\"auKQPpmGpk\",\"type\":\"paragraph\",\"data\":{\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies tincidunt nunc sed gravida. Etiam luctus, erat ac luctus cursus, justo risus commodo diam, rhoncus ornare ligula nulla porta massa. Etiam molestie dui vel volutpat placerat. Cras neque mi, facilisis id felis sit amet, elementum lobortis leo. Duis venenatis a elit in pretium. Vivamus sed magna eget erat molestie posuere. Donec felis massa, tempor id tincidunt nec, gravida quis ante. Integer mi eros, ultrices vitae ex vitae, bibendum suscipit nulla. Proin feugiat justo id diam laoreet, nec convallis enim sodales. Proin eget quam mi. Proin fringilla diam ut tempor posuere. Sed ligula neque, fringilla in feugiat id, tristique quis nibh.\"}},{\"id\":\"PVpUZi69J7\",\"type\":\"paragraph\",\"data\":{\"text\":\"Etiam rutrum mauris nec est pretium fringilla. Praesent neque dui, laoreet ac aliquet in, imperdiet ut mauris. Maecenas nec varius velit, auctor volutpat eros. Quisque scelerisque pellentesque nisl id pellentesque. Ut ultrices rhoncus orci et scelerisque. Nunc dignissim felis fringilla ligula ultrices, non iaculis magna condimentum. Proin at blandit magna. Nullam sed elementum ipsum. Sed quis est non ante malesuada imperdiet nec non metus. Donec non commodo ante. Maecenas non suscipit dui, vitae malesuada nibh. Nunc justo nisi, mattis ut semper sit amet, congue ut risus. Nam tempus velit laoreet tellus volutpat interdum. Integer interdum fermentum nisi hendrerit rhoncus. Curabitur varius arcu id arcu hendrerit, eu tristique justo varius.\"}},{\"id\":\"P6gMHkuCSN\",\"type\":\"paragraph\",\"data\":{\"text\":\"Fusce a magna vitae nunc aliquam volutpat sed sit amet quam. Nam ultricies fringilla lacus sed convallis. Suspendisse augue sapien, consectetur sed efficitur non, pharetra eget est. Maecenas accumsan, dolor sit amet facilisis venenatis, ex est mollis felis, at euismod lacus eros sit amet turpis. Phasellus ac mi lacinia, sagittis magna vel, condimentum mi. Sed facilisis nunc nulla, fermentum bibendum sem iaculis eu. Cras pharetra ante vitae pretium commodo. Vivamus vestibulum quam id nulla consequat, vestibulum euismod risus cursus. Ut cursus rutrum accumsan. Aliquam maximus metus nec laoreet tincidunt. Nulla laoreet libero vitae turpis molestie gravida. Donec bibendum convallis neque ut laoreet. Sed nec diam finibus, rutrum nisl vitae, auctor diam. Suspendisse bibendum sed nunc sit amet hendrerit.\"}},{\"id\":\"m5xIuzkRUF\",\"type\":\"paragraph\",\"data\":{\"text\":\"Pellentesque laoreet faucibus est, sit amet placerat leo tristique placerat. Quisque molestie, ex ut feugiat semper, lacus augue convallis risus, eu tempus eros dolor ut dui. Integer ut quam est. Cras nec aliquam magna. Quisque bibendum nulla eget bibendum lobortis. Fusce ullamcorper mi at elit sagittis, nec laoreet massa accumsan. Proin commodo sapien quis mi placerat suscipit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus vel elementum augue. Sed volutpat quam a ligula lobortis posuere. Nullam condimentum tristique ante, id sollicitudin ipsum faucibus ut. Curabitur a pellentesque libero. Nulla ullamcorper ultricies ligula, id egestas leo eleifend ac.\"}},{\"id\":\"pBS5_0ChZT\",\"type\":\"paragraph\",\"data\":{\"text\":\"Etiam a nulla quis tortor malesuada vulputate. Cras id laoreet lacus. Cras ut tortor imperdiet, egestas ligula ac, dapibus augue. Proin auctor congue arcu, vitae sagittis ligula dapibus et. Curabitur ipsum sapien, fringilla vitae venenatis sed, lacinia sit amet felis. Vestibulum augue quam, tincidunt eu luctus at, aliquet quis massa. Aliquam nec eros nec lorem rutrum tempor in ut justo. Praesent pulvinar pharetra ligula, eu maximus elit tristique sit amet. Morbi vitae lacinia lacus. Nam vulputate sagittis tellus, nec venenatis ante pulvinar vitae. Vestibulum et turpis in felis egestas efficitur eget convallis ipsum.\"}}],\"version\":\"2.23.2\"}', NULL, NULL, NULL),
(3, 'Modern Home Furniture with complete list with Location Detail', 11, 'fYtcGMIHmhpLKT2QFRVqQ8RkkO6a6CZavRGAHEqS.jpg', 'modern-home-furniture-with-complete-list-with-location-detail', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies tincidunt nunc sed gravida. Etiam', '{\"time\":1649067238286,\"blocks\":[{\"id\":\"auKQPpmGpk\",\"type\":\"paragraph\",\"data\":{\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies tincidunt nunc sed gravida. Etiam luctus, erat ac luctus cursus, justo risus commodo diam, rhoncus ornare ligula nulla porta massa. Etiam molestie dui vel volutpat placerat. Cras neque mi, facilisis id felis sit amet, elementum lobortis leo. Duis venenatis a elit in pretium. Vivamus sed magna eget erat molestie posuere. Donec felis massa, tempor id tincidunt nec, gravida quis ante. Integer mi eros, ultrices vitae ex vitae, bibendum suscipit nulla. Proin feugiat justo id diam laoreet, nec convallis enim sodales. Proin eget quam mi. Proin fringilla diam ut tempor posuere. Sed ligula neque, fringilla in feugiat id, tristique quis nibh.\"}},{\"id\":\"PVpUZi69J7\",\"type\":\"paragraph\",\"data\":{\"text\":\"Etiam rutrum mauris nec est pretium fringilla. Praesent neque dui, laoreet ac aliquet in, imperdiet ut mauris. Maecenas nec varius velit, auctor volutpat eros. Quisque scelerisque pellentesque nisl id pellentesque. Ut ultrices rhoncus orci et scelerisque. Nunc dignissim felis fringilla ligula ultrices, non iaculis magna condimentum. Proin at blandit magna. Nullam sed elementum ipsum. Sed quis est non ante malesuada imperdiet nec non metus. Donec non commodo ante. Maecenas non suscipit dui, vitae malesuada nibh. Nunc justo nisi, mattis ut semper sit amet, congue ut risus. Nam tempus velit laoreet tellus volutpat interdum. Integer interdum fermentum nisi hendrerit rhoncus. Curabitur varius arcu id arcu hendrerit, eu tristique justo varius.\"}},{\"id\":\"P6gMHkuCSN\",\"type\":\"paragraph\",\"data\":{\"text\":\"Fusce a magna vitae nunc aliquam volutpat sed sit amet quam. Nam ultricies fringilla lacus sed convallis. Suspendisse augue sapien, consectetur sed efficitur non, pharetra eget est. Maecenas accumsan, dolor sit amet facilisis venenatis, ex est mollis felis, at euismod lacus eros sit amet turpis. Phasellus ac mi lacinia, sagittis magna vel, condimentum mi. Sed facilisis nunc nulla, fermentum bibendum sem iaculis eu. Cras pharetra ante vitae pretium commodo. Vivamus vestibulum quam id nulla consequat, vestibulum euismod risus cursus. Ut cursus rutrum accumsan. Aliquam maximus metus nec laoreet tincidunt. Nulla laoreet libero vitae turpis molestie gravida. Donec bibendum convallis neque ut laoreet. Sed nec diam finibus, rutrum nisl vitae, auctor diam. Suspendisse bibendum sed nunc sit amet hendrerit.\"}},{\"id\":\"m5xIuzkRUF\",\"type\":\"paragraph\",\"data\":{\"text\":\"Pellentesque laoreet faucibus est, sit amet placerat leo tristique placerat. Quisque molestie, ex ut feugiat semper, lacus augue convallis risus, eu tempus eros dolor ut dui. Integer ut quam est. Cras nec aliquam magna. Quisque bibendum nulla eget bibendum lobortis. Fusce ullamcorper mi at elit sagittis, nec laoreet massa accumsan. Proin commodo sapien quis mi placerat suscipit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus vel elementum augue. Sed volutpat quam a ligula lobortis posuere. Nullam condimentum tristique ante, id sollicitudin ipsum faucibus ut. Curabitur a pellentesque libero. Nulla ullamcorper ultricies ligula, id egestas leo eleifend ac.\"}},{\"id\":\"pBS5_0ChZT\",\"type\":\"paragraph\",\"data\":{\"text\":\"Etiam a nulla quis tortor malesuada vulputate. Cras id laoreet lacus. Cras ut tortor imperdiet, egestas ligula ac, dapibus augue. Proin auctor congue arcu, vitae sagittis ligula dapibus et. Curabitur ipsum sapien, fringilla vitae venenatis sed, lacinia sit amet felis. Vestibulum augue quam, tincidunt eu luctus at, aliquet quis massa. Aliquam nec eros nec lorem rutrum tempor in ut justo. Praesent pulvinar pharetra ligula, eu maximus elit tristique sit amet. Morbi vitae lacinia lacus. Nam vulputate sagittis tellus, nec venenatis ante pulvinar vitae. Vestibulum et turpis in felis egestas efficitur eget convallis ipsum.\"}}],\"version\":\"2.23.2\"}', NULL, NULL, NULL),
(4, 'Rainbow Family Restaurant Complete Review', 2, 'eNBsb3sAINSwnhRmqgrJ4dZiGhv5VLHnXfg0phyp.jpg', 'rainbow-family-restaurant-complete-review', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies tincidunt nunc sed gravida. Etiam', '{\"time\":1649067238286,\"blocks\":[{\"id\":\"auKQPpmGpk\",\"type\":\"paragraph\",\"data\":{\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies tincidunt nunc sed gravida. Etiam luctus, erat ac luctus cursus, justo risus commodo diam, rhoncus ornare ligula nulla porta massa. Etiam molestie dui vel volutpat placerat. Cras neque mi, facilisis id felis sit amet, elementum lobortis leo. Duis venenatis a elit in pretium. Vivamus sed magna eget erat molestie posuere. Donec felis massa, tempor id tincidunt nec, gravida quis ante. Integer mi eros, ultrices vitae ex vitae, bibendum suscipit nulla. Proin feugiat justo id diam laoreet, nec convallis enim sodales. Proin eget quam mi. Proin fringilla diam ut tempor posuere. Sed ligula neque, fringilla in feugiat id, tristique quis nibh.\"}},{\"id\":\"PVpUZi69J7\",\"type\":\"paragraph\",\"data\":{\"text\":\"Etiam rutrum mauris nec est pretium fringilla. Praesent neque dui, laoreet ac aliquet in, imperdiet ut mauris. Maecenas nec varius velit, auctor volutpat eros. Quisque scelerisque pellentesque nisl id pellentesque. Ut ultrices rhoncus orci et scelerisque. Nunc dignissim felis fringilla ligula ultrices, non iaculis magna condimentum. Proin at blandit magna. Nullam sed elementum ipsum. Sed quis est non ante malesuada imperdiet nec non metus. Donec non commodo ante. Maecenas non suscipit dui, vitae malesuada nibh. Nunc justo nisi, mattis ut semper sit amet, congue ut risus. Nam tempus velit laoreet tellus volutpat interdum. Integer interdum fermentum nisi hendrerit rhoncus. Curabitur varius arcu id arcu hendrerit, eu tristique justo varius.\"}},{\"id\":\"P6gMHkuCSN\",\"type\":\"paragraph\",\"data\":{\"text\":\"Fusce a magna vitae nunc aliquam volutpat sed sit amet quam. Nam ultricies fringilla lacus sed convallis. Suspendisse augue sapien, consectetur sed efficitur non, pharetra eget est. Maecenas accumsan, dolor sit amet facilisis venenatis, ex est mollis felis, at euismod lacus eros sit amet turpis. Phasellus ac mi lacinia, sagittis magna vel, condimentum mi. Sed facilisis nunc nulla, fermentum bibendum sem iaculis eu. Cras pharetra ante vitae pretium commodo. Vivamus vestibulum quam id nulla consequat, vestibulum euismod risus cursus. Ut cursus rutrum accumsan. Aliquam maximus metus nec laoreet tincidunt. Nulla laoreet libero vitae turpis molestie gravida. Donec bibendum convallis neque ut laoreet. Sed nec diam finibus, rutrum nisl vitae, auctor diam. Suspendisse bibendum sed nunc sit amet hendrerit.\"}},{\"id\":\"m5xIuzkRUF\",\"type\":\"paragraph\",\"data\":{\"text\":\"Pellentesque laoreet faucibus est, sit amet placerat leo tristique placerat. Quisque molestie, ex ut feugiat semper, lacus augue convallis risus, eu tempus eros dolor ut dui. Integer ut quam est. Cras nec aliquam magna. Quisque bibendum nulla eget bibendum lobortis. Fusce ullamcorper mi at elit sagittis, nec laoreet massa accumsan. Proin commodo sapien quis mi placerat suscipit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus vel elementum augue. Sed volutpat quam a ligula lobortis posuere. Nullam condimentum tristique ante, id sollicitudin ipsum faucibus ut. Curabitur a pellentesque libero. Nulla ullamcorper ultricies ligula, id egestas leo eleifend ac.\"}},{\"id\":\"pBS5_0ChZT\",\"type\":\"paragraph\",\"data\":{\"text\":\"Etiam a nulla quis tortor malesuada vulputate. Cras id laoreet lacus. Cras ut tortor imperdiet, egestas ligula ac, dapibus augue. Proin auctor congue arcu, vitae sagittis ligula dapibus et. Curabitur ipsum sapien, fringilla vitae venenatis sed, lacinia sit amet felis. Vestibulum augue quam, tincidunt eu luctus at, aliquet quis massa. Aliquam nec eros nec lorem rutrum tempor in ut justo. Praesent pulvinar pharetra ligula, eu maximus elit tristique sit amet. Morbi vitae lacinia lacus. Nam vulputate sagittis tellus, nec venenatis ante pulvinar vitae. Vestibulum et turpis in felis egestas efficitur eget convallis ipsum.\"}}],\"version\":\"2.23.2\"}', NULL, NULL, NULL),
(5, 'Tips for an Create Week End Trip with Your Friends and Family', 1, 'J3OpQsXsuwZcerTb5AFQW8rhKns8Y7h5HtZ4B1Qy.jpg', 'tips-for-an-create-week-end-trip-with-your-friends-and-family', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies tincidunt nunc sed gravida. Etiam', '{\"time\":1649067238286,\"blocks\":[{\"id\":\"auKQPpmGpk\",\"type\":\"paragraph\",\"data\":{\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies tincidunt nunc sed gravida. Etiam luctus, erat ac luctus cursus, justo risus commodo diam, rhoncus ornare ligula nulla porta massa. Etiam molestie dui vel volutpat placerat. Cras neque mi, facilisis id felis sit amet, elementum lobortis leo. Duis venenatis a elit in pretium. Vivamus sed magna eget erat molestie posuere. Donec felis massa, tempor id tincidunt nec, gravida quis ante. Integer mi eros, ultrices vitae ex vitae, bibendum suscipit nulla. Proin feugiat justo id diam laoreet, nec convallis enim sodales. Proin eget quam mi. Proin fringilla diam ut tempor posuere. Sed ligula neque, fringilla in feugiat id, tristique quis nibh.\"}},{\"id\":\"PVpUZi69J7\",\"type\":\"paragraph\",\"data\":{\"text\":\"Etiam rutrum mauris nec est pretium fringilla. Praesent neque dui, laoreet ac aliquet in, imperdiet ut mauris. Maecenas nec varius velit, auctor volutpat eros. Quisque scelerisque pellentesque nisl id pellentesque. Ut ultrices rhoncus orci et scelerisque. Nunc dignissim felis fringilla ligula ultrices, non iaculis magna condimentum. Proin at blandit magna. Nullam sed elementum ipsum. Sed quis est non ante malesuada imperdiet nec non metus. Donec non commodo ante. Maecenas non suscipit dui, vitae malesuada nibh. Nunc justo nisi, mattis ut semper sit amet, congue ut risus. Nam tempus velit laoreet tellus volutpat interdum. Integer interdum fermentum nisi hendrerit rhoncus. Curabitur varius arcu id arcu hendrerit, eu tristique justo varius.\"}},{\"id\":\"P6gMHkuCSN\",\"type\":\"paragraph\",\"data\":{\"text\":\"Fusce a magna vitae nunc aliquam volutpat sed sit amet quam. Nam ultricies fringilla lacus sed convallis. Suspendisse augue sapien, consectetur sed efficitur non, pharetra eget est. Maecenas accumsan, dolor sit amet facilisis venenatis, ex est mollis felis, at euismod lacus eros sit amet turpis. Phasellus ac mi lacinia, sagittis magna vel, condimentum mi. Sed facilisis nunc nulla, fermentum bibendum sem iaculis eu. Cras pharetra ante vitae pretium commodo. Vivamus vestibulum quam id nulla consequat, vestibulum euismod risus cursus. Ut cursus rutrum accumsan. Aliquam maximus metus nec laoreet tincidunt. Nulla laoreet libero vitae turpis molestie gravida. Donec bibendum convallis neque ut laoreet. Sed nec diam finibus, rutrum nisl vitae, auctor diam. Suspendisse bibendum sed nunc sit amet hendrerit.\"}},{\"id\":\"m5xIuzkRUF\",\"type\":\"paragraph\",\"data\":{\"text\":\"Pellentesque laoreet faucibus est, sit amet placerat leo tristique placerat. Quisque molestie, ex ut feugiat semper, lacus augue convallis risus, eu tempus eros dolor ut dui. Integer ut quam est. Cras nec aliquam magna. Quisque bibendum nulla eget bibendum lobortis. Fusce ullamcorper mi at elit sagittis, nec laoreet massa accumsan. Proin commodo sapien quis mi placerat suscipit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus vel elementum augue. Sed volutpat quam a ligula lobortis posuere. Nullam condimentum tristique ante, id sollicitudin ipsum faucibus ut. Curabitur a pellentesque libero. Nulla ullamcorper ultricies ligula, id egestas leo eleifend ac.\"}},{\"id\":\"pBS5_0ChZT\",\"type\":\"paragraph\",\"data\":{\"text\":\"Etiam a nulla quis tortor malesuada vulputate. Cras id laoreet lacus. Cras ut tortor imperdiet, egestas ligula ac, dapibus augue. Proin auctor congue arcu, vitae sagittis ligula dapibus et. Curabitur ipsum sapien, fringilla vitae venenatis sed, lacinia sit amet felis. Vestibulum augue quam, tincidunt eu luctus at, aliquet quis massa. Aliquam nec eros nec lorem rutrum tempor in ut justo. Praesent pulvinar pharetra ligula, eu maximus elit tristique sit amet. Morbi vitae lacinia lacus. Nam vulputate sagittis tellus, nec venenatis ante pulvinar vitae. Vestibulum et turpis in felis egestas efficitur eget convallis ipsum.\"}}],\"version\":\"2.23.2\"}', NULL, NULL, NULL),
(6, 'Must Try Italian Food with Your Family and Friends', 2, 'r8YKTsD9rZasSdStovqAZ4uM5sKwMKSAP8hQnbs3.jpg', 'must-try-italian-food-with-your-family-and-friends', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies tincidunt nunc sed gravida. Etiam', '{\"time\":1649067238286,\"blocks\":[{\"id\":\"auKQPpmGpk\",\"type\":\"paragraph\",\"data\":{\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies tincidunt nunc sed gravida. Etiam luctus, erat ac luctus cursus, justo risus commodo diam, rhoncus ornare ligula nulla porta massa. Etiam molestie dui vel volutpat placerat. Cras neque mi, facilisis id felis sit amet, elementum lobortis leo. Duis venenatis a elit in pretium. Vivamus sed magna eget erat molestie posuere. Donec felis massa, tempor id tincidunt nec, gravida quis ante. Integer mi eros, ultrices vitae ex vitae, bibendum suscipit nulla. Proin feugiat justo id diam laoreet, nec convallis enim sodales. Proin eget quam mi. Proin fringilla diam ut tempor posuere. Sed ligula neque, fringilla in feugiat id, tristique quis nibh.\"}},{\"id\":\"PVpUZi69J7\",\"type\":\"paragraph\",\"data\":{\"text\":\"Etiam rutrum mauris nec est pretium fringilla. Praesent neque dui, laoreet ac aliquet in, imperdiet ut mauris. Maecenas nec varius velit, auctor volutpat eros. Quisque scelerisque pellentesque nisl id pellentesque. Ut ultrices rhoncus orci et scelerisque. Nunc dignissim felis fringilla ligula ultrices, non iaculis magna condimentum. Proin at blandit magna. Nullam sed elementum ipsum. Sed quis est non ante malesuada imperdiet nec non metus. Donec non commodo ante. Maecenas non suscipit dui, vitae malesuada nibh. Nunc justo nisi, mattis ut semper sit amet, congue ut risus. Nam tempus velit laoreet tellus volutpat interdum. Integer interdum fermentum nisi hendrerit rhoncus. Curabitur varius arcu id arcu hendrerit, eu tristique justo varius.\"}},{\"id\":\"P6gMHkuCSN\",\"type\":\"paragraph\",\"data\":{\"text\":\"Fusce a magna vitae nunc aliquam volutpat sed sit amet quam. Nam ultricies fringilla lacus sed convallis. Suspendisse augue sapien, consectetur sed efficitur non, pharetra eget est. Maecenas accumsan, dolor sit amet facilisis venenatis, ex est mollis felis, at euismod lacus eros sit amet turpis. Phasellus ac mi lacinia, sagittis magna vel, condimentum mi. Sed facilisis nunc nulla, fermentum bibendum sem iaculis eu. Cras pharetra ante vitae pretium commodo. Vivamus vestibulum quam id nulla consequat, vestibulum euismod risus cursus. Ut cursus rutrum accumsan. Aliquam maximus metus nec laoreet tincidunt. Nulla laoreet libero vitae turpis molestie gravida. Donec bibendum convallis neque ut laoreet. Sed nec diam finibus, rutrum nisl vitae, auctor diam. Suspendisse bibendum sed nunc sit amet hendrerit.\"}},{\"id\":\"m5xIuzkRUF\",\"type\":\"paragraph\",\"data\":{\"text\":\"Pellentesque laoreet faucibus est, sit amet placerat leo tristique placerat. Quisque molestie, ex ut feugiat semper, lacus augue convallis risus, eu tempus eros dolor ut dui. Integer ut quam est. Cras nec aliquam magna. Quisque bibendum nulla eget bibendum lobortis. Fusce ullamcorper mi at elit sagittis, nec laoreet massa accumsan. Proin commodo sapien quis mi placerat suscipit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus vel elementum augue. Sed volutpat quam a ligula lobortis posuere. Nullam condimentum tristique ante, id sollicitudin ipsum faucibus ut. Curabitur a pellentesque libero. Nulla ullamcorper ultricies ligula, id egestas leo eleifend ac.\"}},{\"id\":\"pBS5_0ChZT\",\"type\":\"paragraph\",\"data\":{\"text\":\"Etiam a nulla quis tortor malesuada vulputate. Cras id laoreet lacus. Cras ut tortor imperdiet, egestas ligula ac, dapibus augue. Proin auctor congue arcu, vitae sagittis ligula dapibus et. Curabitur ipsum sapien, fringilla vitae venenatis sed, lacinia sit amet felis. Vestibulum augue quam, tincidunt eu luctus at, aliquet quis massa. Aliquam nec eros nec lorem rutrum tempor in ut justo. Praesent pulvinar pharetra ligula, eu maximus elit tristique sit amet. Morbi vitae lacinia lacus. Nam vulputate sagittis tellus, nec venenatis ante pulvinar vitae. Vestibulum et turpis in felis egestas efficitur eget convallis ipsum.\"}}],\"version\":\"2.23.2\"}', NULL, NULL, NULL),
(7, 'Wonderful Places to Stay and Buy for You Vacation', 1, 'fR7tNBevCJQXBDszrh9Rys8NmYDV8OB28BAidVvc.jpg', 'wonderful-places-to-stay-and-buy-for-you-vacation', 'laoreet ac aliquet in, imperdiet ut mauris. Maecenas nec varius velit, auctor volutpat eros', '{\"time\":1649067238286,\"blocks\":[{\"id\":\"auKQPpmGpk\",\"type\":\"paragraph\",\"data\":{\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies tincidunt nunc sed gravida. Etiam luctus, erat ac luctus cursus, justo risus commodo diam, rhoncus ornare ligula nulla porta massa. Etiam molestie dui vel volutpat placerat. Cras neque mi, facilisis id felis sit amet, elementum lobortis leo. Duis venenatis a elit in pretium. Vivamus sed magna eget erat molestie posuere. Donec felis massa, tempor id tincidunt nec, gravida quis ante. Integer mi eros, ultrices vitae ex vitae, bibendum suscipit nulla. Proin feugiat justo id diam laoreet, nec convallis enim sodales. Proin eget quam mi. Proin fringilla diam ut tempor posuere. Sed ligula neque, fringilla in feugiat id, tristique quis nibh.\"}},{\"id\":\"PVpUZi69J7\",\"type\":\"paragraph\",\"data\":{\"text\":\"Etiam rutrum mauris nec est pretium fringilla. Praesent neque dui, laoreet ac aliquet in, imperdiet ut mauris. Maecenas nec varius velit, auctor volutpat eros. Quisque scelerisque pellentesque nisl id pellentesque. Ut ultrices rhoncus orci et scelerisque. Nunc dignissim felis fringilla ligula ultrices, non iaculis magna condimentum. Proin at blandit magna. Nullam sed elementum ipsum. Sed quis est non ante malesuada imperdiet nec non metus. Donec non commodo ante. Maecenas non suscipit dui, vitae malesuada nibh. Nunc justo nisi, mattis ut semper sit amet, congue ut risus. Nam tempus velit laoreet tellus volutpat interdum. Integer interdum fermentum nisi hendrerit rhoncus. Curabitur varius arcu id arcu hendrerit, eu tristique justo varius.\"}},{\"id\":\"P6gMHkuCSN\",\"type\":\"paragraph\",\"data\":{\"text\":\"Fusce a magna vitae nunc aliquam volutpat sed sit amet quam. Nam ultricies fringilla lacus sed convallis. Suspendisse augue sapien, consectetur sed efficitur non, pharetra eget est. Maecenas accumsan, dolor sit amet facilisis venenatis, ex est mollis felis, at euismod lacus eros sit amet turpis. Phasellus ac mi lacinia, sagittis magna vel, condimentum mi. Sed facilisis nunc nulla, fermentum bibendum sem iaculis eu. Cras pharetra ante vitae pretium commodo. Vivamus vestibulum quam id nulla consequat, vestibulum euismod risus cursus. Ut cursus rutrum accumsan. Aliquam maximus metus nec laoreet tincidunt. Nulla laoreet libero vitae turpis molestie gravida. Donec bibendum convallis neque ut laoreet. Sed nec diam finibus, rutrum nisl vitae, auctor diam. Suspendisse bibendum sed nunc sit amet hendrerit.\"}},{\"id\":\"m5xIuzkRUF\",\"type\":\"paragraph\",\"data\":{\"text\":\"Pellentesque laoreet faucibus est, sit amet placerat leo tristique placerat. Quisque molestie, ex ut feugiat semper, lacus augue convallis risus, eu tempus eros dolor ut dui. Integer ut quam est. Cras nec aliquam magna. Quisque bibendum nulla eget bibendum lobortis. Fusce ullamcorper mi at elit sagittis, nec laoreet massa accumsan. Proin commodo sapien quis mi placerat suscipit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus vel elementum augue. Sed volutpat quam a ligula lobortis posuere. Nullam condimentum tristique ante, id sollicitudin ipsum faucibus ut. Curabitur a pellentesque libero. Nulla ullamcorper ultricies ligula, id egestas leo eleifend ac.\"}},{\"id\":\"pBS5_0ChZT\",\"type\":\"paragraph\",\"data\":{\"text\":\"Etiam a nulla quis tortor malesuada vulputate. Cras id laoreet lacus. Cras ut tortor imperdiet, egestas ligula ac, dapibus augue. Proin auctor congue arcu, vitae sagittis ligula dapibus et. Curabitur ipsum sapien, fringilla vitae venenatis sed, lacinia sit amet felis. Vestibulum augue quam, tincidunt eu luctus at, aliquet quis massa. Aliquam nec eros nec lorem rutrum tempor in ut justo. Praesent pulvinar pharetra ligula, eu maximus elit tristique sit amet. Morbi vitae lacinia lacus. Nam vulputate sagittis tellus, nec venenatis ante pulvinar vitae. Vestibulum et turpis in felis egestas efficitur eget convallis ipsum.\"}}],\"version\":\"2.23.2\"}', NULL, NULL, NULL),
(8, 'Health Care Tips for this hot summer season from Dr.Stany Wilmas', 3, 'lAV8hagPG7thVybm3ri0x1K07i3zrbbZTleXWnGA.jpg', 'health-care-tips-for-this-hot-summer-season-from-drstany-wilmas', 'Plaoreet ac aliquet in, imperdiet ut mauris. Maecenas nec varius velit, auctor volutpat eros', '{\"time\":1649067238286,\"blocks\":[{\"id\":\"auKQPpmGpk\",\"type\":\"paragraph\",\"data\":{\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies tincidunt nunc sed gravida. Etiam luctus, erat ac luctus cursus, justo risus commodo diam, rhoncus ornare ligula nulla porta massa. Etiam molestie dui vel volutpat placerat. Cras neque mi, facilisis id felis sit amet, elementum lobortis leo. Duis venenatis a elit in pretium. Vivamus sed magna eget erat molestie posuere. Donec felis massa, tempor id tincidunt nec, gravida quis ante. Integer mi eros, ultrices vitae ex vitae, bibendum suscipit nulla. Proin feugiat justo id diam laoreet, nec convallis enim sodales. Proin eget quam mi. Proin fringilla diam ut tempor posuere. Sed ligula neque, fringilla in feugiat id, tristique quis nibh.\"}},{\"id\":\"PVpUZi69J7\",\"type\":\"paragraph\",\"data\":{\"text\":\"Etiam rutrum mauris nec est pretium fringilla. Praesent neque dui, laoreet ac aliquet in, imperdiet ut mauris. Maecenas nec varius velit, auctor volutpat eros. Quisque scelerisque pellentesque nisl id pellentesque. Ut ultrices rhoncus orci et scelerisque. Nunc dignissim felis fringilla ligula ultrices, non iaculis magna condimentum. Proin at blandit magna. Nullam sed elementum ipsum. Sed quis est non ante malesuada imperdiet nec non metus. Donec non commodo ante. Maecenas non suscipit dui, vitae malesuada nibh. Nunc justo nisi, mattis ut semper sit amet, congue ut risus. Nam tempus velit laoreet tellus volutpat interdum. Integer interdum fermentum nisi hendrerit rhoncus. Curabitur varius arcu id arcu hendrerit, eu tristique justo varius.\"}},{\"id\":\"P6gMHkuCSN\",\"type\":\"paragraph\",\"data\":{\"text\":\"Fusce a magna vitae nunc aliquam volutpat sed sit amet quam. Nam ultricies fringilla lacus sed convallis. Suspendisse augue sapien, consectetur sed efficitur non, pharetra eget est. Maecenas accumsan, dolor sit amet facilisis venenatis, ex est mollis felis, at euismod lacus eros sit amet turpis. Phasellus ac mi lacinia, sagittis magna vel, condimentum mi. Sed facilisis nunc nulla, fermentum bibendum sem iaculis eu. Cras pharetra ante vitae pretium commodo. Vivamus vestibulum quam id nulla consequat, vestibulum euismod risus cursus. Ut cursus rutrum accumsan. Aliquam maximus metus nec laoreet tincidunt. Nulla laoreet libero vitae turpis molestie gravida. Donec bibendum convallis neque ut laoreet. Sed nec diam finibus, rutrum nisl vitae, auctor diam. Suspendisse bibendum sed nunc sit amet hendrerit.\"}},{\"id\":\"m5xIuzkRUF\",\"type\":\"paragraph\",\"data\":{\"text\":\"Pellentesque laoreet faucibus est, sit amet placerat leo tristique placerat. Quisque molestie, ex ut feugiat semper, lacus augue convallis risus, eu tempus eros dolor ut dui. Integer ut quam est. Cras nec aliquam magna. Quisque bibendum nulla eget bibendum lobortis. Fusce ullamcorper mi at elit sagittis, nec laoreet massa accumsan. Proin commodo sapien quis mi placerat suscipit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus vel elementum augue. Sed volutpat quam a ligula lobortis posuere. Nullam condimentum tristique ante, id sollicitudin ipsum faucibus ut. Curabitur a pellentesque libero. Nulla ullamcorper ultricies ligula, id egestas leo eleifend ac.\"}},{\"id\":\"pBS5_0ChZT\",\"type\":\"paragraph\",\"data\":{\"text\":\"Etiam a nulla quis tortor malesuada vulputate. Cras id laoreet lacus. Cras ut tortor imperdiet, egestas ligula ac, dapibus augue. Proin auctor congue arcu, vitae sagittis ligula dapibus et. Curabitur ipsum sapien, fringilla vitae venenatis sed, lacinia sit amet felis. Vestibulum augue quam, tincidunt eu luctus at, aliquet quis massa. Aliquam nec eros nec lorem rutrum tempor in ut justo. Praesent pulvinar pharetra ligula, eu maximus elit tristique sit amet. Morbi vitae lacinia lacus. Nam vulputate sagittis tellus, nec venenatis ante pulvinar vitae. Vestibulum et turpis in felis egestas efficitur eget convallis ipsum.\"}}],\"version\":\"2.23.2\"}', NULL, NULL, NULL),
(9, 'Must Try delicious foods when you are travelling to France and Italy', 2, 'n0B7m3gw4auvIWOMP3UyTzhXqBaITPSeGCYBtDoS.jpg', 'must-try-delicious-foods-when-you-are-travelling-to-france-and-italy', 'laoreet ac aliquet in, imperdiet ut mauris. Maecenas nec varius velit, auctor volutpat eros', '{\"time\":1649067238286,\"blocks\":[{\"id\":\"auKQPpmGpk\",\"type\":\"paragraph\",\"data\":{\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies tincidunt nunc sed gravida. Etiam luctus, erat ac luctus cursus, justo risus commodo diam, rhoncus ornare ligula nulla porta massa. Etiam molestie dui vel volutpat placerat. Cras neque mi, facilisis id felis sit amet, elementum lobortis leo. Duis venenatis a elit in pretium. Vivamus sed magna eget erat molestie posuere. Donec felis massa, tempor id tincidunt nec, gravida quis ante. Integer mi eros, ultrices vitae ex vitae, bibendum suscipit nulla. Proin feugiat justo id diam laoreet, nec convallis enim sodales. Proin eget quam mi. Proin fringilla diam ut tempor posuere. Sed ligula neque, fringilla in feugiat id, tristique quis nibh.\"}},{\"id\":\"PVpUZi69J7\",\"type\":\"paragraph\",\"data\":{\"text\":\"Etiam rutrum mauris nec est pretium fringilla. Praesent neque dui, laoreet ac aliquet in, imperdiet ut mauris. Maecenas nec varius velit, auctor volutpat eros. Quisque scelerisque pellentesque nisl id pellentesque. Ut ultrices rhoncus orci et scelerisque. Nunc dignissim felis fringilla ligula ultrices, non iaculis magna condimentum. Proin at blandit magna. Nullam sed elementum ipsum. Sed quis est non ante malesuada imperdiet nec non metus. Donec non commodo ante. Maecenas non suscipit dui, vitae malesuada nibh. Nunc justo nisi, mattis ut semper sit amet, congue ut risus. Nam tempus velit laoreet tellus volutpat interdum. Integer interdum fermentum nisi hendrerit rhoncus. Curabitur varius arcu id arcu hendrerit, eu tristique justo varius.\"}},{\"id\":\"P6gMHkuCSN\",\"type\":\"paragraph\",\"data\":{\"text\":\"Fusce a magna vitae nunc aliquam volutpat sed sit amet quam. Nam ultricies fringilla lacus sed convallis. Suspendisse augue sapien, consectetur sed efficitur non, pharetra eget est. Maecenas accumsan, dolor sit amet facilisis venenatis, ex est mollis felis, at euismod lacus eros sit amet turpis. Phasellus ac mi lacinia, sagittis magna vel, condimentum mi. Sed facilisis nunc nulla, fermentum bibendum sem iaculis eu. Cras pharetra ante vitae pretium commodo. Vivamus vestibulum quam id nulla consequat, vestibulum euismod risus cursus. Ut cursus rutrum accumsan. Aliquam maximus metus nec laoreet tincidunt. Nulla laoreet libero vitae turpis molestie gravida. Donec bibendum convallis neque ut laoreet. Sed nec diam finibus, rutrum nisl vitae, auctor diam. Suspendisse bibendum sed nunc sit amet hendrerit.\"}},{\"id\":\"m5xIuzkRUF\",\"type\":\"paragraph\",\"data\":{\"text\":\"Pellentesque laoreet faucibus est, sit amet placerat leo tristique placerat. Quisque molestie, ex ut feugiat semper, lacus augue convallis risus, eu tempus eros dolor ut dui. Integer ut quam est. Cras nec aliquam magna. Quisque bibendum nulla eget bibendum lobortis. Fusce ullamcorper mi at elit sagittis, nec laoreet massa accumsan. Proin commodo sapien quis mi placerat suscipit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus vel elementum augue. Sed volutpat quam a ligula lobortis posuere. Nullam condimentum tristique ante, id sollicitudin ipsum faucibus ut. Curabitur a pellentesque libero. Nulla ullamcorper ultricies ligula, id egestas leo eleifend ac.\"}},{\"id\":\"pBS5_0ChZT\",\"type\":\"paragraph\",\"data\":{\"text\":\"Etiam a nulla quis tortor malesuada vulputate. Cras id laoreet lacus. Cras ut tortor imperdiet, egestas ligula ac, dapibus augue. Proin auctor congue arcu, vitae sagittis ligula dapibus et. Curabitur ipsum sapien, fringilla vitae venenatis sed, lacinia sit amet felis. Vestibulum augue quam, tincidunt eu luctus at, aliquet quis massa. Aliquam nec eros nec lorem rutrum tempor in ut justo. Praesent pulvinar pharetra ligula, eu maximus elit tristique sit amet. Morbi vitae lacinia lacus. Nam vulputate sagittis tellus, nec venenatis ante pulvinar vitae. Vestibulum et turpis in felis egestas efficitur eget convallis ipsum.\"}}],\"version\":\"2.23.2\"}', NULL, NULL, NULL),
(10, 'Top 10 Places to stay when you are travelling to Southern Part of India', 1, '1hqltKlKLsKdeOitRn7X9cSPpnZ565f8ciuTE4QT.jpg', 'top-10-places-to-stay-when-you-are-travelling-to-southern-part-of-india', 'laoreet ac aliquet in, imperdiet ut mauris. Maecenas nec varius velit, auctor volutpat eros', '{\"time\":1649067238286,\"blocks\":[{\"id\":\"auKQPpmGpk\",\"type\":\"paragraph\",\"data\":{\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies tincidunt nunc sed gravida. Etiam luctus, erat ac luctus cursus, justo risus commodo diam, rhoncus ornare ligula nulla porta massa. Etiam molestie dui vel volutpat placerat. Cras neque mi, facilisis id felis sit amet, elementum lobortis leo. Duis venenatis a elit in pretium. Vivamus sed magna eget erat molestie posuere. Donec felis massa, tempor id tincidunt nec, gravida quis ante. Integer mi eros, ultrices vitae ex vitae, bibendum suscipit nulla. Proin feugiat justo id diam laoreet, nec convallis enim sodales. Proin eget quam mi. Proin fringilla diam ut tempor posuere. Sed ligula neque, fringilla in feugiat id, tristique quis nibh.\"}},{\"id\":\"PVpUZi69J7\",\"type\":\"paragraph\",\"data\":{\"text\":\"Etiam rutrum mauris nec est pretium fringilla. Praesent neque dui, laoreet ac aliquet in, imperdiet ut mauris. Maecenas nec varius velit, auctor volutpat eros. Quisque scelerisque pellentesque nisl id pellentesque. Ut ultrices rhoncus orci et scelerisque. Nunc dignissim felis fringilla ligula ultrices, non iaculis magna condimentum. Proin at blandit magna. Nullam sed elementum ipsum. Sed quis est non ante malesuada imperdiet nec non metus. Donec non commodo ante. Maecenas non suscipit dui, vitae malesuada nibh. Nunc justo nisi, mattis ut semper sit amet, congue ut risus. Nam tempus velit laoreet tellus volutpat interdum. Integer interdum fermentum nisi hendrerit rhoncus. Curabitur varius arcu id arcu hendrerit, eu tristique justo varius.\"}},{\"id\":\"P6gMHkuCSN\",\"type\":\"paragraph\",\"data\":{\"text\":\"Fusce a magna vitae nunc aliquam volutpat sed sit amet quam. Nam ultricies fringilla lacus sed convallis. Suspendisse augue sapien, consectetur sed efficitur non, pharetra eget est. Maecenas accumsan, dolor sit amet facilisis venenatis, ex est mollis felis, at euismod lacus eros sit amet turpis. Phasellus ac mi lacinia, sagittis magna vel, condimentum mi. Sed facilisis nunc nulla, fermentum bibendum sem iaculis eu. Cras pharetra ante vitae pretium commodo. Vivamus vestibulum quam id nulla consequat, vestibulum euismod risus cursus. Ut cursus rutrum accumsan. Aliquam maximus metus nec laoreet tincidunt. Nulla laoreet libero vitae turpis molestie gravida. Donec bibendum convallis neque ut laoreet. Sed nec diam finibus, rutrum nisl vitae, auctor diam. Suspendisse bibendum sed nunc sit amet hendrerit.\"}},{\"id\":\"m5xIuzkRUF\",\"type\":\"paragraph\",\"data\":{\"text\":\"Pellentesque laoreet faucibus est, sit amet placerat leo tristique placerat. Quisque molestie, ex ut feugiat semper, lacus augue convallis risus, eu tempus eros dolor ut dui. Integer ut quam est. Cras nec aliquam magna. Quisque bibendum nulla eget bibendum lobortis. Fusce ullamcorper mi at elit sagittis, nec laoreet massa accumsan. Proin commodo sapien quis mi placerat suscipit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus vel elementum augue. Sed volutpat quam a ligula lobortis posuere. Nullam condimentum tristique ante, id sollicitudin ipsum faucibus ut. Curabitur a pellentesque libero. Nulla ullamcorper ultricies ligula, id egestas leo eleifend ac.\"}},{\"id\":\"pBS5_0ChZT\",\"type\":\"paragraph\",\"data\":{\"text\":\"Etiam a nulla quis tortor malesuada vulputate. Cras id laoreet lacus. Cras ut tortor imperdiet, egestas ligula ac, dapibus augue. Proin auctor congue arcu, vitae sagittis ligula dapibus et. Curabitur ipsum sapien, fringilla vitae venenatis sed, lacinia sit amet felis. Vestibulum augue quam, tincidunt eu luctus at, aliquet quis massa. Aliquam nec eros nec lorem rutrum tempor in ut justo. Praesent pulvinar pharetra ligula, eu maximus elit tristique sit amet. Morbi vitae lacinia lacus. Nam vulputate sagittis tellus, nec venenatis ante pulvinar vitae. Vestibulum et turpis in felis egestas efficitur eget convallis ipsum.\"}}],\"version\":\"2.23.2\"}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business_details`
--

CREATE TABLE `business_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_details`
--

INSERT INTO `business_details` (`id`, `about`, `user_id`, `listing_id`, `created_at`, `updated_at`) VALUES
(1, '{\"time\":1649005307190,\"blocks\":[{\"id\":\"RqmyjVa4OM\",\"type\":\"paragraph\",\"data\":{\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc in felis tellus. In sapien metus, ornare ac sollicitudin non, tincidunt vel ex. Proin tincidunt nisl diam, ut tincidunt massa ultrices vitae. Aliquam auctor ex dolor, vel viverra purus rutrum vel. Aenean vitae ultricies elit. Nullam suscipit facilisis felis in ornare. Aenean luctus nibh sed auctor molestie. Curabitur tincidunt velit nec aliquet facilisis. Cras ac risus vestibulum, mattis nisi in, fringilla libero.\"}},{\"id\":\"q-HGbMkfmW\",\"type\":\"paragraph\",\"data\":{\"text\":\"Integer vestibulum convallis tellus, at dapibus metus ullamcorper id. Fusce sit amet libero libero. Fusce et odio ac nisi convallis ullamcorper et ac lorem. Fusce eget metus suscipit, blandit ante eget, cursus tellus. Sed leo tellus, iaculis a metus ac, pharetra finibus enim. Phasellus in sapien eros. Pellentesque ultrices dolor eu magna luctus, quis aliquam ipsum porttitor. Vivamus aliquam mi at rutrum accumsan. Phasellus semper eros ac lobortis eleifend.\"}},{\"id\":\"iqP-N7R-pi\",\"type\":\"paragraph\",\"data\":{\"text\":\"Pellentesque a bibendum sapien. Ut viverra viverra convallis. Nunc laoreet urna tellus. Cras nec maximus dolor, in fringilla leo. Sed id quam nec sapien congue consequat a quis odio. Nulla sodales tortor nec convallis mollis. Morbi ornare elit eget leo dapibus, id tristique ipsum auctor. Aenean elit lectus, rhoncus id tincidunt id, volutpat sit amet nisi. Aenean magna est, tempus sed tortor id, eleifend ornare magna.\"}}],\"version\":\"2.23.2\"}', 1, 1, NULL, NULL),
(2, '{\"time\":1649053164556,\"blocks\":[{\"id\":\"KBakO4zKmK\",\"type\":\"paragraph\",\"data\":{\"text\":\"Sed quis metus scelerisque, porta turpis non, tristique diam. Integer vitae lorem lectus. Morbi gravida justo at neque suscipit ultricies. Vestibulum elementum ac ex vitae porttitor. Donec ligula leo, bibendum eget lectus sed, euismod venenatis turpis. Aliquam interdum velit lorem, vitae cursus magna rhoncus eu. Nam viverra arcu non mi sodales venenatis. Fusce eu turpis ac sem faucibus tempus.\"}},{\"id\":\"VU1sGw8HeI\",\"type\":\"paragraph\",\"data\":{\"text\":\"Maecenas mattis lorem nunc, a vulputate sapien egestas quis. Maecenas massa risus, pellentesque vel suscipit et, pulvinar ut nibh. Proin sit amet nunc porta, interdum erat eu, laoreet lectus. Proin a ligula eu nisl eleifend porta auctor vel massa. Nullam quis enim ex. Fusce aliquet fermentum auctor. Nam tincidunt nisi vitae sodales aliquet. Nulla quis laoreet odio, et sagittis massa. Cras iaculis feugiat vestibulum. Sed fermentum nisi in dolor elementum, aliquet scelerisque eros ultricies. Quisque elementum lacinia eros. Praesent blandit eget neque quis ullamcorper. Vivamus ultricies sodales lectus, sed ornare diam tristique ac.\"}}],\"version\":\"2.23.2\"}', 1, 2, NULL, NULL),
(3, '{\"time\":1649053856427,\"blocks\":[{\"id\":\"aKLMhrXUS6\",\"type\":\"paragraph\",\"data\":{\"text\":\"Maecenas mattis lorem nunc, a vulputate sapien egestas quis. Maecenas massa risus, pellentesque vel suscipit et, pulvinar ut nibh. Proin sit amet nunc porta, interdum erat eu, laoreet lectus. Proin a ligula eu nisl eleifend porta auctor vel massa. Nullam quis enim ex. Fusce aliquet fermentum auctor. Nam tincidunt nisi vitae sodales aliquet. Nulla quis laoreet odio, et sagittis massa. Cras iaculis feugiat vestibulum. Sed fermentum nisi in dolor elementum, aliquet scelerisque eros ultricies. Quisque elementum lacinia eros. Praesent blandit eget neque quis ullamcorper. Vivamus ultricies sodales lectus, sed ornare diam tristique ac.\"}}],\"version\":\"2.23.2\"}', 1, 3, NULL, NULL),
(4, '{\"time\":1649055526603,\"blocks\":[{\"id\":\"1dnQVRNUQL\",\"type\":\"paragraph\",\"data\":{\"text\":\"Maecenas mattis lorem nunc, a vulputate sapien egestas quis. Maecenas massa risus, pellentesque vel suscipit et, pulvinar ut nibh. Proin sit amet nunc porta, interdum erat eu, laoreet lectus. Proin a ligula eu nisl eleifend porta auctor vel massa. Nullam quis enim ex. Fusce aliquet fermentum auctor. Nam tincidunt nisi vitae sodales aliquet. Nulla quis laoreet odio, et sagittis massa. Cras iaculis feugiat vestibulum. Sed fermentum nisi in dolor elementum, aliquet scelerisque eros ultricies. Quisque elementum lacinia eros. Praesent blandit eget neque quis ullamcorper. Vivamus ultricies sodales lectus, sed ornare diam tristique ac.\"}}],\"version\":\"2.23.2\"}', 2, 4, NULL, NULL),
(5, '{\"time\":1649056888849,\"blocks\":[{\"id\":\"I5iCvNCtcW\",\"type\":\"paragraph\",\"data\":{\"text\":\"Morbi in leo in ipsum pellentesque congue ac vel ante. Phasellus tristique dui et eros fringilla efficitur. Pellentesque blandit dolor ut mauris commodo, quis tincidunt lorem semper. Integer ac neque diam. Fusce sed ante in nibh egestas dignissim ac id augue. In viverra euismod velit, convallis congue ex aliquet vitae. Proin vehicula tincidunt quam, ac interdum libero sollicitudin eu. Morbi gravida ultrices consequat. Phasellus erat ex, pretium eu ultrices ut, lobortis non sem. Maecenas at blandit leo, in volutpat purus. Ut elementum elit massa, nec ultrices augue varius eget. Vivamus sollicitudin fringilla sem, ac ultrices nisi condimentum sed. Duis sit amet porta dolor, vitae lobortis nisl. Aliquam egestas nunc non mollis dictum. Vivamus pretium semper sodales. Donec mollis libero dapibus, sagittis libero id, fermentum lacus.\"}}],\"version\":\"2.23.2\"}', 1, 5, NULL, NULL),
(6, '{\"time\":1649058615582,\"blocks\":[{\"id\":\"a7Sg08hDAv\",\"type\":\"paragraph\",\"data\":{\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac gravida dolor. Morbi non congue eros. Aliquam ultricies nibh risus. Maecenas commodo ornare dolor eu venenatis. Cras luctus ultrices ipsum, eget rhoncus velit dictum eu. Etiam et quam at quam ultrices interdum non non eros. Donec scelerisque pharetra ex non congue. Duis commodo dui consequat, vehicula dui in, ultricies nisl. Phasellus ut consectetur diam, ac bibendum risus. Nam et nibh mi. Nulla condimentum non est tristique congue.\"}},{\"id\":\"SprEzb7-B4\",\"type\":\"paragraph\",\"data\":{\"text\":\"Sed quis metus scelerisque, porta turpis non, tristique diam. Integer vitae lorem lectus. Morbi gravida justo at neque suscipit ultricies. Vestibulum elementum ac ex vitae porttitor. Donec ligula leo, bibendum eget lectus sed, euismod venenatis turpis. Aliquam interdum velit lorem, vitae cursus magna rhoncus eu. Nam viverra arcu non mi sodales venenatis.\"}}],\"version\":\"2.23.2\"}', 2, 6, NULL, NULL),
(7, '{\"time\":1649059047553,\"blocks\":[{\"id\":\"4aRUeC20tI\",\"type\":\"paragraph\",\"data\":{\"text\":\"Morbi in leo in ipsum pellentesque congue ac vel ante. Phasellus tristique dui et eros fringilla efficitur. Pellentesque blandit dolor ut mauris commodo, quis tincidunt lorem semper. Integer ac neque diam. Fusce sed ante in nibh egestas dignissim ac id augue. In viverra euismod velit, convallis congue ex aliquet vitae. Proin vehicula tincidunt quam, ac interdum libero sollicitudin eu. Morbi gravida ultrices consequat. Phasellus erat ex, pretium eu ultrices ut, lobortis non sem. Maecenas at blandit leo, in volutpat purus. Ut elementum elit massa, nec ultrices augue varius eget. Vivamus sollicitudin fringilla sem, ac ultrices nisi condimentum sed. Duis sit amet porta dolor, vitae lobortis nisl. Aliquam egestas nunc non mollis dictum. Vivamus pretium semper sodales. Donec mollis libero dapibus, sagittis libero id, fermentum lacus.\"}}],\"version\":\"2.23.2\"}', 1, 7, NULL, NULL),
(8, '{\"time\":1649059047553,\"blocks\":[{\"id\":\"4aRUeC20tI\",\"type\":\"paragraph\",\"data\":{\"text\":\"Morbi in leo in ipsum pellentesque congue ac vel ante. Phasellus tristique dui et eros fringilla efficitur. Pellentesque blandit dolor ut mauris commodo, quis tincidunt lorem semper. Integer ac neque diam. Fusce sed ante in nibh egestas dignissim ac id augue. In viverra euismod velit, convallis congue ex aliquet vitae. Proin vehicula tincidunt quam, ac interdum libero sollicitudin eu. Morbi gravida ultrices consequat. Phasellus erat ex, pretium eu ultrices ut, lobortis non sem. Maecenas at blandit leo, in volutpat purus. Ut elementum elit massa, nec ultrices augue varius eget. Vivamus sollicitudin fringilla sem, ac ultrices nisi condimentum sed. Duis sit amet porta dolor, vitae lobortis nisl. Aliquam egestas nunc non mollis dictum. Vivamus pretium semper sodales. Donec mollis libero dapibus, sagittis libero id, fermentum lacus.\"}}],\"version\":\"2.23.2\"}', 1, 8, NULL, NULL),
(9, '{\"time\":1649059047553,\"blocks\":[{\"id\":\"4aRUeC20tI\",\"type\":\"paragraph\",\"data\":{\"text\":\"Morbi in leo in ipsum pellentesque congue ac vel ante. Phasellus tristique dui et eros fringilla efficitur. Pellentesque blandit dolor ut mauris commodo, quis tincidunt lorem semper. Integer ac neque diam. Fusce sed ante in nibh egestas dignissim ac id augue. In viverra euismod velit, convallis congue ex aliquet vitae. Proin vehicula tincidunt quam, ac interdum libero sollicitudin eu. Morbi gravida ultrices consequat. Phasellus erat ex, pretium eu ultrices ut, lobortis non sem. Maecenas at blandit leo, in volutpat purus. Ut elementum elit massa, nec ultrices augue varius eget. Vivamus sollicitudin fringilla sem, ac ultrices nisi condimentum sed. Duis sit amet porta dolor, vitae lobortis nisl. Aliquam egestas nunc non mollis dictum. Vivamus pretium semper sodales. Donec mollis libero dapibus, sagittis libero id, fermentum lacus.\"}}],\"version\":\"2.23.2\"}', 2, 9, NULL, NULL),
(10, '{\"time\":1649059047553,\"blocks\":[{\"id\":\"4aRUeC20tI\",\"type\":\"paragraph\",\"data\":{\"text\":\"Morbi in leo in ipsum pellentesque congue ac vel ante. Phasellus tristique dui et eros fringilla efficitur. Pellentesque blandit dolor ut mauris commodo, quis tincidunt lorem semper. Integer ac neque diam. Fusce sed ante in nibh egestas dignissim ac id augue. In viverra euismod velit, convallis congue ex aliquet vitae. Proin vehicula tincidunt quam, ac interdum libero sollicitudin eu. Morbi gravida ultrices consequat. Phasellus erat ex, pretium eu ultrices ut, lobortis non sem. Maecenas at blandit leo, in volutpat purus. Ut elementum elit massa, nec ultrices augue varius eget. Vivamus sollicitudin fringilla sem, ac ultrices nisi condimentum sed. Duis sit amet porta dolor, vitae lobortis nisl. Aliquam egestas nunc non mollis dictum. Vivamus pretium semper sodales. Donec mollis libero dapibus, sagittis libero id, fermentum lacus.\"}}],\"version\":\"2.23.2\"}', 2, 10, NULL, NULL),
(11, '{\"time\":1649059047553,\"blocks\":[{\"id\":\"4aRUeC20tI\",\"type\":\"paragraph\",\"data\":{\"text\":\"Morbi in leo in ipsum pellentesque congue ac vel ante. Phasellus tristique dui et eros fringilla efficitur. Pellentesque blandit dolor ut mauris commodo, quis tincidunt lorem semper. Integer ac neque diam. Fusce sed ante in nibh egestas dignissim ac id augue. In viverra euismod velit, convallis congue ex aliquet vitae. Proin vehicula tincidunt quam, ac interdum libero sollicitudin eu. Morbi gravida ultrices consequat. Phasellus erat ex, pretium eu ultrices ut, lobortis non sem. Maecenas at blandit leo, in volutpat purus. Ut elementum elit massa, nec ultrices augue varius eget. Vivamus sollicitudin fringilla sem, ac ultrices nisi condimentum sed. Duis sit amet porta dolor, vitae lobortis nisl. Aliquam egestas nunc non mollis dictum. Vivamus pretium semper sodales. Donec mollis libero dapibus, sagittis libero id, fermentum lacus.\"}}],\"version\":\"2.23.2\"}', 1, 11, NULL, NULL),
(12, '{\"time\":1649059047553,\"blocks\":[{\"id\":\"4aRUeC20tI\",\"type\":\"paragraph\",\"data\":{\"text\":\"Morbi in leo in ipsum pellentesque congue ac vel ante. Phasellus tristique dui et eros fringilla efficitur. Pellentesque blandit dolor ut mauris commodo, quis tincidunt lorem semper. Integer ac neque diam. Fusce sed ante in nibh egestas dignissim ac id augue. In viverra euismod velit, convallis congue ex aliquet vitae. Proin vehicula tincidunt quam, ac interdum libero sollicitudin eu. Morbi gravida ultrices consequat. Phasellus erat ex, pretium eu ultrices ut, lobortis non sem. Maecenas at blandit leo, in volutpat purus. Ut elementum elit massa, nec ultrices augue varius eget. Vivamus sollicitudin fringilla sem, ac ultrices nisi condimentum sed. Duis sit amet porta dolor, vitae lobortis nisl. Aliquam egestas nunc non mollis dictum. Vivamus pretium semper sodales. Donec mollis libero dapibus, sagittis libero id, fermentum lacus.\"}}],\"version\":\"2.23.2\"}', 1, 12, NULL, NULL),
(13, '{\"time\":1649059047553,\"blocks\":[{\"id\":\"4aRUeC20tI\",\"type\":\"paragraph\",\"data\":{\"text\":\"Morbi in leo in ipsum pellentesque congue ac vel ante. Phasellus tristique dui et eros fringilla efficitur. Pellentesque blandit dolor ut mauris commodo, quis tincidunt lorem semper. Integer ac neque diam. Fusce sed ante in nibh egestas dignissim ac id augue. In viverra euismod velit, convallis congue ex aliquet vitae. Proin vehicula tincidunt quam, ac interdum libero sollicitudin eu. Morbi gravida ultrices consequat. Phasellus erat ex, pretium eu ultrices ut, lobortis non sem. Maecenas at blandit leo, in volutpat purus. Ut elementum elit massa, nec ultrices augue varius eget. Vivamus sollicitudin fringilla sem, ac ultrices nisi condimentum sed. Duis sit amet porta dolor, vitae lobortis nisl. Aliquam egestas nunc non mollis dictum. Vivamus pretium semper sodales. Donec mollis libero dapibus, sagittis libero id, fermentum lacus.\"}}],\"version\":\"2.23.2\"}', 2, 13, NULL, NULL),
(14, '{\"time\":1649059047553,\"blocks\":[{\"id\":\"4aRUeC20tI\",\"type\":\"paragraph\",\"data\":{\"text\":\"Morbi in leo in ipsum pellentesque congue ac vel ante. Phasellus tristique dui et eros fringilla efficitur. Pellentesque blandit dolor ut mauris commodo, quis tincidunt lorem semper. Integer ac neque diam. Fusce sed ante in nibh egestas dignissim ac id augue. In viverra euismod velit, convallis congue ex aliquet vitae. Proin vehicula tincidunt quam, ac interdum libero sollicitudin eu. Morbi gravida ultrices consequat. Phasellus erat ex, pretium eu ultrices ut, lobortis non sem. Maecenas at blandit leo, in volutpat purus. Ut elementum elit massa, nec ultrices augue varius eget. Vivamus sollicitudin fringilla sem, ac ultrices nisi condimentum sed. Duis sit amet porta dolor, vitae lobortis nisl. Aliquam egestas nunc non mollis dictum. Vivamus pretium semper sodales. Donec mollis libero dapibus, sagittis libero id, fermentum lacus.\"}}],\"version\":\"2.23.2\"}', 1, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `url`, `icon`, `description`, `title`, `keyword`, `featured`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Restuarent', 'restuarent', 'icon/dt6NPTzaLkrJ97jj8pQBvOgcwzteAnz9gcA1ldu7.png', 'Find Restaurants Near You Indian, Chinese, South India, Italian etc..', NULL, NULL, 1, NULL, NULL, NULL),
(2, 'Retail Shops', 'retail-shops', 'icon/E9tXm2McCoxweRwl2CyHqhxBbjMOb29Av02mwUL7.png', 'Find the Beat packers and Movers Near You, International Packers and Movers, With city movers', NULL, NULL, 1, NULL, NULL, NULL),
(3, 'Health Care and Beauty', 'health-care-and-beauty', 'icon/TuqqYqsnSGabOvsvogvWtTZETbHcI1hUcIMLBJuU.png', 'Find the best Spa and beauty Parlours near you. Find Beauty services in best price', NULL, NULL, 1, NULL, NULL, NULL),
(4, 'Furniture', 'furniture', 'icon/HQzryCLolOqn6wlSMhYqkoWP2KiZHOHSK9DRoWWm.png', 'Find Best deals on Home and office furniture near you', NULL, NULL, 1, NULL, NULL, NULL),
(5, 'Computer and Accessories', 'computer-and-accessories', 'icon/2Qtr9IeSNe8iDkfgVW7FmKFwnNVZUcGTmasIBsOy.png', 'Find Computer Service Centers and Dealers near you', NULL, NULL, 1, NULL, NULL, NULL),
(6, 'Real Estate', 'real-estate', 'icon/DxqtBDR3uLOXOVdpYad4Icfg78ME0VUGrVAjH6We.png', 'Find the best Real Estate Brokers and Land Developers near You', NULL, NULL, 1, NULL, NULL, NULL),
(7, 'Automobile', 'automobile', 'icon/l6VEmggedNMZKWDEs8pLcJ1c7whOzwmW64njwJaD.png', 'Find Best Automobile Service center and automobile dealers near you', NULL, NULL, 1, NULL, NULL, NULL),
(8, 'Clothing', 'clothing', 'icon/abxR1GARnNfYUvuNOqg1IPyzSpRQKUyq80xUvT5z.png', 'Find Best Cloth shops near you, Mens Womens, kids', NULL, NULL, 1, NULL, NULL, NULL),
(9, 'Electrical and Electronics', 'electrical-and-electronics', 'icon/SAKCttX2eMa4uHzoN4KTYW1d9Rvp74np7pzE5RxA.png', 'Find the Best Electrical and Electronics store near You', NULL, NULL, 1, NULL, NULL, NULL),
(10, 'Finance Institutes', 'finance-institutes', 'icon/B5DWFEuUReSpEzulDe4KTpdIItKZ0DLE10VCUbOg.png', 'Easily. find the best finance institutes around you banks, Accounts, ATM etc..', NULL, NULL, 1, NULL, NULL, NULL),
(11, 'Educational Institute', 'educational-institute', 'icon/Pm5avWHie4Oo08BMiYePJckmFJca0QcrgDlDdmja.png', 'Find Best Educational Institutes near you. Read the Details service and Review. Choose the Right one for you', NULL, NULL, 1, NULL, NULL, NULL),
(12, 'Web Design and Development', 'web-design-and-development', 'icon/7LFrz7CKgxi5ID0JHwo3OUqYn23GrRpSdtEFP4xL.png', 'Find Best deal on Webdesign and Development Servies Near You', NULL, NULL, 1, NULL, NULL, NULL),
(13, 'Builders', 'builders', NULL, 'Builders', NULL, NULL, 0, NULL, NULL, NULL),
(14, 'AC Service', 'ac-service', 'icon/MVmBzduNqgNfzcg5Bfio878LQfaf5Cg88PtAsa8k.png', 'AC Service', NULL, NULL, 0, NULL, NULL, NULL),
(15, 'Call Taxi', 'call-taxi', NULL, 'List of Call Taxi Services', NULL, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `alt`, `user_id`, `listing_id`, `created_at`, `updated_at`) VALUES
(1, 'gallery/uBKver0sYoP9OVM1CCXN2XHOBwkWUi1Jng0dKdKj.jpg', NULL, 1, 1, NULL, NULL),
(2, 'gallery/00MBwRvLyBtfP3v0j79OQaMocxkkE3mDqacY8UZm.jpg', NULL, 1, 1, NULL, NULL),
(3, 'gallery/8gSuhNOlpk5PaAcbCYbfvlSmUHnM9SUWc7b1BJJ8.jpg', NULL, 1, 1, NULL, NULL),
(4, 'gallery/eo4ZEAeW5aq71UaWzeZbXy7F4yI1rIZvLMXCCExL.png', NULL, 1, 1, NULL, NULL),
(5, 'gallery/oi3FntvZkPAcC5ONe4oHppNcGqUu8Qphj97otzIi.jpg', NULL, 1, 1, NULL, NULL),
(6, 'gallery/amMvxajhByQiC2ipL7rR1HC01XTklphwjz89WBb5.jpg', NULL, 1, 2, NULL, NULL),
(7, 'gallery/jkwlo6SH7GLy2bNeHlh6tmgG92R2MQHI9CBspCHD.jpg', NULL, 1, 2, NULL, NULL),
(8, 'gallery/n4XxJ7vlUKpzeksKXn8d4EdHo31miHNDnVVK0Fi5.jpg', NULL, 1, 2, NULL, NULL),
(9, 'gallery/TLloQeSCJQ4fKb7KInS9HsvD9yIAiUKk9hr5RlIY.jpg', NULL, 2, 4, NULL, NULL),
(10, 'gallery/CrdGiNQILojYWXfetbutHcWkUNj3gKsPHbECOz4I.jpg', NULL, 2, 4, NULL, NULL),
(11, 'gallery/zfMv9hyk5hBLmy4W35h1nEgndp0Q2OIVZ7TnBb73.jpg', NULL, 2, 4, NULL, NULL),
(12, 'gallery/zZ2u3HBdzsAjrudksMUd4GWlrcSO0V5KBC3u3zXW.jpg', NULL, 2, 4, NULL, NULL),
(13, 'gallery/lMkUAXugjYUOcj3FZ8tGtwmEJo4gUSQuALnaNSvU.jpg', NULL, 2, 4, NULL, NULL),
(15, 'gallery/sXbqYqJerTnwRiUZ1hXFDcMzfHe0EpTOhUsrgdXI.jpg', NULL, 1, 5, NULL, NULL),
(16, 'gallery/TU6hzJgszJGk7bKdo6QYVHJ2NIwxlbvIBaVTTqQT.jpg', NULL, 1, 5, NULL, NULL),
(17, 'gallery/IyA8UVlRWz6fTy2FqPwjXOWX3yhlOh8C0xZnJrTc.jpg', NULL, 1, 5, NULL, NULL),
(18, 'gallery/f5iIEbBRd0o6oWVKG6oeAm80Zkw34YcvlAY8HLRo.jpg', NULL, 1, 5, NULL, NULL),
(19, 'gallery/I71HKUNgtjy3QgoToEinRO4E9KOkscBXIj6OM7KP.jpg', NULL, 1, 5, NULL, NULL),
(20, 'gallery/wXszsI25dRsbkgQ2V52Cc3GKOnhSi1OmJJhhwPLX.jpg', NULL, 1, 5, NULL, NULL),
(21, 'gallery/JpDWLwulzZp4mnJ2ViiJldIyk3MR5hCr1TMtWGWS.jpg', NULL, 2, 6, NULL, NULL),
(22, 'gallery/6Y3fh0FAkDmpByG6ias31otCGlb3FulZPVW76WU7.jpg', NULL, 2, 6, NULL, NULL),
(23, 'gallery/V0xNuenIKMaYACR3fPvYzAzJVnRpUD8hQgL3AaLG.jpg', NULL, 2, 6, NULL, NULL),
(24, 'gallery/kjxU5zmkqpKG4vy73MpAYjeVTb0Ac6Ry5tJMjtAY.jpg', NULL, 1, 7, NULL, NULL),
(25, 'gallery/s3yjBgmNrM2bqpeLGrYCv3kyfjeuclj3lOQx78YQ.jpg', NULL, 1, 7, NULL, NULL),
(26, 'gallery/fM0CkX2VYE7RT2bw8rmWq5KkReMemoxDkWl8HZ0d.jpg', NULL, 1, 7, NULL, NULL),
(27, 'gallery/hheV4nuMBxOUetAaeQFE71H0cKeY3BQJbpyTnnli.jpg', NULL, 1, 7, NULL, NULL),
(28, 'gallery/IEKgtd53xNdlJ794pEiLPcM1s87KSCjW9MvPktXV.jpg', NULL, 1, 7, NULL, NULL),
(29, 'gallery/JY6NkONPE5SxsetO10UUoc9j8PwCV0S6bV52Dfm0.jpg', NULL, 1, 3, NULL, NULL),
(30, 'gallery/b7k5oTTX8u1vfy3wvafLtTngGec2L0MBAP4UTyNb.jpg', NULL, 1, 3, NULL, NULL),
(31, 'gallery/uSXYsD7ayrETdsuOcOPbPqxJ4yjmJf3SmZGGenBJ.jpg', NULL, 1, 3, NULL, NULL),
(32, 'gallery/eCd9zYr6zkmPjemzRX7383v2P20BX1dEeI7b3BEa.jpg', NULL, 1, 3, NULL, NULL),
(33, 'gallery/HE4WMtOd05rG8hABUEc2Ud7UNZy8BT3j5DA5tcJD.jpg', NULL, 1, 3, NULL, NULL),
(34, 'gallery/uBKver0sYoP9OVM1CCXN2XHOBwkWUi1Jng0dKdKj.jpg', NULL, 1, 8, NULL, NULL),
(35, 'gallery/00MBwRvLyBtfP3v0j79OQaMocxkkE3mDqacY8UZm.jpg', NULL, 1, 8, NULL, NULL),
(36, 'gallery/8gSuhNOlpk5PaAcbCYbfvlSmUHnM9SUWc7b1BJJ8.jpg', NULL, 1, 8, NULL, NULL),
(37, 'gallery/eo4ZEAeW5aq71UaWzeZbXy7F4yI1rIZvLMXCCExL.png', NULL, 1, 8, NULL, NULL),
(38, 'gallery/oi3FntvZkPAcC5ONe4oHppNcGqUu8Qphj97otzIi.jpg', NULL, 1, 8, NULL, NULL),
(39, 'gallery/amMvxajhByQiC2ipL7rR1HC01XTklphwjz89WBb5.jpg', NULL, 2, 9, NULL, NULL),
(40, 'gallery/jkwlo6SH7GLy2bNeHlh6tmgG92R2MQHI9CBspCHD.jpg', NULL, 2, 9, NULL, NULL),
(41, 'gallery/n4XxJ7vlUKpzeksKXn8d4EdHo31miHNDnVVK0Fi5.jpg', NULL, 2, 9, NULL, NULL),
(42, 'gallery/sXbqYqJerTnwRiUZ1hXFDcMzfHe0EpTOhUsrgdXI.jpg', NULL, 1, 11, NULL, NULL),
(43, 'gallery/TU6hzJgszJGk7bKdo6QYVHJ2NIwxlbvIBaVTTqQT.jpg', NULL, 1, 11, NULL, NULL),
(44, 'gallery/IyA8UVlRWz6fTy2FqPwjXOWX3yhlOh8C0xZnJrTc.jpg', NULL, 1, 11, NULL, NULL),
(45, 'gallery/f5iIEbBRd0o6oWVKG6oeAm80Zkw34YcvlAY8HLRo.jpg', NULL, 1, 11, NULL, NULL),
(46, 'gallery/I71HKUNgtjy3QgoToEinRO4E9KOkscBXIj6OM7KP.jpg', NULL, 1, 11, NULL, NULL),
(47, 'gallery/wXszsI25dRsbkgQ2V52Cc3GKOnhSi1OmJJhhwPLX.jpg', NULL, 1, 11, NULL, NULL),
(48, 'gallery/JpDWLwulzZp4mnJ2ViiJldIyk3MR5hCr1TMtWGWS.jpg', NULL, 1, 12, NULL, NULL),
(49, 'gallery/6Y3fh0FAkDmpByG6ias31otCGlb3FulZPVW76WU7.jpg', NULL, 1, 12, NULL, NULL),
(50, 'gallery/V0xNuenIKMaYACR3fPvYzAzJVnRpUD8hQgL3AaLG.jpg', NULL, 1, 12, NULL, NULL),
(51, 'gallery/uBKver0sYoP9OVM1CCXN2XHOBwkWUi1Jng0dKdKj.jpg', NULL, 2, 13, NULL, NULL),
(52, 'gallery/00MBwRvLyBtfP3v0j79OQaMocxkkE3mDqacY8UZm.jpg', NULL, 2, 13, NULL, NULL),
(53, 'gallery/8gSuhNOlpk5PaAcbCYbfvlSmUHnM9SUWc7b1BJJ8.jpg', NULL, 2, 3, NULL, NULL),
(54, 'gallery/eo4ZEAeW5aq71UaWzeZbXy7F4yI1rIZvLMXCCExL.png', NULL, 2, 13, NULL, NULL),
(55, 'gallery/oi3FntvZkPAcC5ONe4oHppNcGqUu8Qphj97otzIi.jpg', NULL, 2, 13, NULL, NULL),
(56, 'gallery/kjxU5zmkqpKG4vy73MpAYjeVTb0Ac6Ry5tJMjtAY.jpg', NULL, 1, 14, NULL, NULL),
(57, 'gallery/s3yjBgmNrM2bqpeLGrYCv3kyfjeuclj3lOQx78YQ.jpg', NULL, 1, 14, NULL, NULL),
(58, 'gallery/fM0CkX2VYE7RT2bw8rmWq5KkReMemoxDkWl8HZ0d.jpg', NULL, 1, 14, NULL, NULL),
(59, 'gallery/hheV4nuMBxOUetAaeQFE71H0cKeY3BQJbpyTnnli.jpg', NULL, 1, 14, NULL, NULL),
(60, 'gallery/IEKgtd53xNdlJ794pEiLPcM1s87KSCjW9MvPktXV.jpg', NULL, 1, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `business_name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double(5,2) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `user_id`, `business_name`, `url`, `image`, `description`, `location_id`, `email`, `mobile`, `website`, `whatsapp`, `address`, `rating`, `featured`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dell Computer Service Center', 'dell-computer-service-center', 'iHdi9ALkrDzlWIxAIcPTztoWEkxClxBvXLSFYR1u.jpg', 'One of the most popular laptop brands in the world is Dell. Their laptop is the work companion for many users. Even some consider it to be the indispensable one', 3, 'info@manidell.com', '989 878 7878', 'https://manidell.com', '987 987 8987', 'Loyall Grden, Udumalpet, Tirupur, 642112', 3.00, 1, NULL, NULL, NULL),
(2, 1, 'Dr Suresh Opticals and Health Care', 'dr-suresh-opticals-and-health-care', 'uOMs7DhLtnmsezyiBE6pcsaRG1PJptYk8SJ5jjOu.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ac gravida dolor. Morbi non congue eros. Aliquam ultricies nibh risus. Maecenas commodo ornare dolor eu venenatis.', 4, 'sureshoptical@gmail.com', '98787676', 'https://sueshoptical.org', '987878789', 'Ramar Colony, Winorginay, South Colony New Delhi', 4.00, 0, NULL, NULL, NULL),
(3, 1, 'Spanish Hyper Market Neelakada', 'spanish-hyper-market-neelakada', 'XPkkoxBObvRTmBPKu0OOllZreQm3CezzsCCt6hfw.jpg', 'Morbi gravida justo at neque suscipit ultricies. Vestibulum elementum ac ex vitae porttitor. Donec ligula leo', 5, 'neelakadamarket@exp.com', '878787878', 'https://neelakadamarket.com', '9887 878 788', 'Loyall Grden, Udumalpet, Tirupur, 642112', NULL, 0, NULL, NULL, NULL),
(4, 2, 'Orange Super Market Manali', 'orange-super-market-manali', 'QEKnmLupv3zeh1TsxuIcIcqA4LtnxvuzQAZrOV10.jpg', 'Morbi gravida justo at neque suscipit ultricies. Vestibulum elementum ac ex vitae porttitor', 9, 'orangesupermarket@etail.com', '987676787', 'https://orangesupermarket.com', '987 776 7876', 'Ramar Colony, Winorginay, South Colony New Delhi', 3.50, 1, NULL, NULL, NULL),
(5, 1, 'Eden Furniture Mart', 'eden-furniture-mart', 'VIZvPBJ5LYijMnFzrQizwyuKB8uAXA4oWkamWilH.jpg', 'Sed quis metus scelerisque, porta turpis non, tristique diam. Integer vitae lorem lectus.', 4, 'edenfurniture@gmail.com', '8767 6767 676', 'https://edenfurniture.com', '877 676 67656', 'Ramar Colony, Winorginay, South Colony New Delhi', NULL, 0, NULL, NULL, NULL),
(6, 2, 'Modern Italian Gardern Restuarent', 'modern-italian-gardern-restuarent', '23R3YaXLonA2PuFH7dDUZUKwFCY8j2BhuCINoQDp.jpg', 'Maecenas massa risus, pellentesque vel suscipit et, pulvinar ut nibh. Proin sit amet nunc porta, interdum erat', 8, 'italianrestuarent@gmail.com', '987 8787 8787', 'https://italianrestuarent.co', '987 878 7878 78', 'Loyall Grden, Udumalpet, Tirupur, 642112', 5.00, 0, NULL, NULL, NULL),
(7, 1, 'Kovail Palamudir Solai', 'kovail-palamudir-solai', 'lK5JMzvGpgF8LhboQFOnNpYbwaM2xl8Dw0J8Gr7B.jpg', 'Maecenas mattis lorem nunc, a vulputate sapien egestas quis. Maecenas massa risus, pellentesque vel suscipit et', 6, 'kovaipalamudir@gmail.com', '34 589 89098', 'https://kovaipalamudir.in', '34 589 89098', '8638 Amarica Stranfod Mailbon Star', NULL, 0, NULL, NULL, NULL),
(8, 1, 'Sakthi Computer Sales and Service', 'sakthi-computer-sales-and-service', 'oWtqGpDaR4i4d2skkbLw14UfGBr4SLDl4Ip0tSgm.jpg', 'Maecenas mattis lorem nunc, a vulputate sapien egestas quis. Maecenas massa risus,', 9, 'shakticomputer@example.com', '878 786 7676', 'https://shakticomputer.com', '767 676 7676', '8638 Amarica Stranfod Mailbon Star', 3.00, 0, NULL, NULL, NULL),
(9, 2, 'Dr Jhon Opticals and Eye Care', 'dr-jhon-opticals-and-eye-care', 'bvsSGPMxjdKh8o669OjBHuVJH9a2qFQHKjb7sUsl.jpg', 'Morbi in leo in ipsum pellentesque congue ac vel ante. Phasellus tristique dui et eros fringilla efficitur', 3, 'jhonopticals@gmail.com', '8787 8787 78', 'https://jhonopticalshcare.com', '987 898 7878', 'Rosestreet, Motycarony, Torranto', NULL, 0, NULL, NULL, NULL),
(10, 2, 'Sam Sam Restuarent', 'sam-sam-restuarent', 'ECHTZ4aCv1eeMiii7yZpeNgoEnWre7KEeZFkBPyn.jpg', 'Maecenas massa risus, pellentesque vel suscipit et, pulvinar ut nibh. Proin sit amet nunc porta, interdum erat eu, laoreet lectus', 1, 'samsamsamsamrest@ssm.com', '435 4545 454', 'https://samsamrestssm.com', '453 335 343 34', 'Rosestreet, Motycarony, Torranto', NULL, 0, NULL, NULL, NULL),
(11, 1, 'David Furniture Land', 'david-furniture-land', 'ZlQBqopucYTlm6odPferuZdxOSWae1HFqp0BIKIR.jpg', 'tiam eget mauris vitae est venenatis fermentum sed ac lacus. Praesent tempor nibh at porttitor bibendum.', 4, 'davidfunrniture@ssm.com', '2342 3443 34', 'https://davidfunrniture.com', '343 3434 3434', '24/6 AVK Avenue, Loks Land Palaplam, Trampt', 3.75, 1, NULL, NULL, NULL),
(12, 1, 'Vintage Family Restuarent', 'vintage-family-restuarent', 'KhxfzwuBfIBoWsZ1005sUnX1D2VgsMSbVqn6UQRL.jpg', 'Morbi luctus lacus suscipit malesuada consequat. Suspendisse tempor dolor diam.', 4, 'vintagerestuarent@gmail.comm', '9878767876', 'https://vintagerestuarent.co.in', '78787898987', '8638 Amarica Stranfod Mailbon Star', NULL, 0, NULL, NULL, NULL),
(13, 2, 'Oriantal Computers', 'oriantal-computers', 'Tvzw0josjFx8WGyqIoGqXE6YWrYrZ3EjIINRLAdO.jpg', 'Morbi luctus lacus suscipit malesuada consequat. Suspendisse tempor dolor diam.', 4, 'oriantalcomputer@gmail.com', '8789878787', 'https://oriantal@gmail.com', '8787878787', '8638 Amarica Stranfod Mailbon Star', NULL, 0, NULL, NULL, NULL),
(14, 1, 'Daily Fresh Kovai', 'daily-fresh-kovai', 'qKGXj0yePaau5Kkf9KROvKc9MXysStnusERXsI7m.jpg', 'Morbi luctus lacus suscipit malesuada consequat. Suspendisse tempor dolor diam.', 7, 'dailyfresh@hotmail.com', '343534342432', 'https://dailyfresh.co.in', '98989898898', 'Kanoory, Racelnager, Kanniyakumari', 3.00, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `list_categories`
--

CREATE TABLE `list_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `list_categories`
--

INSERT INTO `list_categories` (`id`, `category_id`, `listing_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 5, 1, NULL, NULL, NULL),
(2, 3, 2, NULL, NULL, NULL),
(3, 2, 3, NULL, NULL, NULL),
(4, 2, 4, NULL, NULL, NULL),
(5, 4, 5, NULL, NULL, NULL),
(6, 1, 6, NULL, NULL, NULL),
(7, 2, 7, NULL, NULL, NULL),
(8, 5, 8, NULL, NULL, NULL),
(9, 3, 9, NULL, NULL, NULL),
(10, 1, 10, NULL, NULL, NULL),
(11, 4, 11, NULL, NULL, NULL),
(12, 1, 12, NULL, NULL, NULL),
(13, 5, 13, NULL, NULL, NULL),
(14, 2, 14, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `image`, `url`, `featured`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'New York', 'city/IrkzIIzTX6oJ85VHHXHkFJZbnOIMfKPA2J1JjTOA.jpg', 'new-york', 1, NULL, NULL, NULL),
(2, 'Sydney', 'city/YhYbodvrYd2QT9NguIDTGduKPVHKfj868vzZnkYE.jpg', 'sydney', 1, NULL, NULL, NULL),
(3, 'Beijing', 'city/1cgtic20cdx6gAEWUn7PktZnhfYyZhd93CWVV8nG.jpg', 'beijing', 1, NULL, NULL, NULL),
(4, 'New Delhi', 'city/dqdCv1Wb01Vgo3S1mb2B4QUIesBop79fZtn9rgi3.jpg', 'new-delhi', 1, NULL, NULL, NULL),
(5, 'Tokyo', 'city/mmHgFuhhlQfiY5ybR8uhM6bH21ZU1VqktxaDFIym.jpg', 'tokyo', 1, NULL, NULL, NULL),
(6, 'Toranto', 'city/1Z40n4m1rhPjoVkBTWS2zqTsaCKBdX2kxDKRV0wW.jpg', 'toranto', 1, NULL, NULL, NULL),
(7, 'Mumbai', 'city/Oca130BiIDF0ojxsjy5El92U5wXsH1VVVgUHzAiq.jpg', 'mumbai', 1, NULL, NULL, NULL),
(8, 'Italy', 'city/jjEOSA5Mpmc5w0G80pcoz9o0TC9RSVds609fULLu.jpg', 'italy', 1, NULL, NULL, NULL),
(9, 'Thailand', 'city/0vyPQ7r2W0kBc7lKH0GhEJUQylCRMSxjSdtk0J4H.jpg', 'thailand', 0, NULL, NULL, NULL),
(10, 'Maldives-1', NULL, 'maldives-1', 0, NULL, NULL, NULL),
(11, 'Singapore', 'city/ilvhbP0oUT8CSJvReRSopvqkI19kjPgvQyBx0bhU.jpg', 'singapore', 0, NULL, NULL, NULL),
(12, 'Londion', NULL, 'londion', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_25_154033_create_packages_table', 1),
(6, '2022_03_04_023723_create_app_settings_table', 1),
(7, '2022_03_06_033720_create_site_infos_table', 1),
(8, '2022_03_07_070035_create_locations_table', 1),
(9, '2022_03_08_151905_create_categories_table', 1),
(10, '2022_03_13_023746_create_listings_table', 1),
(11, '2022_03_13_040347_create_list_categories_table', 1),
(12, '2022_03_14_103312_create_user_packages_table', 1),
(13, '2022_03_15_034638_create_transactions_table', 1),
(14, '2022_03_15_051557_create_purchases_table', 1),
(15, '2022_03_17_014117_create_business_details_table', 1),
(16, '2022_03_18_020323_create_services_table', 1),
(17, '2022_03_18_054332_create_products_table', 1),
(18, '2022_03_18_235006_create_galleries_table', 1),
(19, '2022_03_24_141810_create_bookmarks_table', 1),
(20, '2022_03_29_064824_create_ratings_table', 1),
(21, '2022_03_29_143153_create_messages_table', 1),
(22, '2022_03_30_053653_create_timings_table', 1),
(23, '2022_04_01_024057_create_blogs_table', 1),
(24, '2022_04_02_050547_create_subscribers_table', 1),
(25, '2022_04_02_115956_create_pages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `listing` int(11) NOT NULL,
  `verification` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` enum('Allowed','Not Allowed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL,
  `services` int(11) NOT NULL,
  `products` int(11) NOT NULL,
  `images` int(11) NOT NULL,
  `validity` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `desic`, `price`, `listing`, `verification`, `message`, `review`, `services`, `products`, `images`, `validity`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Basic Package', 'This plan is for small business and startups', 0.00, 3, 'No', 'Not Allowed', 'No', 3, 3, 3, 0, NULL, NULL, NULL),
(2, 'Stanters Pack', 'This package is for medium and growing business', 10.00, 10, 'Yes', 'Allowed', 'Yes', 30, 30, 50, 12, NULL, NULL, NULL),
(3, 'Premium Package', 'For Corporate and big Business Providers', 50.00, 100, 'No', 'Allowed', 'Yes', 300, 300, 300, 12, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(175) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(175) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `url`, `description`, `content`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'about-us', 'About Smart Directory', '{\"time\":1648996331278,\"blocks\":[{\"id\":\"-mnkfH47Jg\",\"type\":\"paragraph\",\"data\":{\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat rhoncus dolor feugiat semper. Vestibulum imperdiet purus nibh, ut finibus dolor lobortis quis. Vivamus et blandit urna. Aliquam mi arcu, sagittis nec tortor vel, sollicitudin dapibus nulla. Praesent a semper magna, non cursus odio. Nulla volutpat, lacus eu tincidunt egestas, erat nisi sodales diam, et vestibulum nisl mauris venenatis metus. Morbi mattis metus eu placerat scelerisque. Cras tempor diam quis erat imperdiet, non malesuada tortor efficitur. Quisque aliquam convallis arcu, quis consequat felis sagittis quis. Cras sapien risus, cursus vel placerat non, tempus quis nulla.\"}},{\"id\":\"WHq8ztwe_k\",\"type\":\"paragraph\",\"data\":{\"text\":\"Maecenas quis turpis pharetra, sollicitudin leo vel, posuere felis. Proin id congue libero. Vestibulum sit amet nulla dui. Etiam in mattis felis. Fusce luctus odio ut semper volutpat. Etiam cursus mauris eget mollis finibus. Cras varius mattis dui, vitae viverra nisi fringilla nec. Aenean tincidunt tempus risus, ut lobortis eros suscipit eget. Fusce fermentum tempus massa, nec hendrerit augue laoreet sit amet. Pellentesque eget luctus ligula, quis molestie ante.\"}},{\"id\":\"WzAoUqjhcJ\",\"type\":\"header\",\"data\":{\"text\":\"Our Mission\",\"level\":2}},{\"id\":\"bg0nP0MtAw\",\"type\":\"paragraph\",\"data\":{\"text\":\"Duis lacus libero, accumsan at volutpat et, hendrerit suscipit velit. Etiam lobortis eros tellus, in congue nisl rutrum eget. Vestibulum turpis lorem, pretium eget nunc sed, pulvinar venenatis eros. Maecenas ullamcorper nisi id tortor consequat, id molestie nunc ornare. Pellentesque viverra maximus ullamcorper. Ut tincidunt viverra velit, at feugiat lorem fringilla in. Cras egestas, arcu placerat laoreet facilisis, elit turpis ultrices ante, sit amet sagittis lectus nulla eget felis. Phasellus a ornare lacus. Ut tristique purus quis dui convallis, at tempor lectus cursus. Donec lobortis metus iaculis diam ultricies bibendum. Morbi laoreet, tortor nec hendrerit egestas, arcu tortor iaculis lacus, non rhoncus ipsum risus ac nibh. Mauris pellentesque ac ligula at lacinia. Donec ornare tortor id erat blandit, sit amet tristique elit tempor. Phasellus semper scelerisque dolor nec elementum.\"}},{\"id\":\"izDk2Hk024\",\"type\":\"paragraph\",\"data\":{\"text\":\"Pellentesque mattis, risus sit amet pharetra mattis, mauris ante molestie erat, et gravida purus neque id mauris. Praesent vehicula sodales felis, eget tempor nibh ultricies at. Sed magna ex, gravida sit amet sem a, fermentum molestie risus. Pellentesque bibendum suscipit mi, ullamcorper eleifend nunc laoreet ut. Sed urna elit, vestibulum ac dolor quis, imperdiet ullamcorper ex. Donec ante justo, condimentum at vulputate a, imperdiet quis risus. Pellentesque malesuada, lacus et venenatis sodales, orci velit ullamcorper orci, ac feugiat odio neque egestas nibh. Suspendisse tincidunt, purus ac cursus rhoncus, neque eros tincidunt arcu, tempus rhoncus nibh quam sit amet purus. Integer sit amet augue eget tellus feugiat aliquam id sit amet urna.\"}},{\"id\":\"A9l5DS4dPA\",\"type\":\"header\",\"data\":{\"text\":\"Our Vision\",\"level\":2}},{\"id\":\"8WBtUHShoy\",\"type\":\"paragraph\",\"data\":{\"text\":\"Phasellus sit amet justo nec sem molestie auctor id ut diam. Vivamus non leo ornare, porta sem at, malesuada purus. Proin laoreet diam semper, accumsan tellus in, euismod nunc. Vestibulum iaculis laoreet sapien cursus convallis. Praesent a ullamcorper leo. Donec at dignissim ante. Nunc libero dui, porttitor a pretium non, eleifend eget ipsum. Phasellus pellentesque sagittis consectetur. Phasellus laoreet non ante in viverra. Aliquam luctus ultricies tortor, non mollis diam hendrerit commodo. Cras a tortor tempor, ullamcorper orci at, consectetur leo. Praesent ut consequat ante. Nulla aliquam mauris mi, id iaculis enim lacinia nec. Sed sed sapien eget justo placerat lobortis at eu tortor. Vivamus ac orci tortor.\"}}],\"version\":\"2.23.2\"}', NULL, NULL, NULL),
(2, 'Privacy Policy', 'privacy-policy', 'Privacy Policy', '{\"time\":1648996383534,\"blocks\":[{\"id\":\"E4P2VvNPzq\",\"type\":\"paragraph\",\"data\":{\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In blandit purus in condimentum mattis. Nam venenatis quam vel eros posuere, eget pulvinar felis commodo. Ut finibus tincidunt turpis tristique fermentum. Aenean quis est consequat, efficitur mauris vitae, sagittis turpis. Maecenas volutpat dui et gravida suscipit. Proin at sagittis nisl, ac pellentesque augue. Donec varius pharetra diam in tempor. Phasellus aliquet, diam condimentum laoreet semper, arcu mauris ullamcorper felis, eu sagittis ex quam in sem. Curabitur vestibulum lacus vel sagittis finibus. Vestibulum tellus tortor, fermentum ut ante a, placerat mattis ipsum. Nullam quis mauris at turpis sodales tincidunt in vel neque. Quisque et nisl a ante suscipit placerat sit amet nec mi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent sed finibus enim, et consequat eros. Proin tellus arcu, interdum sed blandit vitae, pulvinar a sapien. Sed diam lacus, tincidunt eu cursus eu, luctus a tellus.\"}},{\"id\":\"AQq_44FVKt\",\"type\":\"paragraph\",\"data\":{\"text\":\"Vestibulum justo turpis, pharetra quis quam nec, ultricies hendrerit massa. Suspendisse sed dictum odio, a malesuada sapien. Donec venenatis, nisi vel tempor imperdiet, justo turpis aliquet ligula, id aliquet erat tellus vel nunc. Donec faucibus purus lorem, non luctus est sodales sit amet. Nam malesuada libero pulvinar purus elementum, sollicitudin vulputate risus posuere. Vivamus suscipit dolor dapibus tortor tempor accumsan. Phasellus a lacus interdum, dictum augue ut, semper ipsum. Praesent id orci luctus, semper magna id, ornare nunc. Aliquam massa ex, consequat sed lacus eget, molestie volutpat nulla. Mauris consectetur arcu nisi, eget porttitor nibh pulvinar in. Proin nec luctus risus, non volutpat orci. Mauris vulputate, mauris eget molestie vulputate, nisi tortor commodo libero, vitae facilisis magna nibh ultrices lorem. Donec iaculis magna in purus luctus luctus. In vitae orci blandit mauris ultrices sollicitudin vitae at ex. Donec eu hendrerit neque, eu fermentum metus. Suspendisse sagittis porttitor urna, at laoreet leo porta sed.\"}},{\"id\":\"cceQQUu5SZ\",\"type\":\"paragraph\",\"data\":{\"text\":\"Nulla condimentum vestibulum semper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque laoreet feugiat massa sit amet hendrerit. Morbi hendrerit ex risus, sed euismod mi feugiat quis. Ut feugiat, urna at pretium posuere, eros arcu sollicitudin arcu, nec suscipit neque tortor et mauris. Duis lobortis, sem convallis semper ultricies, velit arcu rhoncus massa, id pulvinar erat ipsum quis lectus. Sed volutpat sem sit amet turpis bibendum imperdiet. Curabitur tortor dolor, finibus nec sollicitudin vel, lacinia a velit. Etiam quis gravida metus. Ut egestas fermentum diam a gravida.\"}}],\"version\":\"2.23.2\"}', NULL, NULL, NULL),
(3, 'Terms and Conditions', 'terms-and-conditions', 'Terms and Conditions', '{\"time\":1648996418077,\"blocks\":[],\"version\":\"2.23.2\"}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `user_id`, `listing_id`, `created_at`, `updated_at`) VALUES
(1, 'Dell i5 !2th Gen 8GM', 'product/L0AUy46LfxDBqfvszrqE1eXE3qkOsPuTNAzssZH4.jpg', 850.00, 1, 1, NULL, NULL),
(5, 'Dell Inspiron XPS 16 GB RAM', 'product/GtEkpckcdZq00MpWVSSLjAOLOxo6ti1lpq8iw3l9.jpg', 1200.00, 1, 1, NULL, NULL),
(6, 'XPS 15 inch 16GM 250GM SSD', 'product/burf7YoSce6J9hCRecTxueaYry87ixC8eoX4eQ1C.jpg', 1450.00, 1, 1, NULL, NULL),
(7, 'Inspiron 8GM RAM 250 GB', 'product/EQLqCsZdGDtEt7Y2LntHlrhAiyNl33oaiJltWgpz.jpg', 1400.00, 1, 1, NULL, NULL),
(8, 'XPS 8G 250GB SSD with TB HBB', 'product/AXJMtE2F8M1iZbFhdlkpX4fzn2cEv6ERryxvbKQ1.jpg', 1220.00, 1, 1, NULL, NULL),
(9, '13 inch 16GB 250GM SSD Laptop', 'product/mi70q0KmiB3eJVZBQ6h4HwcsKfyJicyaqWOrrIEK.jpg', 1300.00, 1, 1, NULL, NULL),
(10, 'Meny Special Eye Glass', 'product/1pvcZPdRflJAPgq1HeIF3wOHq9hZgkvUJjQFweOP.jpg', 120.00, 1, 2, NULL, NULL),
(11, 'Kiss Cool Sun Glass', 'product/2uag0h7HcjwePwSnjuHCcuj2IVZDPBq5f7Rd6nD5.jpg', 140.00, 1, 2, NULL, NULL),
(12, 'Super Cool Eye Glass Colord', 'product/kSi7MOV0qo7SdVMJdYyN2SWcucVYjzvHeMfGFGBW.jpg', 150.00, 1, 2, NULL, NULL),
(13, 'Rigmu Cool Kids Eye Glass', 'product/BJsjsiCHXGAo4cqxDHgAf422PbnKJspSX8LT7y7f.jpg', 189.00, 1, 2, NULL, NULL),
(14, 'Super Cool Mens Eye Glass', 'product/iK0ipuaWcnw02sI3bzxwf5e2Sm74GTtvEFejoQXC.jpg', 133.00, 1, 2, NULL, NULL),
(15, 'Kids Rimson Eye Glass', 'product/70Aj31ykRHnev7D8CMnUETcWSR6cX0lFhxy1zUxk.jpg', 144.00, 1, 2, NULL, NULL),
(16, 'Spanish Brinjal 1 kg', 'product/fEY7l4ce3unCU4oirnPfE0w0AkDsYUX7vtItFEa8.png', 12.00, 1, 3, NULL, NULL),
(17, 'Australian Orange', 'product/OeLCehvqYsUIjWr2oaSZCXSo6zs8aTGMApvUmkg1.png', 10.00, 1, 3, NULL, NULL),
(18, 'Kashmir Mushroom', 'product/6qrDCElkaqv7SsdIeJfykpuy9Wg8o1My1GaD80UV.png', 12.00, 1, 3, NULL, NULL),
(19, 'Country Tomato', 'product/mtWEq18lfgqY7TDMMpytL6bjrYVP1juclYVCwU8y.png', 8.00, 1, 3, NULL, NULL),
(20, 'Grapes', 'product/6aGbPZsN7lovpDnBNL2iMdn0tpdCj4R0NHM5OEI5.png', 9.00, 1, 3, NULL, NULL),
(21, 'Watermelon', 'product/6ACNpkSVS6oXjeqmwy9RTtST7ngjvszxq5Yh2Kdn.png', 7.00, 1, 3, NULL, NULL),
(22, 'Indian Beans', 'product/MghGaqHVBpV75iIlE6zRUq684CZncmdfAWId74h2.png', 6.00, 1, 3, NULL, NULL),
(23, 'Fresh Fish 1kg', 'product/SljBUTJ0odUnyONI3J7JBZqTOPDXdtUMHUW3ycOE.png', 44.00, 1, 3, NULL, NULL),
(24, 'Cauliflower 1kg', 'product/GfpBIp0baKF2AxqzlS0OnxNr1HUJGx4DYQgMjNcJ.jpg', 12.00, 2, 4, NULL, NULL),
(25, 'Strawberry 1kg', 'product/vGEAKuR8DfCc40dGojtyDJJpQ5XrdINRHLTIhQmE.jpg', 14.00, 2, 4, NULL, NULL),
(26, 'Carrot 1 kg', 'product/pFdUbY5ISyV1yV2VAzvYJ39dOUwaECo3sXfL6VSO.jpg', 6.00, 2, 4, NULL, NULL),
(27, 'Mysore Banana', 'product/qtajYJ3V3x8tUdMVvrchzUQUpLvMWVi80dS9H13J.jpg', 12.00, 2, 4, NULL, NULL),
(28, 'Kivi Fruit', 'product/0YiK0wLZuw19UDjDZVyPUOKBUYOvnydmmjLJD6U1.jpg', 18.00, 2, 4, NULL, NULL),
(29, 'Country Egg 5 nos', 'product/WrU3nCVXyEKW2lNBtAiIcTt4wV8UW3GpOUhyit0v.jpg', 5.00, 2, 4, NULL, NULL),
(30, 'Flower Stand', 'product/ONm8EcEdQJKqvxUVIjsPDWPeEN5Gh0ZEPpTUTAsu.jpg', 22.00, 1, 5, NULL, NULL),
(31, 'Light Folder Cover', 'product/JXeLbdawZvoFSzbQ5d5GZH0YDOqIGjWQ0KDmyRYu.jpg', 33.00, 1, 5, NULL, NULL),
(32, 'Custom Chair model', 'product/ftqlBLl1KO4yInoCpyG0i0oXY4DfsPZHQjpX0IdZ.jpg', 112.00, 1, 5, NULL, NULL),
(33, 'Fall light', 'product/7YFtAukRAJM6Z5bI6vqiQx6cH4qJx9nimUARlVqt.jpg', 89.00, 1, 5, NULL, NULL),
(34, 'Cup Holder', 'product/WdgOON3JX2tOw9Qd8Vo6sqN5eOg2wkfAvSUNhiGK.jpg', 88.00, 1, 5, NULL, NULL),
(35, 'Modern Chair', 'product/MP38wErEDxyHrrqrX5HPpmyPOnQRz8f7bOrjTYcV.jpg', 44.00, 1, 5, NULL, NULL),
(36, 'Modern long Stool', 'product/ZhLrpm6jW5SdyBNviTjg6w4sxlvO2UM3KQ6kIyn0.jpg', 55.00, 1, 5, NULL, NULL),
(37, 'Chicken Fry', 'product/YOWjUR1wI6Bn7mbdcdlC82sfEmpho8uyC7gvBG0W.png', 12.00, 2, 6, NULL, NULL),
(38, 'Chick Wings', 'product/Xk4nUSUn1gWeZydhpDeI6JtVeIKuYc2tW6poEY5E.png', 9.00, 2, 6, NULL, NULL),
(39, 'Chicken Burget', 'product/nqL4xfjkjWI0GEGtnC3Dn6YrfjxDhvDrKO8T7L9W.png', 14.00, 2, 6, NULL, NULL),
(40, 'Spicy Noodles', 'product/6ZBRVt3y0rHCb7HREKaQ7PfjXoHO78ep3tU8EhjN.png', 12.00, 2, 6, NULL, NULL),
(41, 'Gril Chicken', 'product/AsNjxJPM50Gt5LEOiBzsKMYPeDbtS5GVO80t28Oi.png', 33.00, 2, 6, NULL, NULL),
(42, 'Chicken Nugets', 'product/vG2sy9WxtdtDlKQhuP0YxoBfzXSAdci3at51Vg8j.png', 15.00, 2, 6, NULL, NULL),
(43, 'Chicken Burget', 'product/pWJcg8Eq9YXa0I6FtjUmb5i0GS39c62no5C1332O.png', 18.00, 2, 6, NULL, NULL),
(44, 'Fully Loaded Cheesy Burger', 'product/bvn6baVFmyedFTkVxmSZXIwaxfn0WFoUbGvaPlWy.png', 22.00, 2, 6, NULL, NULL),
(45, 'Non Veg Pizza', 'product/4CNHUvA8btEo9twNVQLrLg2WdrfJeROBNbdGTDHu.png', 34.00, 2, 6, NULL, NULL),
(46, 'Capsicum 1kg', 'product/B3IPBywbafL5YEgU32bysVE8s49Vxqn9EIbtfFJ2.jpg', 22.00, 1, 7, NULL, NULL),
(47, 'Onion 1kg', 'product/4exE2pH9vkyDddOXTYBulCQ1AAf28vBrKCNRlajn.jpg', 13.00, 1, 7, NULL, NULL),
(48, 'Broccoli 1kg', 'product/wiO0QNISH52sc4h98IS457N5e0v8sk5plgjxTKmb.jpg', 32.00, 1, 7, NULL, NULL),
(49, 'Fresh Mutton 1kg', 'product/5nan1Xv0HixRpnM25aCBgHcwCuJkbhegJo0yX7eh.jpg', 55.00, 1, 7, NULL, NULL),
(50, 'India Orange', 'product/J9JyLKezz4GRl2LyK1ZPXkeBhQAqklIBhYvvN1Mw.jpg', 24.00, 1, 7, NULL, NULL),
(51, 'Kerala Brinjal', 'product/5RmVlluQRfgQodgvbEb5IAXDZzFSx9RfBuFXRvib.jpg', 15.00, 1, 7, NULL, NULL),
(52, 'Straberry 1kg', 'product/5B5xZPNUp2vpk8SI7JxSszn5btToVIAtznvqctav.jpg', 56.00, 1, 7, NULL, NULL),
(53, 'Cauliflower', 'product/3iKgxPzfSMyJPJCBO98BNVefMFdLnYK4PcpWPrcs.jpg', 43.00, 1, 7, NULL, NULL),
(54, 'Dell i5 !2th Gen 8GM', 'product/L0AUy46LfxDBqfvszrqE1eXE3qkOsPuTNAzssZH4.jpg', 850.00, 1, 8, NULL, NULL),
(55, 'Dell Inspiron XPS 16 GB RAM', 'product/GtEkpckcdZq00MpWVSSLjAOLOxo6ti1lpq8iw3l9.jpg', 1200.00, 1, 8, NULL, NULL),
(56, 'XPS 15 inch 16GM 250GM SSD', 'product/burf7YoSce6J9hCRecTxueaYry87ixC8eoX4eQ1C.jpg', 1450.00, 1, 8, NULL, NULL),
(57, 'Inspiron 8GM RAM 250 GB', 'product/EQLqCsZdGDtEt7Y2LntHlrhAiyNl33oaiJltWgpz.jpg', 1400.00, 1, 8, NULL, NULL),
(58, 'XPS 8G 250GB SSD with TB HBB', 'product/AXJMtE2F8M1iZbFhdlkpX4fzn2cEv6ERryxvbKQ1.jpg', 1220.00, 1, 8, NULL, NULL),
(59, '13 inch 16GB 250GM SSD Laptop', 'product/mi70q0KmiB3eJVZBQ6h4HwcsKfyJicyaqWOrrIEK.jpg', 1300.00, 1, 8, NULL, NULL),
(60, 'Meny Special Eye Glass', 'product/1pvcZPdRflJAPgq1HeIF3wOHq9hZgkvUJjQFweOP.jpg', 120.00, 2, 9, NULL, NULL),
(61, 'Kiss Cool Sun Glass', 'product/2uag0h7HcjwePwSnjuHCcuj2IVZDPBq5f7Rd6nD5.jpg', 140.00, 2, 9, NULL, NULL),
(62, 'Super Cool Eye Glass Colord', 'product/kSi7MOV0qo7SdVMJdYyN2SWcucVYjzvHeMfGFGBW.jpg', 150.00, 2, 9, NULL, NULL),
(63, 'Rigmu Cool Kids Eye Glass', 'product/BJsjsiCHXGAo4cqxDHgAf422PbnKJspSX8LT7y7f.jpg', 189.00, 2, 9, NULL, NULL),
(64, 'Super Cool Mens Eye Glass', 'product/iK0ipuaWcnw02sI3bzxwf5e2Sm74GTtvEFejoQXC.jpg', 133.00, 2, 9, NULL, NULL),
(65, 'Kids Rimson Eye Glass', 'product/70Aj31ykRHnev7D8CMnUETcWSR6cX0lFhxy1zUxk.jpg', 144.00, 2, 9, NULL, NULL),
(66, 'Chicken Fry', 'product/YOWjUR1wI6Bn7mbdcdlC82sfEmpho8uyC7gvBG0W.png', 12.00, 2, 10, NULL, NULL),
(67, 'Chick Wings', 'product/Xk4nUSUn1gWeZydhpDeI6JtVeIKuYc2tW6poEY5E.png', 9.00, 2, 10, NULL, NULL),
(68, 'Chicken Burget', 'product/nqL4xfjkjWI0GEGtnC3Dn6YrfjxDhvDrKO8T7L9W.png', 14.00, 2, 10, NULL, NULL),
(69, 'Spicy Noodles', 'product/6ZBRVt3y0rHCb7HREKaQ7PfjXoHO78ep3tU8EhjN.png', 12.00, 2, 10, NULL, NULL),
(70, 'Gril Chicken', 'product/AsNjxJPM50Gt5LEOiBzsKMYPeDbtS5GVO80t28Oi.png', 33.00, 2, 10, NULL, NULL),
(71, 'Chicken Nugets', 'product/vG2sy9WxtdtDlKQhuP0YxoBfzXSAdci3at51Vg8j.png', 15.00, 2, 10, NULL, NULL),
(72, 'Chicken Burget', 'product/pWJcg8Eq9YXa0I6FtjUmb5i0GS39c62no5C1332O.png', 18.00, 2, 10, NULL, NULL),
(73, 'Fully Loaded Cheesy Burger', 'product/bvn6baVFmyedFTkVxmSZXIwaxfn0WFoUbGvaPlWy.png', 22.00, 2, 10, NULL, NULL),
(74, 'Non Veg Pizza', 'product/4CNHUvA8btEo9twNVQLrLg2WdrfJeROBNbdGTDHu.png', 34.00, 2, 10, NULL, NULL),
(75, 'Flower Stand', 'product/ONm8EcEdQJKqvxUVIjsPDWPeEN5Gh0ZEPpTUTAsu.jpg', 22.00, 1, 11, NULL, NULL),
(76, 'Light Folder Cover', 'product/JXeLbdawZvoFSzbQ5d5GZH0YDOqIGjWQ0KDmyRYu.jpg', 33.00, 1, 11, NULL, NULL),
(77, 'Custom Chair model', 'product/ftqlBLl1KO4yInoCpyG0i0oXY4DfsPZHQjpX0IdZ.jpg', 112.00, 1, 11, NULL, NULL),
(78, 'Fall light', 'product/7YFtAukRAJM6Z5bI6vqiQx6cH4qJx9nimUARlVqt.jpg', 89.00, 1, 11, NULL, NULL),
(79, 'Cup Holder', 'product/WdgOON3JX2tOw9Qd8Vo6sqN5eOg2wkfAvSUNhiGK.jpg', 88.00, 1, 11, NULL, NULL),
(80, 'Modern Chair', 'product/MP38wErEDxyHrrqrX5HPpmyPOnQRz8f7bOrjTYcV.jpg', 44.00, 1, 11, NULL, NULL),
(81, 'Modern long Stool', 'product/ZhLrpm6jW5SdyBNviTjg6w4sxlvO2UM3KQ6kIyn0.jpg', 55.00, 1, 11, NULL, NULL),
(82, 'Chicken Fry', 'product/YOWjUR1wI6Bn7mbdcdlC82sfEmpho8uyC7gvBG0W.png', 12.00, 1, 12, NULL, NULL),
(83, 'Chick Wings', 'product/Xk4nUSUn1gWeZydhpDeI6JtVeIKuYc2tW6poEY5E.png', 9.00, 2, 6, NULL, NULL),
(84, 'Chicken Burget', 'product/nqL4xfjkjWI0GEGtnC3Dn6YrfjxDhvDrKO8T7L9W.png', 14.00, 1, 12, NULL, NULL),
(85, 'Spicy Noodles', 'product/6ZBRVt3y0rHCb7HREKaQ7PfjXoHO78ep3tU8EhjN.png', 12.00, 1, 12, NULL, NULL),
(86, 'Gril Chicken', 'product/AsNjxJPM50Gt5LEOiBzsKMYPeDbtS5GVO80t28Oi.png', 33.00, 1, 12, NULL, NULL),
(87, 'Chicken Nugets', 'product/vG2sy9WxtdtDlKQhuP0YxoBfzXSAdci3at51Vg8j.png', 15.00, 1, 12, NULL, NULL),
(88, 'Chicken Burget', 'product/pWJcg8Eq9YXa0I6FtjUmb5i0GS39c62no5C1332O.png', 18.00, 1, 12, NULL, NULL),
(89, 'Fully Loaded Cheesy Burger', 'product/bvn6baVFmyedFTkVxmSZXIwaxfn0WFoUbGvaPlWy.png', 22.00, 1, 12, NULL, NULL),
(90, 'Non Veg Pizza', 'product/4CNHUvA8btEo9twNVQLrLg2WdrfJeROBNbdGTDHu.png', 34.00, 1, 12, NULL, NULL),
(91, 'Dell i5 !2th Gen 8GM', 'product/L0AUy46LfxDBqfvszrqE1eXE3qkOsPuTNAzssZH4.jpg', 850.00, 2, 13, NULL, NULL),
(92, 'Dell Inspiron XPS 16 GB RAM', 'product/GtEkpckcdZq00MpWVSSLjAOLOxo6ti1lpq8iw3l9.jpg', 1200.00, 2, 13, NULL, NULL),
(93, 'XPS 15 inch 16GM 250GM SSD', 'product/burf7YoSce6J9hCRecTxueaYry87ixC8eoX4eQ1C.jpg', 1450.00, 2, 13, NULL, NULL),
(94, 'Inspiron 8GM RAM 250 GB', 'product/EQLqCsZdGDtEt7Y2LntHlrhAiyNl33oaiJltWgpz.jpg', 1400.00, 2, 13, NULL, NULL),
(95, 'XPS 8G 250GB SSD with TB HBB', 'product/AXJMtE2F8M1iZbFhdlkpX4fzn2cEv6ERryxvbKQ1.jpg', 1220.00, 2, 13, NULL, NULL),
(96, '13 inch 16GB 250GM SSD Laptop', 'product/mi70q0KmiB3eJVZBQ6h4HwcsKfyJicyaqWOrrIEK.jpg', 1300.00, 2, 13, NULL, NULL),
(97, 'Australian Orange', 'product/OeLCehvqYsUIjWr2oaSZCXSo6zs8aTGMApvUmkg1.png', 10.00, 1, 14, NULL, NULL),
(98, 'Kashmir Mushroom', 'product/6qrDCElkaqv7SsdIeJfykpuy9Wg8o1My1GaD80UV.png', 12.00, 1, 14, NULL, NULL),
(99, 'Country Tomato', 'product/mtWEq18lfgqY7TDMMpytL6bjrYVP1juclYVCwU8y.png', 8.00, 1, 14, NULL, NULL),
(100, 'Grapes', 'product/6aGbPZsN7lovpDnBNL2iMdn0tpdCj4R0NHM5OEI5.png', 9.00, 1, 14, NULL, NULL),
(101, 'Watermelon', 'product/6ACNpkSVS6oXjeqmwy9RTtST7ngjvszxq5Yh2Kdn.png', 7.00, 1, 14, NULL, NULL),
(102, 'Indian Beans', 'product/MghGaqHVBpV75iIlE6zRUq684CZncmdfAWId74h2.png', 6.00, 1, 14, NULL, NULL),
(103, 'Fresh Fish 1kg', 'product/SljBUTJ0odUnyONI3J7JBZqTOPDXdtUMHUW3ycOE.png', 44.00, 1, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `rating` double(5,2) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `listing_id`, `rating`, `message`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 1, 1, 4.00, 'One of the Dest Compute Sales and Services centre in work with. have a great experience with this dell computer service center', NULL, NULL, NULL),
(4, 1, 1, 2.00, '. Maecenas non suscipit dui, vitae malesuada nibh. Nunc justo nisi, mattis ut semper sit amet, congue ut risus', NULL, NULL, NULL),
(5, 1, 11, 3.00, '. Maecenas non suscipit dui, vitae malesuada nibh. Nunc justo nisi, mattis ut semper sit amet, congue ut risus', NULL, NULL, NULL),
(6, 1, 11, 4.00, 'aoreet tincidunt. Nulla laoreet libero vitae turpis molestie gravida. Donec bibendum convallis neque ut laoreet. Sed nec diam finibus, rutrum nisl vitae, auctor diam', NULL, NULL, NULL),
(7, 1, 11, 4.00, 'ras id laoreet lacus. Cras ut tortor imperdiet, egestas ligula ac, dapibus augue.', NULL, NULL, NULL),
(8, 1, 6, 5.00, 'ras id laoreet lacus. Cras ut tortor imperdiet, egestas ligula ac, dapibus augue.', NULL, NULL, NULL),
(9, 1, 4, 4.00, 'ras id laoreet lacus. Cras ut tortor imperdiet, egestas ligula ac, dapibus augue.', NULL, NULL, NULL),
(10, 1, 2, 5.00, 'laoreet ac aliquet in, imperdiet ut mauris. Maecenas nec varius velit, auctor volutpat eros', NULL, NULL, NULL),
(11, 1, 8, 3.00, 'am ultricies fringilla lacus sed convallis. Suspendisse augue sapien, consectetur sed efficitur', NULL, NULL, NULL),
(12, 1, 14, 3.00, 'Pellentesque laoreet faucibus est, sit amet placerat leo tristique placerat. Quisque molestie, ex ut feugiat semper,', NULL, NULL, NULL),
(13, 2, 11, 4.00, 'Cras ut tortor imperdiet, egestas ligula ac, dapibus augue. Proin auctor congue arcu', NULL, NULL, NULL),
(14, 2, 4, 3.00, 'Cras ut tortor imperdiet, egestas ligula ac, dapibus augue. Proin auctor congue arcu', NULL, NULL, NULL),
(15, 2, 2, 3.00, 'Cras ut tortor imperdiet, egestas ligula ac, dapibus augue. Proin auctor congue arcu', NULL, NULL, NULL),
(16, 2, 13, 4.00, 'enean vel nisi vel neque gravida blandit. Nulla nec ipsum eros. Phasellus turpis lacus, eleifend vel nisl sed, vulputate cursus massa', NULL, NULL, NULL),
(17, 2, 13, 5.00, 'Pellentesque eu molestie velit. Morbi quis elit sagittis, maximus tellus et, cursus ante. Mauris eu nunc felis.', NULL, NULL, NULL),
(18, 2, 12, 3.00, 'Pellentesque eu molestie velit. Morbi quis elit sagittis, maximus tellus et, cursus ante. Mauris eu nunc felis.', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `user_id`, `listing_id`, `created_at`, `updated_at`) VALUES
(1, 'Computer Service', 1, 1, NULL, NULL),
(2, 'Mother Board Service', 1, 1, NULL, NULL),
(3, 'Computer Accessories', 1, 1, NULL, NULL),
(4, 'Monitor', 1, 1, NULL, NULL),
(5, 'Dell Laptop', 1, 1, NULL, NULL),
(6, 'OS Installation', 1, 1, NULL, NULL),
(7, 'Software Installation', 1, 1, NULL, NULL),
(8, 'Custom PC Build', 1, 1, NULL, NULL),
(9, 'Gaiming PC', 1, 1, NULL, NULL),
(10, 'Cataract Surgery', 1, 2, NULL, NULL),
(11, 'Paediatric Ophthalmology', 1, 2, NULL, NULL),
(12, 'Emergency Eye Care', 1, 2, NULL, NULL),
(13, 'Neuro Opthalmology', 1, 2, NULL, NULL),
(14, 'Neuro Ophthalmology', 1, 2, NULL, NULL),
(15, 'Computer Vision Syndrome', 1, 2, NULL, NULL),
(16, 'Glaucoma', 1, 2, NULL, NULL),
(17, 'Orbit & Oculoplasty', 1, 2, NULL, NULL),
(18, 'Grocery', 1, 3, NULL, NULL),
(19, 'Furniture', 1, 3, NULL, NULL),
(20, 'Cloths', 1, 3, NULL, NULL),
(21, 'Fruits', 1, 3, NULL, NULL),
(22, 'Vegitables', 1, 3, NULL, NULL),
(23, 'Dry Fruits', 1, 3, NULL, NULL),
(24, 'Fresh Fruits', 2, 4, NULL, NULL),
(25, 'Fresh Chicken Home Delivery', 2, 4, NULL, NULL),
(26, 'Fresh Vegetable Home Delivery', 2, 4, NULL, NULL),
(27, 'Super Fast Home Delivery', 2, 4, NULL, NULL),
(28, 'Fresh Home Delivery', 2, 4, NULL, NULL),
(29, 'Bulk Order', 2, 4, NULL, NULL),
(30, 'Whole Sale', 2, 4, NULL, NULL),
(31, 'Decoration', 1, 5, NULL, NULL),
(32, 'Dinnerwear', 1, 5, NULL, NULL),
(33, 'Furniture', 1, 5, NULL, NULL),
(34, 'Litings', 1, 5, NULL, NULL),
(35, 'Custom Furniture', 1, 5, NULL, NULL),
(36, 'Computer Table', 1, 5, NULL, NULL),
(37, 'Fast Delivery', 2, 6, NULL, NULL),
(38, 'Door Step Delivery', 2, 6, NULL, NULL),
(39, 'Fast Food', 2, 6, NULL, NULL),
(40, 'Italian Food', 2, 6, NULL, NULL),
(41, 'Bulk order', 2, 6, NULL, NULL),
(42, 'Event orders', 2, 6, NULL, NULL),
(43, 'Fresh Fruits', 1, 7, NULL, NULL),
(44, 'Fresh Chicken Home Delivery', 1, 7, NULL, NULL),
(45, 'Fresh Vegetable Home Delivery', 1, 7, NULL, NULL),
(46, 'Super Fast Home Delivery', 1, 7, NULL, NULL),
(47, 'Fresh Home Delivery', 1, 7, NULL, NULL),
(48, 'Whole Sale', 1, 7, NULL, NULL),
(49, 'Fresh Fruits', 1, 14, NULL, NULL),
(50, 'Fresh Chicken Home Delivery', 1, 14, NULL, NULL),
(51, 'Fresh Vegetable Home Delivery', 1, 14, NULL, NULL),
(52, 'Super Fast Home Delivery', 1, 14, NULL, NULL),
(53, 'Fresh Home Delivery', 1, 14, NULL, NULL),
(54, 'Bulk Order', 1, 14, NULL, NULL),
(55, 'Whole Sale', 1, 14, NULL, NULL),
(56, 'Fast Delivery', 1, 12, NULL, NULL),
(57, 'Door Step Delivery', 1, 12, NULL, NULL),
(58, 'Fast Food', 1, 12, NULL, NULL),
(59, 'Italian Food', 1, 12, NULL, NULL),
(60, 'Bulk order', 1, 12, NULL, NULL),
(61, 'Event orders', 1, 12, NULL, NULL),
(62, 'Decoration', 1, 11, NULL, NULL),
(63, 'Dinnerwear', 1, 11, NULL, NULL),
(64, 'Furniture', 1, 11, NULL, NULL),
(65, 'Litings', 1, 11, NULL, NULL),
(66, 'Custom Furniture', 1, 11, NULL, NULL),
(67, 'Computer Table', 1, 11, NULL, NULL),
(68, 'Computer Service', 1, 8, NULL, NULL),
(69, 'Mother Board Service', 1, 8, NULL, NULL),
(70, 'Computer Accessories', 1, 8, NULL, NULL),
(71, 'Monitor', 1, 8, NULL, NULL),
(72, 'Dell Laptop', 1, 8, NULL, NULL),
(73, 'OS Installation', 1, 8, NULL, NULL),
(74, 'Software Installation', 1, 8, NULL, NULL),
(75, 'Custom PC Build', 1, 8, NULL, NULL),
(76, 'Gaiming PC', 1, 8, NULL, NULL),
(77, 'Computer Service', 2, 13, NULL, NULL),
(78, 'Mother Board Service', 2, 13, NULL, NULL),
(79, 'Computer Accessories', 2, 13, NULL, NULL),
(80, 'Monitor', 2, 13, NULL, NULL),
(81, 'Dell Laptop', 2, 13, NULL, NULL),
(82, 'OS Installation', 2, 13, NULL, NULL),
(83, 'Software Installation', 2, 13, NULL, NULL),
(84, 'Custom PC Build', 2, 13, NULL, NULL),
(85, 'Gaiming PC', 2, 13, NULL, NULL),
(86, 'Fast Delivery', 2, 10, NULL, NULL),
(87, 'Door Step Delivery', 2, 10, NULL, NULL),
(88, 'Fast Food', 2, 10, NULL, NULL),
(89, 'Italian Food', 2, 10, NULL, NULL),
(90, 'Bulk order', 2, 10, NULL, NULL),
(91, 'Event orders', 2, 10, NULL, NULL),
(92, 'Cataract Surgery', 2, 9, NULL, NULL),
(93, 'Paediatric Ophthalmology', 2, 9, NULL, NULL),
(94, 'Emergency Eye Care', 2, 9, NULL, NULL),
(95, 'Neuro Opthalmology', 2, 9, NULL, NULL),
(96, 'Neuro Ophthalmology', 2, 9, NULL, NULL),
(97, 'Computer Vision Syndrome', 2, 9, NULL, NULL),
(98, 'Glaucoma', 2, 9, NULL, NULL),
(99, 'Orbit & Oculoplasty', 2, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no_1` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no_2` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_1` varchar(215) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_2` varchar(215) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(115) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tw` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `li` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ins` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `yt` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `logo`, `fav`, `mobile_no_1`, `mobile_no_2`, `email_1`, `email_2`, `web`, `address`, `title`, `meta`, `description`, `fb`, `tw`, `li`, `ins`, `yt`, `pin`, `created_at`, `updated_at`) VALUES
(1, 'logo/smartdirectory_logo.png', 'fav/smartdirectory_fav.png', '+987 98676789', '+044 878898789', 'info@smartdirectory.com', 'sales@smartdirectory.com', 'https://smarteyeapps.com', '5-34, Rosestreet, Ramson Motycarony, Torranto', 'Smart Directory - Find top rates services and business near you', 'smart-directory, business directory, business listing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce placerat rhoncus dolor feugiat semper. Vestibulum imperdiet purus nibh, ut finibus dolor lobortis quis. Vivamus et blandit urna. Aliquam mi arcu, sagittis nec tortor vel', 'https://facebook.com', 'http://twitter.com', 'https://linkedin.com', 'http://instagram.com', 'https://youtube.com', 'http://pinterest.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timings`
--

CREATE TABLE `timings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listing_id` bigint(20) UNSIGNED NOT NULL,
  `monday_from` time DEFAULT NULL,
  `monday_to` time DEFAULT NULL,
  `tuesday_from` time DEFAULT NULL,
  `tuesday_to` time DEFAULT NULL,
  `wednesday_from` time DEFAULT NULL,
  `wednesday_to` time DEFAULT NULL,
  `thursday_from` time DEFAULT NULL,
  `thursday_to` time DEFAULT NULL,
  `friday_from` time DEFAULT NULL,
  `friday_to` time DEFAULT NULL,
  `saturday_from` time DEFAULT NULL,
  `saturday_to` time DEFAULT NULL,
  `sunday_from` time DEFAULT NULL,
  `sunday_to` time DEFAULT NULL,
  `iframe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pintrest` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timings`
--

INSERT INTO `timings` (`id`, `listing_id`, `monday_from`, `monday_to`, `tuesday_from`, `tuesday_to`, `wednesday_from`, `wednesday_to`, `thursday_from`, `thursday_to`, `friday_from`, `friday_to`, `saturday_from`, `saturday_to`, `sunday_from`, `sunday_to`, `iframe`, `facebook`, `twitter`, `youtube`, `pintrest`, `instagram`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 1, '09:30:00', '18:30:00', '09:30:00', '06:30:00', '10:02:00', '17:03:00', '08:40:00', '18:30:00', '10:15:00', '19:30:00', '06:03:00', '14:03:00', '10:30:00', '17:30:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15659.16664494769!2d77.32095495000002!3d11.1288885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m3!3e0!4m0!4m0!5e0!3m2!1sen!2sin!4v1645123276968!5m2!1sen!2sin', 'https://facebook.com', 'https://twitter.com', 'https://youtube.com', 'https://pintrest.com', 'https://instagram.com', 'https://linkedin.com', NULL, NULL),
(2, 2, '09:30:00', '18:30:00', '09:30:00', '06:30:00', '10:02:00', '17:03:00', '08:40:00', '18:30:00', '10:15:00', '19:30:00', '06:03:00', '14:03:00', '10:30:00', '17:30:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15659.16664494769!2d77.32095495000002!3d11.1288885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m3!3e0!4m0!4m0!5e0!3m2!1sen!2sin!4v1645123276968!5m2!1sen!2sin', 'https://facebook.com', 'https://twitter.com', 'https://youtube.com', 'https://pintrest.com', 'https://instagram.com', 'https://linkedin.com', NULL, NULL),
(3, 3, '09:30:00', '18:30:00', '09:30:00', '06:30:00', '10:02:00', '17:03:00', '08:40:00', '18:30:00', '10:15:00', '19:30:00', '06:03:00', '14:03:00', '10:30:00', '17:30:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15659.16664494769!2d77.32095495000002!3d11.1288885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m3!3e0!4m0!4m0!5e0!3m2!1sen!2sin!4v1645123276968!5m2!1sen!2sin', 'https://facebook.com', 'https://twitter.com', 'https://youtube.com', 'https://pintrest.com', 'https://instagram.com', 'https://linkedin.com', NULL, NULL),
(4, 4, '09:30:00', '18:30:00', '09:30:00', '06:30:00', '10:02:00', '17:03:00', '08:40:00', '18:30:00', '10:15:00', '19:30:00', '06:03:00', '14:03:00', '10:30:00', '17:30:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15659.16664494769!2d77.32095495000002!3d11.1288885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m3!3e0!4m0!4m0!5e0!3m2!1sen!2sin!4v1645123276968!5m2!1sen!2sin', 'https://facebook.com', 'https://twitter.com', 'https://youtube.com', 'https://pintrest.com', 'https://instagram.com', 'https://linkedin.com', NULL, NULL),
(5, 5, '09:30:00', '18:30:00', '09:30:00', '06:30:00', '10:02:00', '17:03:00', '08:40:00', '18:30:00', '10:15:00', '19:30:00', '06:03:00', '14:03:00', '10:30:00', '17:30:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15659.16664494769!2d77.32095495000002!3d11.1288885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m3!3e0!4m0!4m0!5e0!3m2!1sen!2sin!4v1645123276968!5m2!1sen!2sin', 'https://facebook.com', 'https://twitter.com', 'https://youtube.com', 'https://pintrest.com', 'https://instagram.com', 'https://linkedin.com', NULL, NULL),
(6, 6, '09:30:00', '18:30:00', '09:30:00', '06:30:00', '10:02:00', '17:03:00', '08:40:00', '18:30:00', '10:15:00', '19:30:00', '06:03:00', '14:03:00', '10:30:00', '17:30:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15659.16664494769!2d77.32095495000002!3d11.1288885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m3!3e0!4m0!4m0!5e0!3m2!1sen!2sin!4v1645123276968!5m2!1sen!2sin', 'https://facebook.com', 'https://twitter.com', 'https://youtube.com', 'https://pintrest.com', 'https://instagram.com', 'https://linkedin.com', NULL, NULL),
(7, 7, '09:30:00', '18:30:00', '09:30:00', '06:30:00', '10:02:00', '17:03:00', '08:40:00', '18:30:00', '10:15:00', '19:30:00', '06:03:00', '14:03:00', '10:30:00', '17:30:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15659.16664494769!2d77.32095495000002!3d11.1288885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m3!3e0!4m0!4m0!5e0!3m2!1sen!2sin!4v1645123276968!5m2!1sen!2sin', 'https://facebook.com', 'https://twitter.com', 'https://youtube.com', 'https://pintrest.com', 'https://instagram.com', 'https://linkedin.com', NULL, NULL),
(8, 8, '09:30:00', '18:30:00', '09:30:00', '06:30:00', '10:02:00', '17:03:00', '08:40:00', '18:30:00', '10:15:00', '19:30:00', '06:03:00', '14:03:00', '10:30:00', '17:30:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15659.16664494769!2d77.32095495000002!3d11.1288885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m3!3e0!4m0!4m0!5e0!3m2!1sen!2sin!4v1645123276968!5m2!1sen!2sin', 'https://facebook.com', 'https://twitter.com', 'https://youtube.com', 'https://pintrest.com', 'https://instagram.com', 'https://linkedin.com', NULL, NULL),
(9, 9, '09:30:00', '18:30:00', '09:30:00', '06:30:00', '10:02:00', '17:03:00', '08:40:00', '18:30:00', '10:15:00', '19:30:00', '06:03:00', '14:03:00', '10:30:00', '17:30:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15659.16664494769!2d77.32095495000002!3d11.1288885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m3!3e0!4m0!4m0!5e0!3m2!1sen!2sin!4v1645123276968!5m2!1sen!2sin', 'https://facebook.com', 'https://twitter.com', 'https://youtube.com', 'https://pintrest.com', 'https://instagram.com', 'https://linkedin.com', NULL, NULL),
(10, 10, '09:30:00', '18:30:00', '09:30:00', '06:30:00', '10:02:00', '17:03:00', '08:40:00', '18:30:00', '10:15:00', '19:30:00', '06:03:00', '14:03:00', '10:30:00', '17:30:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15659.16664494769!2d77.32095495000002!3d11.1288885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m3!3e0!4m0!4m0!5e0!3m2!1sen!2sin!4v1645123276968!5m2!1sen!2sin', 'https://facebook.com', 'https://twitter.com', 'https://youtube.com', 'https://pintrest.com', 'https://instagram.com', 'https://linkedin.com', NULL, NULL),
(11, 11, '09:30:00', '18:30:00', '09:30:00', '06:30:00', '10:02:00', '17:03:00', '08:40:00', '18:30:00', '10:15:00', '19:30:00', '06:03:00', '14:03:00', '10:30:00', '17:30:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15659.16664494769!2d77.32095495000002!3d11.1288885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m3!3e0!4m0!4m0!5e0!3m2!1sen!2sin!4v1645123276968!5m2!1sen!2sin', 'https://facebook.com', 'https://twitter.com', 'https://youtube.com', 'https://pintrest.com', 'https://instagram.com', 'https://linkedin.com', NULL, NULL),
(12, 12, '09:30:00', '18:30:00', '09:30:00', '06:30:00', '10:02:00', '17:03:00', '08:40:00', '18:30:00', '10:15:00', '19:30:00', '06:03:00', '14:03:00', '10:30:00', '17:30:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15659.16664494769!2d77.32095495000002!3d11.1288885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m3!3e0!4m0!4m0!5e0!3m2!1sen!2sin!4v1645123276968!5m2!1sen!2sin', 'https://facebook.com', 'https://twitter.com', 'https://youtube.com', 'https://pintrest.com', 'https://instagram.com', 'https://linkedin.com', NULL, NULL),
(13, 13, '09:30:00', '18:30:00', '09:30:00', '06:30:00', '10:02:00', '17:03:00', '08:40:00', '18:30:00', '10:15:00', '19:30:00', '06:03:00', '14:03:00', '10:30:00', '17:30:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15659.16664494769!2d77.32095495000002!3d11.1288885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m3!3e0!4m0!4m0!5e0!3m2!1sen!2sin!4v1645123276968!5m2!1sen!2sin', 'https://facebook.com', 'https://twitter.com', 'https://youtube.com', 'https://pintrest.com', 'https://instagram.com', 'https://linkedin.com', NULL, NULL),
(14, 14, '09:30:00', '18:30:00', '09:30:00', '06:30:00', '10:02:00', '17:03:00', '08:40:00', '18:30:00', '10:15:00', '19:30:00', '06:03:00', '14:03:00', '10:30:00', '17:30:00', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15659.16664494769!2d77.32095495000002!3d11.1288885!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m3!3e0!4m0!4m0!5e0!3m2!1sen!2sin!4v1645123276968!5m2!1sen!2sin', 'https://facebook.com', 'https://twitter.com', 'https://youtube.com', 'https://pintrest.com', 'https://instagram.com', 'https://linkedin.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('start','cancel','error','success') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'start',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(125) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role`, `image`, `mobile`, `state`, `city`, `pincode`, `address`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'John Smith', 'johnsmith@example.com', NULL, 'user', 'HNQDwAVikQAGrZWbnbV4NDSneAS33Qm8SNxjSZp7.jpg', '91 8787 8786', NULL, 'Chennai', NULL, 'Rosestreet, Motycarony, Torranto', '$2y$10$4mPhEPOpqCjhM27gY8KfUuGTrAdr5GGc7n47cvvQrNj67x0hzb6Bu', NULL, NULL, NULL, NULL),
(2, 'Reena Samuel', 'reenasmauel@example.com', NULL, 'user', 'iqeL3q4MenO9lPmVkWFIEm5uDaSTUA8GepztH7jn.jpg', '91 8787 8786', NULL, 'Chennai', NULL, '34-5, Kolivari, Malapali, Torranto', '$2y$10$Jl.ARv68LwK8fFBzWro7G.fRq2rcLLCr7IDk3JrgCgROVzCp8cxxO', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_packages`
--

CREATE TABLE `user_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `expery` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_packages`
--

INSERT INTO `user_packages` (`id`, `user_id`, `package_id`, `expery`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2026-03-15', NULL, NULL),
(2, 2, 3, '2026-03-15', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_category_id_foreign` (`category_id`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookmarks_user_id_foreign` (`user_id`),
  ADD KEY `bookmarks_listing_id_foreign` (`listing_id`);

--
-- Indexes for table `business_details`
--
ALTER TABLE `business_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `business_details_listing_id_foreign` (`listing_id`),
  ADD KEY `business_details_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_foreign` (`user_id`),
  ADD KEY `galleries_listing_id_foreign` (`listing_id`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_user_id_foreign` (`user_id`),
  ADD KEY `listings_location_id_foreign` (`location_id`);

--
-- Indexes for table `list_categories`
--
ALTER TABLE `list_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `list_categories_category_id_foreign` (`category_id`),
  ADD KEY `list_categories_listing_id_foreign` (`listing_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_listing_id_foreign` (`listing_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_listing_id_foreign` (`listing_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_user_id_foreign` (`user_id`),
  ADD KEY `purchases_package_id_foreign` (`package_id`),
  ADD KEY `purchases_transaction_id_foreign` (`transaction_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_user_id_foreign` (`user_id`),
  ADD KEY `ratings_listing_id_foreign` (`listing_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_listing_id_foreign` (`listing_id`),
  ADD KEY `services_user_id_foreign` (`user_id`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timings`
--
ALTER TABLE `timings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timings_listing_id_foreign` (`listing_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_package_id_foreign` (`package_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_packages`
--
ALTER TABLE `user_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_packages_user_id_foreign` (`user_id`),
  ADD KEY `user_packages_package_id_foreign` (`package_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_details`
--
ALTER TABLE `business_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `list_categories`
--
ALTER TABLE `list_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timings`
--
ALTER TABLE `timings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_packages`
--
ALTER TABLE `user_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD CONSTRAINT `bookmarks_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`),
  ADD CONSTRAINT `bookmarks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `business_details`
--
ALTER TABLE `business_details`
  ADD CONSTRAINT `business_details_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`),
  ADD CONSTRAINT `business_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`),
  ADD CONSTRAINT `galleries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `listings`
--
ALTER TABLE `listings`
  ADD CONSTRAINT `listings_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `listings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `list_categories`
--
ALTER TABLE `list_categories`
  ADD CONSTRAINT `list_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `list_categories_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`),
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`),
  ADD CONSTRAINT `purchases_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`),
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`),
  ADD CONSTRAINT `services_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `timings`
--
ALTER TABLE `timings`
  ADD CONSTRAINT `timings_listing_id_foreign` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`),
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_packages`
--
ALTER TABLE `user_packages`
  ADD CONSTRAINT `user_packages_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`),
  ADD CONSTRAINT `user_packages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
