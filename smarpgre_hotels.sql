SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `image`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'info@bluebraintech.com', 'admin', NULL, '5ff1c3531ed3f1609679699.jpg', '$2y$10$xVLx.RqYocejDH1APKA6zeG9PWbmXOX6Buo6Vg7bO1vF5K4mlC9O.', NULL, '2022-12-26 10:43:34');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `owner_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `read_status` tinyint(1) NOT NULL DEFAULT 0,
  `click_url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `user_id`, `owner_id`, `title`, `read_status`, `click_url`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'New owner registered', 0, '/admin/owner/detail/1', '2022-10-22 15:33:57', '2022-10-22 15:33:57'),
(2, 0, 2, 'New owner registered', 0, '/admin/owner/detail/2', '2022-10-22 17:21:32', '2022-10-22 17:21:32'),
(3, 0, 3, 'New owner registered', 0, '/admin/owner/detail/3', '2022-10-27 15:21:49', '2022-10-27 15:21:49'),
(4, 1, 0, 'New member registered', 1, '/admin/user/detail/1', '2022-10-28 03:42:44', '2022-12-16 10:33:48'),
(5, 2, 0, 'New member registered', 0, '/admin/user/detail/2', '2022-12-27 06:58:29', '2022-12-27 06:58:29'),
(6, 3, 0, 'New member registered', 0, '/admin/user/detail/3', '2022-12-27 07:09:28', '2022-12-27 07:09:28');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(40) NOT NULL,
  `token` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Car Parking', '<i class=\"lab la-product-hunt\"></i>', 1, '2022-10-20 09:25:29', '2022-10-20 19:12:28'),
(2, 'Air Conditioner', '<i class=\"far fa-snowflake\"></i>', 1, '2022-10-20 18:38:45', '2022-10-20 18:43:26'),
(3, 'Water', '<i class=\"fab fa-gripfire\"></i>', 1, '2022-10-20 18:57:00', '2022-10-20 18:57:00'),
(4, 'Hot Water Geyser', '<i class=\"fas fa-sort-amount-up\"></i>', 1, '2022-10-20 19:05:16', '2022-10-20 19:05:16'),
(5, 'TV', '<i class=\"las la-tv\"></i>', 1, '2022-10-20 19:06:44', '2022-10-20 19:06:44'),
(6, 'CCTV Cameras', '<i class=\"fas fa-allergies\"></i>', 1, '2022-10-20 19:09:15', '2022-10-20 19:09:15'),
(7, 'Credit Cards/Debit Cards     Accepted', '<i class=\"las la-landmark\"></i>', 1, '2022-10-20 19:10:34', '2022-10-20 19:23:09'),
(8, 'Elevator', '<i class=\"lab la-magento\"></i>', 1, '2022-10-20 19:11:40', '2022-10-20 19:11:40'),
(9, 'Banquet Hall', '<i class=\"las la-hotel\"></i>', 1, '2022-10-27 14:54:18', '2022-10-27 14:54:18'),
(10, 'Power Backup', '<i class=\"las la-layer-group\"></i>', 1, '2022-10-27 14:54:52', '2022-10-27 14:54:52'),
(11, 'Refrigerator', '<i class=\"las la-power-off\"></i>', 1, '2022-10-27 14:55:58', '2022-10-27 14:55:58'),
(12, 'Restaurant', '<i class=\"las la-hospital-alt\"></i>', 1, '2022-10-27 14:56:27', '2022-10-27 14:56:27'),
(13, 'Wifi Based Internet', '<i class=\"las la-wifi\"></i>', 1, '2022-10-27 14:57:42', '2022-10-27 14:57:42'),
(14, 'Laundry Service', '<i class=\"lab la-hooli\"></i>', 1, '2022-10-27 14:57:58', '2022-10-27 14:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `amenity_room_categories`
--

CREATE TABLE `amenity_room_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amenity_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `room_category_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenity_room_categories`
--

INSERT INTO `amenity_room_categories` (`id`, `amenity_id`, `room_category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2022-12-26 11:21:43', '2022-12-26 11:21:43'),
(2, 2, 2, '2022-12-26 11:21:43', '2022-12-26 11:21:43'),
(3, 3, 2, '2022-12-26 11:21:43', '2022-12-26 11:21:43'),
(4, 1, 1, '2022-12-26 11:27:00', '2022-12-26 11:27:00'),
(5, 2, 1, '2022-12-26 11:27:00', '2022-12-26 11:27:00'),
(6, 3, 1, '2022-12-26 11:27:00', '2022-12-26 11:27:00'),
(7, 4, 1, '2022-12-26 11:27:00', '2022-12-26 11:27:00'),
(8, 5, 1, '2022-12-26 11:27:00', '2022-12-26 11:27:00'),
(9, 6, 1, '2022-12-26 11:40:33', '2022-12-26 11:40:33'),
(10, 7, 1, '2022-12-26 11:40:33', '2022-12-26 11:40:33'),
(11, 8, 1, '2022-12-26 11:40:33', '2022-12-26 11:40:33'),
(12, 9, 1, '2022-12-26 11:40:33', '2022-12-26 11:40:33'),
(13, 10, 1, '2022-12-26 11:40:33', '2022-12-26 11:40:33'),
(14, 11, 1, '2022-12-26 11:40:33', '2022-12-26 11:40:33'),
(15, 12, 1, '2022-12-26 11:40:34', '2022-12-26 11:40:34'),
(16, 13, 1, '2022-12-26 11:40:34', '2022-12-26 11:40:34'),
(17, 4, 2, '2022-12-27 05:34:17', '2022-12-27 05:34:17'),
(18, 5, 2, '2022-12-27 05:34:17', '2022-12-27 05:34:17'),
(19, 6, 2, '2022-12-27 05:34:17', '2022-12-27 05:34:17'),
(20, 7, 2, '2022-12-27 05:34:17', '2022-12-27 05:34:17'),
(21, 8, 2, '2022-12-27 05:34:17', '2022-12-27 05:34:17'),
(22, 9, 2, '2022-12-27 05:34:17', '2022-12-27 05:34:17');

-- --------------------------------------------------------

--
-- Table structure for table `booked_properties`
--

CREATE TABLE `booked_properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_price` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Pending, 1=Success, 2=Cancel\r\n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booked_properties`
--

INSERT INTO `booked_properties` (`id`, `property_id`, `user_id`, `total_price`, `date_from`, `date_to`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '450.00000000', '2022-11-02', '2022-11-03', 0, '2022-10-28 03:54:54', '2022-10-28 03:54:54'),
(2, 2, 3, '450.00000000', '2022-12-28', '2022-12-29', 0, '2022-12-27 07:15:02', '2022-12-27 07:15:02'),
(3, 2, 3, '450.00000000', '2022-12-28', '2022-12-29', 0, '2022-12-27 07:16:34', '2022-12-27 07:16:34');

-- --------------------------------------------------------

--
-- Table structure for table `booked_rooms`
--

CREATE TABLE `booked_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booked_property_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `room_category_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `room_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0=Pending, 1=Success',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booked_rooms`
--

INSERT INTO `booked_rooms` (`id`, `booked_property_id`, `property_id`, `room_category_id`, `room_id`, `price`, `date_from`, `date_to`, `status`, `created_at`, `updated_at`) VALUES
(3, 3, 2, 1, 1, '450.00000000', '2022-12-28', '2022-12-29', 0, '2022-12-27 07:16:35', '2022-12-27 07:16:35');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `booked_property_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `method_code` int(10) UNSIGNED NOT NULL,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `method_currency` varchar(40) NOT NULL,
  `charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `final_amo` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `detail` text DEFAULT NULL,
  `btc_amo` varchar(255) DEFAULT NULL,
  `btc_wallet` varchar(255) DEFAULT NULL,
  `trx` varchar(40) DEFAULT NULL,
  `try` int(10) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=>success, 2=>pending, 3=>cancel',
  `from_api` tinyint(1) NOT NULL DEFAULT 0,
  `admin_feedback` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_logs`
--

CREATE TABLE `email_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT 0,
  `owner_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mail_sender` varchar(40) DEFAULT NULL,
  `email_from` varchar(40) DEFAULT NULL,
  `email_to` varchar(40) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_logs`
--

INSERT INTO `email_logs` (`id`, `user_id`, `owner_id`, `mail_sender`, `email_from`, `email_to`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 2, 0, 'php', 'qotel do-not-reply@viserlab.com', 'yashveer.raj@gmail.com', 'Please verify your email address', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello yashveer singh (yashveer)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> 635978</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-10-22 17:21:33', '2022-10-22 17:21:33'),
(2, 2, 0, 'php', 'qotel do-not-reply@viserlab.com', 'yashveer.raj@gmail.com', 'Please verify your email address', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello yashveer singh (yashveer)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> 635978</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-10-22 17:27:58', '2022-10-22 17:27:58'),
(3, 3, 0, 'smtp', 'qotel do-not-reply@viserlab.com', 'ankur.mishra1108@gmail.com', 'Please verify your email address', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Ankur Mishra (Ankurmishra1234)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> 771760</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-10-27 15:21:50', '2022-10-27 15:21:50'),
(4, 3, 0, 'smtp', 'qotel do-not-reply@viserlab.com', 'ankur.mishra1108@gmail.com', 'Please verify your email address', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Ankur Mishra (Ankurmishra1234)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> 771760</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-10-27 15:24:35', '2022-10-27 15:24:35'),
(5, 1, 0, 'smtp', 'qotel do-not-reply@viserlab.com', 'engr.ankit11@gmail.com', 'Please verify your email address', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Test test (testankit)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> 271957</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-10-28 03:42:45', '2022-10-28 03:42:45'),
(6, 2, 0, 'smtp', 'qotel support@smartdaytech897.com', 'imran@gmail.com', 'Please verify your email address', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Imran Khan (Imrankhan)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> 503029</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-12-27 06:58:31', '2022-12-27 06:58:31');
INSERT INTO `email_logs` (`id`, `user_id`, `owner_id`, `mail_sender`, `email_from`, `email_to`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(7, 3, 0, 'smtp', 'qotel support@smartdaytech897.com', 'mohimranahmad@gmail.com', 'Please verify your email address', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello Imran Khan (mdimran)</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\"><div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> 908972</b></font></div></td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', '2022-12-27 07:09:29', '2022-12-27 07:09:29');

-- --------------------------------------------------------

--
-- Table structure for table `email_sms_templates`
--

CREATE TABLE `email_sms_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `act` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `subj` varchar(255) NOT NULL,
  `email_body` text DEFAULT NULL,
  `sms_body` text DEFAULT NULL,
  `shortcodes` text NOT NULL,
  `email_status` tinyint(1) NOT NULL DEFAULT 1,
  `sms_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_sms_templates`
--

INSERT INTO `email_sms_templates` (`id`, `act`, `name`, `subj`, `email_body`, `sms_body`, `shortcodes`, `email_status`, `sms_status`, `created_at`, `updated_at`) VALUES
(1, 'PASS_RESET_CODE', 'Password Reset', 'Password Reset', '<div>We have received a request to reset the password for your account on <b>{{time}} .<br></b></div><div>Requested From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>{{code}}</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br>', 'Your account recovery code is: {{code}}', ' {\"code\":\"Password Reset Code\",\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2021-01-06 00:49:06'),
(2, 'PASS_RESET_DONE', 'Password Reset Confirmation', 'You have Reset your password', '<div><p>\r\n    You have successfully reset your password.</p><p>You changed from&nbsp; IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}}&nbsp;</b> on <b>{{time}}</b></p><p><b><br></b></p><p><font color=\"#FF0000\"><b>If you did not changed that, Please contact with us as soon as possible.</b></font><br></p></div>', 'Your password has been changed successfully', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-07 10:23:47'),
(3, 'EVER_CODE', 'Email Verification', 'Please verify your email address', '<div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> {{code}}</b></font></div>', 'Your email verification code is: {{code}}', '{\"code\":\"Verification code\"}', 1, 1, '2019-09-24 23:04:05', '2021-01-03 23:35:10'),
(4, 'SVER_CODE', 'SMS Verification ', 'Please verify your phone', 'Your phone verification code is: {{code}}', 'Your phone verification code is: {{code}}', '{\"code\":\"Verification code\"}', 0, 1, '2019-09-24 23:04:05', '2020-03-08 01:28:52'),
(5, '2FA_ENABLE', 'Google Two Factor - Enable', 'Google Two Factor Authentication is now  Enabled for Your Account', '<div>You just enabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Enabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>', 'Your verification code is: {{code}}', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-08 01:42:59'),
(6, '2FA_DISABLE', 'Google Two Factor Disable', 'Google Two Factor Authentication is now  Disabled for Your Account', '<div>You just Disabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Disabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>', 'Google two factor verification is disabled', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, '2019-09-24 23:04:05', '2020-03-08 01:43:46'),
(16, 'ADMIN_SUPPORT_REPLY', 'Support Ticket Reply ', 'Reply Support Ticket', '<div><p><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong>A member from our support team has replied to the following ticket:</strong></span></p><p><b><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong><br></strong></span></b></p><p><b>[Ticket#{{ticket_id}}] {{ticket_subject}}<br><br>Click here to reply:&nbsp; {{link}}</b></p><p>----------------------------------------------</p><p>Here is the reply : <br></p><p> {{reply}}<br></p></div><div><br></div>', '{{subject}}\r\n\r\n{{reply}}\r\n\r\n\r\nClick here to reply:  {{link}}', '{\"ticket_id\":\"Support Ticket ID\", \"ticket_subject\":\"Subject Of Support Ticket\", \"reply\":\"Reply from Staff/Admin\",\"link\":\"Ticket URL For relpy\"}', 1, 1, '2020-06-08 18:00:00', '2020-05-04 02:24:40'),
(206, 'DEPOSIT_COMPLETE', 'Automated Deposit - Successful', 'Payment Completed Successfully', '<div>Your payment of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>has been completed Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your Payment:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#000000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div><div><br><br><br></div>', '{{amount}} {{currrency}} Deposit successfully by {{gateway_name}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2020-06-24 18:00:00', '2022-01-27 04:52:44'),
(207, 'DEPOSIT_REQUEST', 'Manual Deposit - User Requested', 'Payment Request Submitted Successfully', '<div>Your payment request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>submitted successfully<b> .<br></b></div><div><b><br></b></div><div><b>Details of your Payment:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Pay via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div>', '{{amount}} Deposit requested by {{method}}. Charge: {{charge}} . Trx: {{trx}}\r\n', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\"}', 1, 1, '2020-05-31 18:00:00', '2022-01-25 12:47:27'),
(208, 'DEPOSIT_APPROVE', 'Manual Deposit - Admin Approved', 'Your Payment is Approved', '<div>Your payment request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>is Approved .<b><br></b></div><div><b><br></b></div><div><b>Details of your Payment:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div><div><br><br></div>', 'Admin Approve Your {{amount}} {{gateway_currency}} payment request by {{gateway_name}} transaction : {{transaction}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2020-06-16 18:00:00', '2022-01-27 04:51:48'),
(209, 'DEPOSIT_REJECT', 'Manual Deposit - Admin Rejected', 'Your Payment Request is Rejected', '<div>Your payment request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} has been rejected</b>.<b><br></b></div><br><div>Transaction Number was : {{trx}}</div><div><br></div><div>if you have any query, feel free to contact us.<br></div><br><div><br><br></div>\r\n\r\n\r\n\r\n{{rejection_message}}', 'Admin Rejected Your {{amount}} {{gateway_currency}} payment request by {{gateway_name}}\r\n\r\n{{rejection_message}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\",\"rejection_message\":\"Rejection message\"}', 1, 1, '2020-06-09 18:00:00', '2022-01-25 12:48:43'),
(210, 'WITHDRAW_REQUEST', 'Withdraw  - User Requested', 'Withdraw Request Submitted Successfully', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been submitted Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You will get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"4\" color=\"#FF0000\"><b><br></b></font></div><div><font size=\"4\" color=\"#FF0000\"><b>This may take {{delay}} to process the payment.</b></font><br></div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br><br><br></div>', '{{amount}} {{currency}} withdraw requested by {{method_name}}. You will get {{method_amount}} {{method_currency}} in {{delay}}. Trx: {{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\", \"delay\":\"Delay time for processing\"}', 1, 1, '2020-06-07 18:00:00', '2021-05-08 06:49:06'),
(211, 'WITHDRAW_REJECT', 'Withdraw - Admin Rejected', 'Withdraw Request has been Rejected and your money is refunded to your account', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been Rejected.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You should get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div><div>----</div><div><font size=\"3\"><br></font></div><div><font size=\"3\"> {{amount}} {{currency}} has been <b>refunded </b>to your account and your current Balance is <b>{{post_balance}}</b><b> {{currency}}</b></font></div><div><br></div><div>-----</div><div><br></div><div><font size=\"4\">Details of Rejection :</font></div><div><font size=\"4\"><b>{{admin_details}}</b></font></div><div><br></div><div><br><br><br><br><br><br></div>', 'Admin Rejected Your {{amount}} {{currency}} withdraw request. Your Main Balance {{main_balance}}  {{method}} , Transaction {{transaction}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\", \"admin_details\":\"Details Provided By Admin\"}', 1, 1, '2020-06-09 18:00:00', '2020-06-14 18:00:00'),
(212, 'WITHDRAW_APPROVE', 'Withdraw - Admin  Approved', 'Withdraw Request has been Processed and your money is sent', '<div>Your withdraw request of <b>{{amount}} {{currency}}</b>&nbsp; via&nbsp; <b>{{method_name}} </b>has been Processed Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your withdraw:<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>You will get: {{method_amount}} {{method_currency}} <br></div><div>Via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div>-----</div><div><br></div><div><font size=\"4\">Details of Processed Payment :</font></div><div><font size=\"4\"><b>{{admin_details}}</b></font></div><div><br></div><div><br><br><br><br><br></div>', 'Admin Approve Your {{amount}} {{currency}} withdraw request by {{method}}. Transaction {{transaction}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"admin_details\":\"Details Provided By Admin\"}', 1, 1, '2020-06-10 18:00:00', '2020-06-06 18:00:00'),
(215, 'BAL_ADD', 'Balance Add by Admin', 'Your Account has been Credited', '<div>{{amount}} {{currency}} has been added to your account .</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}&nbsp;</b></font>', '{{amount}} {{currency}} credited in your account. Your Current Balance {{remaining_balance}} {{currency}} . Transaction: #{{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2019-09-14 19:14:22', '2021-01-06 00:46:18'),
(216, 'BAL_SUB', 'Balance Subtracted by Admin', 'Your Account has been Debited', '<div>{{amount}} {{currency}} has been subtracted from your account .</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}</b></font>', '{{amount}} {{currency}} debited from your account. Your Current Balance {{remaining_balance}} {{currency}} . Transaction: #{{trx}}', '{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"post_balance\":\"Users Balance After this operation\"}', 1, 1, '2019-09-14 19:14:22', '2019-11-10 09:07:12'),
(217, 'PROPERTY_BOOKED', 'Property Booked Successfully', 'Property Booked Successfully', '<div><span style=\"color: rgb(33, 37, 41); font-size: 1rem;\">Your property </span><b style=\"font-size: 1rem;\">{{ property_name }} </b><span style=\"color: rgb(33, 37, 41); font-size: 1rem;\">recently\r\n        booked by </span><b style=\"font-size: 1rem;\">{{ user_name }} </b><span style=\"color: rgb(33, 37, 41); font-size: 1rem;\">.</span><br></div>\r\n<div><br></div>\r\n<div><b><br></b></div>\r\n<div><b>Details of your booked property:<br></b></div>\r\n<div><span style=\"font-size: 1rem;\"><br></span></div>\r\n<div><span>Check In Date: {{ check_in_date }}</span><br></div>\r\n<div><span>Check out Date: {{ check_out_date }}</span><span style=\"font-size: 1rem;\"><br></span></div>\r\n<div>Amount : {{ amount }} {{ currency }}</div>\r\n<div>Total Rooms: {{ total_room }}</div>\r\n<div><br></div>\r\n<div>Balance: {{ post_balance }}</div>\r\n<div><br></div>\r\n<div>Paid via :&nbsp; {{ method_name }}</div>\r\n<div>Currency: {{ method_currency }}</div>\r\n<div><br></div>\r\n<div>Transaction Number : {{ trx }}</div>\r\n<div><br></div>\r\n<div><br></div>\r\n<div><br><br><br></div>', '{{amount}} {{currrency}} Deposit successfully by {{gateway_name}}', '{\r\n  \"property_name\": \"Property Name\",\r\n  \"user_name\": \"User Fullname\",\r\n  \"check_in_date\": \"Check In Date\",\r\n  \"check_out_date\": \"Check Out Date\",\r\n  \"trx\": \"Transaction Number\",\r\n  \"amount\": \"Request Amount By user\",\r\n  \"currency\": \"Site Currency\",\r\n  \"total_room\": \"Total Rooms\",\r\n  \"method_name\": \"Payment Method Name\",\r\n  \"method_currency\": \"Payment Method Currency\",\r\n  \"post_balance\": \"Owner Balance After this operation\"\r\n}', 1, 1, '2020-06-24 18:00:00', '2022-02-13 08:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `act` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `script` text DEFAULT NULL,
  `shortcode` text DEFAULT NULL COMMENT 'object',
  `support` text DEFAULT NULL COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=>enable, 2=>disable',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extensions`
--

INSERT INTO `extensions` (`id`, `act`, `name`, `description`, `image`, `script`, `shortcode`, `support`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'tawk-chat', 'Tawk.to', 'Key location is shown bellow', 'tawky_big.png', '<script>\r\n                        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n                        (function(){\r\n                        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\n                        s1.async=true;\r\n                        s1.src=\"https://embed.tawk.to/{{app_key}}\";\r\n                        s1.charset=\"UTF-8\";\r\n                        s1.setAttribute(\"crossorigin\",\"*\");\r\n                        s0.parentNode.insertBefore(s1,s0);\r\n                        })();\r\n                    </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"------\"}}', 'twak.png', 0, NULL, '2019-10-18 23:16:05', '2022-02-16 08:24:54'),
(2, 'google-recaptcha2', 'Google Recaptcha 2', 'Key location is shown bellow', 'recaptcha3.png', '\r\n<script src=\"https://www.google.com/recaptcha/api.js\"></script>\r\n<div class=\"g-recaptcha\" data-sitekey=\"{{sitekey}}\" data-callback=\"verifyCaptcha\"></div>\r\n<div id=\"g-recaptcha-error\"></div>', '{\"sitekey\":{\"title\":\"Site Key\",\"value\":\"6Lfpm3cUAAAAAGIjbEJKhJNKS4X1Gns9ANjh8MfH\"}}', 'recaptcha.png', 0, NULL, '2019-10-18 23:16:05', '2022-02-16 08:31:35'),
(3, 'custom-captcha', 'Custom Captcha', 'Just Put Any Random String', 'customcaptcha.png', NULL, '{\"random_key\":{\"title\":\"Random String\",\"value\":\"SecureString\"}}', 'na', 0, NULL, '2019-10-18 23:16:05', '2022-02-16 08:31:32'),
(4, 'google-analytics', 'Google Analytics', 'Key location is shown bellow', 'google_analytics.png', '<script async src=\"https://www.googletagmanager.com/gtag/js?id={{app_key}}\"></script>\r\n                <script>\r\n                  window.dataLayer = window.dataLayer || [];\r\n                  function gtag(){dataLayer.push(arguments);}\r\n                  gtag(\"js\", new Date());\r\n                \r\n                  gtag(\"config\", \"{{app_key}}\");\r\n                </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"------\"}}', 'ganalytics.png', 0, NULL, NULL, '2022-02-16 08:31:53'),
(5, 'fb-comment', 'Facebook Comment ', 'Key location is shown bellow', 'Facebook.png', '<div id=\"fb-root\"></div><script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v4.0&appId={{app_key}}&autoLogAppEvents=1\"></script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"----\"}}', 'fb_com.PNG', 0, NULL, NULL, '2022-02-16 08:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `frontends`
--

CREATE TABLE `frontends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data_keys` varchar(40) NOT NULL,
  `data_values` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontends`
--

INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `created_at`, `updated_at`) VALUES
(1, 'seo.data', '{\"seo_image\":\"1\",\"keywords\":[\"hotel booking platform\"],\"description\":\"Find best Hotel of NCR\",\"social_title\":\"Qotel\",\"social_description\":\"Find best Hotel of NCR\",\"image\":\"620d0ee4404021645022948.png\"}', '2020-07-04 23:42:52', '2022-10-27 03:56:11'),
(24, 'about.content', '{\"has_image\":\"1\",\"heading\":\"Latest News\",\"sub_heading\":\"Register New Account\",\"description\":\"fdg sdfgsdf g ggg\",\"about_icon\":\"<i class=\\\"las la-address-card\\\"><\\/i>\",\"background_image\":\"60951a84abd141620384388.png\",\"about_image\":\"5f9914e907ace1603867881.jpg\"}', '2020-10-28 00:51:20', '2021-05-07 10:16:28'),
(25, 'blog.content', '{\"heading\":\"Get inspired by latest blogs\",\"sub_heading\":\"Coming Soon...\"}', '2020-10-28 00:51:34', '2022-12-27 05:29:20'),
(27, 'contact_us.content', '{\"title\":\"Contact us for any information\",\"contact_address\":\"Qotel Hospitality and Technologies Pvt. Ltd., Office# 2, J Block, Paryavaran Complex, Sainik Farm, New Delhi - 110030\",\"email_address\":\"info@qotel.in\",\"contact_number\":\"+91 9205 59 59 00; +91 97111 581 33\",\"contact_form_title\":\"Do you have any question?\",\"google_map_embed_url\":\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3766.2288158353444!2d-99.0044584845315!3d19.27241318697555!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85ce1cb7840d3c13%3A0x61422dfa651e344d!2sVISERLAB!5e0!3m2!1sen!2sbd!4v1619710240444!5m2!1sen!2sbd\"}', '2020-10-28 00:59:19', '2022-12-30 22:39:35'),
(28, 'counter.content', '{\"heading\":\"Latest News\",\"sub_heading\":\"Register New Account\"}', '2020-10-28 01:04:02', '2020-10-28 01:04:02'),
(31, 'social_icon.element', '{\"title\":\"Facebook\",\"social_icon\":\"<i class=\\\"lab la-facebook-f\\\"><\\/i>\",\"url\":\"https:\\/\\/www.facebook.com\\/qotel\"}', '2020-11-12 04:07:30', '2022-12-27 05:28:07'),
(33, 'feature.content', '{\"heading\":\"asdf\",\"sub_heading\":\"asdf\"}', '2021-01-03 23:40:54', '2021-01-03 23:40:55'),
(34, 'feature.element', '{\"title\":\"asdf\",\"description\":\"asdf\",\"feature_icon\":\"asdf\"}', '2021-01-03 23:41:02', '2021-01-03 23:41:02'),
(35, 'service.element', '{\"trx_type\":\"withdraw\",\"service_icon\":\"<i class=\\\"las la-highlighter\\\"><\\/i>\",\"title\":\"asdfasdf\",\"description\":\"asdfasdfasdfasdf\"}', '2021-03-06 01:12:10', '2021-03-06 01:12:10'),
(36, 'service.content', '{\"trx_type\":\"withdraw\",\"heading\":\"asdf fffff\",\"sub_heading\":\"asdf asdfasdf\"}', '2021-03-06 01:27:34', '2021-03-06 02:19:39'),
(39, 'banner.content', '{\"has_image\":\"1\",\"heading\":\"Explore the best hotels in Delhi and NCR\",\"sub_heading\":\"Your local guide and stay experts\",\"background_image\":\"61cd85a17d5201640859041.jpg\"}', '2021-05-02 06:09:30', '2022-12-27 05:32:41'),
(41, 'cookie.data', '{\"link\":\"https:\\/\\/hotel.smartdaytech897.com\\/page\\/42\\/privacy-policy\",\"description\":\"We may use cookies or any other tracking technologies when you visit our website, including any other media form, mobile website, or mobile application related or connected to help customize the Site and improve your experience.\",\"status\":1}', '2020-07-04 23:42:52', '2022-10-31 01:53:43'),
(42, 'policy_pages.element', '{\"title\":\"Privacy Policy\",\"details\":\"<div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h4 style=\\\"margin-bottom:0.5rem;font-family:Arial, Helvetica, sans-serif;line-height:1.2;color:rgb(219,34,133);font-size:1.5rem;\\\">Introduction<\\/h4><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\"><\\/h3><p style=\\\"margin-bottom:1rem;color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\">This Privacy Policy states the collection, use and protection of the Personal Information collected on this website. These terms and condition refers to Qotel and its subsidiaries. This policy is not applicable to our corporate partners or other business affiliates. We request you to independently view their privacy policies. Also, Qotel is not responsible or does not commit to privacy policy stated by Corporate Partners.<\\/p><br style=\\\"color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;\\\" \\/><h4 style=\\\"margin-bottom:0.5rem;font-family:Arial, Helvetica, sans-serif;line-height:1.2;color:rgb(219,34,133);font-size:1.5rem;\\\">Information Collected by us<\\/h4><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\"><\\/h3><p style=\\\"margin-bottom:1rem;color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\">In general, you can browse this website without revealing any personal information about yourself. However, in the event you desire to make any reservations through our website, we will require information such as your name, contact number, email id, billing information, bank account details and such other personal information. You are requested to provide accurate and correct information. We shall not be responsible for the authenticity of the personal information or data supplied by the users and any inconvenience caused because of the same. Based on your use of our services and on your behavior on this website, we may automatically track certain information about you. We use this information to do internal research on our users\' demographics, interests and behavior to better understand, protect and serve our users. We also monitor customer traffic patterns and website use, which enables us to improve the service we provide. We assure you that we will collect only such information as is necessary and relevant to us to provide you with the services available on the Site.<\\/p><br style=\\\"color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;\\\" \\/><h4 style=\\\"margin-bottom:0.5rem;font-family:Arial, Helvetica, sans-serif;line-height:1.2;color:rgb(219,34,133);font-size:1.5rem;\\\">Personal Information<\\/h4><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\"><\\/h3><p style=\\\"margin-bottom:1rem;color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\">Personal Information is that information which, we may collect from you and is capable of identifying you. This information may include name, address, mailing address, telephone number, e - mail address, credit card number, debit card number, cardholder name, expiration date, information about the travel, bookings, co-passengers, transaction history with Qotel and any other information that is shared by users of the website.<\\/p><br style=\\\"color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;\\\" \\/><h4 style=\\\"margin-bottom:0.5rem;font-family:Arial, Helvetica, sans-serif;line-height:1.2;color:rgb(219,34,133);font-size:1.5rem;\\\">Cookies<\\/h4><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\"><\\/h3><p style=\\\"margin-bottom:1rem;color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\">We may use data collection devices such as \\\"cookies\\\" on certain pages of the Site to help analyze our web page flow, measure promotional effectiveness, and promote trust and safety. We may also use cookies to allow you to enter your password less frequently during a session. Cookies can also help us provide information that is targeted to your interests. You are always free to decline our cookies if your browser permits, although in that case you may not be able to use certain features on the Site.<\\/p><br style=\\\"color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;\\\" \\/><h4 style=\\\"margin-bottom:0.5rem;font-family:Arial, Helvetica, sans-serif;line-height:1.2;color:rgb(219,34,133);font-size:1.5rem;\\\">Use of information collected<\\/h4><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\"><\\/h3><p style=\\\"margin-bottom:1rem;color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\">We assure you that we use the personal information you provide us only as appropriate and required in the ordinary course of business. We use your personal information to allow us to process your reservation on the website, to provide you with improved services, to contact you when it is needed by telephone and e-mail and to assist you, to share the same with trusted third parties, if so required. Further, the relevant information may be used by us to communicate with you on any matter relating to your reservation and \\/ or to communicate the details thereof and of other services displayed on this website. We may also use your personal information to resolve disputes, troubleshoot problems, measure consumer interest in the services provided by us, inform you about online and offline offers, services, and updates; customize your experience; detect and protect us against error, fraud and other criminal activity; enforce the Terms and Conditions of Use; and as otherwise described to you at the time of collection. The information may also be used to improve our marketing and promotional efforts, to analyze site usage, improve and customize the website\\u2019s content, layout, and services. These uses improve the website and help us to tailor it to meet your needs so as to provide you with a smooth, efficient, safe and customized experience while using the Site.<\\/p><br style=\\\"color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;\\\" \\/><h4 style=\\\"margin-bottom:0.5rem;font-family:Arial, Helvetica, sans-serif;line-height:1.2;color:rgb(219,34,133);font-size:1.5rem;\\\">Changes in this Privacy Policy<\\/h4><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\"><\\/h3><p style=\\\"margin-bottom:1rem;color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\">We may update this Privacy Policy in the future when we feel to do so. Any changes we may make to our Privacy Policy in the future will be posted on this page. You should access our privacy policy regularly in order to familiarize yourself with the latest policy.<\\/p><br style=\\\"color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;\\\" \\/><h4 style=\\\"margin-bottom:0.5rem;font-family:Arial, Helvetica, sans-serif;line-height:1.2;color:rgb(219,34,133);font-size:1.5rem;\\\">How we protect your personal information?<\\/h4><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\"><\\/h3><p style=\\\"margin-bottom:1rem;color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\">All payments on the Website are secured. This means all Personal Information you provide is transmitted using TLS (Transport Layer Security) encryption. TSL is a proven coding system that lets your browser automatically encrypt, or scramble, data before you send it to us. Website has stringent security measures in place to protect the loss, misuse, and alteration of the information under our control. Whenever you change or access your account information, we offer the use of a secure server. Once your information is in our possession we adhere to strict security guidelines, protecting it against unauthorized access.<\\/p><br style=\\\"color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;\\\" \\/><h4 style=\\\"margin-bottom:0.5rem;font-family:Arial, Helvetica, sans-serif;line-height:1.2;color:rgb(219,34,133);font-size:1.5rem;\\\">Your rights for the personal information<\\/h4><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\"><\\/h3><p style=\\\"margin-bottom:1rem;color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\">You may access your Personal Information from your user account with Qotel. You may also correct your personal information or delete such information (except some mandatory fields) from your user account directly. You can send an email also to care@Qotel.in for any data deletion requests.<\\/p><\\/div>\"}', '2021-06-09 08:50:42', '2022-12-26 12:58:51'),
(43, 'policy_pages.element', '{\"title\":\"Terms of Service\",\"details\":\"<div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;margin-bottom:3rem;\\\"><h4 style=\\\"margin-bottom:0.5rem;font-family:Arial, Helvetica, sans-serif;line-height:1.2;color:rgb(219,34,133);font-size:1.5rem;\\\">Express Consent<\\/h4><p style=\\\"margin-bottom:1rem;color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\">Your use of this website is subject to the following Terms and Conditions along with the Privacy Policy and all other policies listed on the website under various captions and headings. The terms contained herein as well as those stated under various headings on the website, form an agreement regulating your relationship with Qotel Hospitality Private Limited with regard to the use of its services, by you. By accessing, viewing, browsing, caching, storing and \\/ or otherwise using our website or any of our services, applications, contents, functions through whatever platform (hereafter collectively referred to as the \\\"website\\\") and\\/or by completing a reservation, you acknowledge and agree to have read, understood and agreed to the terms and conditions set out below (including the Privacy Policy) and agree to be bound by them with all applicable laws and regulations.<\\/p><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\"><br style=\\\"color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\" \\/><\\/p><h4 style=\\\"margin-bottom:0.5rem;font-family:Arial, Helvetica, sans-serif;line-height:1.2;color:rgb(219,34,133);font-size:1.5rem;\\\">Eligibility<\\/h4><p style=\\\"margin-bottom:1rem;color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\">The use of Website and\\/or Application is available only to individuals and entities that can form legally binding contracts under applicable law. By accessing or using the Website and\\/or Application you represent and warrant that you legally eligible.<\\/p><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\"><br style=\\\"color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\" \\/><\\/p><h4 style=\\\"margin-bottom:0.5rem;font-family:Arial, Helvetica, sans-serif;line-height:1.2;color:rgb(219,34,133);font-size:1.5rem;\\\">Amendments<\\/h4><p style=\\\"margin-bottom:1rem;color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\">Qotel reserves the right, at its sole discretion, to amend\\/ modify the Website (including but not limited to the Services and content present therein) or to amend these Terms &amp; Conditions, at any time and without prior notice. Qotel also reserve the right to suspend or discontinue any aspects of the Website or Service at any time without prior information and without being liable for any direct or indirect loss as a result of such action. Your continuance in using the Website would be considered as an acknowledgement for acceptance of the modified Website or Services including these Terms &amp; Conditions.<\\/p><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\"><br style=\\\"color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\" \\/><\\/p><h4 style=\\\"margin-bottom:0.5rem;font-family:Arial, Helvetica, sans-serif;line-height:1.2;color:rgb(219,34,133);font-size:1.5rem;\\\">Use of website<\\/h4><p style=\\\"margin-bottom:1rem;color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\">You may only use this website to make genuine and valid reservations or purchases. You may not use this website to make any fraudulent, false and exploratory reservation. You will be financially liable for all uses of this website. You will be responsible to keep your passwords, login and account information in confidentiality. You confirm and undertakes that the registration data, information\\/data provided or uploaded onto the Website\\/ Application by the User: (a) shall not be false, inaccurate, misleading or incomplete; or (b) shall not be fraudulent or involve the use of counterfeit or stolen Credit Cards; or (c) shall not infringe any third party\'s intellectual property, trade secret or other proprietary rights or rights of publicity or privacy; or (d) shall not be defamatory, libellous, unlawfully threatening or unlawfully harassing; or (f) shall not contain any viruses.<\\/p><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\"><br style=\\\"color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\" \\/><\\/p><h4 style=\\\"margin-bottom:0.5rem;font-family:Arial, Helvetica, sans-serif;line-height:1.2;color:rgb(219,34,133);font-size:1.5rem;\\\">Indemnification<\\/h4><p style=\\\"margin-bottom:1rem;color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\">You agree to indemnify and hold harmless Qotel, its affiliates, officers, directors, employees, consultants, licensors, agents, and representatives from any and all third party claims, losses, liability, damages, and\\/or costs (including reasonable attorney fees and costs) arising from your access to or use of Services, violation of these Terms of Use, or infringement, or infringement by any other user of his\\/her\\/its account, of any intellectual property or other right of any person or entity. Qotel will notify you promptly of any such claim, loss, liability, or demand, and in addition to your foregoing obligations, you agree to provide us with reasonable assistance, at your expense, in defending any such claim, loss, liability, damage, or cost.<\\/p><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\"><br style=\\\"color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\" \\/><\\/p><h4 style=\\\"margin-bottom:0.5rem;font-family:Arial, Helvetica, sans-serif;line-height:1.2;color:rgb(219,34,133);font-size:1.5rem;\\\">Limitation of Liability<\\/h4><p style=\\\"margin-bottom:1rem;color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\">In no event will Qotel be liable to any person for any direct, indirect, incidental, special, exemplary or consequential damages of an type whatsoever related to or arising from this website or any use of this website or of any website or resource linked to, referenced or accessed through this website. This exclusion and waiver of liability applies to all causes of action, whether based in contract, warranty, tort or any other legal theories.<\\/p><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\"><br style=\\\"color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\" \\/><\\/p><h4 style=\\\"margin-bottom:0.5rem;font-family:Arial, Helvetica, sans-serif;line-height:1.2;color:rgb(219,34,133);font-size:1.5rem;\\\">Intellectual Property<\\/h4><p style=\\\"margin-bottom:1rem;color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\">The Website may contain links to third-party websites or resources. You acknowledge and agree that Qotel is not responsible or liable for correctness or accuracy of information available on such websites. Any links to such websites or resources would only be for information purpose only. Qotel shall not be responsible for any risk arising from your use of any such websites or resources or the content, products or services available on such websites or resources. The user of Website is requested to verify the accuracy of all information on their own before undertaking any reliance on such information of such websites or resources.<\\/p><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\"><br style=\\\"color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\" \\/><\\/p><h4 style=\\\"margin-bottom:0.5rem;font-family:Arial, Helvetica, sans-serif;line-height:1.2;color:rgb(219,34,133);font-size:1.5rem;\\\">Third Party Links<\\/h4><p style=\\\"margin-bottom:1rem;color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\">You may access your Personal Information from your user account with Qotel. You may also correct your personal information or delete such information (except some mandatory fields) from your user account directly. You can send an email also to care@Qotel.in for any data deletion requests.<\\/p><\\/div>\"}', '2021-06-09 08:51:18', '2022-12-26 12:59:42'),
(44, 'location.content', '{\"has_image\":\"1\",\"heading\":\"Discover best hotel for your next visit.\",\"sub_heading\":\"Delighting 6000+ guests every month through Qotel operated hotels\",\"button\":\"Discover All\",\"button_url\":\"locations\",\"background_image\":\"61cd8b6347a371640860515.jpg\"}', '2021-12-30 09:43:00', '2022-12-27 05:01:52'),
(45, 'property_type.content', '{\"heading\":\"Choose your option\",\"sub_heading\":\"Discover Delhi\\/NCR \\u2014 explore exhilarating journeys, inspiring stories and stunning natural wonders from across our city. Ignite your senses and find something you love, right here in Delhi and NCR.\"}', '2021-12-30 09:44:11', '2022-12-27 05:13:53'),
(46, 'top_trip.content', '{\"has_image\":\"1\",\"heading\":\"Trending properties...\",\"sub_heading\":\"Trending properties in your area, Book now\",\"background_image\":\"61cd86b40aad51640859316.jpg\"}', '2021-12-30 09:45:16', '2022-12-27 05:17:04'),
(47, 'testimonial.content', '{\"heading\":\"Our Happy Guests\",\"sub_heading\":\"Delighting 6000+ guests every month through Qotel operated hotels\"}', '2021-12-30 10:26:35', '2022-12-27 05:20:48'),
(48, 'testimonial.element', '{\"name\":\"Sayara Ahmed\",\"feedback\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sint laudantium quis velit delectus molestias. Animi quae in nam, sed, quis, odit aut cumque voluptatum nihil possimus accusantium modi. Deserunt, optio. Maiores possimus eos vitae quam odit mollitia, ipsam aperiam temporibus. Blanditiis eligendi atque sapiente perferendis magni ullam rerum laborum labore incidunt libero.\",\"star\":\"5\",\"has_image\":\"1\",\"image\":\"61cd910cf214a1640861964.jpg\"}', '2021-12-30 10:29:24', '2022-02-09 12:25:18'),
(49, 'testimonial.element', '{\"name\":\"Sayara Ahmed\",\"feedback\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sint laudantium quis velit delectus molestias. Animi quae in nam, sed, quis, odit aut cumque voluptatum nihil possimus accusantium modi. Deserunt, optio. Maiores possimus eos vitae quam odit mollitia, ipsam aperiam temporibus. Blanditiis eligendi atque sapiente perferendis magni ullam rerum laborum labore incidunt libero.\",\"star\":\"4\",\"has_image\":\"1\",\"image\":\"61cd93451e5d41640862533.jpg\"}', '2021-12-30 10:30:36', '2022-02-09 12:25:26'),
(50, 'testimonial.element', '{\"name\":\"Sayara Ahmed\",\"feedback\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sint laudantium quis velit delectus molestias. Animi quae in nam, sed, quis, odit aut cumque voluptatum nihil possimus accusantium modi. Deserunt, optio. Maiores possimus eos vitae quam odit mollitia, ipsam aperiam temporibus. Blanditiis eligendi atque sapiente perferendis magni ullam rerum laborum labore incidunt libero.\",\"star\":\"5\",\"has_image\":\"1\",\"image\":\"61cd916345e131640862051.jpg\"}', '2021-12-30 10:30:51', '2022-02-09 12:24:41'),
(51, 'works.content', '{\"title\":\"How it Works\",\"heading\":\"Save Your Time &amp; enjoy Your Trip\",\"has_image\":\"1\",\"background_image\":\"61cd93f54844f1640862709.jpg\",\"left_image\":\"61cdb6fd2f2e81640871677.png\",\"right_image\":\"61cdb6fd48ace1640871677.png\"}', '2021-12-30 10:41:49', '2021-12-30 13:11:17'),
(52, 'works.element', '{\"step\":\"Create an account\"}', '2021-12-30 10:42:05', '2021-12-30 10:42:05'),
(53, 'works.element', '{\"step\":\"Search desire hotel\"}', '2021-12-30 10:42:16', '2021-12-30 10:42:16'),
(54, 'works.element', '{\"step\":\"Book the hotel\"}', '2021-12-30 10:42:26', '2021-12-30 10:42:26'),
(55, 'works.element', '{\"step\":\"Enjoy your holiday\"}', '2021-12-30 10:42:37', '2021-12-30 10:42:37'),
(56, 'video.content', '{\"has_image\":\"1\",\"heading\":\"Take a short look &amp; enjoy your holiday\",\"sub_heading\":\"Ye Delhi hai meri Jaan...\",\"video_url\":\"https:\\/\\/www.youtube.com\\/embed\\/nqye02H_H6I\",\"background_image\":\"61cd9bf71f39a1640864759.jpg\"}', '2021-12-30 11:15:59', '2022-12-27 05:21:53'),
(57, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Optio omnis quaerat illum imilique\",\"description_nic\":\"<p class=\\\"mt-4 mb-3\\\" style=\\\"color:rgb(70,70,70);font-size:16px;margin-right:0px;margin-left:0px;font-family:Roboto, sans-serif;\\\">sPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In dui maosuere eget, vestibulum et, tempor auctor, justo. In ac felis quis tortor malesuada pretium. Pellentesque auctor neque nec urna. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Aenean viverra rhoncus pede. fringilla tstique. Morbi mattis ullamcorper velit. Phasellus gravida semper nisi. Nullam vel sem.<\\/p><p class=\\\"mb-3\\\" style=\\\"color:rgb(70,70,70);font-size:16px;margin-right:0px;margin-left:0px;font-family:Roboto, sans-serif;\\\">Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,<\\/p><h3 class=\\\"text-capitalize mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:1.5rem;color:rgb(55,62,74);font-family:\'Playfair Display\', serif;\\\">Maecenas Dempuget Condimentum Rhoncus<\\/h3><p class=\\\"mb-3\\\" style=\\\"color:rgb(70,70,70);font-size:16px;margin-right:0px;margin-left:0px;font-family:Roboto, sans-serif;\\\">Dorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,<\\/p><h4 class=\\\"text-capitalize mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:1.375rem;color:rgb(55,62,74);font-family:\'Playfair Display\', serif;\\\">Maecenas Dempuget Condimentum Rhoncus<\\/h4><p class=\\\"mb-3\\\" style=\\\"color:rgb(70,70,70);font-size:16px;margin-right:0px;margin-left:0px;font-family:Roboto, sans-serif;\\\">Dorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,<\\/p><h5 class=\\\"text-capitalize mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:1.25rem;color:rgb(55,62,74);font-family:\'Playfair Display\', serif;\\\">Maecenas Dempuget Condimentum Rhoncus<\\/h5><div class=\\\"row g-4\\\" style=\\\"color:rgb(70,70,70);font-family:Roboto, sans-serif;\\\"><div class=\\\"col-lg-6\\\" style=\\\"width:410px;max-width:100%;\\\"><ul class=\\\"list list--primary list--column\\\"><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Curabitur ullamcorper ultricies nisiam eget<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Fringilla mauris sit amet nibonec sodales<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Aenean leo ligula porttitor euconsequat<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Maecenas tempus tellus eget condim<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">\\u00a0Must have medical certificat<\\/li><\\/ul><\\/div><div class=\\\"col-lg-6\\\" style=\\\"width:410px;max-width:100%;\\\"><ul class=\\\"list list--primary list--column\\\"><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Must have medical certificat<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Curabitur ullamcorper ultricies nisiam eget<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Fringilla mauris sit amet nibonec sodales<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Aenean leo ligula porttitor euconsequat<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">\\u00a0Maecenas tempus tellus eget condim<\\/li><\\/ul><\\/div><\\/div>\",\"blog_image\":\"620d12df75f161645023967.jpg\"}', '2021-12-30 11:59:24', '2022-02-16 09:06:07'),
(58, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Deleniti odio dolore dignissimos ullam\",\"description_nic\":\"<p class=\\\"mt-4 mb-3\\\" style=\\\"margin-right:0px;margin-left:0px;color:rgb(70,70,70);font-family:Roboto, sans-serif;font-size:16px;\\\">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In dui maosuere eget, vestibulum et, tempor auctor, justo. In ac felis quis tortor malesuada pretium. Pellentesque auctor neque nec urna. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Aenean viverra rhoncus pede. fringilla tstique. Morbi mattis ullamcorper velit. Phasellus gravida semper nisi. Nullam vel sem.<\\/p><p class=\\\"mb-3\\\" style=\\\"margin-right:0px;margin-left:0px;color:rgb(70,70,70);font-family:Roboto, sans-serif;font-size:16px;\\\">Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,<\\/p><h3 class=\\\"text-capitalize mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:1.5rem;font-family:\'Playfair Display\', serif;color:rgb(55,62,74);\\\">Maecenas Dempuget Condimentum Rhoncus<\\/h3><p class=\\\"mb-3\\\" style=\\\"margin-right:0px;margin-left:0px;color:rgb(70,70,70);font-family:Roboto, sans-serif;font-size:16px;\\\">Dorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,<\\/p><h4 class=\\\"text-capitalize mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:1.375rem;font-family:\'Playfair Display\', serif;color:rgb(55,62,74);\\\">Maecenas Dempuget Condimentum Rhoncus<\\/h4><p class=\\\"mb-3\\\" style=\\\"margin-right:0px;margin-left:0px;color:rgb(70,70,70);font-family:Roboto, sans-serif;font-size:16px;\\\">Dorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,<\\/p><h5 class=\\\"text-capitalize mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:1.25rem;font-family:\'Playfair Display\', serif;color:rgb(55,62,74);\\\">Maecenas Dempuget Condimentum Rhoncus<\\/h5><div class=\\\"row g-4\\\" style=\\\"color:rgb(70,70,70);font-family:Roboto, sans-serif;\\\"><div class=\\\"col-lg-6\\\" style=\\\"width:410px;max-width:100%;\\\"><ul class=\\\"list list--primary list--column\\\"><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Curabitur ullamcorper ultricies nisiam eget<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Fringilla mauris sit amet nibonec sodales<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Aenean leo ligula porttitor euconsequat<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Maecenas tempus tellus eget condim<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">\\u00a0Must have medical certificat<\\/li><\\/ul><\\/div><div class=\\\"col-lg-6\\\" style=\\\"width:410px;max-width:100%;\\\"><ul class=\\\"list list--primary list--column\\\"><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Must have medical certificat<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Curabitur ullamcorper ultricies nisiam eget<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Fringilla mauris sit amet nibonec sodales<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Aenean leo ligula porttitor euconsequat<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">\\u00a0Maecenas tempus tellus eget condim<\\/li><\\/ul><\\/div><\\/div>\",\"blog_image\":\"620d13ec7160b1645024236.jpg\"}', '2021-12-30 11:59:33', '2022-02-16 09:10:36'),
(59, 'blog.element', '{\"has_image\":[\"1\"],\"title\":\"Amet consectetur adipisicing elit pede\",\"description_nic\":\"<p class=\\\"mt-4 mb-3\\\" style=\\\"color:rgb(70,70,70);font-size:16px;margin-right:0px;margin-left:0px;font-family:Roboto, sans-serif;\\\">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In dui maosuere eget, vestibulum et, tempor auctor, justo. In ac felis quis tortor malesuada pretium. Pellentesque auctor neque nec urna. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Aenean viverra rhoncus pede. fringilla tstique. Morbi mattis ullamcorper velit. Phasellus gravida semper nisi. Nullam vel sem.<\\/p><p class=\\\"mb-3\\\" style=\\\"color:rgb(70,70,70);font-size:16px;margin-right:0px;margin-left:0px;font-family:Roboto, sans-serif;\\\">Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,<\\/p><h3 class=\\\"text-capitalize mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:1.5rem;color:rgb(55,62,74);font-family:\'Playfair Display\', serif;\\\">Maecenas Dempuget Condimentum Rhoncus<\\/h3><p class=\\\"mb-3\\\" style=\\\"color:rgb(70,70,70);font-size:16px;margin-right:0px;margin-left:0px;font-family:Roboto, sans-serif;\\\">Dorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,<\\/p><h4 class=\\\"text-capitalize mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:1.375rem;color:rgb(55,62,74);font-family:\'Playfair Display\', serif;\\\">Maecenas Dempuget Condimentum Rhoncus<\\/h4><p class=\\\"mb-3\\\" style=\\\"color:rgb(70,70,70);font-size:16px;margin-right:0px;margin-left:0px;font-family:Roboto, sans-serif;\\\">Dorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,<\\/p><h5 class=\\\"text-capitalize mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:1.25rem;color:rgb(55,62,74);font-family:\'Playfair Display\', serif;\\\">Maecenas Dempuget Condimentum Rhoncus<\\/h5><div class=\\\"row g-4\\\" style=\\\"color:rgb(70,70,70);font-family:Roboto, sans-serif;\\\"><div class=\\\"col-lg-6\\\" style=\\\"width:410px;max-width:100%;\\\"><ul class=\\\"list list--primary list--column\\\"><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Curabitur ullamcorper ultricies nisiam eget<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Fringilla mauris sit amet nibonec sodales<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Aenean leo ligula porttitor euconsequat<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Maecenas tempus tellus eget condim<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">\\u00a0Must have medical certificat<\\/li><\\/ul><\\/div><div class=\\\"col-lg-6\\\" style=\\\"width:410px;max-width:100%;\\\"><ul class=\\\"list list--primary list--column\\\"><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Must have medical certificat<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Curabitur ullamcorper ultricies nisiam eget<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Fringilla mauris sit amet nibonec sodales<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin:0px 0px 0.5rem;\\\">\\u00a0Aenean leo ligula porttitor euconsequat<\\/li><li class=\\\"list__item list--column__item-sm\\\" style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">\\u00a0Maecenas tempus tellus eget condim<\\/li><\\/ul><\\/div><\\/div>\",\"blog_image\":\"620d130052d3e1645024000.jpg\"}', '2021-12-30 11:59:41', '2022-02-16 09:06:40'),
(63, 'footer.content', '{\"has_image\":\"1\",\"short_description\":\"Coeval, Affordable &amp; Quality\",\"address\":\"Qotel Hospitality and Technologies Pvt. Ltd., Shop# 2, J Block, Paryavaran Complex, Sainik Farm, New Delhi - 110030\",\"background_image\":\"61cdac5c147871640868956.jpg\"}', '2021-12-30 12:25:56', '2022-12-27 05:26:26'),
(64, 'auth.content', '{\"heading\":\"Find Your Own Hotel\",\"sub_heading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti laboriosam dolor est beatae a possimus cumque quaerat, provident.\",\"has_image\":\"1\",\"background_image\":\"61cfee13d4ce21641016851.jpg\"}', '2022-01-01 05:30:51', '2022-01-01 05:30:53'),
(65, 'social_icon.element', '{\"title\":\"Twitter\",\"social_icon\":\"<i class=\\\"fab fa-twitter\\\"><\\/i>\",\"url\":\"https:\\/\\/twitter.com\\/theqotels\"}', '2022-01-16 12:32:52', '2022-12-27 05:27:52'),
(66, 'social_icon.element', '{\"title\":\"LinkedIn\",\"social_icon\":\"<i class=\\\"lab la-linkedin-in\\\"><\\/i>\",\"url\":\"https:\\/\\/www.linkedin.com\\/company\\/qotel-hotels-resorts\"}', '2022-01-16 12:33:16', '2022-12-27 05:27:39'),
(69, 'subscribe.content', '{\"heading\":\"Subscribe our newsletter for future updates\"}', '2022-02-03 10:35:42', '2022-02-03 11:24:32'),
(70, 'login.content', '{\"has_image\":\"1\",\"heading\":\"Find Your Own Hotel\",\"sub_heading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti laboriosam dolor est beatae a possimus cumque quaerat, provident.\",\"background_image\":\"62075a78e99771644649080.jpg\"}', '2022-02-12 06:28:00', '2022-02-12 06:34:38'),
(71, 'register.content', '{\"has_image\":\"1\",\"heading\":\"Find Your Own Hotel\",\"sub_heading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti laboriosam dolor est beatae a possimus cumque quaerat, provident.\",\"background_image\":\"62075bed6ab921644649453.jpg\"}', '2022-02-12 06:34:13', '2022-02-12 06:34:14'),
(72, '2fa_verify.content', '{\"has_image\":\"1\",\"heading\":\"Find Your Own Hotel\",\"sub_heading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti laboriosam dolor est beatae a possimus cumque quaerat, provident.\",\"background_image\":\"62075ee7e5d451644650215.jpg\"}', '2022-02-12 06:46:55', '2022-02-12 06:46:56'),
(73, 'code_verify.content', '{\"has_image\":\"1\",\"heading\":\"Find Your Own Hotel\",\"sub_heading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti laboriosam dolor est beatae a possimus cumque quaerat, provident.\",\"background_image\":\"62075f497fe351644650313.jpg\"}', '2022-02-12 06:48:33', '2022-02-12 06:48:34'),
(74, 'email_verify.content', '{\"has_image\":\"1\",\"heading\":\"Find Your Own Hotel\",\"sub_heading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti laboriosam dolor est beatae a possimus cumque quaerat, provident.\",\"background_image\":\"62075f5fdfb441644650335.jpg\"}', '2022-02-12 06:48:55', '2022-02-12 06:48:56'),
(75, 'reset_password.content', '{\"has_image\":\"1\",\"heading\":\"Find Your Own Hotel\",\"sub_heading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti laboriosam dolor est beatae a possimus cumque quaerat, provident.\",\"background_image\":\"62075f787613d1644650360.jpg\"}', '2022-02-12 06:49:07', '2022-02-12 06:49:21'),
(76, 'sms_verify.content', '{\"has_image\":\"1\",\"heading\":\"Find Your Own Hotel\",\"sub_heading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti laboriosam dolor est beatae a possimus cumque quaerat, provident.\",\"background_image\":\"62075f83d8f1b1644650371.jpg\"}', '2022-02-12 06:49:31', '2022-02-12 06:49:32'),
(77, 'reset_password_email.content', '{\"has_image\":\"1\",\"heading\":\"Find Your Own Hotel\",\"sub_heading\":\"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corrupti laboriosam dolor est beatae a possimus cumque quaerat, provident.\",\"background_image\":\"620762dc654ea1644651228.jpg\"}', '2022-02-12 07:03:48', '2022-02-12 07:03:49'),
(78, 'social_icon.element', '{\"title\":\"Instagram\",\"social_icon\":\"<i class=\\\"fab fa-instagram\\\"><\\/i>\",\"url\":\"https:\\/\\/www.instagram.com\\/qotel_Delhi\\/\"}', '2022-12-26 12:53:38', '2022-12-27 05:27:21'),
(79, 'policy_pages.element', '{\"title\":\"Cancellation Policy\",\"details\":\"<h4 style=\\\"margin-bottom:0.5rem;font-family:Arial, Helvetica, sans-serif;line-height:1.2;color:rgb(219,34,133);font-size:1.5rem;\\\">Cancellations and Refunds<\\/h4><p style=\\\"margin-bottom:1rem;color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\">Qotel offer complete refund (After Deducting the transaction Fees charged by Payment Gateway Partner) of the payment for cancellations made 24 hours or more prior to check-in time and if a booking is cancelled within 24 hours of the booking date\\/Check in time then there will be no refunds.In case of no shows or not liking the service after availing them\\/ checking in, there will be no refunds. *Though your booking is confirmed with the hotel still this cannot be treated as confirmed reservations until Qotel double-check with the hotel to reconfirm as these are slot booking on hourly basis and confirmed booking would depend on the availability of rooms for hourly slots.<\\/p><br style=\\\"font-family:Arial, Helvetica, sans-serif;font-weight:700;\\\" \\/><h4 style=\\\"margin-bottom:0.5rem;font-family:Arial, Helvetica, sans-serif;line-height:1.2;color:rgb(219,34,133);font-size:1.5rem;\\\">How to cancel a booking?<\\/h4><p style=\\\"margin-bottom:1rem;color:rgb(33,37,41);font-family:Arial, Helvetica, sans-serif;font-size:16px;font-weight:700;\\\">To cancel your booking, please follow the steps below: Log onto Qotel App\\/Website with your registered mobile no. or email id and password. Go to booking history. Tap on the booking you intend to cancel. Tap on Cancel. Please review the cancellation penalty and refund amount before you confirm to cancel the booking. The refund amount would reflect in the same account that was used to make the payment at the time of the booking. The applicable refund amount will be credited to you within 7-10 working days. However, it may take an additional 3-14 working day to reflect in your account, depending on the processing time taken by your bank.<\\/p><div><br \\/><\\/div>\"}', '2022-12-26 13:00:25', '2022-12-26 13:00:25'),
(80, 'stay.content', '{\"has_image\":\"1\",\"heading\":\"Hurry Up!! Stay Smartly Pay Hourly\",\"description_nic\":\"Flexible Check-in\\n<p>No more just the fixed Hotel Times, Choose your own Check in and out times<\\/p>\\nBest Prices\\n  <p>We provide best prices across 30+ cities, You can save upto 70% on Hourly rates<\\/p>\",\"background_image\":\"63ae86962a7c21672382102.jpg\"}', '2021-12-30 09:43:00', '2022-12-30 17:05:02'),
(81, 'milestone.content', '{\"has_image\":\"1\",\"years\":\"6\",\"cities\":\"60\",\"hotels\":\"3K\",\"customers\":\"6K\",\"background_image\":\"61cd8b6347a371640860515.jpg\"}', '2021-12-30 09:43:00', '2022-12-29 06:41:13');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` int(10) DEFAULT NULL,
  `name` varchar(40) NOT NULL,
  `alias` varchar(40) NOT NULL DEFAULT 'NULL',
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=>enable, 2=>disable',
  `gateway_parameters` text DEFAULT NULL,
  `supported_currencies` text DEFAULT NULL,
  `crypto` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: fiat currency, 1: crypto currency',
  `extra` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `input_form` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `code`, `name`, `alias`, `image`, `status`, `gateway_parameters`, `supported_currencies`, `crypto`, `extra`, `description`, `input_form`, `created_at`, `updated_at`) VALUES
(1, 101, 'Paypal', 'Paypal', '5f6f1bd8678601601117144.jpg', 0, '{\"paypal_email\":{\"title\":\"PayPal Email\",\"global\":true,\"value\":\"sb-owud61543012@business.example.com\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-10-28 14:40:54'),
(2, 102, 'Perfect Money', 'PerfectMoney', '5f6f1d2a742211601117482.jpg', 0, '{\"passphrase\":{\"title\":\"ALTERNATE PASSPHRASE\",\"global\":true,\"value\":\"hR26aw02Q1eEeUPSIfuwNypXX\"},\"wallet_id\":{\"title\":\"PM Wallet\",\"global\":false,\"value\":\"\"}}', '{\"USD\":\"$\",\"EUR\":\"\\u20ac\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-10-28 14:41:42'),
(3, 103, 'Stripe Hosted', 'Stripe', '5f6f1d4bc69e71601117515.jpg', 0, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-10-28 14:42:15'),
(4, 104, 'Skrill', 'Skrill', '5f6f1d41257181601117505.jpg', 0, '{\"pay_to_email\":{\"title\":\"Skrill Email\",\"global\":true,\"value\":\"merchant@skrill.com\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"---\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"MAD\":\"MAD\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"SAR\":\"SAR\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TND\":\"TND\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\",\"COP\":\"COP\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-10-28 14:41:54'),
(5, 105, 'PayTM', 'Paytm', '5f6f1d1d3ec731601117469.jpg', 0, '{\"MID\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"DIY12386817555501617\"},\"merchant_key\":{\"title\":\"Merchant Key\",\"global\":true,\"value\":\"bKMfNxPPf_QdZppa\"},\"WEBSITE\":{\"title\":\"Paytm Website\",\"global\":true,\"value\":\"DIYtestingweb\"},\"INDUSTRY_TYPE_ID\":{\"title\":\"Industry Type\",\"global\":true,\"value\":\"Retail\"},\"CHANNEL_ID\":{\"title\":\"CHANNEL ID\",\"global\":true,\"value\":\"WEB\"},\"transaction_url\":{\"title\":\"Transaction URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/oltp-web\\/processTransaction\"},\"transaction_status_url\":{\"title\":\"Transaction STATUS URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/paytmchecksum\\/paytmCallback.jsp\"}}', '{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-10-28 14:41:36'),
(6, 106, 'Payeer', 'Payeer', '5f6f1bc61518b1601117126.jpg', 0, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"866989763\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"7575\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"RUB\":\"RUB\"}', 0, '{\"status\":{\"title\": \"Status URL\",\"value\":\"ipn.Payeer\"}}', NULL, NULL, '2019-09-14 13:14:22', '2020-12-28 01:26:58'),
(7, 107, 'PayStack', 'Paystack', '5f7096563dfb71601214038.jpg', 0, '{\"public_key\":{\"title\":\"Public key\",\"global\":true,\"value\":\"pk_test_cd330608eb47970889bca397ced55c1dd5ad3783\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"sk_test_8a0b1f199362d7acc9c390bff72c4e81f74e2ac3\"}}', '{\"USD\":\"USD\",\"NGN\":\"NGN\"}', 0, '{\"callback\":{\"title\": \"Callback URL\",\"value\":\"ipn.Paystack\"},\"webhook\":{\"title\": \"Webhook URL\",\"value\":\"ipn.Paystack\"}}\r\n', NULL, NULL, '2019-09-14 13:14:22', '2022-10-28 14:41:06'),
(8, 108, 'VoguePay', 'Voguepay', '5f6f1d5951a111601117529.jpg', 0, '{\"merchant_id\":{\"title\":\"MERCHANT ID\",\"global\":true,\"value\":\"demo\"}}', '{\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-10-28 14:42:00'),
(9, 109, 'Flutterwave', 'Flutterwave', '5f6f1b9e4bb961601117086.jpg', 0, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"----------------\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"-----------------------\"},\"encryption_key\":{\"title\":\"Encryption Key\",\"global\":true,\"value\":\"------------------\"}}', '{\"BIF\":\"BIF\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CVE\":\"CVE\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"GHS\":\"GHS\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"KES\":\"KES\",\"LRD\":\"LRD\",\"MWK\":\"MWK\",\"MZN\":\"MZN\",\"NGN\":\"NGN\",\"RWF\":\"RWF\",\"SLL\":\"SLL\",\"STD\":\"STD\",\"TZS\":\"TZS\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"XAF\":\"XAF\",\"XOF\":\"XOF\",\"ZMK\":\"ZMK\",\"ZMW\":\"ZMW\",\"ZWD\":\"ZWD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-10-28 14:40:30'),
(10, 110, 'RazorPay', 'Razorpay', '5f6f1d3672dd61601117494.jpg', 1, '{\"key_id\":{\"title\":\"Key Id\",\"global\":true,\"value\":\"rzp_test_kiOtejPbRZU90E\"},\"key_secret\":{\"title\":\"Key Secret \",\"global\":true,\"value\":\"osRDebzEqbsE1kbyQJ4y0re7\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2021-05-21 02:51:32'),
(11, 111, 'Stripe Storefront', 'StripeJs', '5f7096a31ed9a1601214115.jpg', 0, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-10-28 14:42:09'),
(12, 112, 'Instamojo', 'Instamojo', '5f6f1babbdbb31601117099.jpg', 0, '{\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_2241633c3bc44a3de84a3b33969\"},\"auth_token\":{\"title\":\"Auth Token\",\"global\":true,\"value\":\"test_279f083f7bebefd35217feef22d\"},\"salt\":{\"title\":\"Salt\",\"global\":true,\"value\":\"19d38908eeff4f58b2ddda2c6d86ca25\"}}', '{\"INR\":\"INR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-10-28 14:40:35'),
(13, 501, 'Blockchain', 'Blockchain', '5f6f1b2b20c6f1601116971.jpg', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"55529946-05ca-48ff-8710-f279d86b1cc5\"},\"xpub_code\":{\"title\":\"XPUB CODE\",\"global\":true,\"value\":\"xpub6CKQ3xxWyBoFAF83izZCSFUorptEU9AF8TezhtWeMU5oefjX3sFSBw62Lr9iHXPkXmDQJJiHZeTRtD9Vzt8grAYRhvbz4nEvBu3QKELVzFK\"}}', '{\"BTC\":\"BTC\"}', 1, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-10-28 14:40:00'),
(14, 502, 'Block.io', 'Blockio', '5f6f19432bedf1601116483.jpg', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":false,\"value\":\"1658-8015-2e5e-9afb\"},\"api_pin\":{\"title\":\"API PIN\",\"global\":true,\"value\":\"75757575\"}}', '{\"BTC\":\"BTC\",\"LTC\":\"LTC\"}', 1, '{\"cron\":{\"title\": \"Cron URL\",\"value\":\"ipn.Blockio\"}}', NULL, NULL, '2019-09-14 13:14:22', '2022-10-28 14:40:04'),
(15, 503, 'CoinPayments', 'Coinpayments', '5f6f1b6c02ecd1601117036.jpg', 0, '{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"---------------\"},\"private_key\":{\"title\":\"Private Key\",\"global\":true,\"value\":\"------------\"},\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"93a1e014c4ad60a7980b4a7239673cb4\"}}', '{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT\":\"Tether USD (Omni Layer)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}', 1, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-10-28 14:40:21'),
(16, 504, 'CoinPayments Fiat', 'CoinpaymentsFiat', '5f6f1b94e9b2b1601117076.jpg', 0, '{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"6515561\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-10-28 14:40:25'),
(17, 505, 'Coingate', 'Coingate', '5f6f1b5fe18ee1601117023.jpg', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"6354mwVCEw5kHzRJ6thbGo-N\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-10-28 14:40:17'),
(18, 506, 'Coinbase Commerce', 'CoinbaseCommerce', '5f6f1b4c774af1601117004.jpg', 0, '{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"c47cd7df-d8e8-424b-a20a\"},\"secret\":{\"title\":\"Webhook Shared Secret\",\"global\":true,\"value\":\"55871878-2c32-4f64-ab66\"}}', '{\"USD\":\"USD\",\"EUR\":\"EUR\",\"JPY\":\"JPY\",\"GBP\":\"GBP\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CNY\":\"CNY\",\"SEK\":\"SEK\",\"NZD\":\"NZD\",\"MXN\":\"MXN\",\"SGD\":\"SGD\",\"HKD\":\"HKD\",\"NOK\":\"NOK\",\"KRW\":\"KRW\",\"TRY\":\"TRY\",\"RUB\":\"RUB\",\"INR\":\"INR\",\"BRL\":\"BRL\",\"ZAR\":\"ZAR\",\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CDF\":\"CDF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NPR\":\"NPR\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}\r\n\r\n', 0, '{\"endpoint\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.CoinbaseCommerce\"}}', NULL, NULL, '2019-09-14 13:14:22', '2022-10-28 14:40:12'),
(24, 113, 'Paypal Express', 'PaypalSdk', '5f6f1bec255c61601117164.jpg', 0, '{\"clientId\":{\"title\":\"Paypal Client ID\",\"global\":true,\"value\":\"Ae0-tixtSV7DvLwIh3Bmu7JvHrjh5EfGdXr_cEklKAVjjezRZ747BxKILiBdzlKKyp-W8W_T7CKH1Ken\"},\"clientSecret\":{\"title\":\"Client Secret\",\"global\":true,\"value\":\"EOhbvHZgFNO21soQJT1L9Q00M3rK6PIEsdiTgXRBt2gtGtxwRer5JvKnVUGNU5oE63fFnjnYY7hq3HBA\"}}', '{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-10-28 14:41:01'),
(25, 114, 'Stripe Checkout', 'StripeV3', '5f709684736321601214084.jpg', 0, '{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51I6GGiCGv1sRiQlEi5v1or9eR0HVbuzdMd2rW4n3DxC8UKfz66R4X6n4yYkzvI2LeAIuRU9H99ZpY7XCNFC9xMs500vBjZGkKG\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51I6GGiCGv1sRiQlEOisPKrjBqQqqcFsw8mXNaZ2H2baN6R01NulFS7dKFji1NRRxuchoUTEDdB7ujKcyKYSVc0z500eth7otOM\"},\"end_point\":{\"title\":\"End Point Secret\",\"global\":true,\"value\":\"whsec_lUmit1gtxwKTveLnSe88xCSDdnPOt8g5\"}}', '{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}', 0, '{\"webhook\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.StripeV3\"}}', NULL, NULL, '2019-09-14 13:14:22', '2022-10-28 14:42:05'),
(27, 115, 'Mollie', 'Mollie', '5f6f1bb765ab11601117111.jpg', 0, '{\"mollie_email\":{\"title\":\"Mollie Email \",\"global\":true,\"value\":\"vi@gmail.com\"},\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_cucfwKTWfft9s337qsVfn5CC4vNkrn\"}}', '{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}', 0, NULL, NULL, NULL, '2019-09-14 13:14:22', '2022-10-28 14:40:45'),
(30, 116, 'Cashmaal', 'Cashmaal', '60d1a0b7c98311624350903.png', 0, '{\"web_id\":{\"title\":\"Web Id\",\"global\":true,\"value\":\"3748\"},\"ipn_key\":{\"title\":\"IPN Key\",\"global\":true,\"value\":\"546254628759524554647987\"}}', '{\"PKR\":\"PKR\",\"USD\":\"USD\"}', 0, '{\"webhook\":{\"title\": \"IPN URL\",\"value\":\"ipn.Cashmaal\"}}', NULL, NULL, NULL, '2022-10-28 14:40:07'),
(36, 119, 'Mercado Pago', 'MercadoPago', '60f2ad85a82951626516869.png', 0, '{\"access_token\":{\"title\":\"Access Token\",\"global\":true,\"value\":\"3Vee5S2F\"}}', '{\"USD\":\"USD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"NOK\":\"NOK\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"AUD\":\"AUD\",\"NZD\":\"NZD\"}', 0, NULL, NULL, NULL, NULL, '2022-10-28 14:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `gateway_currencies`
--

CREATE TABLE `gateway_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `currency` varchar(40) DEFAULT NULL,
  `symbol` varchar(40) DEFAULT NULL,
  `method_code` int(10) DEFAULT NULL,
  `gateway_alias` varchar(40) DEFAULT NULL,
  `min_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `max_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `percent_charge` decimal(5,2) NOT NULL DEFAULT 0.00,
  `fixed_charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `image` varchar(255) DEFAULT NULL,
  `gateway_parameter` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitename` varchar(40) DEFAULT NULL,
  `cur_text` varchar(40) DEFAULT NULL COMMENT 'currency text',
  `cur_sym` varchar(40) DEFAULT NULL COMMENT 'currency symbol',
  `email_from` varchar(40) DEFAULT NULL,
  `email_template` text DEFAULT NULL,
  `sms_api` varchar(255) DEFAULT NULL,
  `base_color` varchar(40) DEFAULT NULL,
  `property_max_star` tinyint(1) UNSIGNED DEFAULT 1,
  `mail_config` text DEFAULT NULL COMMENT 'email configuration',
  `sms_config` text DEFAULT NULL,
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email verification, 0 - dont check, 1 - check',
  `en` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email notification, 0 - dont send, 1 - send',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms verication, 0 - dont check, 1 - check',
  `sn` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms notification, 0 - dont send, 1 - send',
  `force_ssl` tinyint(1) NOT NULL DEFAULT 0,
  `secure_password` tinyint(1) NOT NULL DEFAULT 0,
  `agree` tinyint(1) NOT NULL DEFAULT 0,
  `registration` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Off	, 1: On',
  `active_template` varchar(40) DEFAULT NULL,
  `sys_version` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `sitename`, `cur_text`, `cur_sym`, `email_from`, `email_template`, `sms_api`, `base_color`, `property_max_star`, `mail_config`, `sms_config`, `ev`, `en`, `sv`, `sn`, `force_ssl`, `secure_password`, `agree`, `registration`, `active_template`, `sys_version`, `created_at`, `updated_at`) VALUES
(1, 'qotel', 'INR', '₹', 'support@smartdaytech897.com', '<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n  <!--[if !mso]><!-->\r\n  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n  <!--<![endif]-->\r\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n  <title></title>\r\n  <style type=\"text/css\">\r\n.ReadMsgBody { width: 100%; background-color: #ffffff; }\r\n.ExternalClass { width: 100%; background-color: #ffffff; }\r\n.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }\r\nhtml { width: 100%; }\r\nbody { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; margin: 0; padding: 0; }\r\ntable { border-spacing: 0; table-layout: fixed; margin: 0 auto;border-collapse: collapse; }\r\ntable table table { table-layout: auto; }\r\n.yshortcuts a { border-bottom: none !important; }\r\nimg:hover { opacity: 0.9 !important; }\r\na { color: #0087ff; text-decoration: none; }\r\n.textbutton a { font-family: \'open sans\', arial, sans-serif !important;}\r\n.btn-link a { color:#FFFFFF !important;}\r\n\r\n@media only screen and (max-width: 480px) {\r\nbody { width: auto !important; }\r\n*[class=\"table-inner\"] { width: 90% !important; text-align: center !important; }\r\n*[class=\"table-full\"] { width: 100% !important; text-align: center !important; }\r\n/* image */\r\nimg[class=\"img1\"] { width: 100% !important; height: auto !important; }\r\n}\r\n</style>\r\n\r\n\r\n\r\n  <table bgcolor=\"#414a51\" width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n    <tbody><tr>\r\n      <td height=\"50\"></td>\r\n    </tr>\r\n    <tr>\r\n      <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n        <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n          <tbody><tr>\r\n            <td align=\"center\" width=\"600\">\r\n              <!--header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#0087ff\" style=\"border-top-left-radius:6px; border-top-right-radius:6px;text-align:center;vertical-align:top;font-size:0;\" align=\"center\">\r\n                    <table width=\"90%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#FFFFFF; font-size:16px; font-weight: bold;\">This is a System Generated Email</td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n              <!--end header-->\r\n              <table class=\"table-inner\" width=\"95%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                <tbody><tr>\r\n                  <td bgcolor=\"#FFFFFF\" align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"35\"></td>\r\n                      </tr>\r\n                      <!--logo-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"vertical-align:top;font-size:0;\">\r\n                          <a href=\"#\">\r\n                            <img style=\"display:block; line-height:0px; font-size:0px; border:0px;\" src=\"https://i.imgur.com/Z1qtvtV.png\" alt=\"img\">\r\n                          </a>\r\n                        </td>\r\n                      </tr>\r\n                      <!--end logo-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n                      <!--headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 22px;color:#414a51;font-weight: bold;\">Hello {{fullname}} ({{username}})</td>\r\n                      </tr>\r\n                      <!--end headline-->\r\n                      <tr>\r\n                        <td align=\"center\" style=\"text-align:center;vertical-align:top;font-size:0;\">\r\n                          <table width=\"40\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n                            <tbody><tr>\r\n                              <td height=\"20\" style=\" border-bottom:3px solid #0087ff;\"></td>\r\n                            </tr>\r\n                          </tbody></table>\r\n                        </td>\r\n                      </tr>\r\n                      <tr>\r\n                        <td height=\"20\"></td>\r\n                      </tr>\r\n                      <!--content-->\r\n                      <tr>\r\n                        <td align=\"left\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#7f8c8d; font-size:16px; line-height: 28px;\">{{message}}</td>\r\n                      </tr>\r\n                      <!--end content-->\r\n                      <tr>\r\n                        <td height=\"40\"></td>\r\n                      </tr>\r\n              \r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td height=\"45\" align=\"center\" bgcolor=\"#f4f4f4\" style=\"border-bottom-left-radius:6px;border-bottom-right-radius:6px;\">\r\n                    <table align=\"center\" width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                      <tbody><tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                      <!--preference-->\r\n                      <tr>\r\n                        <td class=\"preference-link\" align=\"center\" style=\"font-family: \'Open sans\', Arial, sans-serif; color:#95a5a6; font-size:14px;\">\r\n                          © 2021 <a href=\"#\">Website Name</a> . All Rights Reserved. \r\n                        </td>\r\n                      </tr>\r\n                      <!--end preference-->\r\n                      <tr>\r\n                        <td height=\"10\"></td>\r\n                      </tr>\r\n                    </tbody></table>\r\n                  </td>\r\n                </tr>\r\n              </tbody></table>\r\n            </td>\r\n          </tr>\r\n        </tbody></table>\r\n      </td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\"60\"></td>\r\n    </tr>\r\n  </tbody></table>', 'hi {{name}}, {{message}}', 'b21476', 5, '{\"name\":\"smtp\",\"host\":\"smartdaytech897.com\",\"port\":\"465\",\"enc\":\"ssl\",\"username\":\"support@smartdaytech897.com\",\"password\":\"hRY96=mVDmsv\"}', '{\"clickatell_api_key\":\"----------------------------\",\"infobip_username\":\"--------------\",\"infobip_password\":\"----------------------\",\"message_bird_api_key\":\"-------------------\",\"nexmo_api_key\":\"----------------------\",\"nexmo_api_secret\":\"----------------------\",\"sms_broadcast_username\":\"----------------------\",\"sms_broadcast_password\":\"-----------------------------\",\"account_sid\":\"-----------------------\",\"auth_token\":\"---------------------------\",\"from\":\"----------------------\",\"text_magic_username\":\"-----------------------\",\"apiv2_key\":\"-------------------------------\",\"name\":\"textMagic\"}', 1, 1, 0, 0, 0, 1, 1, 1, 'basic', NULL, NULL, '2022-12-26 12:52:25');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `code` varchar(40) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `text_align` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: left to right text align, 1: right to left text align',
  `is_default` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: not default language, 1: default language',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `icon`, `text_align`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', '5f15968db08911595250317.png', 0, 1, '2020-07-06 03:47:55', '2022-10-27 03:54:12'),
(5, 'Hindi', 'hn', NULL, 0, 0, '2020-12-29 02:20:07', '2022-10-27 03:54:01'),
(9, 'Bangla', 'bn', NULL, 0, 0, '2021-03-14 04:37:41', '2022-10-27 03:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `average_price` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `image` varchar(40) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `average_price`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Delhi', '100.00000000', '1587474260584-136574528ed5.jpg', 1, '2022-10-20 09:20:43', '2022-12-14 05:13:21'),
(2, 'Mumbai', '100.00000000', '6350e958eb4c71666247000.jpg', 0, '2022-10-20 15:53:21', '2022-12-27 04:57:00'),
(3, 'Hyderabad', '200.00000000', '6350f083e39571666248835.png', 0, '2022-10-20 16:19:43', '2022-12-27 04:57:08'),
(4, 'Jaipur', '100.00000000', '6350f23993bd81666249273.png', 0, '2022-10-20 16:31:14', '2022-12-27 04:57:16'),
(5, 'Chennai', '200.00000000', '6350f7670c52b1666250599.png', 0, '2022-10-20 16:47:08', '2022-12-27 04:57:25'),
(6, 'Bangalore', '100.00000000', '6350faef1c0541666251503.png', 0, '2022-10-20 17:08:23', '2022-12-27 04:57:54'),
(7, 'Gurugram', '100.00000000', '6350ff85774fa1666252677.jpeg', 1, '2022-10-20 17:27:57', '2022-12-27 04:58:43'),
(8, 'Noida', '100.00000000', '63510c5b049e91666255963.png', 1, '2022-10-20 18:22:43', '2022-12-27 04:58:54');

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `mobile` varchar(40) DEFAULT NULL,
  `email` varchar(40) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `balance` decimal(38,8) UNSIGNED NOT NULL DEFAULT 0.00000000,
  `password` varchar(255) NOT NULL,
  `country_code` varchar(40) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `ev` tinyint(4) NOT NULL DEFAULT 0,
  `sv` tinyint(4) NOT NULL DEFAULT 0,
  `ver_code` varchar(40) DEFAULT NULL,
  `ver_code_send_at` datetime NOT NULL,
  `ts` tinyint(4) NOT NULL DEFAULT 0,
  `tv` tinyint(4) NOT NULL DEFAULT 1,
  `tsc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`id`, `firstname`, `lastname`, `username`, `mobile`, `email`, `email_verified_at`, `balance`, `password`, `country_code`, `image`, `address`, `status`, `ev`, `sv`, `ver_code`, `ver_code_send_at`, `ts`, `tv`, `tsc`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'owner', 'testowner', '911234567890', 'test@owner.com', NULL, '0.00000000', '$2y$10$WvTF8zc/JZRl4ZpZy0a4kOptekCynW/avb4uJ2mWc2JorEZ.vSA4y', 'IN', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 1, 1, NULL, '0000-00-00 00:00:00', 0, 1, NULL, '2022-10-22 15:33:57', '2022-10-22 15:33:57'),
(2, 'yashveer', 'singh', 'yashveer', '918400548856', 'yashveer.raj@gmail.com', NULL, '0.00000000', '$2y$10$NInBCQ1Lmz8jCzbMe.Lo1..E6taV6yFbGcn4gOHBPegCkO7O0bJJm', 'IN', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 1, 1, '635978', '2022-10-22 13:27:58', 0, 1, NULL, '2022-10-22 17:21:32', '2022-10-28 01:26:08'),
(3, 'Ankur', 'Mishra', 'Ankurmishra1234', '918130390977', 'ankur.mishra1108@gmail.com', NULL, '0.00000000', '$2y$10$4HZEajRuEEAmB8mETawWQOYcWQ6N86wyZ740MA/kr8fUqZ.Pcl4dm', 'IN', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 1, 1, '771760', '2022-10-27 11:24:35', 0, 1, NULL, '2022-10-27 15:21:49', '2022-10-27 15:35:36');

-- --------------------------------------------------------

--
-- Table structure for table `owner_password_resets`
--

CREATE TABLE `owner_password_resets` (
  `email` varchar(40) NOT NULL,
  `token` varchar(40) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `slug` varchar(40) DEFAULT NULL,
  `tempname` varchar(40) DEFAULT NULL COMMENT 'template name',
  `secs` text DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `tempname`, `secs`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'HOME', 'home', 'templates.basic.', '[\"location\",\"stay\",\"property_type\",\"milestone\",\"top_trip\",\"works\",\"testimonial\",\"video\",\"blog\",\"subscribe\"]', 1, '2020-07-11 06:23:58', '2022-12-28 10:04:18'),
(4, 'Blog', 'blog', 'templates.basic.', NULL, 1, '2020-10-22 01:14:43', '2022-02-12 05:27:43'),
(5, 'Contact', 'contact', 'templates.basic.', NULL, 1, '2020-10-22 01:14:53', '2022-02-12 05:27:49');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(40) NOT NULL,
  `token` varchar(40) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `property_type_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `owner_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `location_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `discount` decimal(5,2) DEFAULT 0.00,
  `total_rating` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `review` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rating` decimal(28,8) UNSIGNED NOT NULL DEFAULT 0.00000000,
  `description` text DEFAULT NULL,
  `hotel_policy` text DEFAULT NULL,
  `cancellation_policy` text DEFAULT NULL,
  `map_url` text DEFAULT NULL,
  `image` varchar(40) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `phone_call_time` varchar(255) DEFAULT NULL,
  `extra_features` text DEFAULT NULL,
  `star` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `top_reviewed` tinyint(1) NOT NULL DEFAULT 0,
  `all_time_booked_counter` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `property_type_id`, `owner_id`, `location_id`, `discount`, `total_rating`, `review`, `rating`, `description`, `hotel_policy`, `cancellation_policy`, `map_url`, `image`, `images`, `phone`, `phone_call_time`, `extra_features`, `star`, `top_reviewed`, `all_time_booked_counter`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Test', 1, 2, 1, '0.00', 0, 0, '0.00000000', '<br>', NULL, NULL, NULL, '', '[]', '8400548856', '1', NULL, 2, 0, 0, 1, '2022-10-22 17:42:17', '2022-10-22 17:42:17'),
(2, 'Qotel 001, La Sarene Hotels', 1, 2, 1, '10.00', 0, 0, '0.00000000', '<h5><font face=\"arial\" size=\"3\" color=\"#000066\"><span style=\"text-transform: capitalize;\"><b style=\"\"><u style=\"\">About The Hotel :-</u></b></span></font><br></h5><p style=\"text-align: left;\"><font color=\"#000066\" size=\"2\" face=\"times new roman\"><span style=\"text-transform: capitalize;\"><b style=\"\"><u style=\"\"><br></u></b></span></font></p><p><font face=\"arial\" size=\"2\"><span style=\"text-transform: capitalize;\">*Qotel 001,La Sarene Hotels Is Located In New Delhi,&nbsp;</span><span style=\"text-transform: capitalize;\">Featuring 3-Star&nbsp;Accommodation,Qotel 001,&nbsp;La Sarene Hotels Is Located In&nbsp;378,Main Chhatarpur Rd Opposite Tivoli  Garden, Block A1, Chattarpur Enclave, Chhatarpur, New Delhi, Delhi 110074.</span></font></p><p><font face=\"arial\" size=\"2\"><span style=\"text-transform: capitalize;\">*Qotel 001, La Sarene Hotels- Chattarpur</span><br></font></p><p><font face=\"arial\" size=\"2\"><span style=\"text-transform: capitalize;\">*Featuring 3-Star Accommodation, Qotel 001, La Sarene Hotels Is Located In 378, Main Chhatarpur Rd, Opposite Tivoli Garden, Block A1,Chattarpur Enclave, Chhatarpur,</span><br></font></p><p><font face=\"arial\" size=\"2\"><span style=\"text-transform: capitalize;\">New Delhi, Delhi 110074.</span><br></font></p><p><font face=\"arial\" size=\"2\"><span style=\"text-transform: capitalize;\">*Featuring A Restaurant, The 3-Star Hotel Has Air-Conditioned Rooms With Free WiFi. He Hotel. This 3-Star Hotel Has Air-Conditioned Rooms With A Private Bathroom.</span><br></font></p><p><font face=\"arial\" size=\"2\"><span style=\"text-transform: capitalize;\">The Accommodation Features A 24-Hour Front Desk And Room Service For Guests. At The Hotel, The Rooms Include A Desk, A Flat-Screen TV, A Private Bathroom,&nbsp;Bed Linen And Towels. All Rooms Will Provide Guests With A Wardrobe</span><br></font></p><p><font face=\"arial\" size=\"2\"><span style=\"text-transform: capitalize;\">*The Nearest Airport Is Delhi International Airport, 26 Km From The Accommodation.</span><br></font></p><p><font face=\"arial\" size=\"2\"><span style=\"text-transform: capitalize;\">*Free WiFi, Free Parking, Restaurant, Daily Housekeeping, Air Conditioning.</span><br></font></p><p><font face=\"arial\" size=\"2\"><span style=\"text-transform: capitalize;\">*Among The Facilities At This Property Are Free Wi-Fi Throughout The Property</span><br></font></p><p><font face=\"arial\" size=\"2\"><span style=\"text-transform: capitalize;\">*All Units In The Hotel Are Equipped With A TV.</span><br></font></p><p></p>', '<ul><li></li><div><font face=\"Poppins-Regular, sans-serif\"><span style=\"font-size: 14.375px;\">scgvhdbfnkg kfvb</span></font></div></ul>', '<ul><li><span style=\"font-size: 0.875rem;\">Cancellation Policy 1</span></li><li><span style=\"font-size: 0.875rem;\">Cancellation Policy 2</span></li></ul>', 'https://www.google.com/maps?hl=en-GB&gl=IN&um=1&ie=UTF-8&fb=1&sa=X&geocode=KfkJ9aveHw05MVfz0SA4Ty6D&daddr=Qotel+Hotel+001+La+Sarene+Hotels+Near+Chattarpur+Farms,+378,+Main+Chhatarpur+Rd,+opposite+Tivoli+Garden,+Block+A1,+Chattarpur+Enclave,+Chhatarpur,+New+Delhi,+Delhi+110074', '6391cf5cb35c01670500188.jpg', '[\"6391cf4ccf98c1670500172.jpg\",\"6391cf4ceb9771670500172.jpg\",\"6391cf4d093531670500173.jpg\",\"6391cf4d1ad021670500173.jpg\",\"6391cf4d355c31670500173.jpg\",\"635ac40e4be761666892814.jpg\",\"635ac40e97bd21666892814.jpg\",\"635ac40edfbce1666892814.jpg\",\"635ac40f431c61666892815.jpg\"]', '097111 58134', '12:00 AM', '[\"Free cancellation\",\"Couple Friendly\",\"Pay At Hotel\",\"Local ID Accepted\"]', 3, 1, 0, 1, '2022-10-28 03:05:41', '2022-12-26 12:47:15'),
(3, 'Qotel 004, AT Residency', 1, 2, 1, '0.00', 0, 0, '0.00000000', '<p class=\"GtAk2e\" style=\"-webkit-tap-highlight-color: transparent; margin-right: 0px; margin-left: 0px;\"><font color=\"#202124\" face=\"Roboto, Arial, sans-serif\"><span style=\"letter-spacing: 0.2px;\">On a main road, this modern budget hotel is a 4-minute walk from a metro station, and 10 km from both the Akshardham temple and Red Fort.</span></font></p><p class=\"GtAk2e\" style=\"-webkit-tap-highlight-color: transparent; margin-right: 0px; margin-left: 0px;\"><font color=\"#202124\" face=\"Roboto, Arial, sans-serif\"><span style=\"letter-spacing: 0.2px;\">Understated rooms have smart TVs and Wi-Fi, plus air conditioning.</span></font></p><p class=\"GtAk2e\" style=\"-webkit-tap-highlight-color: transparent; margin-right: 0px; margin-left: 0px;\"><font color=\"#202124\" face=\"Roboto, Arial, sans-serif\"><span style=\"letter-spacing: 0.2px;\"><br></span></font></p><p class=\"GtAk2e\" style=\"-webkit-tap-highlight-color: transparent; margin-right: 0px; margin-left: 0px;\"><font color=\"#202124\" face=\"Roboto, Arial, sans-serif\"><span style=\"letter-spacing: 0.2px;\">There\'s a restaurant with a terrace, as well as a colourful lobby lounge with ornate gold detailing. Other public areas feature cartoon-style murals. A breakfast buffet is available.</span></font></p>', NULL, NULL, 'https://www.google.com/maps/dir//Qotel+Hotel+004+AT+Residency+Near+Kaushambi+Metro+Station+Ghaziabad,+Plot+No.+D75,+Kaushambi,+Ghaziabad,+Uttar+Pradesh+201010/@28.6449985,77.2520865,12z/data=!4m8!4m7!1m0!1m5!1m1!1s0x390cfb321bf08f93:0xec266b1bae8fbcee!2m2!1d77.3221275!2d28.6450015?hl=en-GB', '63930050b55171670578256.jpg', '[\"63930050b55171670578256.jpg\"]', '0124 620 1516', '9:00 AM', '[\"Free cancellation\",\"Couple Friendly\",\"Pay At Hotel\",\"Local ID Accepted\"]', 4, 1, 0, 1, '2022-10-28 03:06:09', '2022-12-09 20:05:27'),
(4, 'Qotel 006, Church House', 1, 2, 1, '0.00', 0, 0, '0.00000000', '<div><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\">*We Provide Couple friendly hourly hotels for both unmarried and married couples with our completely secure and safe bookings</span><span style=\"color: rgb(28, 28, 28); font-family: Poppins-medium; font-size: 14.375px;\"><br></span></div><div><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\"><br></span></div><div><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\">*</span><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\">You can confirm your booking now and pay at the hotel when you arrive there.</span></div><div><br></div><div><font color=\"#1c1c1c\" face=\"Poppins-Regular, sans-serif\"><span style=\"font-size: 11.5px;\">*</span></font><span style=\"color: rgb(28 28 28/var(--tw-text-opacity)); font-family: Poppins-Regular, sans-serif;\"><font size=\"2\">We accept Same City Guests with hassle free check-in</font></span></div><a href=\"https://www.brevistay.com/login?red=/hotels/Qotel-006-Church-House-in-delhi-2415\" style=\"border: 0px solid; --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; -webkit-tap-highlight-color: transparent; color: inherit; text-decoration: inherit; font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 11.5px;\"></a><div><span style=\"font-size: 11.5px; font-family: Poppins-Regular, sans-serif;\"><br></span></div><div><span style=\"font-size: 11.5px; font-family: Poppins-Regular, sans-serif;\"><br></span></div><div><font color=\"#1c1c1c\" face=\"Poppins-Regular, sans-serif\"><span style=\"font-size: 11.5px;\"><br></span></font></div><div><br></div>', NULL, NULL, 'https://www.google.com/maps/place/28%C2%B043\'52.9%22N+77%C2%B008\'01.9%22E/@28.73137,77.1316666,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0xa66752d0525b1750!8m2!3d28.73137!4d77.1338553', '639305c39fec81670579651.jpg', '[\"635b6fb410f9c1666936756.png\",\"635b6fb49cb251666936756.png\",\"635b6fb500b101666936757.png\",\"635b6fb5613af1666936757.png\",\"639305c39fec81670579651.jpg\"]', '8400548856', '24X7', '[\"coupal friendly\",\"Local ID Accepted\"]', 4, 1, 0, 1, '2022-10-28 14:23:17', '2022-12-09 20:24:11'),
(5, 'Qotel 007, Nirvana Suites', 1, 2, 1, '0.00', 0, 0, '0.00000000', '<div><span style=\"color: rgb(28, 28, 28);\"><font size=\"4\" style=\"\" face=\"arial\">ABOUT THE HOTEL:-</font></span></div><span style=\"color: rgb(28, 28, 28);\"><div style=\"font-family: Poppins-Regular; font-size: 11.5px;\"><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular; font-size: 11.5px;\"><br></span></div><div style=\"font-family: Poppins-Regular; font-size: 11.5px;\"><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular; font-size: 11.5px;\"><br></span></div><span style=\"font-family: Poppins-Regular; font-size: 11.5px;\">*</span></span><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\">We Provide Couple friendly hourly hotels for both unmarried and married couples with our completely secure and safe bookings.</span><div><font color=\"#1c1c1c\" face=\"Poppins-Regular, sans-serif\"><span style=\"font-size: 11.5px;\"><br></span></font></div><div><font color=\"#1c1c1c\" face=\"Poppins-Regular, sans-serif\"><span style=\"font-size: 11.5px;\">*</span></font><span style=\"color: rgb(28 28 28/var(--tw-text-opacity)); font-family: Poppins-Regular, sans-serif;\"><font size=\"2\">You can confirm your booking now and pay at the hotel when you arrive there.</font></span></div><div><font face=\"Poppins-Regular, sans-serif\" size=\"2\"><br></font></div><div><font face=\"Poppins-Regular, sans-serif\" size=\"2\">*</font><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\">We accept Same City Guests with hassle free check-in</span><font face=\"Poppins-Regular, sans-serif\" size=\"2\"><br></font><span class=\"flex space-x-6\" style=\"border: 0px solid; --tw-border-spacing-x:0; --tw-border-spacing-y:0; --tw-translate-x:0; --tw-translate-y:0; --tw-rotate:0; --tw-skew-x:0; --tw-skew-y:0; --tw-scale-x:1; --tw-scale-y:1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness:proximity; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width:0px; --tw-ring-offset-color:#fff; --tw-ring-color:rgba(59,130,246,0.5); --tw-ring-offset-shadow:0 0 #0000; --tw-ring-shadow:0 0 #0000; --tw-shadow:0 0 #0000; --tw-shadow-colored:0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; -webkit-tap-highlight-color: transparent; display: flex; --tw-space-y-reverse:0; margin-bottom: calc(1.5rem*var(--tw-space-y-reverse)); margin-top: calc(1.5rem*(1 - var(--tw-space-y-reverse))); color: rgb(0, 0, 0); font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;;\"></span><div><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular; font-size: 11.5px;\"><br></span></div><div><br></div></div>', NULL, NULL, 'https://www.google.com/maps/place/28%C2%B032\'24.5%22N+77%C2%B017\'41.9%22E/@28.5401341,77.2927706,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0xd7259c2aa32a314a!8m2!3d28.5401341!4d77.2949593', '6393081a34ae51670580250.jpg', '[\"635b7b750eb1c1666939765.png\",\"635b7b75bb1a51666939765.png\",\"635b725c9ee991666937436.jpg\",\"635b754e9d0001666938190.png\",\"635b754f093311666938191.png\",\"635b754f860241666938191.png\",\"635b754fec0601666938191.png\",\"635b7b770acec1666939767.png\"]', '+91 9205 59 59 00, +91 8929 666 600', '24*7', NULL, 4, 1, 0, 1, '2022-10-28 15:39:57', '2022-12-09 20:39:43'),
(6, 'Qotel 008, IP Residency', 1, 2, 1, '0.00', 0, 0, '0.00000000', '<div><font color=\"#1c1c1c\" face=\"Poppins-Regular, sans-serif\" size=\"4\"><u>ABOUT THE HOTEL:-</u></font></div><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\"><div><br></div>*We Provide Couple friendly hourly hotels for both unmarried and married couples with our completely secure and safe bookings.</span><div><font color=\"#1c1c1c\" face=\"Poppins-Regular, sans-serif\"><span style=\"font-size: 11.5px;\"><br></span></font></div><div><font color=\"#1c1c1c\" face=\"Poppins-Regular, sans-serif\"><span style=\"font-size: 11.5px;\">*</span></font><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\">We accept Same City Guests with hassle free check-in.</span><font color=\"#1c1c1c\" face=\"Poppins-Regular, sans-serif\"><span style=\"font-size: 11.5px;\"><br></span></font><div><div><br></div><div><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\"><br></span></div></div></div>', NULL, NULL, 'https://www.google.com/maps/place/28%C2%B038\'56.3%22N+77%C2%B018\'02.9%22E/@28.6489594,77.2986105,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x4b460326b795480e!8m2!3d28.6489594!4d77.3007992', '63930bbb4058e1670581179.jpg', '[\"63930bbb283551670581179.jpg\",\"635b76a236bd31666938530.png\",\"635b76a2a02641666938530.png\",\"635b76a3225aa1666938531.png\"]', '+91 9205 59 59 00 +91 8929 666 600', '24*7', '[\"Couple Friendly\",\"Local ID Accepted\"]', 4, 1, 0, 1, '2022-10-28 15:58:52', '2022-12-09 20:50:05'),
(7, 'Qotel 011, Hotel Rama', 1, 2, 1, '0.00', 0, 0, '0.00000000', '<div><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif;\"><font size=\"3\">ABOUT THE HOTEL:-</font></span></div><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\"><div><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\"><br></span></div><div><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\"><br></span></div>*We Provide Couple friendly hourly hotels for both unmarried and married couples with our completely secure and safe bookings.</span><br><div><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\"><br></span></div><div><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\">We accept Same City Guests with hassle free check-in</span><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\"><br></span></div>', NULL, NULL, 'https://www.google.com/maps/place/28%C2%B043\'59.7%22N+77%C2%B005\'12.2%22E/@28.7332594,77.0845454,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x3f6f36f416e1b3!8m2!3d28.7332594!4d77.0867341', '63930dac2fe531670581676.jpg', '[\"63930dac0b1f11670581676.jpg\",\"635b7e14141ea1666940436.png\",\"635b778bde5a81666938763.png\",\"635b778c4b36b1666938764.png\"]', '+91 9205 59 59 00, +91 8929 666 600', '24*7', '[\"Couple Friendly\",\"Local ID Accepted\"]', 4, 1, 0, 1, '2022-10-28 16:02:45', '2022-12-09 20:57:56'),
(8, 'Qotel 012, La Sarene Hotels  Peeragarhi', 1, 2, 1, '0.00', 0, 0, '0.00000000', '<div _ngcontent-serverapp-c120=\"\" class=\"flex-container ion-justify-content-between ion-align-items-center\" style=\"-webkit-tap-highlight-color: transparent; display: flex; color: rgb(38, 38, 38); font-family: Inter, sans-serif; font-size: medium; justify-content: space-between !important; align-items: center !important;\"><div _ngcontent-serverapp-c120=\"\" class=\"title font-bold ng-star-inserted\" style=\"-webkit-tap-highlight-color: transparent; line-height: 24px; font-weight: 700 !important;\">About Us</div><div _ngcontent-serverapp-c120=\"\" style=\"-webkit-tap-highlight-color: transparent;\"></div></div><div _ngcontent-serverapp-c120=\"\" class=\"description text-size-md ng-star-inserted\" style=\"-webkit-tap-highlight-color: transparent; line-height: 19px; margin-top: 6px; color: rgb(38, 38, 38); font-family: Inter, sans-serif; font-size: var(--h3-font-size, 14px)  !important;\"><div _ngcontent-serverapp-c120=\"\" class=\"inner-html-text\" style=\"-webkit-tap-highlight-color: transparent;\"><ul style=\"-webkit-tap-highlight-color: transparent; padding-right: 15px; padding-left: 15px;\"><li style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 6px; font-size: var(--font-size-12); line-height: 22px; text-transform: capitalize;\">*Qotel Hotel 012 Peeragarhi Is Located In New Delhi, Delhi., Featuring 3-Star Accommodation, Qotel Peeragarhi Is Located In New Delhi, 13 Km From Rashtrapati Bhavan And 13 Km From Gurudwara Bangla Sahib.&nbsp;</li><li style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 6px; font-size: var(--font-size-12); line-height: 22px; text-transform: capitalize;\">*Qotel-Hotel-012-Peeragarhi</li><li style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 6px; font-size: var(--font-size-12); line-height: 22px; text-transform: capitalize;\">*Qotel Hotel 012 Peeragarhi Is Located In New Delhi, Delhi.</li><li style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 6px; font-size: var(--font-size-12); line-height: 22px; text-transform: capitalize;\">*Featuring 3-Star Accommodation, Qotel Peeragarhi Is Located In New Delhi, 13 Km From Rashtrapati Bhavan And 13 Km From Gurudwara Bangla Sahib.&nbsp;</li><li style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 6px; font-size: var(--font-size-12); line-height: 22px; text-transform: capitalize;\">*Featuring A Restaurant, The 3-Star Hotel Has Air-Conditioned Rooms With Free WiFi. Jama Masjid Is 14 Km Away And Gandhi Smriti Is 14 Km From The Hotel. This 3-Star Hotel Has Air-Conditioned Rooms With A Private Bathroom. The Accommodation Features A 24-Hour Front Desk And Room Service For Guests. At The Hotel, The Rooms Include A Desk, A Flat-Screen TV, A Private Bathroom, Bed Linen And Towels. All Rooms Will Provide Guests With A Wardrobe</li><li style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 6px; font-size: var(--font-size-12); line-height: 22px; text-transform: capitalize;\">*The Nearest Airport Is Delhi International Airport, 14 Km From The Accommodation.</li><li style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 6px; font-size: var(--font-size-12); line-height: 22px; text-transform: capitalize;\">*Free WiFi, Free Parking, Restaurant, Daily Housekeeping, Air Conditioning.</li><li style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 6px; font-size: var(--font-size-12); line-height: 22px; text-transform: capitalize;\">*Among The Facilities At This Property Are Free Wi-Fi Throughout The Property.</li><li style=\"-webkit-tap-highlight-color: transparent; margin-bottom: 6px; font-size: var(--font-size-12); line-height: 22px; text-transform: capitalize;\">*All Units In The Hotel Are Equipped With A TV.</li><li style=\"-webkit-tap-highlight-color: transparent; font-size: var(--font-size-12); line-height: 22px; text-transform: capitalize;\">*Jantar Mantar Is 13 Km From Qotel, While Gurudwara Sis Ganj Sahib Is 14 Km Away.</li></ul></div></div>', NULL, NULL, 'Metro Station, D-192, Opposite Peera Garhi, Peera Garhi, Peeragarhi Village, Chowk, New Delhi, Delhi 110087, , Peeragarhi, Delhi', '639312c7d88751670582983.jpg', '[\"635b8391ab20b1666941841.png\",\"635b839223ee21666941842.png\",\"639312c75965b1670582983.jpg\",\"639312c77c5ac1670582983.jpg\",\"635b83929984a1666941842.png\",\"635b839322c741666941843.png\",\"639312c7b95871670582983.jpg\",\"639312c7d88751670582983.jpg\"]', '+91 9205 59 59 00,+91 8929 666 600', '24*7', '[\"Couple Friendly\",\"Accept Local Id\",\"Pay At Hotel\"]', 3, 1, 0, 1, '2022-10-28 16:54:04', '2022-12-09 21:19:44'),
(9, 'Qotel 014, Sandberry Hotel', 1, 2, 1, '0.00', 0, 0, '0.00000000', '<font size=\"4\" color=\"#000033\">ABOUT THE HOTEL:-</font><br><div><div><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\"><br></span></div><div><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\">*We Provide Couple friendly hourly hotels for both unmarried and married couples with our completely secure and safe bookings.</span><br></div></div><div><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\"><br></span></div><div><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\">*</span><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\">You can confirm your booking now and pay at the hotel when you arrive there.</span></div><div><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\"><br></span></div><div><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\">*</span><span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular, sans-serif; font-size: 11.5px;\">We accept Same City Guests with hassle free check-in</span></div>', NULL, NULL, 'https://www.google.com/maps/place/28%C2%B042\'47.2%22N+77%C2%B008\'16.5%22E/@28.7131145,77.1357134,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x581fe1e4a3831984!8m2!3d28.7131145!4d77.1379021', '63931644e7a581670583876.jpg', '[\"63931644c20831670583876.jpg\",\"63931644d85091670583876.jpg\",\"635b86a57b5181666942629.png\",\"635b86a60670b1666942630.png\",\"635b86a6952da1666942630.png\",\"635b86a73a6961666942631.png\",\"635b86a7d34611666942631.png\",\"635b86a86d2771666942632.png\"]', '+91 9205 59 59 00, +91 8929 666 600', '24*7', '[\"Couple Friendly\",\"Pay At Hotel\",\"Local ID Accepted\"]', 4, 1, 0, 1, '2022-10-28 17:07:13', '2022-12-09 21:34:37'),
(10, 'Hotel Yellow saffron', 1, 2, 1, '0.00', 0, 0, '0.00000000', '<span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular; font-size: 11.5px;\">We Provide Couple friendly hourly hotels for both unmarried and married couples with our completely secure and safe bookings</span><br>', NULL, NULL, 'https://goo.gl/maps/3d8JRb6AYReaFDGK6', '635b94d85e3e51666946264.png', '[\"635b94d85e3e51666946264.png\"]', '8400548856', '24*7', NULL, 3, 0, 0, 1, '2022-10-28 18:07:44', '2022-10-28 18:07:44'),
(11, 'Qotel 006 Church House', 1, 2, 1, '0.00', 0, 0, '0.00000000', '<span style=\"color: rgb(28, 28, 28); font-family: Poppins-Regular; font-size: 11.5px;\">We Provide Couple friendly hourly hotels for both unmarried and married couples with our completely secure and safe bookings</span><br>', NULL, NULL, 'https://goo.gl/maps/znyNVFK45oit6QuD6', '635b954cb46be1666946380.png', '[\"635b954cb46be1666946380.png\"]', '8400548856', '24*7', NULL, 5, 0, 0, 1, '2022-10-28 18:09:41', '2022-10-28 18:09:41');

-- --------------------------------------------------------

--
-- Table structure for table `property_types`
--

CREATE TABLE `property_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `image` varchar(40) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_types`
--

INSERT INTO `property_types` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hotel', '63512af807a331666263800.png', 1, '2022-10-20 09:23:14', '2022-10-20 20:33:20'),
(2, 'Banquets', '635125a3b9c981666262435.png', 1, '2022-10-20 20:10:36', '2022-10-27 14:29:26'),
(3, 'Resorts', '63512dbec19d81666264510.png', 1, '2022-10-20 20:45:11', '2022-10-27 14:29:46'),
(4, '5 Star', '6351327832cd41666265720.png', 0, '2022-10-20 21:05:20', '2022-12-27 05:15:18'),
(5, '4 Star', '63513ca008e331666268320.png', 0, '2022-10-20 21:48:40', '2022-12-27 05:15:25'),
(6, '3 Star', '63512af807a331666263800.png', 1, '2022-12-08 22:29:23', '2022-12-08 22:29:31');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `property_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_number` varchar(40) DEFAULT NULL,
  `adult` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `child` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` decimal(28,8) UNSIGNED NOT NULL DEFAULT 0.00000000,
  `property_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `owner_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `room_category_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_number`, `adult`, `child`, `price`, `property_id`, `owner_id`, `room_category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '101', 2, 2, '500.00000000', 2, 2, 1, 1, '2022-12-26 11:27:00', '2022-12-26 11:40:34'),
(2, '106', 2, 2, '1558.00000000', 3, 2, 2, 1, '2022-12-27 05:34:18', '2022-12-27 05:34:47');

-- --------------------------------------------------------

--
-- Table structure for table `room_categories`
--

CREATE TABLE `room_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `property_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_categories`
--

INSERT INTO `room_categories` (`id`, `name`, `property_id`, `created_at`, `updated_at`) VALUES
(1, 'DELUX', 2, '2022-12-26 11:27:00', '2022-12-26 11:27:00'),
(2, 'DELUX', 3, '2022-12-27 05:34:17', '2022-12-27 05:34:17');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(40) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_attachments`
--

CREATE TABLE `support_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_message_id` int(10) UNSIGNED NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_messages`
--

CREATE TABLE `support_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supportticket_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) DEFAULT 0,
  `owner_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `ticket` varchar(40) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed',
  `priority` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 = Low, 2 = medium, 3 = heigh',
  `last_reply` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `owner_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `post_balance` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `trx_type` varchar(40) DEFAULT NULL,
  `trx` varchar(40) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `country_code` varchar(40) DEFAULT NULL,
  `mobile` varchar(40) DEFAULT NULL,
  `ref_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `balance` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL COMMENT 'contains full address',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: banned, 1: active',
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: email unverified, 1: email verified',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: sms unverified, 1: sms verified',
  `ver_code` varchar(40) DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `ts` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: 2fa off, 1: 2fa on',
  `tv` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0: 2fa unverified, 1: 2fa verified',
  `tsc` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `country_code`, `mobile`, `ref_by`, `balance`, `password`, `image`, `address`, `status`, `ev`, `sv`, `ver_code`, `ver_code_send_at`, `ts`, `tv`, `tsc`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'test', 'testankit', 'engr.ankit11@gmail.com', 'IN', '911234567980', 0, '0.00000000', '$2y$10$.G6.MMG2.fiYe27t8QKlY.n9q7N66s36z3rtX/rAzrUgTSitbA56e', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 1, 1, '271957', '2022-10-27 23:42:45', 0, 1, NULL, NULL, '2022-10-28 03:42:44', '2022-10-28 03:52:49'),
(2, 'Imran', 'Khan', 'Imrankhan', 'imran@gmail.com', 'AF', '939985632147', 0, '0.00000000', '$2y$10$ukjM3iLWh7Bx5iIm8IcERerazAnXyoWfHvEVGuyfmPI..0gr6W5vS', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"Afghanistan\",\"city\":\"\"}', 1, 0, 1, '503029', '2022-12-27 12:28:31', 0, 1, NULL, NULL, '2022-12-27 06:58:29', '2022-12-27 06:58:31'),
(3, 'Imran', 'Khan', 'mdimran', 'mohimranahmad@gmail.com', 'IN', '918595196721', 0, '0.00000000', '$2y$10$eHD8AMS506.oYFQu4Hd9hONlzhHrTH3hq2WWSfbUS3unqvB0a7uUi', NULL, '{\"address\":\"\",\"state\":\"\",\"zip\":\"\",\"country\":\"India\",\"city\":\"\"}', 1, 1, 1, NULL, NULL, 0, 1, NULL, NULL, '2022-12-27 07:09:28', '2022-12-27 07:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_logins`
--

CREATE TABLE `user_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `owner_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_ip` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `country` varchar(40) DEFAULT NULL,
  `country_code` varchar(40) DEFAULT NULL,
  `longitude` varchar(40) DEFAULT NULL,
  `latitude` varchar(40) DEFAULT NULL,
  `browser` varchar(40) DEFAULT NULL,
  `os` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_logins`
--

INSERT INTO `user_logins` (`id`, `user_id`, `owner_id`, `user_ip`, `city`, `country`, `country_code`, `longitude`, `latitude`, `browser`, `os`, `created_at`, `updated_at`) VALUES
(1, 0, 1, '49.43.99.146', '', 'India', 'IN', '77.006', '20.0063', 'Chrome', 'Windows 10', '2022-10-22 15:33:57', '2022-10-22 15:33:57'),
(2, 0, 2, '122.161.48.135', 'Noida', 'India', 'IN', '77.3063', '28.6145', 'Chrome', 'Windows 10', '2022-10-22 17:21:33', '2022-10-22 17:21:33'),
(3, 0, 3, '122.161.51.161', 'Noida', 'India', 'IN', '77.3063', '28.6145', 'Chrome', 'Windows 10', '2022-10-27 15:21:49', '2022-10-27 15:21:49'),
(4, 1, 0, '49.43.99.146', '', 'India', 'IN', '77.006', '20.0063', 'Chrome', 'Windows 10', '2022-10-28 03:42:44', '2022-10-28 03:42:44'),
(5, 2, 0, '::1', '', '', '', '', '', 'Chrome', 'Windows 10', '2022-12-27 06:58:30', '2022-12-27 06:58:30'),
(6, 3, 0, '::1', '', '', '', '', '', 'Chrome', 'Windows 10', '2022-12-27 07:09:28', '2022-12-27 07:09:28');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `owner_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `currency` varchar(40) NOT NULL,
  `rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `trx` varchar(40) NOT NULL,
  `final_amount` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `after_charge` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `withdraw_information` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1=>success, 2=>pending, 3=>cancel,  ',
  `admin_feedback` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `min_limit` decimal(28,8) DEFAULT 0.00000000,
  `max_limit` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `delay` varchar(40) DEFAULT NULL,
  `fixed_charge` decimal(28,8) DEFAULT 0.00000000,
  `rate` decimal(28,8) DEFAULT 0.00000000,
  `percent_charge` decimal(5,2) DEFAULT NULL,
  `currency` varchar(40) DEFAULT NULL,
  `user_data` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`username`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenity_room_categories`
--
ALTER TABLE `amenity_room_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booked_properties`
--
ALTER TABLE `booked_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booked_rooms`
--
ALTER TABLE `booked_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_logs`
--
ALTER TABLE `email_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontends`
--
ALTER TABLE `frontends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_types`
--
ALTER TABLE `property_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_categories`
--
ALTER TABLE `room_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_attachments`
--
ALTER TABLE `support_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- Indexes for table `user_logins`
--
ALTER TABLE `user_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `amenity_room_categories`
--
ALTER TABLE `amenity_room_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `booked_properties`
--
ALTER TABLE `booked_properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `booked_rooms`
--
ALTER TABLE `booked_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_logs`
--
ALTER TABLE `email_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `frontends`
--
ALTER TABLE `frontends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `gateway_currencies`
--
ALTER TABLE `gateway_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `property_types`
--
ALTER TABLE `property_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `room_categories`
--
ALTER TABLE `room_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_attachments`
--
ALTER TABLE `support_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_logins`
--
ALTER TABLE `user_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
