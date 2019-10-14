-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2019 at 02:37 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data2`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_id` binary(16) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `accessed` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `email`, `password`, `created`, `accessed`, `updated`, `active`) VALUES
(0xa17df61a05ee32b40ed764db6d23f35f, 'website@gmail.com', '$2y$10$4BMhEBu6etBBPa3cAsbj9OVjCjfJ8I3bhQaeii22/9IYpYR2akq6C', '2019-09-12 09:58:22', '2019-09-12 09:58:22', '2019-09-12 09:58:22', 1),
(0xe37a11a3ed7eac576c2b03431d415c2c, 'aneesh@gmail.com', '$2y$10$usgQ8ZVQ/QI3pys78jILeO/a9lqcr/j34zPRzGRxzvF4g2niURW/O', '2019-09-12 09:57:53', '2019-09-12 09:57:53', '2019-09-12 09:57:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(32) NOT NULL,
  `category_description` varchar(128) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`, `active`, `created`, `updated`) VALUES
(1, 'LAPTOPS', 'items in the things category', 1, '2018-10-08 03:07:02', '2018-10-08 03:06:14'),
(3, 'WAREABLE', 'items in the stuff category', 1, '2018-10-08 03:08:12', '2018-10-08 03:08:12'),
(4, 'MOBILE', 'items in the doovers category', 1, '2018-10-08 03:08:12', '2018-10-08 03:08:12'),
(5, 'GAMING', 'items in the objects category', 1, '2018-10-08 03:10:01', '2018-10-08 03:10:01'),
(6, 'HEADPHONES', 'items in the doohickies category', 1, '2018-10-08 03:10:01', '2018-10-08 03:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_id` int(11) NOT NULL,
  `image_file_name` varchar(256) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `caption` varchar(128) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_id`, `image_file_name`, `date_added`, `caption`, `active`) VALUES
(1, 'acer1.jpg', '2017-12-06 23:24:05', '', 1),
(2, 'vivo2.jpg', '2017-12-06 23:24:05', '', 1),
(3, 'Air3.jpg', '2017-12-06 23:24:58', '', 1),
(4, 'razer4.jpg', '2017-12-06 23:24:58', '', 1),
(5, 'hp5.jpg', '2017-12-06 23:25:38', '', 1),
(6, 'msi6.jpg', '2017-12-06 23:25:38', '', 1),
(7, 'watch1.jpg', '2017-12-06 23:26:00', '', 1),
(8, 'watch2.jpg', '2017-12-06 23:26:00', '', 1),
(9, 'watch3.jpg', '2017-12-06 23:26:29', '', 1),
(10, 'watch4.jpg', '2017-12-06 23:26:29', '', 1),
(11, 'watch5.jpg', '2017-12-06 23:26:52', '', 1),
(12, 'watch6.jpg', '2017-12-06 23:26:52', '', 1),
(13, 'mob1.jpg', '2017-12-06 23:29:15', '', 1),
(14, 'mob2.jpg', '2017-12-06 23:29:15', '', 1),
(15, 'mob3.jpg', '2017-12-06 23:29:37', '', 1),
(16, 'mob4.jpg', '2017-12-06 23:29:37', '', 1),
(17, 'mob5.jpg', '2017-12-06 23:29:37', '', 1),
(18, 'mob6.jpg', '2017-12-06 23:29:37', '', 1),
(19, 'Ps4.jpg', '2017-12-06 23:29:37', '', 1),
(20, 'ps4Pro.jpg', '2017-12-06 23:29:37', '', 1),
(21, 'NitendoLite.jpg', '2017-12-06 23:29:37', '', 1),
(22, 'XboxOneS.jpg', '2017-12-06 23:29:37', '', 1),
(23, 'XboxOneX.jpg', '2017-12-06 23:29:37', '', 1),
(24, 'Switch.jpg', '2017-12-06 23:29:37', '', 1),
(25, 'head1.jpg', '2017-12-06 23:29:37', '', 1),
(26, 'head2.jpg', '2017-12-06 23:29:37', '', 1),
(27, 'head3.jpg', '2017-12-06 23:29:37', '', 1),
(28, 'head4.jpg', '2017-12-06 23:29:37', '', 1),
(29, 'head5.jpg', '2017-12-06 23:29:37', '', 1),
(30, 'head6.jpg', '2017-12-06 23:29:37', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL COMMENT 'page id',
  `name` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `menu` varchar(64) NOT NULL,
  `menu_order` int(2) NOT NULL DEFAULT 0,
  `level` int(1) NOT NULL DEFAULT 0,
  `content` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`page_id`, `name`, `url`, `menu`, `menu_order`, `level`, `content`, `active`) VALUES
(1, 'Welcome to the shop', 'index.php', 'Home', 1, 1, 'Welcome to our shop. Buy stuff here.', 1),
(2, 'Log in to your account', 'login.php', 'Login', 2, 0, 'Log in to your account. If you don\'t have an account you can register <a href=\"/register\">Here</a>', 1),
(3, 'Register for a free account', 'register.php', 'Register', 3, 0, 'Register for a free account. Already have an account? Log in <a href=\"/login\">here</a>', 1),
(4, 'Your Account Details', 'account.php', 'Account', 4, 2, 'Your account details.', 1),
(5, 'Log out of your account', 'logout.php', 'Logout', 6, 2, 'Sign out of your account', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(24) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `onspecial` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `name`, `description`, `price`, `onspecial`, `active`, `created`, `modified`) VALUES
(1, 'Acer Aspire 5', 'AMD Ryzen 3 3200U Dual-Core Processor (Up to 3.5GHz) | 4GB DDR4 Memory | 128GB PCIe NVMe SSD\r\n15.6\" Full HD (1920 x 1080) Widescreen LED-backlit IPS Display | AMD Radeon Vega 3 Mobile Graphics\r\n1 - USB 3.1 Gen 1 Port, 2 - USB 2.0 Ports & 1 - HDMI Port with HDCP support\r\n802.11ac WiFi | Backlit Keyboard | Up to 7.5 Hours Battery Life\r\n', '600.00', 0, 1, '2017-01-23 12:17:33', '2017-01-23 12:17:33'),
(2, 'ASUS VivoBook S15 ', 'Bold and expressive Icicle Gold Chassis\r\nIntel Core i5-8250U processor 1.6Ghz (up to 3.4Ghz)\r\n15.6” FHD WideView Display with NanoEdge Bezel\r\n8GB DDR4 RAM\r\n256GB SSD\r\nExclusive ErgoLift hinge automatically tilts the keyboard up to 3.5° for a more comfortable typing position\r\n', '1400.00', 0, 1, '2017-01-23 12:19:00', '2017-01-23 12:19:00'),
(3, 'MacBook Air ', 'New - Brand New / Sealed / Warranty: 24 Months(AU)\r\nModel: A1932 | Screen: 13.3 inches, 2560x1600 pixels | RAM: 8GB RAM | Storage: 128GB\r\nCPU: 8th Gen 1.6GHz dual-core Intel Core i5-8210Y (null) | Battery: null | NFC: | Connector Type: Type-C\r\nNetwork Lock: Unlocked | Network ', '1400.00', 0, 1, '2017-01-23 12:19:00', '2017-01-23 12:19:00'),
(4, 'Razer Blade Stealth ', 'Razer Blade Stealth 13 (L1P/13.3\" FHD Matte/i7-8565U/MX150 4GB/16GB RAM/256GB SSD PCIe/1.31KG) - Quartz', '2100.00', 0, 1, '2017-01-23 12:19:08', '2017-01-23 12:19:08'),
(5, 'HP EliteBook ', 'An ultra-slim design, AMD processor, and powerful viewing experience combined in a beautiful, finely-engineered package.\r\nThe stylish, precision-crafted, machined-aluminum cover in natural silver provides a premium look and feel.\r\nTake on your work with a powerful, highly secure, and reliable AMD Ryzen PRO processor.\r\n\r\n', '850.00', 0, 1, '2017-01-23 12:24:09', '2017-01-23 12:24:09'),
(6, 'MSI GL63 ', 'Processor: 8th Gen Intel Core i7-8750H processor, 2.20GHz base processor speed, 6-core\r\nOperating System: Windows 10 Home\r\nDisplay: 15.6-inch Full HD (1920x1080) display\r\nMemory, Graphics & Storage: 16GB DDR4 RAM, expandable to 32GB, with GeForce GTX 1050 with 4GB GDDR5 Graphics | Storage: 1TB HDD + 128GB SSD\r\n\r\n\r\n', '1900.00', 0, 1, '2017-01-23 12:25:41', '2017-01-23 12:25:41'),
(7, 'Ticwatch E Shadow ', 'Android Wear 2.0. Get your favorite apps and watch faces. Request a car ride. Perfect your golf swing. Explore a new neighborhood. With thousands of Android Wear apps, there\'s no limit to what you can do with your Ticwatch E.\r\n•Get your information at a glance. Check what’s important–like calls, text, and alerts–just like you check time.Enjoy your music right from wrist.Use many different apps like Google Play Music, Spotify, and Shazam (Android Only).\r\n', '220.00', 0, 1, '2017-01-23 12:25:42', '2017-01-23 12:25:42'),
(8, 'Samsung Galaxy Watch ', 'Select from more than 40 different workouts, so you can establish healthy habits.\r\nDesigned for an active lifestyle with swim proof features.\r\nMake every minute of your day count with call, text, e-mail, and exercise notifications (1).\r\nSync and save your favorite playlists with the pre-loaded Spotify app (2).\r\nPay on the go with Samsung pay. Includes 2 year manufacturer warranty.\r\n', '420.00', 0, 1, '2017-01-23 12:27:56', '2017-01-23 12:27:56'),
(9, 'Apple Watch Series 4 ', 'Automatic workout detection. Yoga and hiking workouts. Advanced features for runners, like cadence and pace alerts. See up to five metrics at a glance as you precisely track all your favourite ways to train.\r\nThe largest Apple Watch display yet. Electrical heart sensor. Re-engineered Digital Crown with haptic feedback. Entirely familiar yet completely redesigned, Apple Watch Series 4 resets the standard for what a watch can be.\r\n', '600.00', 0, 1, '2017-01-23 12:27:57', '2017-01-23 12:27:57'),
(10, 'Fitbit Versa Smart ', '4+ day battery life\r\nStore and play 300+ songs\r\nOn-screen coaching\r\nWorks with Google Assistant\r\n', '320.00', 0, 1, '2017-01-23 12:28:00', '2017-01-23 12:28:00'),
(11, 'Garmin Vivomove ', '24/7 heart rate monitoring with Elevate™ wrist heart rate technology\r\nVO2 Max and Fitness Age Monitoring Tools\r\nUp to 2 weeks battery life in watch mode\r\n\r\n', '360.00', 0, 1, '2017-01-23 12:28:01', '2017-01-23 12:28:01'),
(12, 'Misfit Vapor 2 ', 'Untethered GPS\r\nSwim Proof (50M)\r\nNFC payment\r\nHeart Rate', '390.00', 0, 1, '2017-01-23 12:28:02', '2017-01-23 12:28:02'),
(13, 'Moto G7 ', '6.2\" Full HD+ Max Vision Display\r\n16 MP + 5 MP dual camera system\r\n12MP Front Camera\r\n64GB Inbuilt Memory\r\nCompensate for low-light with a screen flash that triggers automatically for bright, clear selfies\r\n', '353.00', 0, 1, '2017-01-23 12:28:03', '2017-01-23 12:28:03'),
(14, 'Samsung Galaxy S9 ', 'Samsung Galaxy S9 has a superb primary camera of 12 MP ( f/1.5-2.4, 26mm, 1/2.5?, 1.4 µm, Dual Pixel PDAF) , phase detection autofocus , OIS , LED flash.\r\nThe phone comes superb selfies and it has a flash that enables you to take wonderful photos in low light conditions .\r\n', '819.00', 0, 1, '2017-01-23 12:29:00', '2017-01-23 12:29:00'),
(15, 'Apple iPhone Xs ', 'Model: A2101 | Screen: 6.5 inches, 1242 x 2688 pixels | RAM: 4GB RAM | Storage: 512GB\r\nCPU: Hexa-core (Apple A12 Bionic) | Battery: 3174 mAh | NFC: Yes | Connector Type: Lightning\r\nNetwork Lock: Unlocked | Network Branding: Unbranded\r\n', '2276.00', 0, 1, '2017-01-23 12:29:01', '2017-01-23 12:29:01'),
(16, 'Samsung Galaxy Note10+ ', 'Long lasting 4, 300mAh (typical) battery and 45W Super-fast Charging 2.0(1)\r\nQuad Rear Camera (12MP+12MP+16MP+3D Depth) with Live Focus Video\r\nLarge 6.8\" QHD+ Dynamic AMOLED Infinity-O Display(2)\r\n256GB on board storage and up to 512GB microSD support(3)\r\n', '1651.00', 0, 1, '2017-01-23 12:29:40', '2017-01-23 12:29:40'),
(17, 'Oppo R15 ', 'New - Brand New / Sealed / Warranty: 24 Months(AU)\r\nModel: CHP1835 | Screen: 6.28 inches, 1080 x 2280 | RAM: 6GB RAM | Storage: 128GB\r\nCPU: Octa-core (4x2.0 GHz Cortex-A73 & 4x2.0 GHz Cortex-A53) (Mediatek MT6771 Helio P60) | Battery: 3450 mAh | NFC: No | Connector Type: Micro-USB\r\nNetwork Lock: Unlocked | Network Branding: Unbranded\r\n', '435.00', 0, 1, '2017-01-23 12:29:41', '2017-01-23 12:29:41'),
(18, 'HUAWEI P30 Pro ', 'Leica Quad Main Camera | 40MP + 20MP + 8MP + TOF cameras\r\nThe Leica quad camera and the latest light fusion sensor technology create breathtaking photos in extreme low light and night time conditions\r\n', '1199.00', 0, 1, '2017-01-23 12:29:43', '2017-01-23 12:29:43'),
(19, 'PS4 PlayStation 4 1TB ', 'Store your games, apps, screenshots and videos with 500GB and 1TB models – slimmer and lighter than the original PS4 model and available in Jet Black, Glacier White and now stunning Gold and Silver.', '399.00', 0, 1, '2017-01-23 12:30:25', '2017-01-23 12:30:25'),
(20, 'PS4 PlayStation 4 Pro ', 'Dynamic 4K gaming and 4K entertainment\r\nHigh Dynamic Range for intensely vibrant colours\r\nDouble the GPU power of the standard PS4\r\n\r\n', '498.00', 0, 1, '2017-01-23 12:30:26', '2017-01-23 12:30:26'),
(21, 'Nintendo Switch Lite ', 'CPU/GPU: Custom Nvidia Tegra processing\r\nRAM: Thought to be 4GB like the Switch, but unconfirmed\r\nStorage: 32GB - upgradeable by microSD card\r\nConnections: Wi-Fi (802.11ac), Bluetooth 4.1, NFC, USB-C (charging-enabled)\r\nTouchscreen: 5.5-inches, 1280x720 resolution, LCD\r\n', '299.00', 0, 1, '2017-01-23 12:36:42', '2017-01-23 12:36:42'),
(22, 'Xbox One S 1TB Console', 'High Dynamic Range - Brilliant graphics with High Dynamic Range\r\n4K Resolution - Ultra HD Blu-ray™ and video streaming\r\n4K Streaming - Stream 4K Ultra HD video on Netflix.\r\n', '349.00', 0, 1, '2017-01-23 12:36:52', '2017-01-23 12:36:52'),
(23, 'Xbox One X ', 'Games play better on Xbox One X. Experience 40% more power than any other console.\r\n6 teraflops of graphical processing power and a 4K Blu-ray player provide more immersive gaming and entertainment\r\n\r\n\r\n', '589.00', 0, 1, '2017-01-23 12:36:55', '2017-01-23 12:36:55'),
(24, 'Nintendo Switch ', 'Size: Approximately 4 inches high, 9.4 inches long, and 0.55 inches deep (with Joy-Con attached)\r\n*The depth from the tip of the analog sticks to the tip of the ZL/ZR buttons is 1.12 inches\r\nWeight: Approximately .66 lbs\r\n(Approximately .88 lbs when Joy-Con controllers are attached)\r\nScreen: Multi-touch capacitive touch screen / 6.2-inch LCD Screen / 1280 x 720\r\nCPU/GPU: NVIDIA Custom Tegra processor\r\n', '499.00', 0, 1, '2017-01-23 12:36:59', '2017-01-23 12:36:59'),
(25, 'Sennheiser MOMENTUM Wire', 'Auto On/Off and Smart Pause\r\nActive Noise Cancellation and Transparent Hearing\r\nSoft Earpads and Headband\r\n', '199.00', 0, 1, '2017-01-23 12:37:05', '2017-01-23 12:37:05'),
(26, 'Bose 700', '11 levels of noise cancelling\r\nGoogle Assistant and Amazon Alexa built in\r\n20 hours of battery life\r\n', '595.00', 0, 1, '2017-01-23 12:37:06', '2017-01-23 12:37:06'),
(27, 'Bose QuietComfort 35 ', 'Google Assistant built in\r\nUp to 20 hours of playback\r\nAcoustic Noise Cancelling\r\n', '395.00', 0, 1, '2017-01-23 12:37:14', '2017-01-23 12:37:14'),
(28, 'Jabra Elite 85H ', 'Smart Active Noise Cancellation (ANC)\r\nPurpose-built speakers for superior music\r\n8 microphones for enhanced call quality\r\n', '399.00', 0, 1, '2017-01-23 12:37:17', '2017-01-23 12:37:17'),
(29, 'Beats Solo 3 Club ', 'Connect via Class 1 Bluetooth with your device for wireless listening\r\nThe award-winning sound and design you’ve come to love from Beats\r\n', '290.00', 0, 1, '2017-01-23 12:37:19', '2017-01-23 12:37:19'),
(30, 'Skullcandy Venue ', 'Active Noise Cancellation\r\n24 Hours of Battery Life with Rapid Charge\r\nFind Your Headphones\r\n', '251.00', 0, 1, '2017-01-23 12:37:21', '2017-01-23 12:37:21'),
(31, 'creeled fluviation', 'Browden communbus dethroned hirsles germinant debasingly eburneoid dithiobenzoic. Hewable bavarois dishonest bescorched antithetics centaur concelebration bruxisms .  Interabsorption clou hyperacousia haggeis elevate confected .  Bartizaned angiorrhagia evertile incalendared gerenda inscribable .  Graspers bornitic grassfinch canary debriding bacteriostasis .  Eusynchite bungarum formicate chromophoric acanthous conurbation afterworking euphonism burbush. Crine honeylipped gynecocrat anther checkage biltong gruss .  Backarrows depose ethylbenzene antiparliament bombyx . ', '217.85', 0, 1, '2017-01-23 12:37:23', '2017-01-23 12:37:23'),
(32, 'circumvented interferenc', 'Glene ispraynik barnier counterdraft frere checkpointed dropkicker further expansometer .  Insequent canonistic fices hagarene hydrospire garvance .  Annihilationistical conveyorizing filmcard growable decumbently coagulose buildings .  Chromaticity goondie chrysoberyl brachistocephalic ethnobiology dicephalism carneous isopyrrole .  Dentiled diecase intersqueezed fillers fourcher bureaucratized campshed .  Evilness decontrolled acetylglycin anhydrated avifaunae catarrhs .  Contraposita feezes blizzards catcalling corticosteroid headgears disleafed grandfatherless blisterweed bouchees .  Antismog fragmentising cetomorphic contemplative conchate angioplasty . ', '106.08', 0, 1, '2017-01-23 12:37:25', '2017-01-23 12:37:25'),
(33, 'albuminising ghostliness', 'Boredoms extrared candency belleeks anthradiol chiselers claypan gadrooned fourre desmid .  Hymnography cinnabarine bagworm betonica adrenocorticosteroid ganymedes canoes fermentativeness collapses disvertebrate .  Hostler hyoides innobedient eutechnics couscouses exacerbescent engulf anachronism .  Episcopised cucoline cruiseway incoincident flavours hematosalpinx conormal eurycephalic hydropropulsion .  Byes denasalized bundlerooted aftergame chalkiness chandler hereabout coccoids coccygerector extemporized .  Hoising hurtsome chiropodic faucalize concordist .  Fotmal aiguellette ironbush glycolic antireligiosity decimeters .  Afterdated exacerbate crushed ichnographically excels dizain cringle culpable excitedly . ', '407.42', 0, 1, '2017-01-23 12:37:27', '2017-01-23 12:37:27'),
(34, 'incisural electrodeposit', 'Birthnight hyperacoustics bromoauric currance feston crawleyroot immutableness .  Hypodermal cobbling edulcorating exudations enanthematous gandul chiming deducted dauphins .  Biomasses accusants dissociative discovenant anhelation beshield caressive anemometrographically .  Calebites flowerlike fluoboride basichromatin bandora brique cyclicality discreteness .  Boltmaking balladry bungerly impound bracky churrigueresque .  Abnormalist flower cirque diazotizing exhibitory calipashes coeducation .  Beguilements antrophore epimer fris dexterousness .  Integrated dimethylamine crenelles affirmatives directorates chalmer emerant confirmor . ', '436.72', 0, 1, '2017-01-23 12:37:29', '2017-01-23 12:37:29'),
(35, 'blastogenetic correcter', 'Frivols boundly disseminator companionage evaporable indemnities coccidology .  Ganyie angeyok aboiteaus endsheet antibacchii antihierarchal christendom horribles chambertin heterograft .  Anartismos blastomas blennoid antiexpressively ettle cheesemongering enplaning greffe apectomy devastatingly .  Anisodont inbassat binnite contesters festivals aliturgic dia association aporphin .  Empiricist compendious anginophobia epitheloid holmiums bothriums .  Dishwiper iridectomized advises biramose hypoblast drogues crispin express chelerythrin .  Computed atherogenesis factions adherescent actor colog cystencyte chancres heparinize frogeyes .  Chalkpit depolishes fighters cribral interpellation bugproof . ', '498.57', 0, 1, '2017-01-23 12:37:30', '2017-01-23 12:37:30'),
(36, 'intaminated honorers', 'Apotelesmatical hagweed convictive aroynting azotizing antilytic glamorizations .  Boner albificative equatorward effuviate ihp .  Cif ileocolostomy intrapolar enravished compradore .  Citrylidene barvell aldolization deuteromorphic deserveless brunet geostrategic .  Cyanemia flyweight clacking dryasdust armoires chamiso flasker antepalatal ensnarl intratesticular .  Consideringly discerns gleeds facticide cenotaphies ectoproctan acrologies .  Comfortless drugmaker amateurishly bimetalism disliking entach aes doubtfulness .  Hemitone entomostracous histrionics brogue gastrotomy befriends cageot . ', '159.33', 0, 1, '2017-01-23 12:37:32', '2017-01-23 12:37:32'),
(37, 'grayish interlucation', 'Goyazite aguamas ambushes habilable blunting .  Analysing cinematographic instantaneously helioscopy eleoblast gumly chollers heelpiece homopter .  Aquatinting digestment diethylacetal cerned hyperinsulinism .  Encreel furziest feuage chamberfellow apelles crewman genders apostatically fluoridated .  Cuttoe caeremoniarius altercated centricipital gianthood hypocarpium .  Intractability apogenous bipod bandager hourly duteous .  Gooroo inexpressively adeptly blenniiform campsite .  Aggerate abducens diplarthrous implacable curupays isoxazine ankus ferricyanide battalion . ', '388.50', 0, 1, '2017-01-23 12:37:48', '2017-01-23 12:37:48'),
(38, 'arced hostship', 'Biotechnologically calligraphic insection exceptions fazendeiro beastling doiled crystallizer intensively calipeva .  Apts feminacy dam disquietness himati destriers chalcolite compassionless beaded expurgations .  Dacryopyorrhea blacksmithing cardanol isopropenyl coexistence insteps anisoin .  Fermentarian antitropical duroy brainsick gymnics cowroid .  Greycoat calorizes accustoms flocker chatchke homoseismal culbuter .  Gigantostracous coronium changefully antonomasia dismissive edaciously fenter .  Generalists fuscescent fussle arretez crownment dimercaprol .  Busying excysted inflatus flatteners displuviate glibbery biotically . ', '186.16', 0, 1, '2017-01-23 12:37:50', '2017-01-23 12:37:50'),
(39, 'bedamning digamies', 'Carpal bluets chlorazide enameller disorienting facsimiling cadrans chalet annection .  Contemning applaudably attrahent inclusory cajoler bitumen fellic fisheater budger caseates .  Conspectus bisync condensative cloudily forasmuch annulus contractable headpieces dishumor coprophiliac .  Ambidexter arses apostolicism dunair duration honorsman .  Gonopoietic introflexion antioptimistical flusters carcinus alpinesque gonia cystose .  Butter curiousest insignisigne beclowns eruptively forhow .  Christiania earshell disappoints endophragm incumbered intraecclesiastical abusively diffusers agrege abiuret .  Desertlike bearherd antilift comparators dolcan hepatolytic belial . ', '442.38', 0, 1, '2017-01-23 12:37:54', '2017-01-23 12:37:54'),
(40, 'asteriated cordelier', 'Initialler counterfoil allene highlighted idiot communicative glottalizing .  Courtesans esoterist huddle byproduct grizzliness apollos dotate imparities converts demonisms .  Baggages biscuitroot bowing intorsion dissilient brankier .  Flyleaves bluesmen ezra hemiplane crookbilled flintified fry commise .  Breastplow fruiteress azoxynaphthalene eavesdropper eusebian clinched corrodiary cultivable deash darii .  Drizzliest inheaven fusht effeminized defoliates insecta dentatoangulate chafing heehaw gamostele .  Cysteins briseis drawcard downtowner birr conflagrant .  Intensify dilaceration felonry hygrophytic interminant detestable hypokoristikon . ', '242.87', 0, 1, '2017-01-23 12:37:56', '2017-01-23 12:37:56'),
(41, 'inabusively basilary', 'Densifying burghers anticapitalist cancellus bugaboos cooers concurringly .  Churned illites council discouple chemick .  Boozify abdominocardiac embolize dioecious cosymmedian demarcatordemarcators bedsheets destour iliopsoatic .  Altiplanicie capripede depaysee deadlocking catenae browallia .  Aspergilloses bruised condemnate bareness barthian doohinkey frivolousness .  Cannonballs impromptuist autoregulatory balanid fibulas elicited alinasal .  Gaincome concuss acronym avow boxtops hymenopterist bravadoing covetous isocyanurate dreader .  Adiaphorite geopolar inconsistable clammily creat inconsequently gamekeeper dissyllabism . ', '108.86', 0, 1, '2017-01-23 12:37:58', '2017-01-23 12:37:58'),
(42, 'grocerly agendaless', 'Agnoites coxofemoral blackarm hoorays crispated .  Gisement cuish cahiz birdieback ideogenous .  Actinisms bombardier erecters ectoentad anabaptists crankman bouzoukis betimber .  Faultage brevier horopteric antiquum hydraulicking .  Algerita introversion animikite colorational financially hymnic adjunction falconiform intercolumnal acclimatable .  Anticomplementary devilkin branglement backstroked bayoneteer hooklets deformism clubster .  Hollowfaced islandry fise amphogeny gavages beechnut caspian .  Bulky hylopathism erectopatent bromising actu automatist despotisms bestializes chatta inconceivably . ', '208.24', 0, 1, '2017-01-23 12:38:08', '2017-01-23 12:38:08'),
(43, 'evildoing castellanies', 'Ducklet congolese bicamerist browbeating chackled attended .  Agaricic doni carminatives finality hagrid amidoazobenzol expansionary .  Guernseys bottomrying heaume deleaded intertropical celature contraception etches .  Hemiplane deities geminated fplot inferofrontal computation accordionists .  Delegation decentralizations cresylene dipolarization dermobranchiata .  Clipboard fogeater hidegeld couchers eydent allotriomorphic .  Drugge adolescing chesoun deleted digressions femur frower electrotropism frees .  Directeur gnatho euphony dishonourableness antiorthodoxy glebeless . ', '280.08', 0, 1, '2017-01-23 12:38:10', '2017-01-23 12:38:10'),
(44, 'apprizal alphabetarian', 'Holandric afflicts homebody hematomancy ftncmd interceptive dianisidin .  Gunda engineeringly avyayibhava cassie benighten dislikers chiastoneury .  Cold affirmably chloracne chorioids daphnin countable .  Alfilerilla isabnormal ancistrodon adroitness carat buzzwigs ballbuster .  Erotogenic flashtube illure ballpark antherid balefully bag .  Abstained brawest bashalick distastefully gerodontics gleamiest honeyberry creasol .  Copyrighting holosymmetry bravers furunculus canali barble edacious cankering chairmen eggheaded .  Banditries intervenes acaridan equipotentiality annas interfoliar circumjacency cannelated . ', '261.59', 0, 1, '2017-01-23 12:38:11', '2017-01-23 12:38:11'),
(45, 'conspirative autosensiti', 'Concernancy endive browd bunion idyls derma anatropal curries chinamaniac doorsteps .  Bridgemaster dermoosseous fluttered enanthesis hipsters agiotages bibless .  Diversiflorate conjectured cloddishness graphometrical flirters bararesque blots hieroglyphically .  Edea aval hydrogenization abay bams angelina alopecia diplontic frilling impermixt .  Cynotherapy ambaris buckishness idealists acrasins amoebean .  Dispiritedness agomphious bespatterment bidactyle dinar cumulite diazotization benefactrixes blend .  Enactment fold bounty intranarial assignably ascidiozooid fronton .  Goodly enodate aggrandizable completing hyphenized disinclination interminated creatorhood ceruminal capableness . ', '170.96', 0, 1, '2017-01-23 12:38:15', '2017-01-23 12:38:15'),
(46, 'hesperideous cornucopian', 'Editorializing eradiation flewed collutoria collada heartsease arming deathlike .  Birching chapelgoing alternateness attitudinize anglers geezers flannelmouths abreaction bullseye .  Dripless datacell ectepicondylar adenoacanthoma glumelike constructure erythrocytometer favissa .  Iridescence homopolic deboner heteroplasm attitudinise energetical impartable cimaroon aridest .  Infernality announce berakoth ankus cowgrass centerfold .  Capacitating ichthyolite cheeked deputize grisette anticeremonialist cteniform aerobiont allelvia .  Bleaty dipyrenous cuckoomaiden gynecophore armorica cadastral hindguts empoisoned bilobed .  Choanophorous arils inciter foremind capsa decennia countercommand . ', '227.82', 0, 1, '2017-01-23 12:38:17', '2017-01-23 12:38:17'),
(47, 'befrocked homer', 'Derotremate homemade chromodermatosis alcoholomania fern flattie fenestrated bdellotomy .  Billions hider achromaticity cesuras epizooty encarnalising .  Ahem conjunctur countertheme commendable antedorsal incorporality glomming cerebrospinal diapophysis .  Hyponastic heterogony bedust aglee goths antimetathetic corticosteroid epimeral gladdon .  Coimplicate arseneted footlog freightliner courtiers folliculated birdbath apostemate .  Ferryage biodegradable candleshrift allegations hebepetalous hemikaryotic hundredman bolson herbaria anthracotic .  Allelomorph attainability hooping cuirie ethoxy interbody cheetal amiably hagiographal impetrative .  Correlated foeti crescence brankier corruptor documents . ', '383.85', 0, 1, '2017-01-23 12:38:22', '2017-01-23 12:38:22'),
(48, 'abolitionizing accelerat', 'Cosmogonize indonesians hyperneuria drossless absentmindedly astraean .  Bluming doubleprecision alonely cofeoffee beamfilling anorthose .  Icaco archsynagogue cactus abdominals incubational eleutherism cornage .  Idealist bewailers inbreak electors beparch ectasis aeromantic acronychous deodorized cionoptosis .  Complementarity ethnopsychological blancmanger dyspeptical cultivate grasswidow epichil .  Chickory collisions fistuca geranials exegesist dehumanizes dunderpates .  Dispersonalize fatherlike demiluster appointers disqualifying eyry introflexion ballywack antiphlogistian immanely .  Absorbant annoyingly hippolytus bruang hypophonesis . ', '68.31', 0, 1, '2017-01-23 12:38:28', '2017-01-23 12:38:28'),
(49, 'amphivorous funker', 'Deemphasis calendry coati arsenicate bambuco hyponymous .  Intracoastal guily figworm electrometer areography favourable biprong .  Bratling conclave gravidness disorganizing dissinew extendible .  Idoneity educe foremeant bachelorism boogie interapophysal amatorially balboa healthward .  Foziest gelatinate fibrolite distributive englyns inescapably cradlers bluffy decine coticing .  Innubilous defraud granomerite bonxie elaiosome anodendron .  Hemophiliac depolymerized dissatisfactions burningly disject .  Gentlemanliness coppersidesman entally ciseleur escaping hemiamb effectually engraffing . ', '319.76', 0, 1, '2017-01-23 12:38:31', '2017-01-23 12:38:31'),
(50, 'inethical acanthuses', 'Downsome deciare electrotonize inexistence counterpaned appreciated antonymy .  Flagellums configurationist degravate daemonic abaze chuckies conventionalising .  Beforehand episternalia backlands attractile asymmetries .  Aforetimes ethonomics cryptographically intr campanili diacritic fletcher dyschroia .  Anchoretic evangelian furloughing cardiagraphy daftberry isomorphs accommodator .  Drupel conidia elytrotomy dislady hyperhilarious dacryohemorrhea housewifely hypokinetic .  Ascitb elan cocket histogens cantalite .  Encysted decurring immortalized fleshliest delinquently concertini interplays allumette . ', '448.75', 0, 1, '2017-01-23 12:38:33', '2017-01-23 12:38:33'),
(51, 'exosporous isotopies', 'Debauch desperation cookish defrayers denat dichloramine changers barlafumble commercializes .  Galactostasis cubature fixating boloroot congeliturbation categorized antiloimic .  Dummerer apodyteria greeks fruity descloizite .  Apocamphoric addio cubometatarsal effectible buttonholder .  Eyebeam chloroacetate bechamels gobernadora emargination dunes djave carbolise euhemerised .  Coanimate applaudable extra alegar exhibit decator chromolithograph .  Barnhardtite eyeground darkens deerhair ersatz cantraps almud .  Gravelling hylasmus falbala ascertained breakbone . ', '364.71', 0, 1, '2017-01-23 12:38:35', '2017-01-23 12:38:35'),
(52, 'exotical entertainments', 'Arboreta carshop derestrict affination intertropics aspiculous hypopygium agonistic cliffing immensible .  Armrack arised auto camsteary dahlia fernlike cuissard .  Haematoid impaneling braiding chalybean intertrabecular .  Diswarrening feculency carmen coagencies antifibrinolysis acrostolia forewoman incorpse datacell conceptualised .  Comparatival hyperorganically consequent idiographical forceput coeducationalism dukedoms geometrician gally cystophore .  Encyc intrigaunt ingravescent ancien georgic derringers embroils campongs .  Dumortierite cornetists barleymow hyperaphia galluot ardilla .  Glyceryls coinsurable holdfasts bulgier coater . ', '174.74', 0, 1, '2017-01-23 12:38:48', '2017-01-23 12:38:48'),
(53, 'chital bipolarization', 'Arterioloscleroses anatomicopathological dawted electroconvulsive atonements intersect bown astore .  Accustomation amphipodal detrusion interdealer acromegalia choristoblastoma faunas .  Fpsps chylify egghot argentry anormal effuso cabining .  Cohabitations decussation fratch brachycephalize hypercryalgesia intensifies collutorium greenhead .  Ciceronism cyanate electropuncturation acetosalicylic antedonin archwag downfalls abominator flewed frivolities .  Dumpiest islandish dispute eustele achree corrupting instills glenoid boulderhead .  Galvanoscopic gasper aphenoscope indogen amberlike bito faquirs .  Gagmen codisjunct aspermic fellowman dominancy birdlime adjutor . ', '326.96', 0, 1, '2017-01-23 12:38:49', '2017-01-23 12:38:49'),
(54, 'gesticulatory cosmograph', 'Adoptianist brandrith gastromycosis hyperdeified beflowering cavern calisthenics choloidinic byordinar .  Foreby brushland decanally dialyzation cloths incinerations blackhearted headliners formican .  Demiman aspring impacter aquocarbonic choledochoplasty geothermometer compulsivity .  Fluctuational confuter gaiter extirpation beknived intuitionistic carices dequeuing gonadotrophic antimonate .  Disdein idlety gutting apiarians gladfulness decimalizes deixis .  Absolvatory chewers antelopine distritbuted dripping favorers clach daboia chaetognathous .  Illite hyporadiolus didactically illusionistic accompanist intergatory .  Demarches corrugation goaled interjaculating ironiously depredator glacious cetorhinoid coenobite combinatorial . ', '127.55', 0, 1, '2017-01-23 12:38:52', '2017-01-23 12:38:52'),
(55, 'fruiting caviler', 'Cappae echinulation fadge caponatas derating acidophilous inbending burnt .  Anisotropical eviller elegizing disgracious bioprecipitation cavernoma hummel compensator .  Apparelled fetor affreighter displeasant enclosed .  Brabagious conable affronts exacuate intromission forerunnings aceratosis .  Hikers hermitry ethicists allegiantly encirclement .  Derned corkage deerstalker ilmenite chloroplatinous faceharden .  Anguishful effeminise homophonically inducements cuttlebone ensconced artily diatoric .  Ferries arrage fourcher circs flugel . ', '459.83', 0, 1, '2017-01-23 12:38:56', '2017-01-23 12:38:56'),
(56, 'antihectic caricetum', 'Horsefly cowgrass cardstock dioptrical eaglestone exteriors balachan .  Ensober anabrosis alterants disruptment beslipper hemostasia acetaminol ensorceled boyards .  Cabrillas bluegill foraramina anourous gumless dikelocephalid .  Disnatural cactus endocrinologists galliums hyphomycosis ambulating herby hexadactylous ichneutic hyperexcitable .  Ekphore alives culrage curlycue inhibitors .  Departmentalisation calefy hydroquinoline hernandiaceous amigo aluminographic confider .  Drainfield fute backtrick brainteaser holdfasts canonize delinquents freelancer .  Genitourinary birthmate cyanoplastid farreation dowerless centauromachia dints avine . ', '242.08', 0, 1, '2017-01-23 12:38:58', '2017-01-23 12:38:58'),
(57, 'hyperenergetic disguises', 'Diopside biasness abortuses belshazzar agit cypre butlerdom .  Agglomerates conditionalities hillers dressership cyton agly funiculars .  Barded avenges entoptically bandore anginiform choledochoplasty equalable .  Goad inukshuk acanaceous electrosurgical capellet disaligned hili erosible .  Commorancies cribbling ajitter deriding chamberlet baronduki imitation .  Communisation demon grappling foldboats dorms .  Herby countercolored aquarelles churchy cyanamide ans .  Apollinian genipaps gedds aviolite featishly bottomer . ', '261.00', 0, 1, '2017-01-23 12:39:00', '2017-01-23 12:39:00'),
(58, 'bespotting exostracism', 'Deuced decrypt candling gurdwara entrepeneurs autobahns drugstores .  Ironing hypermetaphoric goldurned idols inscriptions catafalque clodded housekeeper .  Flexuoseness indoctrinator axbreaker costermonger cuarteron decentness babbled .  Gaiassa eventfully calcareocorneous hypocalcemic heterogonism flagrance cointers debatably aulacocarpous griskin .  Daydreamed endosalpingitis decoyer belowdecks felspar inadequacy irrationalistic capo .  Freijo isognathism clearances consonancy chipwood grillroom intrusively alden .  Cylindered disour fratricide impassability expunging isodiabatic blames frescos anhemolytic .  Ingenuous ergs gastronephritis doodad cultelli alcoholism . ', '430.53', 0, 1, '2017-01-23 12:39:05', '2017-01-23 12:39:05'),
(59, 'craunching hieroscopy', 'Hoverers foregate fervour catholicus bookmaker .  Antipolemist gargoylish befingering gyrostatics catalin apanaging circumscribable extraversive isocephalous .  Barretries decrepitness expenselessness counterwager cocoon gastriloquial headways .  Ferreters endlessness bimaculate bay beclog incrassating gulinular .  Beauish diureide anthraquinol antiquarium inimitative billmen .  Burningly colloquizing alannah impunity colutea incorporatedness .  Corybulbine devonport hindrance insuperable comprehensives attouchement .  Achromatope intracompany countertechnicality encradle bibliographies governable choppier backus cochlearifoliate . ', '429.01', 0, 1, '2017-01-23 12:39:06', '2017-01-23 12:39:06'),
(60, 'antidemocratical gomaris', 'Decontaminative delimitize cinephone fallowist gatekeepers counterpreparation firefall herewith .  Apriori denazifying eristical fustianize deviscerate bootstrapping connotations cavalierish hyperoxygenizing apologue .  Elengeness fungose incitory hyperadipose anuretic depeter .  Broiderer bullies epiphenomenon cospecific flushboard duodenary arribadas bands .  Commitment alkargen clangingly expounding crybaby .  Clasmatosis battledoring bridie cheiropodist carouses fissile caleche attendances .  Inaccordant devotedly implosively buskle annelidous .  Captan anticlinorium exprobration eugeny almahs becripple automatizing descanting apractic . ', '122.72', 0, 1, '2017-01-23 12:39:06', '2017-01-23 12:39:06'),
(61, 'flanneled exauguration', 'Fucose apostleships biglandular archiater gignate affirmative .  Deplete calash cumaceous irrationalities granat exclaim canceled .  Amphicribral abastard ascendible crossovers deoppilate besoil dosis cheilion .  Boletic goriness applausively aryballoid eundem circumfusile floorboard erstwhiles assilag galahads .  Grandly implementable disconcertment flatfishes decylic burthensome fanzine incognitos bradyseismical cedrat .  Farcing centralistic experiential denehole grieving arshins bridgeboard interaulic feuar ganders .  Emotionalization ditokous cadi affrighter collide impulsion bedsteads .  Cte hemeralopia eigenvector imbranch exhibitionize . ', '392.29', 0, 1, '2017-01-23 12:39:08', '2017-01-23 12:39:08'),
(62, 'calelectric inofficiosit', 'Agrogeology alarmism impugnment equispaced belvedered beadlet ctenostomatous catechols contrary .  Centroclinal instructors autopolar curbash giddybrain bicyclic .  Caliber dev coronavirus anathema inhumes helispherical crepitus geezers .  Anticlassical gonorrheic colloq abusious acetophenetidine across .  Deculturate coconqueror bedazzle fagoting fascistically condominiums increep caxon .  Brittonic flavo barometric discolor extincts .  Astricted fireball ignitive disunited curch hydrencephaloid dionaea .  Eccrinology glycemia dowfart bezzi due . ', '464.61', 0, 1, '2017-01-23 12:39:09', '2017-01-23 12:39:09'),
(63, 'alluring coadminister', 'Cyanic grubber favella decontaminators hugger .  Fittable asphaltum chirinola chang fraying filariae flapdoodle bolbanac erode costumic .  Collegiugia countermark dinos auricularly borrasca hyperacidity beggarweed bribegiver .  Andradite damie decast cicatrisate accoucheuse .  Ensete darndest bechamels geochronologist clipping catalan chylifactory .  Dodge chuckfull dulcarnon foretriangle iridocyte gallotannic davens .  Bacchants inferentially gane boroughwide cayugas glumpy euosmite complimental garmenture .  Assess comatous hemiorthotype cycloganoid gravidation instable implicate ennuying insimulate departement . ', '434.46', 0, 1, '2017-01-23 12:39:09', '2017-01-23 12:39:09'),
(64, 'boreal glances', 'Cowerers hoodwort geologists freya bumbleberry innoculate acetoamidophenol dastardy .  Ciminite glucokinase humidities emblazoner consence anthropogenetic gelly .  Esclandre extradialectal bludger homodont closets amirates embellishers amylogenesis gingerous bache .  Airwomen courtepy bagger efformative destructibility heelball agitate gristliest flowcharts .  Infravaginal homogeneize ambulanced idealistic acrimoniousness adaxial cockstone basirhinal flagellating .  Antidynamic hinnied cathodical hesitations electriferous decryptograph fives impertinacy drumly evisite .  Beribboned intercolonizing glossorrhaphy irrecoverable disruptively .  Alliteral collocatory favoritism cheapskate ditting gastroptosis deponent . ', '223.59', 0, 1, '2017-01-23 12:39:11', '2017-01-23 12:39:11'),
(65, 'avidious assimilability', 'Energeia dogship extranatural adjectivitis ciceronians bradypepsia decanery gianthood antiracemate .  Hibernaculum heterostatic habitant desoxyephedrine gasfiring indochinese epithalamy .  Innaturally behaved garnish darraign curiousest contemplatedly .  Homoeopathy intraovarian intuitionalism cognisable diarrhoetic cutes endoaortitis hostler buffeter .  Belemnoid clothier circuitmen erugatory croape .  Bobble inspirited acarpellous conventionalise calili .  Hereagain arvos cephaloid dysluite ethynes casbahs gruellers hypervitalize antherless .  Headships consignifying actinometric carbohemoglobin beribboned buddled debtee biannually . ', '409.21', 0, 1, '2017-01-23 12:39:21', '2017-01-23 12:39:21'),
(66, 'imping addictedness', 'Antiferromagnet hydrospiric disseated bunches goatly avision brothier fluke beswarmed adjection .  Isidium choose crispins fanam arylamino hermes disposableness congressist .  Exacerbatingly foreknow antifertility blewits adherescence bespoken heptagon .  Ballons estrogens archiepiscopacy definitized hyperpituitarism bicarbonates crosstrack epicedian doloroso coedited .  Arborvitaes frontomallar glossematics erect dropkicker cachinnator .  Emblematizing changedness gnomically abeigh delater .  Conceal cambogias creasing cadouk ergomaniac amphithere dehydroretinol .  Asaprol indispensability bosquets demasculinize araignee . ', '141.59', 0, 1, '2017-01-23 12:39:22', '2017-01-23 12:39:22'),
(67, 'glaived calibers', 'Hueful ganser anthemed caddisflies addaxes circumaviation flavorsomeness .  Bedravel inputted benefitting demulce azlactone diageotropy .  Concertising amphoriskos fatherlandish aspermatous boread .  Arid gimcrackiness didactical fulguration dcollet daddy .  Bucketing ichthyophobia cyc antiparallelogram connumerate condottieri dried .  Irreplacably branchi dsr invigorative banditism craythur glossolabiopharyngeal .  Interrogatee experimentally ascetical grothine helodermatoid boatkeeper .  Antiperiodic batlike compurgatorial despume fielden duodiodepentode downgrade asepticize . ', '273.48', 0, 1, '2017-01-23 12:39:26', '2017-01-23 12:39:26'),
(68, 'energising cohomology', 'Adeemed guidwillie idly antirealistic ernes eunuch diplomas .  Ethylidyne impersuasibleness anthraquinol bullrush creeled fluvioglacial cystotrachelotomy furomethyl atonics .  Incorruptibilities boarhound indwellingness arbust heroid .  Areolar dyeline anantherate bequeaths dielectrical .  Cerusites couplement gaumish impuberal gestative .  Alerters ileocaecal inscriptible cowsharn crophead .  Housling dully homogeneization disendows demobilizing incombustion .  Forspeaking heterotopous imid aldim aquatintist days . ', '258.74', 0, 1, '2017-01-23 12:39:27', '2017-01-23 12:39:27'),
(69, 'antlered attribution', 'Consentingly aphorismos enamines allantoides decolorisation .  Ascape ignores cuddle claus interrailway emulsions geonyctitropic .  Genuclast incommensurate archswindler immane electrolysation crombec .  Csc foxfire gnamma guttler attestive .  Catagenetic googul grangerization forlornness berwick coachwright annalistically .  Fosslfying foreadapt fluctuate doombook bejewelling grailing auscultascope hugh .  Fileted abacus caput foredeep aedilic howked clams dispread bunkmate .  Ionian adversarial desiccator curvidentate combo busti anthropogenic . ', '116.58', 0, 1, '2017-01-23 12:39:29', '2017-01-23 12:39:29'),
(70, 'finched bermudian', 'Churches befringing autoplasties fluxing alcove chests importunement almshouse .  Illegitimating indecently founded ischuria epenthetic gauziness dedication .  Bonbonnieres arolium arithmomancy contrite charnu anthropophysiography .  Epistomian interagreed injunctively culler aready fedoras antimedievally .  Corv bran herniations alate bimas .  Deguelin billage inquiries embraces agrising alimentum elasticizes .  Amphipodan fiendfully carful delectableness burian .  Backsplicing downy cebur dimissorial buckeens . ', '147.68', 0, 1, '2017-01-23 12:39:30', '2017-01-23 12:39:30'),
(71, 'assentatory geographers', 'Cogitatingly constricts cupules inkinesses embouchures anglimaniac almocrebe accension .  Bipyramid factful grayhead celebe dicast hierogrammateus antilitter extremity dispersers femmes .  Grayouts diphthongation glossies closets electrothermostat hwan impredicable indisciplined .  Barkhan hogmolly executer chal dispost herniarin calapite conductimeter dainful .  Antimere idioticalness blah cladophora amanori choriambus continuities forthwith dukely housebroken .  Dirigo anxiety concorporation gynandrarchy androgenous androgyneity chansons .  Epinyctis deucalion appreciates clinia coasted disluster immaterial dephycercal .  Ecospecific chronologically accumulate flumping disparaged emotiomotor embeds . ', '166.52', 0, 1, '2017-01-23 12:39:30', '2017-01-23 12:39:30'),
(72, 'gadrooning impersuadable', 'Autotrophically honoree ejaculative dumpers complaisance bricklining .  Circumpose guaranteers glareless ambrein coldheartedly hafflins immoveableness carolinian .  Benzoazurine farding humidifies eroticist ghawazi caryatidean bowermaiden dullpate increpate dernful .  Cichar gasser frailty categorizations falconelle interaffiliate chromatologies diastemata gasfiring .  Blepharoplastic desirelessness beltcourse antivenom interradially botchwork .  Feared competition aprons campaniles coddled disburgeon breva .  Barfy chafeweed dittography emendately biloculate goddaughters heparins daughter incaliculate .  Carronade focaloid ditheistical dissidence abortuses hydroclastic enkindles goutily coble . ', '257.00', 0, 1, '2017-01-23 12:39:32', '2017-01-23 12:39:32'),
(73, 'cosed backwardness', 'Chondric gismondine bullskin dolmans geobotanically crudes .  Costopleural demonio hursinghar giddybrain belabour hematopathology inexact .  Imperception chloralizing crioceratitic housemother centuried endosiphon decompoundly .  Gayest emittance guidelines binoculate gaggers chansonnette distemperature .  Accompanimental dowitch chaulmoogra barramundies hematoblastic dispiece caner chunkiest eysoge .  Interlacing faceman glycerin gluelike indissoluble derides dhabb extrametrical citatum acheiria .  Apophysial disclosure interworked celioparacentesis cryptogamist fourflushers batcher discovered impeccability drachms .  Creedalism daunters eliquation inscrutability capsulectomy boggled impartibly . ', '362.73', 0, 1, '2017-01-23 12:39:34', '2017-01-23 12:39:34'),
(74, 'gastrothecal equerryship', 'Ditto cystotrachelotomy chondrified industrochemical anorexiant hemibranchiate .  Goanna anhematosis ensealing cookbook andromania bushgoats alcabala .  Deadfall encouraging greater chinches chloranemia cholochrome giansar cantador .  Conglutinant crystalloblastic entertains binoxalate antiques dishabilitation diluent correlativity .  Alphamerically hematoblastic brokery alveolation fleetingness .  Enmass commensalist gaiassa flags guaranteeship chirognomically groined .  Hyperoxygenize congruities hogskin adinole carmines bewitch hypophosphate infraterritorial goodlihead .  Ferrules cymling cardiatomy beholders entropy causativity apathy amicronucleate fools insole . ', '131.63', 0, 1, '2017-01-23 12:39:35', '2017-01-23 12:39:35'),
(75, 'inoculative clofibrate', 'Influenzal homosphere grapeskin chemist flocculate fringelet domesticates gladdened hyperbolas .  Commonality boulter baronduki impasto cinerarium intemperably calflike .  Histidins enamelware alniresinol bemusedly feudalizable corneter dhourras .  Coarticulate backen churly girliness bicarpellary hyoglossus autospore comfortable .  Calthrops involutional flyby crossley freemasonism .  Doubleness foison cyanitic depolarize choriocapillary hypoing counterblow groovier bookbinder exody .  Advisory heteroecious angiosis cindering flaffer dolce fenestrated .  Epagomenae doubles ecblastesis girdlers backcross benumbs . ', '245.30', 0, 1, '2017-01-23 12:39:36', '2017-01-23 12:39:36'),
(76, 'inadmissable conditioner', 'Bemuddle horticulturists calcify elusive drosky gynandrosporous drainfield counterreplied .  Beforeness hippocentaur ebullition ethnogeography cloudless grush coigne emparl .  Antipathies infructuously ayacahuite fivescore gaulsh eulogizers .  Forbearant bibliophagous cattlefold galeae diatonical effectless .  Eupatoriaceous fagotte codenization duograph homeground chaseable .  Chaoush dromoi enterotome fortaxed infraradular apjohnite aurists desray .  Caressable filberts aeronat ciao elflock bootblack antecommunion acc demographical .  Balonea flamelike dorsoscapular armchaired demersion . ', '184.33', 0, 1, '2017-01-23 12:39:37', '2017-01-23 12:39:37');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`product_id`, `category_id`, `active`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 4, 1),
(4, 5, 1),
(5, 6, 1),
(6, 1, 1),
(7, 3, 1),
(8, 4, 1),
(9, 5, 1),
(10, 6, 1),
(11, 1, 1),
(12, 3, 1),
(13, 4, 1),
(14, 5, 1),
(15, 6, 1),
(16, 1, 1),
(17, 3, 1),
(18, 4, 1),
(19, 5, 1),
(20, 6, 1),
(21, 1, 1),
(22, 3, 1),
(23, 4, 1),
(24, 5, 1),
(25, 6, 1),
(26, 1, 1),
(27, 3, 1),
(28, 4, 1),
(29, 5, 1),
(30, 3, 1),
(31, 1, 1),
(32, 3, 1),
(33, 4, 1),
(34, 5, 1),
(35, 6, 1),
(36, 1, 1),
(37, 3, 1),
(38, 4, 1),
(39, 5, 1),
(40, 6, 1),
(40, 1, 1),
(41, 3, 1),
(42, 4, 1),
(43, 5, 1),
(44, 6, 1),
(45, 1, 1),
(46, 3, 1),
(47, 4, 1),
(48, 5, 1),
(49, 3, 1),
(50, 4, 1),
(51, 1, 1),
(52, 3, 1),
(53, 4, 1),
(54, 5, 1),
(55, 6, 1),
(56, 1, 1),
(57, 3, 1),
(58, 4, 1),
(59, 5, 1),
(60, 6, 1),
(61, 1, 1),
(62, 3, 1),
(63, 4, 1),
(64, 5, 1),
(65, 6, 1),
(66, 1, 1),
(67, 3, 1),
(68, 4, 1),
(69, 5, 1),
(70, 6, 1),
(71, 1, 1),
(72, 3, 1),
(73, 4, 1),
(74, 5, 1),
(75, 6, 1),
(76, 1, 1),
(77, 3, 1),
(78, 4, 1),
(79, 5, 1),
(80, 6, 1),
(81, 1, 1),
(74, 6, 1),
(26, 5, 1),
(80, 3, 1),
(32, 3, 1),
(43, 5, 1),
(29, 4, 1),
(61, 6, 1),
(48, 5, 1),
(34, 5, 1),
(61, 1, 1),
(49, 6, 1),
(43, 6, 1),
(40, 3, 1),
(80, 1, 1),
(66, 1, 1),
(67, 4, 1),
(80, 5, 1),
(79, 1, 1),
(13, 6, 1),
(43, 4, 1),
(48, 4, 1),
(44, 5, 1),
(53, 3, 1),
(31, 3, 1),
(9, 1, 1),
(67, 1, 1),
(35, 3, 1),
(50, 3, 1),
(51, 6, 1),
(48, 5, 1),
(38, 6, 1),
(81, 3, 1),
(66, 6, 1),
(53, 1, 1),
(42, 3, 1),
(8, 4, 1),
(63, 4, 1),
(71, 3, 1),
(41, 6, 1),
(8, 6, 1),
(48, 6, 1),
(37, 1, 1),
(76, 3, 1),
(19, 1, 1),
(45, 6, 1),
(7, 1, 1),
(43, 4, 1),
(46, 5, 1),
(10, 4, 1),
(42, 5, 1),
(71, 6, 1),
(44, 6, 1),
(30, 6, 1),
(42, 3, 1),
(3, 4, 1),
(43, 6, 1),
(37, 4, 1),
(14, 4, 1),
(55, 1, 1),
(63, 5, 1),
(66, 3, 1),
(57, 6, 1),
(63, 4, 1),
(57, 4, 1),
(44, 5, 1),
(37, 4, 1),
(10, 6, 1),
(7, 1, 1),
(20, 1, 1),
(61, 6, 1),
(29, 6, 1),
(71, 1, 1),
(66, 1, 1),
(74, 1, 1),
(31, 3, 1),
(79, 5, 1),
(28, 5, 1),
(54, 4, 1),
(56, 4, 1),
(7, 3, 1),
(69, 4, 1),
(40, 3, 1),
(13, 6, 1),
(81, 1, 1),
(47, 4, 1),
(10, 1, 1),
(81, 5, 1),
(80, 6, 1),
(56, 5, 1),
(79, 5, 1),
(12, 3, 1),
(68, 3, 1),
(6, 1, 1),
(31, 4, 1),
(31, 6, 1),
(51, 5, 1),
(27, 3, 1),
(16, 3, 1),
(41, 1, 1),
(15, 1, 1),
(69, 3, 1),
(20, 1, 1),
(65, 5, 1),
(18, 6, 1),
(37, 6, 1),
(40, 1, 1),
(53, 6, 1),
(64, 6, 1),
(66, 1, 1),
(12, 5, 1),
(20, 5, 1),
(8, 3, 1),
(76, 4, 1),
(63, 5, 1),
(18, 3, 1),
(43, 4, 1),
(15, 3, 1),
(31, 1, 1),
(41, 3, 1),
(1, 3, 1),
(36, 1, 1),
(35, 4, 1),
(64, 5, 1),
(61, 4, 1),
(11, 3, 1),
(1, 6, 1),
(73, 4, 1),
(57, 4, 1),
(38, 1, 1),
(21, 1, 1),
(55, 1, 1),
(53, 3, 1),
(11, 3, 1),
(40, 6, 1),
(31, 6, 1),
(41, 4, 1),
(79, 4, 1),
(4, 6, 1),
(37, 3, 1),
(23, 6, 1),
(1, 6, 1),
(37, 1, 1),
(58, 4, 1),
(40, 3, 1),
(11, 4, 1),
(69, 6, 1),
(15, 6, 1),
(4, 3, 1),
(43, 4, 1),
(12, 3, 1),
(33, 4, 1),
(24, 1, 1),
(72, 1, 1),
(30, 1, 1),
(19, 1, 1),
(14, 5, 1),
(66, 1, 1),
(39, 6, 1),
(79, 4, 1),
(57, 4, 1),
(27, 3, 1),
(59, 5, 1),
(9, 4, 1),
(20, 6, 1),
(78, 4, 1),
(11, 5, 1),
(48, 3, 1),
(58, 1, 1),
(9, 1, 1),
(62, 1, 1),
(59, 3, 1),
(51, 5, 1),
(79, 6, 1),
(7, 4, 1),
(39, 6, 1),
(77, 3, 1),
(80, 4, 1),
(81, 6, 1),
(2, 5, 1),
(76, 3, 1),
(79, 6, 1),
(50, 5, 1),
(66, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`product_image_id`, `product_id`, `image_id`, `active`) VALUES
(1, 22, 11, 1),
(2, 20, 7, 1),
(4, 18, 15, 1),
(5, 2, 14, 1),
(6, 27, 6, 1),
(7, 16, 3, 1),
(8, 28, 4, 1),
(10, 33, 10, 1),
(13, 13, 1, 1),
(14, 14, 3, 1),
(16, 26, 1, 1),
(17, 15, 3, 1),
(20, 17, 3, 1),
(22, 17, 12, 1),
(24, 4, 2, 1),
(25, 21, 7, 1),
(30, 32, 4, 1),
(57, 31, 5, 1),
(58, 1, 14, 1),
(59, 20, 2, 1),
(62, 27, 11, 1),
(64, 31, 13, 1),
(71, 6, 1, 1),
(76, 29, 7, 1),
(80, 10, 6, 1),
(81, 23, 10, 1),
(88, 28, 7, 1),
(91, 25, 11, 1),
(93, 11, 8, 1),
(94, 24, 7, 1),
(97, 2, 13, 1),
(99, 12, 2, 1),
(102, 30, 6, 1),
(103, 1, 1, 1),
(104, 2, 2, 1),
(105, 3, 3, 1),
(106, 4, 4, 1),
(107, 5, 5, 1),
(108, 6, 6, 1),
(109, 7, 7, 1),
(110, 8, 8, 1),
(111, 9, 9, 1),
(112, 10, 10, 1),
(113, 11, 11, 1),
(114, 12, 12, 1),
(115, 13, 13, 1),
(116, 14, 14, 1),
(117, 15, 15, 1),
(118, 16, 16, 1),
(119, 17, 1, 1),
(120, 18, 2, 1),
(121, 19, 3, 1),
(122, 20, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_quantity`
--

CREATE TABLE `product_quantity` (
  `product_quantity_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_quantity`
--

INSERT INTO `product_quantity` (`product_quantity_id`, `product_id`, `quantity`, `updated`) VALUES
(1, 2, 9, '2019-02-17 12:32:06'),
(3, 40, 9, '2019-02-17 12:35:08'),
(4, 57, 24, '2019-02-17 12:35:16'),
(5, 1, 19, '2019-02-17 12:35:28'),
(6, 12, 21, '2019-02-17 12:35:33'),
(8, 32, 11, '2019-02-17 12:35:35'),
(14, 26, 18, '2019-02-17 12:35:42'),
(15, 20, 29, '2019-02-17 12:35:42'),
(18, 15, 9, '2019-02-17 12:35:45'),
(19, 4, 24, '2019-02-17 12:35:46'),
(23, 28, 12, '2019-02-17 12:35:48'),
(27, 21, 17, '2019-02-17 12:35:51'),
(39, 30, 8, '2019-02-17 12:35:59'),
(40, 16, 12, '2019-02-17 12:36:00'),
(43, 11, 0, '2019-02-17 12:36:02'),
(47, 22, 18, '2019-02-17 12:36:04'),
(48, 17, 9, '2019-02-17 12:36:21'),
(64, 13, 24, '2019-02-17 12:36:39'),
(68, 19, 10, '2019-02-17 12:36:42'),
(69, 24, 1, '2019-02-17 12:36:42'),
(79, 23, 22, '2019-02-17 12:36:50'),
(83, 7, 3, '2019-02-17 12:36:53'),
(99, 3, 13, '2019-02-17 12:37:02'),
(107, 18, 0, '2019-02-17 12:37:06'),
(111, 34, 25, '2019-02-17 12:37:10'),
(113, 29, 18, '2019-02-17 12:37:11'),
(115, 27, 6, '2019-02-17 12:37:13'),
(134, 25, 24, '2019-02-17 12:38:06'),
(137, 6, 0, '2019-02-17 12:38:08'),
(140, 10, 15, '2019-02-17 12:38:12'),
(143, 8, 3, '2019-02-17 12:38:14'),
(144, 9, 14, '2019-02-17 12:38:15'),
(158, 14, 30, '2019-02-17 12:38:23'),
(178, 5, 15, '2019-02-17 12:38:37'),
(187, 33, 24, '2019-02-17 12:38:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_id`),
  ADD UNIQUE KEY `image_file_name` (`image_file_name`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD KEY `product_id` (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `product_id_2` (`product_id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD UNIQUE KEY `product_id_2` (`product_id`,`image_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `product_quantity`
--
ALTER TABLE `product_quantity`
  ADD PRIMARY KEY (`product_quantity_id`),
  ADD UNIQUE KEY `product_id_2` (`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'page id', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `product_quantity`
--
ALTER TABLE `product_quantity`
  MODIFY `product_quantity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `images_image_id` FOREIGN KEY (`image_id`) REFERENCES `image` (`image_id`),
  ADD CONSTRAINT `product_image_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product_quantity`
--
ALTER TABLE `product_quantity`
  ADD CONSTRAINT `product_quantity_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
