-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2025 at 06:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_board_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employers`
--

CREATE TABLE `employers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`id`, `company_name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Quitzon-McDermott', 283, '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(2, 'Boehm, Schiller and Balistreri', 169, '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(3, 'Streich-Greenfelder', 143, '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(4, 'Greenholt-Okuneva', 297, '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(5, 'Corwin, Kozey and Upton', 218, '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(6, 'Renner-Larkin', 67, '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(7, 'Waters, Mueller and Daugherty', 215, '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(8, 'Boehm-Heathcote', 37, '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(9, 'Rohan, Feeney and Heathcote', 20, '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(10, 'Rice-McKenzie', 94, '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(11, 'Bergnaum PLC', 142, '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(12, 'Wuckert Inc', 21, '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(13, 'Daniel Inc', 219, '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(14, 'Koss-Hand', 5, '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(15, 'Moore, Powlowski and Schultz', 162, '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(16, 'Conroy PLC', 29, '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(17, 'Christiansen, Thompson and Greenholt', 128, '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(18, 'Wolf-Sawayn', 6, '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(19, 'Brakus Group', 126, '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(20, 'Berge, Brown and Walter', 232, '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(21, 'Dominguez Long Trading', 1, '2025-07-27 12:13:41', '2025-07-27 12:13:41'),
(22, 'JohnWick', 2, '2025-07-28 04:23:18', '2025-07-28 04:23:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `salary` int(10) UNSIGNED NOT NULL,
  `location` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `experience` enum('entry','intermediate','senior') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employer_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `description`, `salary`, `location`, `category`, `experience`, `created_at`, `updated_at`, `employer_id`, `deleted_at`) VALUES
(1, 'Air Traffic Controller', 'Id velit aliquid aut blanditiis veniam fugit. Ipsa cupiditate quos sed laudantium culpa. Dolore amet velit et est voluptate tenetur nam.\n\nNumquam quisquam expedita voluptatem sunt dolorem vero possimus sint. Praesentium non nulla modi ut at. Illo tempora sint omnis nobis. Rerum fugit blanditiis asperiores voluptatibus et rerum magnam.\n\nItaque in et numquam optio cumque illum sunt. Debitis dolores tempore quae deserunt hic velit. Quas non occaecati earum adipisci ducimus totam. In laboriosam dolorem fuga dolor voluptatem quisquam cumque.', 11248, 'West Nikolashaven', 'IT', 'entry', '2025-07-19 12:30:26', '2025-07-19 12:30:26', 15, NULL),
(2, 'Rough Carpenter', 'Repellat ipsa autem nesciunt mollitia beatae saepe. Saepe odit iure qui quam voluptatem. Veritatis a animi incidunt iure et error maxime. Aliquam explicabo ea ratione et nemo a.\n\nIpsa illo ut vel ducimus labore perspiciatis ut omnis. At repellendus optio nesciunt dolores at distinctio.\n\nEt eos omnis ut aut aut molestiae velit. Enim veniam similique maiores iure minus molestiae ipsum consequatur. Omnis quia minus et dolores quo suscipit. Ea ipsum omnis earum aut corporis beatae.', 122921, 'Isabellberg', 'Sales', 'entry', '2025-07-19 12:30:26', '2025-07-19 12:30:26', 12, NULL),
(3, 'Compacting Machine Operator', 'Ea veniam similique sunt voluptatem aut esse. Et ut velit delectus numquam magnam et. Cupiditate et veritatis perspiciatis maiores. Aliquam voluptates quis magnam non et culpa dolor.\n\nFuga labore velit et qui fugiat ut. Repudiandae sit libero suscipit amet qui. Animi aut corrupti tempore sequi est porro pariatur repellendus. Temporibus laborum suscipit minus alias.\n\nLibero amet molestiae sit quae eveniet reiciendis. Dicta at quaerat et consectetur fuga ullam. Praesentium voluptatem harum est vero quia. Saepe sit provident ea totam.', 139354, 'East Duanemouth', 'Finance', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 8, NULL),
(4, 'Structural Metal Fabricator', 'Veritatis iusto quia est vero in adipisci. Et officia nostrum consectetur eaque ea id voluptatum. Aut sint qui similique odit aperiam. Similique quia illo nostrum quas aut neque.\n\nAssumenda eligendi voluptas quae beatae ad. Nihil distinctio quasi voluptas totam impedit harum. Non nihil sapiente aperiam sunt. Necessitatibus provident est eum pariatur.\n\nUnde blanditiis nobis qui aspernatur expedita delectus voluptas. Pariatur delectus ipsam nostrum totam velit. Ea expedita earum omnis qui architecto enim qui. Enim ut consequatur eos distinctio sapiente a reprehenderit.', 57611, 'South Doraberg', 'Finance', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 8, NULL),
(5, 'Horticultural Worker', 'Pariatur ducimus fugit sit fugiat magni maxime. Necessitatibus ipsam harum illum quo itaque placeat nisi. Repudiandae laudantium dolorem illum ut vel ex. Asperiores et sapiente corrupti quo maxime ducimus eaque.\n\nUt et et quis. Praesentium non ut maiores non consequatur est. Quia non et voluptate similique ut.\n\nConsequatur dolor possimus praesentium et ab et libero. Architecto ducimus tempora ea autem vel consectetur. Sint perferendis quis illo libero ex illum.', 80860, 'North Adamton', 'Marketing', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 4, NULL),
(6, 'Professor', 'Consequatur odio consequuntur omnis tempore. Temporibus officia temporibus hic omnis quo non dolores a. Odit iure autem et non vero odit.\n\nExplicabo qui ut rem accusantium quas debitis ea. Eos nihil nemo quis. Suscipit ea similique eum ipsum ducimus adipisci eveniet.\n\nEius doloremque corrupti consequatur nihil aperiam. Ea sunt doloribus sapiente et amet. Ipsum non explicabo iste voluptatem.', 25485, 'Rowanbury', 'Finance', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 11, NULL),
(7, 'Directory Assistance Operator', 'In est aut eius. Doloribus amet velit accusantium et nobis reiciendis. Nobis non ratione vel aliquid voluptatem quos. Cum quia aut aut deserunt eum repellat ut. Repudiandae eum facere quos ut voluptate quibusdam facilis.\n\nCorporis deleniti illum officiis repudiandae veniam recusandae et. Eum hic et vero autem quo harum autem.\n\nDistinctio pariatur et quod nobis et. Illo rem vel ut consectetur a eum est. Soluta quisquam perspiciatis quia fugit odio ut. Perspiciatis odio natus sunt id rerum. Corrupti consequatur dolorem officiis.', 72897, 'Leilanishire', 'Marketing', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 10, NULL),
(8, 'Percussion Instrument Repairer', 'Laudantium nobis nisi eligendi vitae et ut. Eum reprehenderit in quia libero neque. Voluptatibus numquam voluptatem ipsum eveniet et animi.\n\nMagni eum quo porro earum. Eligendi aut sed possimus asperiores qui omnis. Non velit quo animi qui quod iure. Numquam recusandae voluptas doloremque. Quia dolorum ducimus autem.\n\nVeniam totam rerum deleniti sed non. Est enim ut vel ratione. Eum omnis eos est error enim.', 28103, 'South Darian', 'Finance', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 12, NULL),
(9, 'Occupational Therapist', 'Provident quia officia inventore qui fuga. Dignissimos exercitationem ipsa libero dolore quia nihil quis. Occaecati aliquam mollitia eum ad doloribus. Voluptatibus commodi quod illo magni sed quia officiis.\n\nUt repudiandae iure atque vel rerum. Est rerum ut sapiente totam soluta ut. Qui aliquid nulla quas sunt odio.\n\nVel fugit ut qui et iure aspernatur. Expedita ipsa recusandae consequatur laudantium tempore tenetur molestiae. Odit eveniet quo consequatur et sint voluptatem.', 40255, 'South Willis', 'Marketing', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 15, NULL),
(10, 'Range Manager', 'Aliquid sint et dolor aut. Est quia est dicta harum eveniet. Voluptatem officia est debitis quam. Provident consectetur culpa delectus porro fugiat.\n\nAperiam consequatur minus quibusdam quis fugit ullam ut. Dolorum molestias est quibusdam quisquam.\n\nNulla voluptatibus quas quibusdam a veniam. Dolorum sed est veniam eaque. Temporibus sed non cum porro.', 29642, 'Broderickview', 'Sales', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 5, NULL),
(11, 'Pediatricians', 'Qui eaque deserunt sed occaecati et. Magnam eos aut cum est at dolore aspernatur. Aut beatae debitis quidem facere odit non ipsam. Aliquam quis fugiat numquam.\n\nAssumenda vero inventore nobis eos officia. Eos quo aperiam eaque dolorum. Consequatur ut aperiam voluptatum. Error consequatur et nobis aliquid consequuntur enim tempora.\n\nNam possimus sed et dolores nam sunt. Occaecati aut ullam qui velit odio consequatur. Aperiam consequuntur unde quia voluptate. Reiciendis tenetur eum aut atque ut molestias qui.', 41470, 'Port Winfieldville', 'Finance', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 11, NULL),
(12, 'Religious Worker', 'Et perspiciatis ducimus minima necessitatibus. Sit amet fugit rerum necessitatibus deleniti totam. Repellendus id fuga ad saepe omnis a modi. Quia magnam placeat assumenda ducimus dolor facilis itaque. Numquam repellat possimus et dolorem qui natus.\n\nCorrupti officiis earum est id at fugiat. Sed eum non veritatis illum eveniet beatae deleniti. Sed qui optio quas veritatis nulla et occaecati. Distinctio cumque quo magnam voluptatem architecto.\n\nNemo sed minima iusto nostrum. Et porro necessitatibus neque nesciunt et sint debitis. Nulla enim ut veritatis dolore.', 129296, 'Port Korbinton', 'Sales', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 7, NULL),
(13, 'Materials Scientist', 'Maiores accusantium ipsa rerum voluptatem quod reprehenderit. Sed quibusdam consequatur voluptatem ut voluptas. Corporis quia accusantium hic quos ratione voluptatem.\n\nCommodi velit aut itaque aliquam reiciendis dolor. Sint rerum nulla temporibus consequatur aliquam. Labore qui nostrum vel ratione.\n\nUt esse excepturi sit. Sunt modi omnis ipsam perspiciatis. Consequatur et voluptatem autem necessitatibus corrupti sed. Laborum nulla quia minima impedit.', 17877, 'Elsechester', 'IT', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 5, NULL),
(14, 'Biological Science Teacher', 'Rerum et sit nisi enim. Perspiciatis veniam eum architecto modi. Neque omnis quidem cumque mollitia unde magni.\n\nTenetur eos et eveniet recusandae commodi. Est deleniti non est voluptatibus harum. Sit voluptas possimus excepturi quo. Dolor aperiam sequi ut placeat natus.\n\nPerferendis voluptate similique totam dolor et et. Consequatur sint quisquam unde alias qui qui. Minima sed iusto fugiat debitis ut consequatur. Quod cumque aliquid facilis recusandae tempore consectetur ut.', 63335, 'West Rooseveltstad', 'Sales', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 20, NULL),
(15, 'Biomedical Engineer', 'Molestias rerum est et reprehenderit aut sit enim. Dolores officiis cum qui enim dolor culpa libero. Autem enim minus rerum ut magnam.\n\nEt earum iure hic. Voluptates qui eligendi quae veniam ut. Et ut dignissimos rerum qui nobis.\n\nEx et illo doloribus aut. Dicta fuga quo minus magnam dolor. Hic voluptatum autem quaerat sapiente nesciunt est. Non inventore reprehenderit ea autem illo odio et. Sed nihil hic deserunt qui perferendis dolor velit libero.', 118437, 'Tyreekmouth', 'IT', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 6, NULL),
(16, 'Professional Photographer', 'Exercitationem deleniti quam voluptate dolorem qui molestiae. Consequatur iste qui voluptatem provident. Molestiae qui mollitia voluptate animi et. Minus enim beatae est laboriosam voluptatibus.\n\nProvident delectus accusantium rerum adipisci dolore placeat animi tenetur. Tempore non iste minus delectus sunt deserunt. Eveniet magnam qui sunt est quibusdam eos.\n\nEsse tempora impedit in vero et fugit. Repellendus in sed placeat hic aut. Quia cumque ipsum ipsam reprehenderit.', 71457, 'Lizzieview', 'Marketing', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 6, NULL),
(17, 'Oil and gas Operator', 'Ipsum corporis sint ad. Aut qui laboriosam dignissimos ipsum facere commodi reiciendis. Magnam quos ratione ducimus et consequatur est nostrum.\n\nEveniet ut nemo quas ea. Dicta nihil sed velit velit aut officiis error.\n\nQuis ad mollitia ducimus laborum et ducimus et qui. Asperiores enim deleniti et ipsam placeat vel. Alias ad rerum veniam consectetur aliquid. Consequatur quis molestiae quidem voluptatibus natus quae fugit.', 39804, 'Pathaven', 'IT', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 20, NULL),
(18, 'Paralegal', 'Unde itaque qui quisquam omnis quia repellendus. Voluptates vel facilis soluta eius quas. Illum iste molestiae minus ratione pariatur ad. Quia illo vel suscipit optio enim.\n\nEt cum voluptatem nostrum aspernatur eum occaecati enim. Quas non ab porro accusantium. Est sit amet molestias placeat.\n\nAmet omnis rerum dolores veritatis. Aliquid totam beatae nesciunt maxime omnis quis. Aut repellat ea nulla fuga est. Pariatur numquam sed autem et.', 86582, 'Croninport', 'Finance', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 12, NULL),
(19, 'Program Director', 'Magni fuga aut et possimus totam delectus veniam. Totam et repudiandae itaque qui aperiam. Quia tempore odit sint necessitatibus molestiae corrupti. Quia sit ut deserunt inventore odio fugit.\n\nAliquam consequatur sed molestiae. Nesciunt et eum et quis iure eligendi. Vel dicta nam nobis earum. Libero ut molestiae eius corrupti voluptatem ut.\n\nVitae beatae mollitia et illum. Amet rerum asperiores vel eos dicta ab. Ipsa vel omnis id earum amet aut. Cupiditate cupiditate et consectetur facilis accusamus aut.', 100015, 'North Marcusmouth', 'Marketing', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 18, NULL),
(20, 'Heating Equipment Operator', 'Repudiandae necessitatibus placeat vitae. Illo laborum placeat et voluptatem sint voluptatibus. Magni ut voluptas et odit deserunt maxime sapiente.\n\nIpsam unde dolorem earum consequatur animi vero accusamus. Numquam quo et nemo ipsum. Sit expedita numquam nihil autem.\n\nPariatur consequatur explicabo et. Quas illum distinctio ipsum qui est quia quia. Magni omnis ut debitis vero accusamus.', 86370, 'West Ima', 'Marketing', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 17, NULL),
(21, 'Business Manager', 'Provident recusandae sint quisquam aliquam. Id quia aut quia quis. Neque qui adipisci suscipit dignissimos sed at rem.\n\nSuscipit nostrum itaque dolore sint maxime facilis aut. Ducimus qui cupiditate illo voluptatem in dolorum necessitatibus. Ullam quasi perferendis ipsa velit distinctio perferendis. Eligendi numquam magnam ab eum blanditiis.\n\nExcepturi quo dolor eligendi iure. Hic esse unde ut ut. Provident voluptates minima sunt explicabo necessitatibus maxime hic. Quidem ipsa dolor id nulla ex sit.', 129203, 'North Judson', 'IT', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 19, NULL),
(22, 'Adjustment Clerk', 'Maiores corporis non sed sit vel aut dolorem. At accusamus ut nemo. Qui sunt dicta nesciunt incidunt. Nemo tempora ut vitae explicabo saepe pariatur vel.\n\nMagnam est aliquam at soluta. Consequuntur est est at autem et. Repellat similique eum odio voluptate reiciendis enim minus. Iste qui debitis esse voluptates exercitationem quae.\n\nQuo voluptas ad quasi minima qui quia. Odio incidunt culpa perferendis accusamus modi eaque aut. Dolore nulla explicabo numquam consequatur quo ducimus et.', 110580, 'Rafaelstad', 'IT', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 12, NULL),
(23, 'Petroleum Engineer', 'Minus voluptas dolor excepturi tenetur qui. Omnis aliquam maxime officiis soluta odio doloribus vel. Sequi voluptatem sit accusamus autem dolorem et. Dolorem omnis aliquid quisquam.\n\nEos dolorum aut aut illo ipsa aperiam sed. Sit laudantium a est. Non mollitia ea perspiciatis ut velit qui sit.\n\nOmnis quas qui asperiores qui architecto perspiciatis. Blanditiis qui unde quas expedita cum. Qui occaecati minus aut dolorum voluptatibus et. Exercitationem tenetur eum et qui.', 9081, 'Schowaltershire', 'Marketing', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 18, NULL),
(24, 'Machine Feeder', 'Culpa voluptatem libero tenetur officiis minima quae. Unde ut ea repellendus pariatur tempore itaque autem. Illum atque architecto omnis sit sequi totam nesciunt. Voluptatem non quia eligendi.\n\nNam nihil rem et error inventore necessitatibus aut. Quidem quaerat non odio molestiae ullam. Qui illo ratione quis soluta nisi.\n\nFacilis necessitatibus est explicabo natus est. Nihil odit quod alias. Quia et magni quia dolore et. Possimus aut totam dolores ut natus sequi voluptas corporis. Necessitatibus ex dolor ullam ipsum.', 94355, 'Estelleburgh', 'Finance', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 1, NULL),
(25, 'Night Shift', 'Voluptate sequi omnis quia fuga saepe maiores voluptas. Voluptate quos placeat amet sed laboriosam aut. Vero ea magni explicabo repellat corporis omnis eum quidem.\n\nPerferendis occaecati asperiores deserunt eum est voluptas sed. Atque numquam sapiente aliquid et porro quo repudiandae. Ut veniam nesciunt aliquid sed.\n\nNon quia aperiam sint incidunt. Et impedit reprehenderit distinctio eos. Molestias quisquam ut dolores exercitationem accusamus omnis qui.', 27266, 'Lake Noahborough', 'Sales', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 16, NULL),
(26, 'Woodworking Machine Setter', 'Repellat at eos temporibus eos. Nisi assumenda iusto quis doloribus sed et molestias. Accusamus commodi inventore libero non porro deleniti sit laudantium.\n\nProvident ipsum quisquam iste quae beatae. Dignissimos ducimus esse facere molestiae esse vitae enim. Molestias quis nihil sit minus. Voluptas amet voluptas hic.\n\nAdipisci tenetur nesciunt odit aut rem quis cum. Quod quibusdam omnis nesciunt et qui. Vero vel eligendi dolor autem. Mollitia harum sit est perspiciatis et.', 9569, 'Predovicport', 'Finance', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 12, NULL),
(27, 'Gas Appliance Repairer', 'Sapiente et veritatis vel dolore aliquam non quis est. Tempore dolor aut ut inventore. Iste expedita et non rerum quo iure aut.\n\nFuga nisi et voluptatum porro et est nam. Laudantium deserunt ut expedita. Officiis minima neque porro consequatur repudiandae et nam sed. Error odit deleniti nostrum velit ea modi voluptas.\n\nCorrupti alias libero maxime suscipit sunt ratione quos. Enim et doloribus autem ullam. Sint expedita id veniam consequatur est.', 50924, 'Heidenreichfurt', 'Marketing', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 17, NULL),
(28, 'Data Entry Operator', 'Ut et incidunt hic odio. Cupiditate est ullam sit enim unde voluptatem cupiditate. Sunt rem eaque dolores in neque explicabo repellendus fuga.\n\nQuasi amet ratione aliquam eos fuga eum. Omnis amet nulla repellat optio excepturi numquam. Cum sed dicta labore tempora.\n\nUt quod doloribus quasi non dignissimos et. Velit eligendi ab perferendis odit molestias. Eius dignissimos iste ex blanditiis quisquam sit. Et nemo eaque sequi.', 34740, 'Port Filiberto', 'IT', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 13, NULL),
(29, 'Insurance Appraiser', 'Ex quasi fugit est rerum ad. Voluptas recusandae voluptatem illo. Vitae totam adipisci reprehenderit ad sit libero id. Et perspiciatis quia quod voluptatem enim.\n\nSoluta tempore qui velit quae rerum. Ipsa nihil odio officiis occaecati voluptas officia qui. Incidunt sed suscipit asperiores labore quis sint unde sapiente.\n\nNatus iste aut numquam rerum doloremque sunt. Minima et reprehenderit impedit. Esse est dolor rerum nemo.', 106126, 'Lake Aronfurt', 'Marketing', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 15, NULL),
(30, 'Broadcast News Analyst', 'Fuga odio sint corporis aliquam. Pariatur repudiandae tempora assumenda ipsam deserunt impedit omnis. Quasi rerum rerum soluta soluta et iste.\n\nRem at iste nihil veniam esse similique et ea. Omnis non qui et nesciunt ipsam natus omnis. Numquam aut consequatur odio blanditiis quia et veniam. Autem pariatur sunt illo ut.\n\nEnim veritatis ullam cumque. Qui fuga quisquam non vel officiis. Sint veniam aut ut quis cum nisi. Ut quia ut quia et.', 30566, 'Marcfort', 'Sales', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 11, NULL),
(31, 'Segmental Paver', 'Voluptas iure dicta nam molestias inventore voluptatibus expedita. Qui provident impedit ut voluptatem. Non nesciunt similique ea sunt qui. Blanditiis nisi odit quibusdam.\n\nEum debitis eum possimus temporibus voluptates illo. Quia laboriosam nulla ut odit. Praesentium nam ea rem omnis. Illum voluptas rem minus laboriosam molestiae.\n\nEnim enim accusamus qui officiis. Est aut animi et odio. Illo hic veritatis non hic et debitis. Nisi corrupti voluptas quae enim.', 133373, 'Denesiktown', 'IT', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 15, NULL),
(32, 'Annealing Machine Operator', 'Dolor inventore fugiat asperiores repellat. Nisi vel ipsa id.\n\nRerum quis similique totam iusto. Voluptas provident amet laudantium. Et voluptates sunt labore maxime. Aut omnis perspiciatis nemo vel maxime.\n\nSed quia distinctio quae dolore illo. Repellendus nisi eaque fuga ipsum eius odio vero. Modi porro hic voluptate eveniet repudiandae. Qui ratione neque quidem quis quis.', 122884, 'East Sierraville', 'Finance', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 5, NULL),
(33, 'Registered Nurse', 'Perferendis voluptates impedit similique quo. Impedit dolor sint amet earum necessitatibus molestiae praesentium. Ratione voluptatem velit rerum aliquid non recusandae.\n\nQui rerum velit possimus omnis blanditiis. Fuga aspernatur perferendis voluptatem vel ea eligendi. Impedit eligendi eius est rerum et soluta delectus.\n\nQuo labore sed eius et optio accusantium. Nobis officiis inventore ducimus cumque impedit possimus.', 65718, 'Raphaelchester', 'IT', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 8, NULL),
(34, 'Medical Equipment Repairer', 'Id quibusdam sit occaecati excepturi. Aut aliquam laborum libero exercitationem rem cum corporis. Impedit at reprehenderit repellat et velit et qui temporibus. Amet rem aut beatae necessitatibus aliquam.\n\nBeatae eos voluptate eligendi. Sint aut nisi recusandae dolor corrupti dolorem at qui. Illo et sed saepe rem sit. Exercitationem tempore delectus et quaerat quis.\n\nLabore non laboriosam quaerat fugiat explicabo. Ipsam aspernatur dicta sapiente totam natus explicabo. Dolor et suscipit aliquid sint. Nesciunt consequuntur laudantium et sit eveniet modi et dolorem. Quos optio quidem ut accusamus laudantium.', 20474, 'New Alexysland', 'Finance', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 18, NULL),
(35, 'Construction Laborer', 'Quae non aut iure expedita et in. Delectus vel eius id est amet deleniti. Reiciendis repellendus nemo minima sit ullam.\n\nQui est et possimus inventore. Adipisci vitae quae ut commodi nisi. Omnis voluptatem sed aut dolor magni.\n\nEum mollitia aut quidem ex quod. Commodi qui omnis ratione pariatur. Temporibus reprehenderit iste tempore eveniet sed.', 138017, 'North Federico', 'Finance', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 19, NULL),
(36, 'Hunter and Trapper', 'Ut aut quaerat et ipsam. Dolorem cupiditate amet praesentium harum. Consectetur voluptatem et fugiat sed nihil.\n\nTenetur temporibus occaecati voluptas nesciunt accusantium. Aliquid facilis reprehenderit atque. Eaque hic hic enim hic aperiam fugit. Quia atque vel voluptatem pariatur et similique.\n\nAut nihil itaque in est nam. Quidem adipisci et nostrum quidem consequatur quia minus. Sequi enim assumenda iusto ea facere minima. Et reiciendis molestiae soluta dolorum recusandae reiciendis.', 130915, 'Kaylinshire', 'Marketing', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 20, NULL),
(37, 'Environmental Compliance Inspector', 'Blanditiis dolor dicta qui velit ullam dolor. Eos est velit velit. Animi et est assumenda autem dolor. Distinctio labore placeat velit dolores aspernatur. Harum tenetur ratione necessitatibus et accusamus velit numquam.\n\nOmnis voluptatem exercitationem non amet. Perspiciatis modi dolores ut eaque. Dolor sit voluptatem sit quos qui asperiores. Iste aut voluptas nam velit optio velit sunt. Praesentium in est et placeat et rerum.\n\nDelectus modi eligendi non delectus non cupiditate voluptatem. Blanditiis illum nam eos optio est sint. Voluptatibus sit quos dolores eos quas magnam ipsa.', 85509, 'North Crystalburgh', 'Marketing', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 3, NULL),
(38, 'Payroll Clerk', 'Sint ratione voluptatem enim consectetur magni velit. Minima explicabo laudantium ea sed. Soluta ab ipsa saepe vel fugiat itaque.\n\nDignissimos ut placeat nostrum. Rem in quia itaque harum incidunt autem ut. Quae autem et quae quibusdam saepe nulla maxime. Autem repudiandae dolor aut perspiciatis est temporibus.\n\nOccaecati sapiente est perferendis. Fugit ut et eligendi inventore. Unde saepe omnis ratione. Nisi illo ipsam sint facere nisi aut quia.', 42621, 'Lake Eden', 'Marketing', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 12, NULL),
(39, 'Railroad Switch Operator', 'Similique doloremque ut autem. Voluptas id earum in. Ducimus debitis voluptates libero asperiores.\n\nEveniet dolor et qui eaque ea velit quas. Alias velit omnis laudantium non recusandae dolor ratione.\n\nEligendi libero optio nostrum atque culpa. Eum repellat quisquam eos adipisci sunt quasi. Aperiam est architecto ut illum commodi ut. In architecto est fugiat molestias rem. Quam eos est minus dolore atque necessitatibus.', 103022, 'Audreyside', 'Sales', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 9, NULL),
(40, 'Human Resources Specialist', 'Laboriosam quod placeat occaecati dolores. Nihil reprehenderit ea ad tempora repudiandae atque.\n\nCommodi et natus est qui autem beatae necessitatibus eaque. Quae ut vel eum ab nihil deleniti nostrum harum. Ut sint est ut et odio perferendis quo.\n\nNisi possimus enim excepturi quia quia. Quasi officiis culpa veritatis necessitatibus quibusdam ad. Eos rem nemo delectus provident rerum dolores itaque.', 101010, 'Port Brycehaven', 'Sales', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 3, NULL),
(41, 'Precious Stone Worker', 'Ut et et quidem suscipit dolorum aliquam asperiores. Vel dolor quis eos iusto ullam eum. Voluptas quia illum optio magni.\n\nPerspiciatis temporibus dolores impedit tempore aut nostrum. Rem molestias unde mollitia maxime. Eaque distinctio eos est perspiciatis amet harum.\n\nRerum aliquid tempore autem nulla. Et aut suscipit ab ut corrupti asperiores culpa. Nulla sint consequatur minima.', 32763, 'Thielchester', 'Finance', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 1, NULL),
(42, 'Marine Engineer', 'Ducimus totam aut quae occaecati. Enim voluptas expedita delectus debitis accusantium voluptatibus nostrum. Laboriosam iure quis quam iusto officia. Accusantium unde quia magni eum rerum sit adipisci libero.\n\nAperiam placeat labore voluptatum. Qui non quos saepe rerum vel. Sit non id aut sapiente doloribus. Eveniet rerum a est quidem soluta ipsam harum autem.\n\nAutem harum vitae accusantium minus et velit ab. Porro exercitationem sit nulla accusantium repudiandae harum. Molestiae quo omnis magnam officia numquam. Aspernatur id et ab.', 88357, 'Johnsonborough', 'IT', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 15, NULL),
(43, 'Dispatcher', 'Harum fuga ut assumenda ut omnis neque repellat. Consequatur harum ex consectetur voluptates beatae modi. Ad in hic nisi fugiat nam eius.\n\nVeniam ipsum sunt dolore sit quo itaque. Illo et aut laborum quod et.\n\nVoluptatem in tempora aliquam excepturi. Est odit vel magni accusantium alias ut. Optio enim a suscipit vel. Similique ipsum ullam non.', 129982, 'Corkeryborough', 'IT', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 15, NULL),
(44, 'Fire Investigator', 'Consequatur et iure totam aut unde cum similique. Nemo eius qui distinctio tempore aut aut. Explicabo voluptates sequi maiores adipisci. Eos quam dolores ex fugit commodi impedit. Quae quia recusandae fugiat sit est voluptatem et.\n\nIn quo sapiente dignissimos aspernatur architecto consectetur id. Totam quo sit sint rerum qui. Rerum occaecati ipsa aut aliquam.\n\nOmnis dignissimos doloremque enim illum. Maxime voluptatem corporis est. Error non expedita et qui. Repudiandae quidem vel harum asperiores veritatis. Sunt quam minus architecto repudiandae qui et sequi.', 149891, 'Macejkovicport', 'IT', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 3, NULL),
(45, 'Conveyor Operator', 'Explicabo laboriosam fuga earum delectus. Quibusdam id soluta provident consequatur. Asperiores quia assumenda quia sint quas maiores.\n\nRerum quis temporibus sed quisquam recusandae. Quaerat dicta beatae nulla repellendus tempora. Ducimus qui consequuntur laudantium hic illo nemo eos aut.\n\nAspernatur qui ut quis voluptate magni reiciendis quas. Veniam hic dolorem consequatur possimus modi facilis consequuntur sed. Laboriosam harum assumenda eaque eos eveniet dolor. Aut dolor doloremque et ad voluptas sequi et nemo.', 51633, 'Klockofurt', 'Marketing', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 11, NULL),
(46, 'Engineering Technician', 'Minus unde aliquid qui reiciendis minus voluptates. Assumenda impedit et quaerat et rerum officiis. Exercitationem dolores omnis ipsum assumenda quibusdam repellat veritatis.\n\nFuga inventore ut et nesciunt enim. Omnis molestias maxime animi molestiae fugiat quam ducimus. Sed saepe cumque eveniet repudiandae qui. Laudantium eligendi exercitationem rem sint dolor sequi.\n\nId vel excepturi molestias qui quasi. Et omnis et ullam reiciendis blanditiis at quia. Omnis sit similique in maxime. Debitis vel rerum illum voluptatem quod. Eaque praesentium recusandae beatae optio quod eius minima.', 89117, 'West Daxfort', 'Finance', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 8, NULL),
(47, 'Brazing Machine Operator', 'Possimus aliquam magnam molestiae est quia unde. Totam commodi occaecati in quas. Quia vitae consequatur odit sapiente.\n\nIn earum quia sunt. In quia odio veniam velit. Saepe maxime velit minus ipsam. Veritatis sunt quaerat aperiam odit.\n\nAb accusantium eveniet nihil nihil accusamus occaecati iure non. Quia expedita recusandae et dolorum qui. Molestias et corrupti harum ipsam. Ea voluptatem quo dolorem facilis ipsa aspernatur vero.', 75347, 'South Johathan', 'Sales', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 17, NULL),
(48, 'Music Composer', 'Aliquam tempore harum nam dolorum et mollitia perferendis. Incidunt consequuntur error quasi ut sit. Est quas rerum omnis ut incidunt. Perspiciatis doloremque minus sequi corporis autem.\n\nMolestiae porro iste a sed eaque. Autem et molestiae et et et sequi. Qui rerum facere accusantium neque dolore veritatis praesentium. Sit nesciunt at voluptatibus sequi nemo et voluptas.\n\nId distinctio ea repellat. Odit rerum quas facilis nesciunt quod recusandae esse. Sit sed cumque voluptatem nobis eveniet ut tenetur.', 89406, 'Considinemouth', 'Marketing', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 18, NULL),
(49, 'Cartographer', 'Tenetur qui labore harum explicabo sapiente dicta excepturi voluptatem. Est unde quia dolorum expedita error libero. Quasi voluptatum rerum eius et ex. Vel harum nisi sapiente aut ab delectus eligendi.\n\nUt quia molestiae aperiam dolores voluptate ducimus. Aut maiores eveniet fuga dolor. Ut eveniet molestiae reprehenderit aut. Odio asperiores eius facilis nesciunt corrupti. Et aut unde quia tempore nam.\n\nQuidem neque perferendis magni voluptatem optio. Facilis iure voluptatem rem consequatur nulla excepturi veritatis. Est praesentium labore maiores laudantium ipsam corporis.', 5018, 'East Alanaborough', 'IT', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 13, NULL),
(50, 'Mathematical Technician', 'Quia distinctio vel quis praesentium eligendi laudantium. Qui error dolores sit quidem. Esse voluptatem ut commodi.\n\nAdipisci est non qui dolores odit mollitia vel. Ab provident ut cumque dolorum qui. Rerum numquam consequatur minus harum qui est aliquid expedita. Quas iure laudantium consequatur eum.\n\nEt eligendi porro dolores veniam quae ut. Repellat dolorem sit asperiores enim molestiae id tenetur. Mollitia tenetur ut quia ea.', 59390, 'West Alimouth', 'IT', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 7, NULL),
(51, 'Technical Director', 'Sed velit inventore quas labore distinctio rerum facere doloribus. Officia placeat expedita dolorem harum cum ut non. Illum est ratione labore ea quas temporibus.\n\nMagnam est aut rem porro qui dolores. Et omnis saepe ratione voluptatibus placeat ex. Consequatur sed qui dolor aut.\n\nEst occaecati aut ipsam veniam nostrum ut culpa expedita. Quaerat eligendi unde aut non magni similique. Eum nobis voluptas ea voluptatem modi.', 111057, 'Cronastad', 'IT', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 9, NULL),
(52, 'Agricultural Worker', 'Fuga temporibus sed tempore ea alias ut. Magnam corrupti optio aliquid sunt ipsam sunt quaerat vel. Animi quidem ea est deserunt ut.\n\nAdipisci sint voluptatem quidem similique. Dolor asperiores ab accusamus accusamus rerum assumenda fugit. Nihil corrupti labore asperiores quibusdam eos.\n\nMinima vel voluptas architecto necessitatibus debitis possimus. Sit aut officia eaque tempore harum laboriosam. Accusantium reiciendis quae eligendi.', 126881, 'Kristopherbury', 'Finance', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 4, NULL),
(53, 'Library Technician', 'Sapiente voluptas quod earum labore rerum. Totam maiores et maxime eius unde. Ex dignissimos et est reprehenderit. Modi ipsam ratione necessitatibus dolor molestiae.\n\nDucimus corporis est praesentium nam quisquam voluptatem quia temporibus. Corporis est voluptatem cum est voluptatum molestiae. Et alias aspernatur nemo recusandae et. Ratione cupiditate deserunt voluptas.\n\nMagnam adipisci voluptate sint facere in. Accusamus aut ex accusantium ducimus quam similique soluta et. Et nihil eius eius consequatur et debitis eius.', 89951, 'East Virginiechester', 'Marketing', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 3, NULL),
(54, 'Production Worker', 'Error est quod quam consequatur earum perspiciatis. Quia vero veritatis laboriosam deleniti qui iusto consequuntur. Quia deserunt fugiat in aut molestias dolores quia. Quo assumenda itaque autem.\n\nQuis non magnam ut illum. Veritatis cum deleniti est excepturi commodi nihil et. Ut voluptatem laborum eveniet laudantium nesciunt adipisci itaque. Architecto voluptatibus eius molestiae et id.\n\nDignissimos distinctio dolorem quisquam minus illo quo. Velit rerum dolore unde iste. Laudantium dolor consequatur et qui totam illo quasi.', 93646, 'Lake Olafburgh', 'IT', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 9, NULL),
(55, 'Fence Erector', 'Quibusdam error voluptatem explicabo expedita quidem vel. Architecto sint molestiae est quia laudantium. Ipsam ducimus et numquam est dolor. Nostrum et nobis ab nemo tenetur rerum.\n\nVero quo sed sit quae optio quidem exercitationem. Quia molestiae nobis est laborum ex sit nobis. Dolorem nesciunt voluptas quam alias. Nisi repellendus ipsum iusto eum sed quo.\n\nFugit quia sed hic suscipit mollitia illo error. Inventore dicta doloremque id ipsum dolor sunt vel.', 32492, 'West Teresafort', 'Sales', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 13, NULL),
(56, 'Talent Director', 'Libero vel architecto et culpa. Quia quasi placeat omnis et doloremque enim vero. In et est rerum non earum. Consequatur voluptas ea dolores quasi.\n\nOmnis pariatur maxime sunt deleniti quisquam nostrum temporibus. Provident dolor ut qui sint. Asperiores nisi nostrum minus. Dolores tempore quasi est dolores nemo pariatur dolores.\n\nConsequatur quae totam expedita iure et occaecati. Incidunt maxime rerum quibusdam consequatur aspernatur magnam quia.', 35727, 'South Jerrodton', 'Sales', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 6, NULL),
(57, 'Correspondence Clerk', 'At dolores dicta ea delectus incidunt unde omnis. Deserunt quo voluptatem sint qui doloribus aperiam sint. Quo porro consequatur est molestias pariatur. Facere doloribus quia officia a omnis.\n\nPlaceat quod dolorem fugit ut. Assumenda sapiente nulla dolore blanditiis qui blanditiis autem. Similique modi doloribus maxime possimus officia quaerat aut. Nam et ullam quisquam molestiae harum ut voluptatibus.\n\nAd quam sed sit natus et facilis. Ut praesentium porro qui est. Molestiae aut rerum eligendi nulla. Mollitia nesciunt nam dolorem suscipit error.', 29390, 'South Gretchen', 'Finance', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 11, NULL),
(58, 'Gas Pumping Station Operator', 'Modi et minus sunt dolores itaque libero. Aliquid velit impedit dolores est. Aut cupiditate harum consequatur sunt nihil. Tenetur quo quo sit possimus.\n\nVel et eaque nihil. Quod qui totam quas similique.\n\nQui ea quia ut error. Est ad dolores sed iure laborum quam et. Minus esse autem nobis voluptatem.', 108083, 'New Sister', 'Sales', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 12, NULL),
(59, 'Emergency Management Specialist', 'Sit nisi velit vel hic officiis. Unde exercitationem voluptatem odio aliquam iste. Laborum accusamus unde sequi harum distinctio ea libero ad. Nesciunt rem optio earum cumque veritatis occaecati.\n\nSed voluptas molestias inventore eligendi sint consequatur consequuntur doloremque. Dolores optio magni nulla quidem. Nulla omnis recusandae eaque reprehenderit. Ex iure facilis qui ut possimus.\n\nNihil occaecati optio veritatis possimus temporibus quis. Non labore commodi laudantium laborum ut. Voluptas natus aut ad qui in rerum.', 115091, 'Agustinland', 'Marketing', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 15, NULL),
(60, 'Product Management Leader', 'Voluptatibus vel tempore nobis. Repellat voluptatem quo non laborum omnis optio sed. Occaecati laudantium aut minima dolorem aperiam.\n\nEst labore provident occaecati consectetur omnis fugiat quod. Tempore voluptate unde saepe omnis sed. Voluptatem illum at dolorem sit veritatis dolorum incidunt.\n\nSit commodi veniam libero perspiciatis veritatis id voluptatibus et. Illum et dolorum eveniet error. Expedita iusto ipsa labore possimus libero sit quis dolor.', 102459, 'Angeloborough', 'Marketing', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 7, NULL),
(61, 'Desktop Publisher', 'Dolore velit excepturi similique distinctio facilis. Quidem illum velit quod. Excepturi dolore velit et iure autem. Qui incidunt officia explicabo maiores nostrum placeat autem qui.\n\nDignissimos ab ea sed id aut voluptatem nemo pariatur. Quos nobis aliquid quae tempora. Totam autem fugiat qui voluptate nihil soluta. Et ea quasi in sed dicta quae nulla exercitationem.\n\nOccaecati enim fuga culpa sit perspiciatis fugiat id. Illo maxime et reprehenderit. Temporibus nam et quam quam. Exercitationem libero culpa ut aliquam fugiat omnis saepe non.', 96541, 'West Wava', 'Finance', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 20, NULL),
(62, 'Illustrator', 'Occaecati voluptas cumque consequuntur neque. Eum dolorum repellat at cum. Ex et repellat nemo.\n\nLibero doloribus in voluptas exercitationem delectus. Totam aspernatur aperiam nostrum. Earum qui quis quae dolor nulla. Rerum at quod ad perferendis nisi nemo.\n\nSunt quia et vero beatae. Pariatur sapiente qui magnam culpa maiores.', 102447, 'West Sandrineshire', 'Marketing', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 4, NULL),
(63, 'Secretary', 'Sequi pariatur delectus sunt fugit labore ducimus molestias. Incidunt quae perferendis labore sapiente ipsum delectus. Assumenda veritatis ex et incidunt.\n\nEt earum quibusdam non rem nobis alias amet doloribus. In deserunt facere nostrum velit. Consectetur non earum dignissimos error nisi aut.\n\nIusto quos voluptas alias commodi. Doloribus tempora dolorem eum excepturi dignissimos ducimus voluptas consequuntur. Quia dolor deleniti quisquam aspernatur reprehenderit. Sint et recusandae eum cupiditate.', 139832, 'East Jan', 'Sales', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 17, NULL),
(64, 'Surveying and Mapping Technician', 'Accusantium asperiores distinctio voluptas rerum debitis. Et dolores aliquam libero rerum possimus. Id et amet dolores et illo. In quia minus quibusdam dignissimos iure. Tempore qui nostrum velit qui.\n\nOmnis qui natus voluptas voluptas. Rerum quam ipsam quia id rerum non illo. Eum sint optio recusandae excepturi commodi odio. Corporis accusantium quae quis rem quidem expedita ut.\n\nIn voluptatem cum pariatur voluptatibus eligendi. Accusamus enim dolorem est vel est. Eos dolore cumque quis dolorem sed impedit.', 92952, 'Port Leanneberg', 'IT', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 14, NULL),
(65, 'Mathematical Technician', 'Commodi sed voluptatibus sint laudantium earum at. Eaque dicta incidunt suscipit quo dolor. Molestias sunt quae aperiam provident quidem dolor. Dignissimos voluptatum fugit saepe odio autem.\n\nVel assumenda distinctio temporibus dolores illo. Et rem ipsa est vitae nostrum nihil. Nobis tempore dolorum molestias quia saepe et recusandae quaerat.\n\nSint voluptas molestiae optio a pariatur. Quaerat commodi tempora aliquam sed dignissimos. Ea aut mollitia excepturi similique quibusdam.', 97148, 'Lueilwitzborough', 'IT', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 20, NULL),
(66, 'Pharmacy Technician', 'Est consequatur est non tempora. Veritatis non ipsum pariatur quaerat. Aut unde voluptatum omnis dolorum.\n\nQuibusdam nobis dolorem ut delectus. Dignissimos atque iure et aut vero. Deleniti consequatur perferendis laborum quasi est commodi commodi repudiandae.\n\nSaepe voluptatum eos modi omnis. Rerum iure facilis nobis fuga est. Amet ut iusto enim nihil reiciendis voluptatibus commodi repellat. Quis sint magni mollitia eligendi officia explicabo.', 98404, 'New Valerieshire', 'Marketing', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 7, NULL),
(67, 'Refrigeration Mechanic', 'Omnis praesentium sapiente dicta quis laudantium quis nulla inventore. Cupiditate sint eum aut dolorem esse. Cupiditate tenetur repellendus officia a deserunt praesentium. Rerum est suscipit maxime dicta incidunt facere facilis. Ullam consequatur reiciendis corrupti aliquid ipsa et adipisci.\n\nQuidem libero corporis voluptas aut. Temporibus id impedit ut eos dolor. Rerum nobis magni vel est. Praesentium labore accusamus temporibus doloribus sunt.\n\nNisi accusamus unde minus laboriosam. Non voluptatibus et eius perspiciatis. Aut minus dolores pariatur doloremque. Architecto ab libero maiores.', 59911, 'Jalonchester', 'Finance', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 12, NULL),
(68, 'Typesetting Machine Operator', 'Voluptatem fugit est maiores aut repellat. Eius repellat et animi quis ad beatae. Quia et minus ut est.\n\nIn temporibus autem iusto qui. Eligendi et nihil ut eum quaerat. Cupiditate repellendus doloremque hic animi fuga. Dignissimos nobis aut culpa enim quia.\n\nAnimi repellendus quis labore. Commodi natus aut ut occaecati quo quia molestiae. Quia omnis doloribus quibusdam quasi. Nulla inventore qui suscipit sit ut.', 83445, 'Terrillborough', 'Sales', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 11, NULL),
(69, 'Flight Attendant', 'Doloremque ut reiciendis totam rem. Maxime maxime labore ut sequi reiciendis quis pariatur. Nisi consequatur quia dignissimos at laudantium fuga. Totam natus dolore sit.\n\nCorrupti animi esse voluptas voluptates est rerum. Rerum qui minus vero dolores et dolorem quidem eos. Velit officia voluptate libero vitae. Velit laboriosam commodi voluptas dolore placeat quia.\n\nNatus aut accusantium odio porro consequatur nihil. Voluptatibus at delectus necessitatibus nobis. Et laboriosam nesciunt voluptates repellat eius occaecati sed. Sit illo officiis optio.', 99916, 'West Erwin', 'Sales', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 4, NULL),
(70, 'Health Technologist', 'Et vitae aut fuga quia possimus rerum. Magni repellat atque voluptas ullam quia aliquam eum. Consequatur et ut et sed officiis. Molestiae quo sapiente explicabo exercitationem eaque delectus quo. Sit ea consequatur ut ad.\n\nAutem suscipit sunt est minima. Et nam sint rerum.\n\nEarum sapiente consectetur modi velit qui totam. Id eos autem dolores repellendus dignissimos atque. Blanditiis iste et ratione assumenda quidem dolorem vitae magnam. Numquam fugit vel veritatis libero vel incidunt.', 123502, 'North Florian', 'Marketing', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 13, NULL),
(71, 'Shuttle Car Operator', 'Est qui quo praesentium totam laborum sunt repellat. Dolores corporis mollitia sed consequatur. Dolores accusamus repellendus et omnis. Velit qui totam et ut delectus.\n\nSed adipisci qui iure modi aspernatur officiis. Harum sit necessitatibus suscipit aperiam eaque. Laudantium officia et illo iure magnam maxime quaerat. Eum suscipit temporibus unde sit cumque voluptatum fuga.\n\nAliquid aut eveniet qui quia. Ab non iusto dolor vero magnam nulla officia. Iure ipsum perspiciatis possimus assumenda.', 14982, 'West Ulicesmouth', 'Finance', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 8, NULL),
(72, 'Commercial Diver', 'Et debitis iusto ut soluta assumenda magnam. Quia et debitis recusandae corporis fuga. Reiciendis id velit eligendi ut molestias perspiciatis. Distinctio ullam accusantium aspernatur sunt corporis.\n\nAutem occaecati corporis provident necessitatibus. Impedit error et eius. Ut velit in praesentium quia consequatur sunt.\n\nEos voluptas quia quia aut autem sunt ut soluta. Aspernatur repellat quia adipisci dolorem et dignissimos corporis. Totam porro necessitatibus mollitia et omnis. Illo velit sunt quaerat asperiores velit ut.', 28784, 'Vonmouth', 'IT', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 17, NULL),
(73, 'Director Religious Activities', 'Hic sit maxime dolorum aliquam officia rem. Voluptate aut aut vel at nesciunt aut veritatis. Consequuntur magnam mollitia nemo rem molestiae voluptatibus ut. Rem exercitationem eligendi fuga provident amet qui.\n\nMagnam corrupti aliquid voluptas assumenda rerum. Deserunt dolor excepturi nemo laudantium itaque quia. Quo dignissimos aspernatur earum omnis nemo nesciunt. Aliquam vitae facilis culpa cumque est consequatur.\n\nConsequatur minus rem eum architecto voluptates nihil. Nihil blanditiis libero atque dolorem necessitatibus omnis qui.', 89167, 'Lilyanmouth', 'IT', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 17, NULL),
(74, 'Janitorial Supervisor', 'Atque est blanditiis eveniet aut consequatur beatae. Ut neque dolorem quidem similique totam aliquid. Esse quisquam aperiam aut accusantium repudiandae aspernatur minima consequuntur. Nobis ducimus ut facere aut.\n\nEligendi voluptatem ea ea vel modi deleniti dolores nemo. Mollitia libero repudiandae autem dolorem itaque deleniti. Veniam autem repudiandae voluptas iste et quas. Repudiandae eum laborum aut reprehenderit id tenetur. Sed repellendus repellendus illo quo itaque.\n\nNulla vel aliquid qui accusamus vel maiores. Itaque facilis dolores corporis et perspiciatis.', 78926, 'New Petra', 'Marketing', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 7, NULL),
(75, 'Composer', 'Ipsam corrupti sit tempora sit. Est vero error qui in voluptatem molestiae.\n\nDolorem perspiciatis perspiciatis assumenda hic ut temporibus suscipit. A culpa atque quia. Nesciunt nostrum dolorem quo officiis quis quas id. Quaerat repellendus consequatur vel dolor ducimus.\n\nVeritatis ut sit possimus blanditiis. Qui qui quo ut cupiditate nisi. Eius deleniti iusto iure molestiae expedita officiis. Neque nesciunt repellendus harum similique dolor sapiente. Totam eos sed ipsa voluptatum ipsam ut qui.', 76294, 'West Madie', 'Sales', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 9, NULL),
(76, 'Dental Hygienist', 'Inventore quisquam fuga vitae porro rerum temporibus. Quia soluta tempore dolores ratione. Consequatur iusto nemo sit veniam facere omnis. Quo qui molestiae porro nihil voluptatem omnis sed.\n\nRatione in placeat nostrum laudantium recusandae et maxime. Est consequuntur excepturi sint ducimus sed. Omnis quia quam ea. Consectetur sit corporis fugiat voluptas.\n\nEsse consectetur blanditiis est reiciendis voluptates aliquid. Repellat et occaecati velit asperiores sequi deserunt. Quia ut itaque et expedita. Laboriosam omnis delectus et laboriosam rem recusandae aliquam provident.', 114760, 'East Jazlynfurt', 'Marketing', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 8, NULL),
(77, 'Elementary and Secondary School Administrators', 'Architecto qui beatae voluptate. Placeat dolorem dolores at sunt ipsa. Aut vel occaecati omnis ut quibusdam. Deleniti omnis dicta aut ducimus nostrum ullam.\n\nIusto excepturi fugiat aut provident sed. Fuga dolorum officiis soluta est omnis doloremque. Odio est atque quo et maiores possimus.\n\nOfficia sit maiores omnis quaerat est. Optio est eius tempora ut vel. Delectus autem fugiat voluptas adipisci consequatur aut. Fugiat qui consequatur nulla.', 132539, 'Lake Kaitlyn', 'Marketing', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 14, NULL),
(78, 'Roustabouts', 'Maxime aliquam eius ea distinctio autem laudantium. Tenetur neque iste illo sed porro ducimus enim. Qui commodi aperiam ut et. Voluptatem consequatur voluptate voluptate.\n\nDoloremque vel et quidem qui sunt. Omnis similique voluptas velit itaque iste est accusantium. Voluptas exercitationem consequatur tempora soluta ut. Doloribus magni sed culpa ea quidem.\n\nDolores repudiandae dolores quas incidunt est pariatur. Assumenda impedit ea quia quia. Provident fugiat vel ut optio et tenetur aspernatur.', 132471, 'Katarinaburgh', 'Marketing', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 19, NULL),
(79, 'Copy Writer', 'Labore qui rerum explicabo fugit explicabo. Blanditiis possimus et aspernatur voluptas quam veritatis consequatur. Incidunt ipsam consectetur repellat aliquid labore expedita ullam.\n\nEt quae magnam illum debitis nisi autem optio. Eos sed dolor corrupti et omnis quos dolores. Rem aliquam illum consequatur laboriosam aut laudantium cumque est. Veritatis ullam atque qui.\n\nRem temporibus nemo saepe voluptatem mollitia qui. Asperiores sed error nulla aut et.', 64237, 'East Dellville', 'Sales', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 7, NULL),
(80, 'Rental Clerk', 'Qui velit veniam quibusdam at et doloremque. Voluptatem hic eaque aspernatur expedita et sed.\n\nSoluta laborum sit quis nobis sed excepturi. Quod molestias omnis facere temporibus illo corrupti id. Quis non corrupti quis veniam maxime. Placeat et non sunt labore et molestiae.\n\nMinima est quia provident nostrum. Voluptatibus in eos voluptatibus possimus. Aut fuga est vel nulla. Vitae repudiandae molestias soluta eligendi provident rerum rerum.', 45443, 'Faheyhaven', 'IT', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 2, NULL);
INSERT INTO `jobs` (`id`, `title`, `description`, `salary`, `location`, `category`, `experience`, `created_at`, `updated_at`, `employer_id`, `deleted_at`) VALUES
(81, 'Chemistry Teacher', 'Sed molestias dolores sunt eius ipsum rerum aliquam. Maxime cumque dolor voluptas minus illum ducimus explicabo. Repellendus rerum et quasi qui id. Pariatur praesentium omnis voluptatibus facere velit esse tempore.\n\nVelit numquam consequatur rerum qui. Officia soluta et itaque. Et error nulla pariatur ratione culpa dolorem voluptatum expedita.\n\nIpsam quasi et est eius blanditiis praesentium voluptatem excepturi. Dignissimos dolor illum laborum quia maiores. Enim nisi quasi autem soluta ipsa aut. Et est voluptate omnis. Ut tempore est ad perferendis fugit sed atque.', 55748, 'Celiaport', 'IT', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 6, NULL),
(82, 'Carpenter', 'Velit reprehenderit molestias dignissimos odit reiciendis illo incidunt. Ipsa similique temporibus natus cumque id esse eos. Incidunt et ut incidunt non beatae expedita. Sit corporis fugiat sit molestias dolorum.\n\nSoluta pariatur corporis autem voluptatem id. Saepe quis error vero illum minima nihil. Ex numquam rerum molestiae impedit.\n\nIn quia quidem qui aliquid neque. Modi perspiciatis ut ut ea quos qui. Corporis ea delectus ea omnis.', 84889, 'Dickinsontown', 'Marketing', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 15, NULL),
(83, 'Boiler Operator', 'Ut ratione nemo maiores veniam eos suscipit. Nemo est est id sed nam rerum aut. Doloribus hic ut voluptas delectus autem. Amet dicta voluptatum animi dolore aut ea ut.\n\nQuo qui veniam labore earum harum id voluptas repellat. Unde voluptate molestiae et delectus perferendis aut. Ut minus eum architecto et odit quaerat perferendis. Quod facere consequuntur sunt vitae voluptas aut.\n\nMaiores quasi qui nesciunt quam. Provident voluptas sint dolore inventore.', 91793, 'Ryanbury', 'IT', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 18, NULL),
(84, 'Sociology Teacher', 'Mollitia recusandae excepturi esse et. Aut veritatis veritatis temporibus. Delectus eaque dolore eum aut est sint quae dolorem. Omnis omnis ullam molestias.\n\nId quis est aperiam velit animi sed. Quisquam alias veritatis dolor explicabo. Ullam unde placeat rem sit minima.\n\nEst iste qui id fugit porro ut. Alias eos quia molestias provident laborum eos.', 95542, 'Owenland', 'IT', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 17, NULL),
(85, 'Textile Machine Operator', 'Velit officia ut illo voluptates architecto. Assumenda dolores inventore sapiente nobis omnis dolorum animi. Aut delectus qui repudiandae.\n\nDeleniti quo magnam et sit molestiae fugiat est. Quia non alias consequatur nulla reiciendis ut ea. Ullam aliquid excepturi et ea nostrum voluptatem ipsam et. Velit adipisci cupiditate corporis voluptas magnam.\n\nSit est qui eum officiis voluptatem. Voluptatem exercitationem et incidunt labore vel. Excepturi nostrum quo nihil eius. Eveniet ad voluptatem est eaque magni.', 98225, 'Henriport', 'Marketing', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 15, NULL),
(86, 'Prepress Technician', 'Aperiam libero quas cupiditate sunt magni nisi. Aut modi explicabo repellat.\n\nOfficiis qui hic qui placeat. A qui architecto architecto omnis error.\n\nNihil ducimus voluptates optio molestiae sint dolorum eaque et. Deleniti rem quia sint maiores esse architecto est. Quidem est assumenda neque sed omnis. Qui beatae soluta explicabo omnis et cumque hic repudiandae. Quisquam numquam iste fuga nobis soluta voluptas assumenda tempore.', 52625, 'Nicoletteton', 'IT', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 5, NULL),
(87, 'Radar Technician', 'Et accusantium quos quidem rerum assumenda adipisci ab. Voluptatem voluptas eos eos delectus ab. Ut sed molestiae placeat quas totam optio. Velit culpa libero inventore omnis ducimus architecto doloremque ut. Aliquid autem non nostrum dolorem et repellendus.\n\nOmnis non corporis totam laboriosam earum. Dolorum numquam maxime atque illum facere. Neque voluptatem aspernatur eos.\n\nUt pariatur laborum consequatur facilis nesciunt aut officiis. Placeat nobis deserunt vel molestiae quos in quis. Aspernatur expedita atque facilis autem ut consequatur in.', 75228, 'Goldnerside', 'Sales', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 16, NULL),
(88, 'File Clerk', 'Non autem est qui alias unde voluptas. Quasi quia quasi saepe. Assumenda placeat dolor autem ut ut.\n\nQuidem magni nemo mollitia fugit necessitatibus quis. Dolor dolor et pariatur. Tempore cupiditate blanditiis corrupti neque vero aut.\n\nEt qui aperiam omnis quia enim corporis. Ipsa dolore quia repellat laudantium et. Molestias ea ipsam soluta vitae.', 116348, 'Carleymouth', 'Sales', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 3, NULL),
(89, 'Diesel Engine Specialist', 'Numquam magnam consectetur sit consequatur. Quos odit repellendus ab corporis exercitationem quis. Et dolor quam minima sunt.\n\nItaque praesentium et perferendis saepe quam voluptatum. Natus dolorem qui voluptas nesciunt facilis consequuntur iusto. Soluta impedit alias non harum rem.\n\nQui nulla vel labore incidunt libero asperiores. Velit nisi ex ullam non praesentium aut. Aperiam incidunt perspiciatis ipsum aut. Officiis consequatur officiis sint dolores harum voluptas et.', 31097, 'East Braden', 'IT', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 14, NULL),
(90, 'Health Technologist', 'Tempora perspiciatis incidunt totam est laboriosam consequatur. Non accusantium eaque similique atque. Temporibus eos illum minima quaerat ut dolores. Ullam ut exercitationem et blanditiis ut autem nemo ea.\n\nEst error reprehenderit dolorem vitae maxime. Sunt magnam debitis nemo ab. Et dignissimos veritatis dolores soluta vitae. Autem illo illo perferendis exercitationem non hic.\n\nVelit quia deserunt ut molestiae rerum fugiat sed. Voluptas mollitia blanditiis sapiente officia sequi. Provident repudiandae rerum ut. Consequatur in repudiandae incidunt dolorem reiciendis.', 142893, 'Kochland', 'Finance', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 9, NULL),
(91, 'Biophysicist', 'Amet libero molestias sed ut maiores repellendus culpa. Necessitatibus sequi beatae et. Laborum maxime iste molestiae delectus.\n\nNulla nostrum commodi fugiat voluptatem enim. Fuga quia omnis fugit optio non commodi. Laborum iste accusantium soluta iure voluptatibus. Consequatur veritatis quia accusamus ad.\n\nSed nisi a atque accusantium. Deleniti asperiores repudiandae est praesentium consectetur porro consectetur quia. Id ullam eos repellat dolorem reprehenderit quod. Quidem alias aliquid consectetur provident.', 88653, 'Port Barrett', 'Finance', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 10, NULL),
(92, 'Radio Mechanic', 'Recusandae et enim est aliquam cupiditate officia. Aspernatur et natus sapiente. Ducimus velit quibusdam mollitia est laudantium dolorum occaecati. Molestiae quaerat quo sed ut corporis. Distinctio eos dolores voluptas quia quos.\n\nInventore et nobis quisquam ut dicta. Id hic voluptatem voluptate maxime. Nihil ratione accusamus repudiandae recusandae.\n\nQuibusdam est beatae voluptatibus cum. Et ipsam fuga omnis quisquam illum aut aperiam. Et quisquam corporis non dolor labore.', 72626, 'Langoshberg', 'Marketing', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 3, NULL),
(93, 'Health Services Manager', 'Sed amet et et. Sequi maxime nemo enim similique. Voluptatibus autem pariatur officia ut. Facilis aut voluptatum perspiciatis in.\n\nMinus deleniti similique consequuntur ipsum earum sit consectetur. Repellendus corrupti expedita itaque est deserunt perspiciatis. A et eligendi quas sed consectetur.\n\nUt laudantium repellendus atque alias non doloribus aspernatur. Accusamus optio inventore rem asperiores cum. Minima ipsum aperiam dolorum eius labore.', 26030, 'Antonioton', 'IT', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 18, NULL),
(94, 'Producer', 'Et nulla exercitationem in porro iusto deserunt assumenda. Sunt expedita veniam illum. Est dolorem et tempora sit. Ex incidunt consequatur aut harum.\n\nVoluptates aperiam enim asperiores similique a numquam maiores. Eum incidunt voluptatem in aperiam corrupti ducimus omnis itaque. Atque omnis accusantium qui temporibus et dignissimos ipsam.\n\nOmnis quis facere est iste repellat quibusdam ut. Consectetur ullam omnis voluptatem tenetur consequatur omnis sapiente. Commodi nobis qui provident harum.', 17129, 'North Haroldtown', 'Finance', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 6, NULL),
(95, 'Communications Equipment Operator', 'Voluptate earum itaque ipsam et ipsam. Dolorem quo esse non numquam libero incidunt repellendus. Voluptas deserunt officiis porro neque fugit quidem et.\n\nEveniet vel tenetur autem minima. Ipsa non possimus consequatur maiores veritatis sit quisquam. Eum cupiditate ut esse et. Eaque aperiam eius cumque ut. Blanditiis quidem at ab.\n\nSed quas delectus adipisci necessitatibus omnis non tempora. Ipsum illo placeat autem id inventore nesciunt quas. Est et magni vero voluptas est quia debitis excepturi. Ea corrupti quis omnis saepe vel qui voluptatem.', 100070, 'Predovicfurt', 'Sales', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 9, NULL),
(96, 'Umpire and Referee', 'Ut provident sed veritatis enim. Ut hic quis officia eveniet vel cupiditate voluptatem. Aliquid cumque qui doloremque iusto dicta.\n\nEligendi unde voluptatem magnam doloribus amet. Eveniet iusto hic et voluptates earum ea perferendis. Et corrupti autem dolorem sit.\n\nLaborum adipisci omnis dolores maxime. Exercitationem veritatis inventore velit dolorum aliquam molestiae ad. Dolorem fuga quis molestiae aut sequi suscipit laudantium. Nemo deleniti totam molestias commodi nulla.', 120805, 'Port Anahichester', 'Finance', 'senior', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 6, NULL),
(97, 'Social Work Teacher', 'Eius veritatis voluptates ullam voluptatem. Et eos vel voluptate suscipit laboriosam cum. Et deleniti est similique velit.\n\nSed libero iure ut est rerum eum. Maiores eligendi non nam voluptatem et earum iure. Quis voluptas quis a tempora quo reiciendis nulla ut. Animi autem voluptatem saepe.\n\nPraesentium deleniti enim dolores voluptates. Omnis et pariatur modi enim. Enim et dolores voluptatem sit corporis omnis qui corrupti. A rerum voluptate architecto.', 143947, 'Pagachaven', 'IT', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 15, NULL),
(98, 'Audio and Video Equipment Technician', 'Omnis aut nisi laborum. Qui fugit quia molestiae non. Expedita pariatur rem quo odit nobis ipsam numquam. Ut harum dolores velit placeat.\n\nConsequatur consequatur mollitia ut. Consectetur molestiae blanditiis repellat enim ut quia est. Debitis blanditiis consectetur soluta ea.\n\nVelit inventore libero pariatur sit dolorem pariatur. Voluptatem ea in et totam. Ratione omnis facilis aut ea animi odio. Assumenda aliquid consequatur doloribus nesciunt voluptatibus ad.', 107782, 'North Percy', 'Finance', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 5, NULL),
(99, 'Mechanical Inspector', 'Expedita aut consequatur saepe omnis natus. Rerum quaerat atque perspiciatis veniam pariatur. Temporibus saepe aut sed rerum. Similique magni facere alias facilis.\n\nAperiam consequatur velit fugit nisi aut et. Quibusdam quam est eveniet est. Est quis nulla explicabo tempora. Hic quibusdam qui tenetur et.\n\nQuis accusantium qui tempore saepe aperiam vitae. Enim officiis porro molestiae aut et itaque id. Debitis dicta illum ut deserunt dignissimos dolores dolorem optio. Perspiciatis enim quia voluptatibus sapiente quisquam at fugiat.', 61759, 'South Kellimouth', 'Marketing', 'intermediate', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 17, NULL),
(100, 'Business Manager', 'Numquam sed et ab fugit minus. Blanditiis veniam facilis porro quis eveniet qui soluta. Et molestiae voluptate ipsam quis quia.\n\nAccusantium ea suscipit illo quod. Nihil adipisci et et. Distinctio deleniti sequi qui quod et. Animi velit aut reiciendis omnis voluptates.\n\nSunt eos nesciunt saepe id ratione cum at omnis. Fugiat necessitatibus ratione cum recusandae ea enim eligendi commodi. Ducimus et ut amet molestiae.', 78868, 'East Raulland', 'Finance', 'entry', '2025-07-19 12:30:27', '2025-07-19 12:30:27', 8, NULL),
(101, 'data scintist', 'need urgent', 10002, 'meerut', 'IT', 'entry', '2025-07-28 09:42:36', '2025-07-29 11:10:15', 21, '2025-07-29 11:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `expected_salary` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cv_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `user_id`, `job_id`, `expected_salary`, `created_at`, `updated_at`, `cv_path`) VALUES
(1, 213, 40, 81776, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(2, 213, 48, 107488, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(3, 213, 90, 83126, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(4, 213, 63, 148905, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(5, 174, 52, 99302, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(6, 174, 77, 57685, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(7, 174, 97, 99599, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(8, 43, 75, 111160, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(9, 43, 5, 107876, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(10, 43, 73, 92723, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(11, 115, 78, 107201, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(12, 115, 46, 151302, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(13, 115, 77, 48723, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(14, 115, 7, 17162, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(15, 125, 57, 130857, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(16, 125, 37, 91536, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(17, 125, 39, 73421, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(18, 206, 6, 166113, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(19, 206, 92, 23947, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(20, 206, 15, 25276, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(21, 263, 24, 153747, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(22, 263, 11, 120133, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(23, 251, 9, 17014, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(24, 171, 73, 118165, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(25, 171, 42, 28802, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(26, 131, 36, 94883, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(27, 131, 6, 84263, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(28, 131, 21, 90815, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(29, 131, 68, 58995, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(30, 87, 72, 22782, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(31, 87, 58, 164851, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(32, 87, 79, 38819, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(33, 79, 55, 167235, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(34, 93, 50, 44866, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(35, 93, 16, 34782, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(36, 93, 31, 35624, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(37, 93, 61, 156836, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(38, 152, 9, 83335, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(39, 152, 61, 81818, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(40, 152, 57, 153037, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(41, 152, 16, 127628, '2025-07-19 12:30:27', '2025-07-19 12:30:27', NULL),
(42, 117, 9, 27343, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(43, 117, 54, 154860, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(44, 190, 40, 164926, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(45, 185, 73, 134289, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(46, 185, 26, 14953, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(47, 185, 37, 121601, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(48, 247, 33, 77940, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(49, 253, 60, 115745, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(50, 253, 74, 56912, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(51, 66, 96, 134809, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(52, 66, 93, 126395, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(53, 28, 4, 77717, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(54, 28, 38, 152089, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(55, 77, 50, 86346, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(56, 17, 83, 131150, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(57, 97, 92, 126337, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(58, 97, 67, 94356, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(59, 181, 50, 169433, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(60, 181, 29, 45476, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(61, 181, 35, 81976, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(62, 181, 11, 62771, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(63, 293, 7, 104715, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(64, 293, 14, 34192, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(65, 293, 63, 32906, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(66, 293, 6, 8451, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(67, 61, 80, 24112, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(68, 56, 20, 128570, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(69, 56, 53, 99897, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(70, 56, 28, 74478, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(71, 56, 2, 76448, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(72, 130, 94, 83820, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(73, 130, 22, 148222, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(74, 10, 19, 107029, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(75, 10, 1, 122689, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(76, 10, 85, 131198, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(77, 281, 44, 55241, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(78, 281, 11, 108824, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(79, 281, 97, 99180, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(80, 180, 24, 15985, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(81, 180, 34, 143033, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(82, 27, 14, 105409, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(83, 27, 52, 120234, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(84, 27, 67, 135411, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(85, 27, 44, 157445, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(86, 59, 79, 22207, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(87, 198, 74, 45714, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(88, 198, 18, 74452, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(89, 272, 4, 22857, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(90, 45, 81, 68456, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(91, 45, 62, 86244, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(92, 45, 3, 90112, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(93, 45, 93, 76495, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(94, 221, 39, 44990, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(95, 16, 13, 79147, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(96, 16, 59, 84207, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(97, 75, 61, 97094, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(98, 75, 59, 157867, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(99, 75, 29, 168379, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(100, 100, 75, 146636, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(101, 203, 50, 56833, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(102, 203, 69, 59415, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(103, 203, 36, 34942, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(104, 203, 72, 149919, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(105, 265, 16, 163362, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(106, 25, 30, 5062, '2025-07-19 12:30:28', '2025-07-19 12:30:28', NULL),
(107, 9, 74, 103110, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(108, 9, 5, 139261, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(109, 9, 40, 69665, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(110, 9, 62, 162799, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(111, 81, 89, 155226, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(112, 81, 49, 10947, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(113, 81, 69, 6886, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(114, 74, 65, 13853, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(115, 74, 41, 118497, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(116, 74, 25, 57842, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(117, 161, 52, 32994, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(118, 161, 25, 140296, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(119, 161, 9, 49360, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(120, 249, 43, 156387, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(121, 249, 71, 80125, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(122, 249, 31, 63724, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(123, 249, 46, 59553, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(124, 186, 3, 156662, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(125, 186, 13, 130293, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(126, 207, 20, 54112, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(127, 195, 33, 121123, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(128, 195, 56, 45810, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(129, 195, 39, 51983, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(130, 105, 49, 128114, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(131, 105, 7, 125693, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(132, 105, 72, 59767, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(133, 160, 81, 116431, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(134, 65, 71, 51567, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(135, 229, 79, 54832, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(136, 229, 1, 132797, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(137, 229, 93, 105606, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(138, 295, 23, 97169, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(139, 295, 82, 101803, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(140, 295, 32, 106460, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(141, 239, 87, 102658, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(142, 239, 16, 155089, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(143, 133, 77, 154672, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(144, 133, 47, 90365, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(145, 112, 47, 152051, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(146, 112, 14, 146799, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(147, 112, 22, 106199, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(148, 112, 32, 117871, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(149, 196, 14, 99727, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(150, 196, 55, 28414, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(151, 231, 34, 41248, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(152, 231, 86, 132802, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(153, 231, 38, 141184, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(154, 231, 79, 154598, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(155, 55, 1, 136286, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(156, 255, 51, 24149, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(157, 255, 56, 6576, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(158, 255, 80, 78388, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(159, 19, 93, 128183, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(160, 41, 58, 90516, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(161, 39, 43, 85520, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(162, 39, 78, 108039, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(163, 211, 3, 30935, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(164, 211, 24, 84463, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(165, 173, 28, 119024, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(166, 173, 4, 165339, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(167, 197, 80, 100755, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(168, 197, 48, 162735, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(169, 197, 5, 40019, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(170, 197, 57, 6367, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(171, 192, 37, 125834, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(172, 96, 93, 38365, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(173, 96, 97, 124540, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(174, 96, 22, 163321, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(175, 96, 52, 158290, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(176, 63, 54, 147061, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(177, 63, 3, 27463, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(178, 63, 6, 157570, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(179, 63, 97, 77398, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(180, 53, 47, 147712, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(181, 53, 26, 158846, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(182, 53, 99, 70298, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(183, 53, 31, 125401, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(184, 242, 28, 120796, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(185, 242, 12, 168540, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(186, 242, 45, 27035, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(187, 210, 54, 133450, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(188, 210, 81, 35876, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(189, 210, 62, 9099, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(190, 111, 29, 48331, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(191, 82, 84, 8536, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(192, 82, 91, 71611, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(193, 89, 49, 115666, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(194, 288, 70, 133347, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(195, 288, 62, 122330, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(196, 288, 71, 39144, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(197, 288, 32, 74296, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(198, 72, 35, 96566, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(199, 72, 13, 59030, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(200, 72, 38, 17931, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(201, 72, 19, 75446, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(202, 201, 95, 148971, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(203, 201, 31, 5433, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(204, 201, 44, 140665, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(205, 236, 73, 116527, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(206, 236, 81, 38904, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(207, 104, 79, 96230, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(208, 104, 19, 39848, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(209, 104, 34, 47900, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(210, 40, 93, 32126, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(211, 18, 5, 145968, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(212, 18, 4, 167119, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(213, 193, 31, 161957, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(214, 193, 77, 89250, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(215, 193, 33, 36734, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(216, 193, 92, 143179, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(217, 22, 83, 45976, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(218, 22, 45, 111833, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(219, 124, 85, 72614, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(220, 124, 10, 21289, '2025-07-19 12:30:29', '2025-07-19 12:30:29', NULL),
(221, 124, 63, 69580, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(222, 299, 24, 104749, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(223, 299, 33, 42414, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(224, 299, 77, 39327, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(225, 299, 30, 71388, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(226, 165, 31, 29729, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(227, 165, 92, 76948, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(228, 260, 55, 80877, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(229, 260, 33, 96258, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(230, 260, 29, 132477, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(231, 205, 56, 23984, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(232, 205, 5, 106750, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(233, 205, 99, 119934, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(234, 205, 93, 122648, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(235, 301, 40, 130504, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(236, 301, 30, 115961, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(237, 301, 47, 49206, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(238, 264, 17, 145084, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(239, 264, 58, 63156, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(240, 264, 28, 166613, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(241, 264, 22, 21147, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(242, 132, 95, 42635, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(243, 132, 27, 154226, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(244, 132, 50, 70626, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(245, 132, 93, 116311, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(246, 3, 23, 97872, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(247, 3, 88, 152618, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(248, 3, 69, 13047, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(249, 3, 33, 94914, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(250, 139, 1, 150211, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(251, 13, 41, 161840, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(252, 13, 23, 40357, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(253, 13, 4, 120228, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(254, 58, 22, 116633, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(255, 291, 97, 149623, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(256, 291, 61, 7500, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(257, 291, 86, 40415, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(258, 228, 63, 107943, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(259, 228, 75, 156890, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(260, 228, 33, 102721, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(261, 228, 24, 168185, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(262, 68, 8, 153545, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(263, 68, 14, 145261, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(264, 68, 37, 91997, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(265, 158, 19, 32855, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(266, 158, 51, 160972, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(267, 158, 56, 16703, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(268, 158, 14, 72601, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(269, 300, 67, 43860, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(270, 163, 29, 90177, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(271, 163, 100, 26360, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(272, 163, 23, 46057, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(273, 163, 88, 41922, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(274, 134, 42, 74631, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(275, 134, 85, 155255, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(276, 134, 9, 132231, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(277, 254, 82, 41350, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(278, 216, 18, 104119, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(279, 216, 60, 85102, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(280, 216, 90, 26990, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(281, 216, 16, 134155, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(282, 118, 61, 29582, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(283, 118, 100, 126516, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(284, 118, 96, 100787, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(285, 118, 11, 29244, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(286, 69, 66, 30959, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(287, 69, 68, 101299, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(288, 69, 40, 38973, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(289, 69, 77, 89919, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(290, 120, 68, 104453, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(291, 120, 7, 41749, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(292, 120, 2, 169928, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(293, 194, 89, 153334, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(294, 194, 73, 47838, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(295, 194, 82, 36305, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(296, 244, 74, 68060, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(297, 244, 38, 56000, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(298, 244, 71, 15844, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(299, 244, 5, 50583, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(300, 204, 41, 97903, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(301, 204, 30, 61732, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(302, 204, 44, 27761, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(303, 270, 28, 160890, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(304, 270, 63, 6505, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(305, 270, 16, 146719, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(306, 270, 96, 148585, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(307, 49, 39, 160670, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(308, 289, 71, 35988, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(309, 31, 66, 108292, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(310, 187, 59, 60317, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(311, 187, 69, 150254, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(312, 187, 16, 14481, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(313, 138, 53, 76629, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(314, 138, 22, 138934, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(315, 220, 40, 141754, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(316, 26, 45, 157934, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(317, 26, 61, 113063, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(318, 184, 33, 121731, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(319, 184, 32, 119601, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(320, 184, 31, 69467, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(321, 184, 98, 156171, '2025-07-19 12:30:30', '2025-07-19 12:30:30', NULL),
(322, 23, 86, 121431, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(323, 23, 61, 98990, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(324, 62, 12, 136559, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(325, 62, 5, 47425, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(326, 208, 21, 107801, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(327, 208, 38, 115205, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(328, 208, 12, 71151, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(329, 285, 75, 66976, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(330, 285, 43, 60791, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(331, 285, 21, 35607, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(332, 85, 60, 69410, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(333, 85, 68, 42226, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(334, 85, 52, 30986, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(335, 85, 50, 146702, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(336, 2, 94, 48299, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(337, 2, 96, 155862, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(338, 275, 62, 36571, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(339, 275, 42, 32999, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(340, 275, 4, 17237, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(341, 275, 43, 161778, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(342, 267, 18, 5585, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(343, 148, 82, 141814, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(344, 148, 59, 165426, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(345, 148, 71, 61373, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(346, 148, 84, 135070, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(347, 222, 22, 11339, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(348, 222, 16, 4451, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(349, 278, 38, 162676, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(350, 278, 16, 18060, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(351, 278, 57, 116093, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(352, 278, 45, 8075, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(353, 182, 84, 41335, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(354, 36, 90, 120661, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(355, 36, 94, 111651, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(356, 36, 69, 37540, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(357, 36, 40, 76073, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(358, 149, 11, 5767, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(359, 172, 27, 144884, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(360, 172, 44, 158543, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(361, 172, 8, 124613, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(362, 172, 98, 29131, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(363, 123, 26, 62782, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(364, 123, 61, 94526, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(365, 123, 98, 76671, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(366, 54, 92, 33581, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(367, 241, 81, 100849, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(368, 127, 66, 80376, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(369, 51, 17, 93372, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(370, 51, 83, 152764, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(371, 51, 29, 136405, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(372, 51, 14, 75704, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(373, 200, 19, 92215, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(374, 200, 92, 129311, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(375, 200, 63, 134813, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(376, 200, 73, 122042, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(377, 233, 78, 48159, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(378, 233, 39, 84954, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(379, 233, 6, 44751, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(380, 233, 12, 4223, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(381, 44, 39, 19099, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(382, 44, 1, 21738, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(383, 44, 60, 110758, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(384, 234, 78, 117418, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(385, 259, 42, 142697, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(386, 257, 74, 62216, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(387, 257, 32, 144532, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(388, 257, 91, 34367, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(389, 257, 97, 109349, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(390, 238, 26, 105409, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(391, 238, 14, 91382, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(392, 202, 14, 89485, '2025-07-19 12:30:31', '2025-07-19 12:30:31', NULL),
(393, 202, 49, 157332, '2025-07-19 12:30:32', '2025-07-19 12:30:32', NULL),
(394, 202, 2, 16023, '2025-07-19 12:30:32', '2025-07-19 12:30:32', NULL),
(395, 202, 83, 73468, '2025-07-19 12:30:32', '2025-07-19 12:30:32', NULL),
(396, 168, 22, 67584, '2025-07-19 12:30:32', '2025-07-19 12:30:32', NULL),
(397, 168, 6, 16377, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(398, 168, 74, 136506, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(399, 101, 90, 155935, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(400, 101, 77, 10412, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(401, 101, 18, 128985, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(402, 101, 7, 33664, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(403, 98, 65, 40135, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(404, 98, 99, 120749, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(405, 98, 40, 43617, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(406, 240, 20, 111155, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(407, 240, 55, 89097, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(408, 240, 84, 108357, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(409, 240, 42, 159904, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(410, 99, 43, 71917, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(411, 99, 9, 48326, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(412, 99, 71, 152100, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(413, 282, 58, 94233, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(414, 102, 13, 15789, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(415, 102, 47, 18500, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(416, 102, 23, 7103, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(417, 84, 3, 49358, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(418, 84, 52, 127827, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(419, 155, 2, 113790, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(420, 155, 64, 150943, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(421, 140, 20, 96255, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(422, 33, 68, 51556, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(423, 91, 93, 40332, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(424, 91, 53, 136612, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(425, 91, 72, 165230, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(426, 156, 58, 163116, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(427, 156, 33, 32750, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(428, 156, 20, 39262, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(429, 248, 6, 118323, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(430, 52, 73, 104791, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(431, 52, 97, 125638, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(432, 252, 40, 36957, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(433, 252, 25, 12976, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(434, 252, 52, 36603, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(435, 199, 98, 27393, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(436, 136, 44, 139951, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(437, 136, 36, 52102, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(438, 136, 59, 152325, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(439, 136, 68, 12124, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(440, 294, 39, 162677, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(441, 153, 29, 75909, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(442, 7, 83, 97553, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(443, 7, 69, 4671, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(444, 7, 54, 35647, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(445, 7, 84, 165868, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(446, 230, 77, 52141, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(447, 86, 32, 48852, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(448, 154, 13, 109240, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(449, 154, 94, 151511, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(450, 154, 35, 20714, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(451, 154, 99, 65748, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(452, 298, 63, 98530, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(453, 298, 34, 59156, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(454, 298, 1, 164748, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(455, 83, 85, 32637, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(456, 83, 11, 10151, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(457, 83, 22, 9323, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(458, 83, 58, 31701, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(459, 166, 88, 108790, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(460, 166, 65, 20761, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(461, 159, 32, 16628, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(462, 159, 41, 129032, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(463, 159, 18, 5818, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(464, 15, 87, 140276, '2025-07-19 12:30:33', '2025-07-19 12:30:33', NULL),
(465, 243, 4, 78613, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(466, 147, 88, 152865, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(467, 147, 47, 69502, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(468, 147, 58, 99517, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(469, 191, 51, 68278, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(470, 225, 96, 143721, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(471, 225, 59, 137940, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(472, 269, 46, 142930, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(473, 269, 94, 61572, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(474, 269, 45, 25872, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(475, 108, 72, 167064, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(476, 108, 100, 84769, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(477, 108, 11, 117012, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(478, 287, 59, 164416, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(479, 287, 71, 155128, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(480, 287, 24, 89766, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(481, 287, 53, 121435, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(482, 157, 43, 35864, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(483, 157, 84, 91325, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(484, 157, 56, 92017, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(485, 157, 47, 58279, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(486, 141, 44, 164814, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(487, 141, 6, 85648, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(488, 141, 7, 23782, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(489, 227, 81, 143848, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(490, 110, 87, 88712, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(491, 110, 12, 107418, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(492, 110, 61, 17655, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(493, 110, 5, 22002, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(494, 170, 84, 17108, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(495, 170, 57, 21330, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(496, 170, 76, 94330, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(497, 170, 33, 166461, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(498, 4, 47, 53837, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(499, 4, 5, 80416, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(500, 4, 34, 54187, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(501, 4, 83, 51935, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(502, 286, 58, 141643, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(503, 286, 9, 115927, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(504, 116, 6, 34199, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(505, 116, 5, 135139, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(506, 116, 72, 105142, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(507, 116, 7, 90930, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(508, 95, 51, 13850, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(509, 95, 16, 135435, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(510, 95, 1, 70048, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(511, 258, 67, 42401, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(512, 258, 54, 67494, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(513, 146, 16, 66884, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(517, 226, 26, 28518, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(518, 226, 10, 103262, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(519, 226, 85, 32529, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(520, 57, 9, 113613, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(521, 57, 27, 102141, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(522, 57, 4, 157507, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(523, 178, 19, 90108, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(524, 178, 43, 28175, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(525, 178, 46, 23064, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(526, 178, 78, 155791, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(527, 151, 66, 39204, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(528, 151, 82, 14165, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(529, 189, 18, 152468, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(530, 189, 88, 83096, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(531, 189, 92, 159790, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(532, 189, 23, 86217, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(533, 179, 17, 136671, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(534, 179, 36, 152382, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(535, 179, 57, 99072, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(536, 179, 94, 78042, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(537, 292, 69, 68126, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(538, 70, 99, 118790, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(539, 113, 88, 69977, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(540, 113, 83, 15049, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(541, 113, 14, 18011, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(542, 113, 70, 38915, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(543, 266, 55, 95174, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(544, 266, 70, 67792, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(545, 266, 36, 34580, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(546, 266, 51, 55478, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(547, 78, 93, 44803, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(548, 78, 88, 44984, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(549, 78, 1, 161603, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(550, 223, 30, 17919, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(551, 223, 91, 47745, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(552, 223, 62, 139764, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(553, 217, 43, 46600, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(554, 217, 82, 47428, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(555, 217, 5, 147755, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(556, 217, 32, 28965, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(557, 246, 80, 35929, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(558, 246, 92, 80676, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(559, 246, 43, 157752, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(560, 277, 62, 122491, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(561, 277, 88, 160617, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(562, 277, 46, 27141, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(563, 90, 3, 88971, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(564, 90, 68, 52320, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(565, 90, 62, 65757, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(566, 90, 88, 11215, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(567, 103, 86, 34931, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(568, 30, 90, 81509, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(569, 30, 11, 125110, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(570, 250, 75, 122011, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(571, 279, 85, 81168, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(572, 279, 74, 30237, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(573, 279, 94, 102546, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(574, 177, 98, 65855, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(575, 177, 74, 46270, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(576, 177, 95, 51064, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(577, 32, 99, 45774, '2025-07-19 12:30:34', '2025-07-19 12:30:34', NULL),
(578, 167, 57, 74728, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(579, 167, 47, 75555, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(580, 164, 10, 53438, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(581, 164, 24, 46000, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(582, 92, 14, 52718, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(583, 92, 56, 5337, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(584, 92, 98, 26524, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(585, 224, 74, 102461, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(586, 237, 96, 86714, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(587, 237, 29, 129180, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(588, 237, 42, 55371, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(589, 150, 34, 156651, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(590, 150, 86, 68979, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(591, 150, 92, 22700, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(592, 150, 60, 151739, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(593, 48, 33, 152233, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(594, 48, 66, 85891, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(595, 48, 47, 124583, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(596, 137, 81, 80377, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(597, 137, 17, 67345, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(598, 137, 60, 90273, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(599, 8, 19, 167757, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(600, 8, 85, 43074, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(601, 8, 46, 91260, '2025-07-19 12:30:35', '2025-07-19 12:30:35', NULL),
(604, 1, 1, 25000, '2025-07-25 13:07:45', '2025-07-25 13:07:45', 'cvs/Gtcy3OcaTNWMSfWn5duzJPeWinAP1LzpKYYev36s.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(22, '0001_01_01_000000_create_users_table', 1),
(23, '0001_01_01_000001_create_cache_table', 1),
(24, '0001_01_01_000002_create_jobs_table', 1),
(25, '2025_06_25_162453_create_jobs_table', 1),
(26, '2025_07_14_172057_create_employers_table', 1),
(27, '2025_07_19_174008_create_job_applications_table', 1),
(28, '2025_07_25_174727_add_cv_path_to_job_applications_table', 2),
(29, '2025_07_29_143856_add_soft_deletes_to_jobs_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2BQmAy34cRM7JrL2bcX3veKqLgXSQNSn6WeOTEDv', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTFp6WXdSa0RCeDRXaWZCdnJMa2s5RWpYMGx6alA2UkkyWEhDOVk1bSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9teS1qb2JzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1753807982),
('wGHQkNWpUIqP7SKflEMtUNtltn5TVRoW63xQ94RJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEtXUU1CWkl1OWhuc0xwQURaaVpTaVNwSEM3bG4zM1YwczBvbTlkNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9qb2JzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1753807079);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'daksh', 'daksh@gmail.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'um89mrxBlUPTF1ALzUUz8Yk5Hg0MpDRMb3zkqfi2W24ylxg9Ocvn5AGpsqdd', '2025-07-19 12:30:24', '2025-07-19 12:30:24'),
(2, 'Colton Green', 'kobe05@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'YDRmzsnCovpJWxF5ZwCfJpsfGb8PBzTJrARmHyBfI5AoQhnUQEU7WcMaRQKS', '2025-07-19 12:30:24', '2025-07-19 12:30:24'),
(3, 'Camden Nitzsche', 'estiedemann@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '8Aoxf7J5nX', '2025-07-19 12:30:24', '2025-07-19 12:30:24'),
(4, 'Ari Thiel', 'alda35@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '9TGwB0qvZc', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(5, 'Alfonso Reinger', 'gweissnat@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'Act5cgwqV1', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(6, 'Eleanora Schroeder', 'ernser.alejandrin@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'tnyXLeemBO', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(7, 'Braxton Feest I', 'veum.westley@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '0ATAbK95JE', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(8, 'Marianne Bernhard', 'ulittel@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'RML5reHmyc', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(9, 'Jaquan Trantow V', 'cesar49@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'ScaUeuhbNE', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(10, 'Destin Grant', 'froob@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'gp4z5jg4Js', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(11, 'Johnathan O\'Conner', 'kemmer.natalie@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'dogSFgPGwH', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(12, 'Nelson Bayer', 'zkuhlman@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'JO4HsAsnxV', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(13, 'Prof. Federico Kautzer', 'kuhlman.jovanny@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '2kunx9dCV7', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(14, 'Constance Reinger', 'abigayle.stamm@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'WLGKUnf1Sp', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(15, 'Eliza Doyle', 'sandrine.bahringer@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'w6aeyjBVNq', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(16, 'Darrion Kuvalis', 'pkoss@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'men0Fv27UK', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(17, 'Cruz Nolan DVM', 'delfina55@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '09L9GOqA7n', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(18, 'Dr. Dennis Schiller I', 'friesen.wilbert@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '1g3twVjQde', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(19, 'Rosemarie Reinger Sr.', 'heller.wilford@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'gQjYU8KbiI', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(20, 'Jevon Von', 'skye.klein@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '0ZdZy9qbGE', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(21, 'Mrs. Odie Feeney V', 'cshields@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'PrNsyN16BK', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(22, 'Waino Corkery II', 'hfritsch@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'q3Ar3JmJCi', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(23, 'Mr. Lucio Johnson MD', 'beier.erik@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'iR3VBVvQRt', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(24, 'Valentine Flatley', 'wyman.price@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'PzWP2fOuTR', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(25, 'Mrs. Desiree Upton IV', 'ryan.laurianne@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'n289Rbv90I', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(26, 'Chase Funk', 'albertha.tremblay@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'jNIcWMRODZ', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(27, 'Mr. Neal McDermott Sr.', 'barrows.tessie@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'rVpMjE0Vh5', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(28, 'Ellie Conroy', 'ipfeffer@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'oAyHgpJU3G', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(29, 'Rosalind Anderson', 'rmoen@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'v9bRnRHGgI', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(30, 'Angelo Beier', 'ispencer@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'Sc92EHIEGy', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(31, 'Bessie Bashirian V', 'lenna82@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'iASt0dnPJY', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(32, 'Tania Oberbrunner I', 'makenna48@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'cPKvBwKviU', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(33, 'Dr. Marisol Carroll', 'oberbrunner.orville@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'lhAWz5lf2Z', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(34, 'Dr. Darryl Romaguera V', 'hettinger.avery@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'oPPDj5WJeP', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(35, 'Miss Yesenia Pacocha', 'roselyn.haley@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'e183k3EpjZ', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(36, 'Elian Cassin', 'tromp.chyna@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'eaxy7voCHH', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(37, 'Prof. Cade Mayert', 'upacocha@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'LPwuDMXCjb', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(38, 'Dr. Henderson Ritchie', 'fgrant@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'Hr0wQwM2QD', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(39, 'Mattie Smith', 'lillian10@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'Zhmd8pSYNM', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(40, 'Prof. Caesar Purdy', 'harmstrong@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'kHVCsLSPIz', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(41, 'Kirk Braun', 'lmaggio@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'hVsPKUufXY', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(42, 'Will Durgan', 'nolan.ronny@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'imDj7XCojC', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(43, 'Mauricio Reichel', 'hmoore@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'HvCGxUFwx7', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(44, 'Prof. Lexi Rempel', 'octavia75@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'gFH9ow9Rwy', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(45, 'Ike Douglas I', 'vdaniel@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'PTkMnnOXNR', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(46, 'Anastacio Hane', 'tswift@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'QFd2eCImFM', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(47, 'Dr. Charles Kautzer PhD', 'hilton.mcglynn@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'PFQfL4XxtJ', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(48, 'Betsy Feil', 'abel45@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'cckJNpia9l', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(49, 'Sister Fahey', 'ward48@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'dJ72Pu7eTZ', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(50, 'Itzel Murazik', 'bstark@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'IUEOiWHC15', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(51, 'Cullen Yost V', 'ykohler@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'OvPu0sWAzg', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(52, 'Uriah Wolff', 'block.jazmyne@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'vPllyAql7m', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(53, 'Dr. Zachariah Hagenes', 'lueilwitz.tevin@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'PXcWJkJJdy', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(54, 'Prof. Dax Schmidt', 'edyth.zemlak@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'QsZtCdyGVS', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(55, 'Dr. Jonas Ward Jr.', 'damaris12@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'J3AH6HkjyM', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(56, 'Mr. Ruben Pfeffer', 'rlynch@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'N5u1RF2myl', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(57, 'Mckenna Sawayn', 'jordane.prohaska@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'hnngDBmQ1B', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(58, 'Ms. Earlene Walter III', 'marge.dibbert@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'NFEcTrGfEx', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(59, 'Shanna Blick', 'aiden84@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'lAlFTnXY47', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(60, 'Scot Haag', 'kian71@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'VaW7ZHdBz4', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(61, 'Martine Kirlin', 'sanford.devan@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'Sns3bMcWag', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(62, 'Delilah Christiansen', 'clarabelle.runolfsson@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'eGBLXHSxJj', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(63, 'Carter Mayer', 'garnet35@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 't9NPo8MjsK', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(64, 'Prof. Gennaro Gaylord', 'abraham72@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'vtC4khhhle', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(65, 'Arlo Grady Sr.', 'pansy.tromp@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'nScvJ0Ps0D', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(66, 'Prof. Darius Hills DDS', 'rafael84@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'PqgOQ8kjpS', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(67, 'Prof. Jadyn Gusikowski V', 'ullrich.esmeralda@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'rBsRMdkTl6', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(68, 'Dillon Kilback', 'mlang@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'lFTeUWEs6O', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(69, 'Mrs. Laurine Kuhic Sr.', 'christa.ernser@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'NajYltC1wE', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(70, 'Marion Kreiger III', 'una.kassulke@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'VLJJ4xmBG9', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(71, 'Garrett Deckow', 'roxanne.torphy@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'IGd3vcEESM', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(72, 'Prof. Sophia Lemke DVM', 'ieffertz@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'kjtEnuakEX', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(73, 'Holden Hartmann', 'zkiehn@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'rz7OrS0gYk', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(74, 'Kavon Stark', 'liza79@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'lS1hkzNWMT', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(75, 'Carmen Rau MD', 'qcollins@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '9t8t0zwlJS', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(76, 'Mr. Quinn Bradtke', 'botsford.darwin@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'NiLDXyae1D', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(77, 'Liana Ullrich', 'lois.streich@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'glljoQ4fJj', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(78, 'Monroe Witting MD', 'zlueilwitz@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'irKMtJXkz4', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(79, 'Ms. Zoila Sipes DDS', 'zcrist@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '0SZeEj62Rj', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(80, 'Prof. Jacky Schiller IV', 'zupton@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'FJW3BsYidH', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(81, 'Aric Langworth', 'pdoyle@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'soS74N2wLL', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(82, 'Queenie Thiel PhD', 'borer.emelia@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'ro8oo2p18G', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(83, 'Donavon Crist DVM', 'hoyt.zulauf@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'qC3igTp6LQ', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(84, 'Sammy Gislason', 'alene23@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'qkHrxxPsad', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(85, 'Jonathon Nolan', 'ejast@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'emfaHI4GBW', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(86, 'Carson Kutch IV', 'letha73@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '3cETw9mBlu', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(87, 'Wiley Jaskolski', 'ned.rippin@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'NDjEumRPAT', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(88, 'Moshe Abshire V', 'evelyn33@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'XqY3LptyI8', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(89, 'Prof. Kraig Stark DDS', 'damion.wuckert@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'nZWrDbw3De', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(90, 'Loraine Emard', 'augusta23@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'fUj7xM4XS8', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(91, 'Keven Toy DVM', 'cecil92@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'RhZcaZ43ry', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(92, 'Gayle Cruickshank Sr.', 'lavonne.hills@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'O6idxFufIZ', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(93, 'Ms. Andreane Goyette DVM', 'bergnaum.wade@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'x5m8NULDYu', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(94, 'Nannie Boyer', 'moreilly@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '69XnFxZpzy', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(95, 'Dr. Junius Nitzsche', 'sage26@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'OQQy0pKKQv', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(96, 'Dr. Armand Cruickshank', 'marks.coty@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'lafSTOlQxH', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(97, 'Prof. Kennith Beahan PhD', 'maia.emard@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '2i2iWbyx6R', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(98, 'Dr. Keenan Krajcik PhD', 'odell87@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '6pQjhBzHPz', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(99, 'Cleve Murphy', 'kwillms@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'SXGFDFkIyX', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(100, 'Dr. Irma West Sr.', 'little.joelle@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'jgP9H8Zuwy', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(101, 'Annie Kozey', 'dimitri74@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'wvxAxfTipG', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(102, 'Alayna Cruickshank', 'myrtie51@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '4W13yNjOQj', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(103, 'Nash Prosacco', 'norma32@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'dknhS6c92p', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(104, 'Cloyd Nolan', 'dahlia37@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'KtvYjkNQK2', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(105, 'Keith Pouros DVM', 'oran.hagenes@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'SGFDZjgrZj', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(106, 'Theodore Emmerich MD', 'corbin.wilderman@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'DlTzafdWCQ', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(107, 'Andres Kovacek', 'gillian.schmitt@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'ivbdT8FKp3', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(108, 'Sabina Lindgren', 'bhuels@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '9rBfoIVe6Q', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(109, 'Dr. Norris Kiehn II', 'elmo.macejkovic@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'QJPUvXC58i', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(110, 'Sonia Becker', 'shanie.hartmann@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'yH3nDWckTf', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(111, 'Prof. Bianka Labadie', 'friesen.tamara@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'pgYwoRbMfm', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(112, 'Mrs. Otha Sipes', 'mitchell.zachariah@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '4gULdUubxq', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(113, 'Skye Hilpert DVM', 'iroberts@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'eGUP4wtHpF', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(114, 'Mr. Enoch Wiza Sr.', 'krista.murray@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'R5ynspPvxy', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(115, 'Nathanial Davis MD', 'jakubowski.princess@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'b8gZMiiljs', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(116, 'Erin Gulgowski', 'lledner@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'CXxkNBc72j', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(117, 'Mr. Regan Hettinger', 'brandyn.renner@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'YAjF0u0509', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(118, 'Mariana Mann', 'doris.kozey@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'vP3gSKxf7v', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(119, 'Aleen Leffler', 'arthur.doyle@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'jWNq1ROHey', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(120, 'Rahul Ferry', 'candida.nolan@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '5k4vW5epbj', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(121, 'Daisha Price V', 'kbode@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'a32eh7jVrc', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(122, 'Dr. Giovani Macejkovic', 'legros.denis@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'kNpa94DxaN', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(123, 'Dr. Gladys Harvey IV', 'jeanie54@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'T35KUl4t6Q', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(124, 'Shyann Gerhold', 'trevion.stiedemann@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'Y1wQjQ9IY2', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(125, 'Laury Watsica', 'schuppe.newton@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'JkDXv3ozqv', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(126, 'Eryn Moen', 'sierra.hirthe@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '7d8zavMQ2h', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(127, 'Demario Greenfelder', 'cbeahan@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'U8cqFd1SZw', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(128, 'Dr. Kelly Gottlieb III', 'baufderhar@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'nHzV2cTaPe', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(129, 'Madisen Roberts', 'jstokes@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'rddqxb6ORd', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(130, 'Kelton Cassin', 'miller.violette@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'xpHL5AU3I5', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(131, 'Felicity Emard', 'nterry@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'SEpB1rMDd2', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(132, 'Alana Fahey', 'vance.torphy@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'jH3faTWNY1', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(133, 'Prof. Maureen Towne', 'koelpin.juliana@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'LtqJiLd2cF', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(134, 'Roselyn Schaden', 'margie.kshlerin@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'KNP83XdUU7', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(135, 'Miss Abbey Greenholt II', 'horace32@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '78jSt2w5Z8', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(136, 'Electa Schimmel', 'carli09@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'D3eGNz4Pdd', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(137, 'Markus Kohler', 'nelda11@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'rwIq2BR0IO', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(138, 'Delta Torphy DDS', 'xrunolfsson@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'zNQqd8kXAP', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(139, 'Mr. Marcel Larkin II', 'wisoky.cynthia@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'ELZqDx2sR7', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(140, 'Prof. Esta Runolfsdottir Sr.', 'dannie26@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '49fySCpH5o', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(141, 'Jimmy Halvorson', 'orippin@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'pkjjt7Diii', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(142, 'Anjali Waters III', 'alvera32@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'Y14Iq91mdl', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(143, 'Prof. Cory Davis', 'edgardo93@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '13F178v2RN', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(144, 'Mrs. Patricia Fahey', 'deckow.jeremy@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'jZKFCFC2xQ', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(145, 'Justina Quitzon', 'trace79@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'qfDTUGdfnC', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(146, 'Nelson Okuneva', 'juliana76@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'L5r8KTAXBk', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(147, 'Liza Padberg', 'reed.rau@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'YWhrzWsspB', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(148, 'Maymie Emard', 'uhettinger@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'KJYCNDPjBa', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(149, 'Dr. Deion Stamm', 'koby30@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'lBULRCWg3d', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(150, 'Kaden Simonis', 'crenner@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '9laPRQLKu9', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(151, 'Mr. Clemens Torp', 'harris.pearlie@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'hFrQzZQLnF', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(152, 'Floy Zieme', 'klein.gisselle@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'fSAW35YCSF', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(153, 'Jerald Block', 'maci94@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '7CqzwfBeOj', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(154, 'Mr. Trever Graham DVM', 'gjacobi@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'DrlfYiKjM5', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(155, 'Alexzander Blanda', 'hlang@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'knzaZcmsGJ', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(156, 'Jaylen Nolan', 'manuela62@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '5fu0IXZl8J', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(157, 'Dr. Scot Howe', 'clovis.pacocha@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'bX47mtDWi6', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(158, 'Kellen Willms', 'chelsie06@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'ltW4xh0vd3', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(159, 'Joshuah Koss', 'kari.brakus@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '90AJyU8vd5', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(160, 'Rosalia Windler IV', 'gisselle95@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'EwA7n3u2zx', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(161, 'Karlee Toy Jr.', 'ubahringer@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'VCptv3kXTY', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(162, 'Carmel Wehner', 'stark.lew@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'iWL0Fu67tt', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(163, 'Mr. Sonny Monahan', 'blair.rippin@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'd1p5If7kSt', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(164, 'Woodrow Hoppe', 'qhettinger@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'ugx8lCqF7f', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(165, 'Ivah Block', 'gladyce.mohr@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'cM6EujgV9O', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(166, 'Dr. Althea Littel IV', 'ulindgren@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'NDacNJJKtE', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(167, 'Mrs. Annamae McCullough', 'iluettgen@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'ZhDjHpoJuN', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(168, 'Roxanne Rice', 'ereynolds@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'oLmcQMITnW', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(169, 'Calista Steuber IV', 'delbert23@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'VK6xYXtpHn', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(170, 'Prof. Daphnee Lemke IV', 'cruickshank.demetrius@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '7Xx7KZUyBV', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(171, 'Holly Will', 'trace51@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'fmPF2oFe1H', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(172, 'Miss Cheyanne Leannon PhD', 'psporer@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '4eBhvgQZBf', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(173, 'Warren Metz', 'faye22@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'sjlgqpP7GW', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(174, 'Patricia Turner IV', 'ullrich.luisa@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'Mcl38UToiU', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(175, 'Carolina Price', 'balistreri.aletha@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'R5aAliCkQp', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(176, 'Ms. Deanna Hand', 'burley09@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'VjkswHiNUk', '2025-07-19 12:30:25', '2025-07-19 12:30:25'),
(177, 'Niko Balistreri', 'orland.jaskolski@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '9fLKFwGuI7', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(178, 'Rosella Rippin', 'wstracke@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'R26ofy13J7', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(179, 'Lexie O\'Connell', 'orval.howe@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'wdjALsp7Qh', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(180, 'Eryn Shields V', 'ashtyn.little@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'qIwLvG8G26', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(181, 'Dr. Daniella Herzog', 'gabe.lynch@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'AYU9bgtbZT', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(182, 'Godfrey Medhurst', 'ohowe@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'vdluUOh8ch', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(183, 'Prof. Jaquan Hammes DVM', 'annamarie34@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'QPKtcqQVv2', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(184, 'Dr. Darian Bradtke', 'jaron.bahringer@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'JvWX7JjBXb', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(185, 'Vivienne Becker', 'angelo.dicki@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'p4AfasqmLX', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(186, 'Melvina Ankunding', 'eldora.lockman@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'HWI1MTajWo', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(187, 'Reginald Smitham DDS', 'elaina.hackett@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'NWE3fOQbO1', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(188, 'Etha Kub', 'nathanael.kutch@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'xH9gAlSkmc', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(189, 'Dr. Cassandra Lang Jr.', 'whayes@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'znrpJ4PuFg', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(190, 'Prof. Mazie Gutkowski PhD', 'fadel.bernhard@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'tbrid7iCku', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(191, 'Johnpaul Gusikowski', 'alexandro.zemlak@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '5y8OACMF77', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(192, 'Koby Pacocha', 'rbernier@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '7Vw5ppFLVJ', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(193, 'Jeffery Kulas', 'farrell.carleton@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'PNxgVBj8l0', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(194, 'Alan Medhurst', 'ali.thompson@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'Khr1u9xr43', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(195, 'Ava Weissnat', 'isidro78@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'YmuyPqOj0m', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(196, 'Antonette Schinner', 'wkunde@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'tLhbY6kXVU', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(197, 'Mr. Rosendo Kautzer', 'dino.pollich@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '8GvbsZWdAe', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(198, 'Aisha Kuhic', 'mckenzie.milan@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'XnKdqkpZvJ', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(199, 'Miss Laila Feest', 'toy73@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '3DDwTjt5Yu', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(200, 'Federico Lebsack', 'christy.cormier@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '82VDOFXaKj', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(201, 'Tod Cronin IV', 'gborer@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '0hgRACkiIa', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(202, 'Prof. Enrico Kertzmann', 'iva92@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'suXUJbDrPS', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(203, 'Samir Halvorson', 'julianne85@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'XnChTcDkmN', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(204, 'Lea Crist', 'metz.celestine@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'd8h563wP4q', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(205, 'Ms. Ava Schmeler Jr.', 'fadams@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'Ch2OSw6qb7', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(206, 'Efrain Ratke', 'kelsi51@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'Yt3iKMap5e', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(207, 'Karina Borer', 'meaghan62@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '59lGvkCq97', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(208, 'Lambert Cummerata', 'uquigley@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'vsy8sNetFJ', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(209, 'Johnny Zemlak Jr.', 'fay.jessika@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'D3w6HUhuHA', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(210, 'Mrs. Tiana Bergstrom', 'bschinner@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'LfSj5tI6kM', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(211, 'Marcelle Lubowitz', 'holly.hickle@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'kxNzlZWfWl', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(212, 'Dr. Gino Lehner', 'beichmann@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'k663qvFrZY', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(213, 'Dr. Sasha Labadie IV', 'zbayer@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'UejwWWg2Xw', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(214, 'Talia Glover', 'aschmidt@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'mGW4w36brd', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(215, 'Ruby Gusikowski', 'anya.flatley@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'VCnp45f2PT', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(216, 'Dr. Jaclyn Kohler', 'okon.august@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'zW2qzVIaxk', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(217, 'Dr. Jared Roob DDS', 'ressie.watsica@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'mKIt4LeGHj', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(218, 'Kayley Doyle', 'twilliamson@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '0rOyypYm21', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(219, 'Dr. Dwight Tillman', 'fquitzon@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'E6domqAEl5', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(220, 'Prof. Adriana Wunsch III', 'emard.mason@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '0ZKLCDnbwC', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(221, 'Darion Bartell', 'susan61@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'U0W7qlW2fV', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(222, 'Braxton Ankunding', 'lue.fahey@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'rSx5UPZjqU', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(223, 'Heber Koepp', 'nicolette.kautzer@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'Dy1llPualX', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(224, 'Deon Wiegand', 'nico.mckenzie@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'I3tSeyi30o', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(225, 'Carole Yost', 'zion61@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '1uWXIf4S8l', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(226, 'Mrs. Linnie Rowe', 'hartmann.jayne@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'C0Ej8DmA1W', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(227, 'Jillian Bayer Jr.', 'natalie33@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'NryEGDEXS0', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(228, 'Ms. Roberta Kunze III', 'presley60@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'FOAOI2dzn1', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(229, 'Dr. Lavinia Beier I', 'bernita47@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'uNO0x5XVbf', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(230, 'Peggie Collier', 'predovic.beulah@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'hBo1aoJdiv', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(231, 'Ms. Jana Weimann DVM', 'kmayer@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '1FqC0inEUP', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(232, 'Meghan Roob', 'devan.oreilly@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'ONXQ0A0CjM', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(233, 'Kyler Nikolaus', 'maurine.walker@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'oDEYCdI5Vr', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(234, 'Jacky Donnelly', 'britney.anderson@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'JFZ3TWDBxU', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(235, 'Marquis Hackett', 'zakary74@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'Z67vpE6CEa', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(236, 'Mrs. Leann Kihn I', 'jaleel98@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '1lfgKGJdlP', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(237, 'Mr. Reilly Armstrong II', 'xabshire@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'iUOuRYaRst', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(238, 'Dr. Tyree Vandervort Sr.', 'avis97@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'haQ3uN8LtS', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(239, 'Jadon Spinka', 'ddaugherty@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '8gCdKKwOF0', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(240, 'Orie Kozey', 'eichmann.kailee@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'pYYYp1CL6z', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(241, 'Rene Rice', 'linnea76@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'DX9Hz6kCnp', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(242, 'Salvador Brakus', 'wsanford@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'rKDLeMTJgZ', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(243, 'Herbert Metz', 'jones.rupert@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'q5u4dHyI1R', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(244, 'Deangelo Becker', 'gbradtke@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'MSXk05g7Tj', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(245, 'Charlie Stiedemann', 'ashtyn.hirthe@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'xhHKwkF9UA', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(246, 'Korbin Nader', 'damien.west@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'tBeLY5oG9V', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(247, 'Jamal Schneider DDS', 'oabshire@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'mPRfjfpLjx', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(248, 'Stanford Marks I', 'kristoffer.farrell@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'k9QBLYK0tw', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(249, 'Torrey Corkery', 'reuben08@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'Ck0u4ztPoL', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(250, 'Magnolia Haley', 'agustina.ferry@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'S0k7NmtenA', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(251, 'Dr. Jayden Doyle', 'windler.vicenta@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'luQnk5IhtR', '2025-07-19 12:30:26', '2025-07-19 12:30:26');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(252, 'Mrs. Clemmie Nolan V', 'cayla.abernathy@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'orex1lye1y', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(253, 'Bonnie Steuber', 'jalyn87@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'wX2zH9WzfI', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(254, 'Dr. Alford Feest', 'hermiston.casey@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'Ovy36UHNi0', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(255, 'Melissa Bergnaum', 'nedra.vandervort@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'BA0xEDxf3Q', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(256, 'Prof. Ernest Bosco', 'vidal81@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'oTWBfaULl8', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(257, 'Wilton Beatty', 'ethiel@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'Dg5RS3CXxp', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(258, 'Olga Zemlak', 'jazlyn.oreilly@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'cW2ppkthN1', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(259, 'Presley Jakubowski', 'pearl.pfannerstill@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'z4fnGks62z', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(260, 'Emily Simonis', 'emmy.runolfsson@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'h1Fqxv03vU', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(261, 'Dr. Leora Shields DDS', 'javier.kirlin@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '9ZEpsKXJSA', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(262, 'Ms. Tiffany Bechtelar V', 'hudson15@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'K0k7SGp2b9', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(263, 'Mr. Fermin Baumbach III', 'wolf.augustus@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'UpXLY9Ys45', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(264, 'Deion Pollich', 'tierra.hirthe@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'ROMYVB1N2i', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(265, 'Beau Cummerata', 'osinski.enola@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'SpjZg6Vv4n', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(266, 'Ulises O\'Keefe', 'keagan99@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '2T5crfTHH6', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(267, 'Fredy Green', 'jheathcote@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'sTu271eQoD', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(268, 'Adelia Heller', 'hank.donnelly@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '35IStfOGJk', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(269, 'Isaias Streich', 'mandy.yundt@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'sWMVv1abOY', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(270, 'Shawna Hackett', 'annabell.gulgowski@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'j8TMJkkZLZ', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(271, 'Prof. Weldon Gerlach Jr.', 'xfunk@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'KQbscYVeCH', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(272, 'Miss Rosamond Rodriguez III', 'mayert.erwin@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'OO0qMwSL6z', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(273, 'Felicity Beahan', 'lucie70@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'ZBvF2Bxd9D', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(274, 'Delaney Mitchell', 'kupton@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'NZpYNDutg2', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(275, 'Paris Kovacek', 'romaine07@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'O390RHpotd', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(276, 'Lexi Greenholt', 'sierra.sanford@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'iAFndXebos', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(277, 'Logan Abernathy', 'brown.jayda@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'xS71yemTAZ', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(278, 'Lance Dibbert', 'sawayn.mylene@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'AimJxusj7x', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(279, 'Abner Ritchie', 'oschmitt@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'vkK7Eu2SbF', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(280, 'Devonte Nader', 'audie79@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'xPA9OEapYj', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(281, 'Jovanny Stroman', 'nicolas.vincenzo@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'W8h0yRUs30', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(282, 'Ms. Hailie McLaughlin DVM', 'madelynn.gerhold@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'BFHG6KBo8q', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(283, 'Miss Shanel Grady', 'chanel.damore@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'IjU2v7Wfoj', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(284, 'Lillian Gleason', 'helena70@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'YzuG5KkpjA', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(285, 'Britney Rempel', 'bartell.helmer@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'RgnsBe63Vl', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(286, 'Dorian Kemmer', 'tillman.brandy@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'S6kWpnZMMP', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(287, 'Arden Pacocha', 'raquel15@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'NOPgnD96Y8', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(288, 'Mariano Buckridge', 'bernier.myra@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'IqZSUc3lwF', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(289, 'Chloe Donnelly', 'kunze.adelia@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '5RC1sGoCcr', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(290, 'Daren Funk', 'selmer.mraz@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '98z2owoIvk', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(291, 'Reuben Padberg I', 'schumm.misael@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'e3mpe11zGk', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(292, 'Norberto Durgan', 'bweber@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', '6QuwA4Vxgg', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(293, 'Rhianna Fay PhD', 'flavie.yundt@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'K97qVwlScj', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(294, 'Bettye Wiegand DDS', 'mathilde66@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 't2iehBMDGS', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(295, 'Prof. Jordane Beier', 'vmarquardt@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'R6L96cbVSr', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(296, 'Prof. Watson Rau', 'nyah.morissette@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'p1zdWVIPvv', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(297, 'Prof. Ashley Stanton', 'bryon64@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'VW1gx8d1mO', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(298, 'Finn Bashirian', 'mya07@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'fZyVoFXxTT', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(299, 'Jevon Spencer', 'ucummings@example.net', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'DCN3vQwPrK', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(300, 'Dr. Amya Conn', 'ywunsch@example.org', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'cULoULiOU1', '2025-07-19 12:30:26', '2025-07-19 12:30:26'),
(301, 'Tina Stark', 'zauer@example.com', '2025-07-19 12:30:24', '$2y$12$rrFLrGMwhBr.bI0Uyy5nL.Hlu790qzh6o8ae7ThKIY75K63cQabEW', 'vwV4gHEzEC', '2025-07-19 12:30:26', '2025-07-19 12:30:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employers_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_employer_id_foreign` (`employer_id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_applications_user_id_foreign` (`user_id`),
  ADD KEY `job_applications_job_id_foreign` (`job_id`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employers`
--
ALTER TABLE `employers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=605;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employers`
--
ALTER TABLE `employers`
  ADD CONSTRAINT `employers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_employer_id_foreign` FOREIGN KEY (`employer_id`) REFERENCES `employers` (`id`);

--
-- Constraints for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD CONSTRAINT `job_applications_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`),
  ADD CONSTRAINT `job_applications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
