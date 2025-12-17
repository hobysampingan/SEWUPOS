-- SEWU ALUMINIUM DATABASE BACKUP
-- Generated: 2025-12-17 18:39:05
-- ==========================================

SET FOREIGN_KEY_CHECKS=0;

-- Table: users
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `role` enum('admin','kasir') DEFAULT 'kasir',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `users` (`id`, `username`, `password`, `name`, `role`, `created_at`, `updated_at`) VALUES ('1', 'admin', '$2y$10$N9qo8uLOickgx2ZMRZoMyeIjZRGdjGj/n3.L1sQz.Rv.lJxXNmeRO', 'Administrator', 'admin', '2025-12-17 14:18:12', '2025-12-17 14:18:12');

-- Table: settings
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `setting_key` (`setting_key`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `created_at`, `updated_at`) VALUES ('1', 'store_name', 'Sewu Aluminium', '2025-12-17 14:18:12', '2025-12-17 14:18:12');
INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `created_at`, `updated_at`) VALUES ('2', 'store_address', 'Jl. Contoh No. 123, Kota', '2025-12-17 14:18:12', '2025-12-17 14:18:12');
INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `created_at`, `updated_at`) VALUES ('3', 'store_phone', '0812-3456-7890', '2025-12-17 14:18:12', '2025-12-17 14:18:12');
INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `created_at`, `updated_at`) VALUES ('4', 'store_footer', 'Terima kasih atas kunjungan Anda!', '2025-12-17 14:18:12', '2025-12-17 14:18:12');
INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `created_at`, `updated_at`) VALUES ('5', 'product_prefix', 'ALU', '2025-12-17 14:18:12', '2025-12-17 14:18:12');
INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `created_at`, `updated_at`) VALUES ('6', 'low_stock_threshold', '2', '2025-12-17 14:18:12', '2025-12-17 16:27:03');

-- Table: suppliers
DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `suppliers` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES ('1', 'SUNRISE ELECTRIC', '', '', '2025-12-17 14:18:12', '2025-12-17 14:18:12');
INSERT INTO `suppliers` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES ('2', 'MEKARJAYA ELECTRIC', '', '', '2025-12-17 14:18:12', '2025-12-17 14:18:12');
INSERT INTO `suppliers` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES ('3', 'OFFICE XPRESS', '', '', '2025-12-17 14:18:12', '2025-12-17 14:18:12');
INSERT INTO `suppliers` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES ('4', 'HARCOELECTRIC', '', '', '2025-12-17 14:18:12', '2025-12-17 14:18:12');
INSERT INTO `suppliers` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES ('5', 'ALUMINIUM JAYA', '', '', '2025-12-17 14:18:12', '2025-12-17 14:18:12');
INSERT INTO `suppliers` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES ('6', 'INKALUM', '', '', '2025-12-17 14:18:12', '2025-12-17 14:18:12');
INSERT INTO `suppliers` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES ('7', 'LAMBA JAYA', '', '', '2025-12-17 14:18:12', '2025-12-17 14:18:12');
INSERT INTO `suppliers` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES ('8', 'SANJAYA ELECTRIC', '', '', '2025-12-17 14:18:12', '2025-12-17 14:18:12');
INSERT INTO `suppliers` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES ('9', 'KAPASITOR JAYA', '', '', '2025-12-17 14:18:12', '2025-12-17 14:18:12');

-- Table: categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES ('1', 'LAMPU', 'Berbagai jenis lampu', '2025-12-17 14:34:57', '2025-12-17 14:34:57');
INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES ('2', 'KABEL', 'Kabel listrik berbagai ukuran', '2025-12-17 14:34:57', '2025-12-17 14:34:57');
INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES ('3', 'STEKER', 'Steker dan colokan', '2025-12-17 14:34:57', '2025-12-17 14:34:57');
INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES ('4', 'TERMINAL', 'Terminal listrik', '2025-12-17 14:34:57', '2025-12-17 14:34:57');
INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES ('5', 'FITTING', 'Fitting lampu', '2025-12-17 14:34:57', '2025-12-17 14:34:57');
INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES ('6', 'MCB', 'Miniature Circuit Breaker', '2025-12-17 14:34:57', '2025-12-17 14:34:57');
INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES ('7', 'ACCESORIES', 'Aksesoris listrik lainnya', '2025-12-17 14:34:57', '2025-12-17 14:34:57');
INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES ('8', 'KOMPONEN', 'Komponen elektronik', '2025-12-17 14:34:57', '2025-12-17 14:34:57');
INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES ('9', 'PANEL', 'Panel listrik', '2025-12-17 14:34:57', '2025-12-17 14:34:57');

-- Table: products
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `cost_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `sell_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `stock` int(11) NOT NULL DEFAULT 0,
  `measurement` varchar(50) DEFAULT 'pcs',
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `supplier_id` (`supplier_id`),
  KEY `category_id` (`category_id`),
  KEY `idx_code` (`code`),
  KEY `idx_name` (`name`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE SET NULL,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('1', 'PRD-739433', 'kabel nya 1x1,5 merah', '1', '2', '1300.00', '5000.00', '12', 'meter', 'products/6942602403a8e_1765957668.jpg', '', '0', '2025-12-17 14:21:59', '2025-12-17 14:49:19');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('2', 'PRD-716ACF', 'kabel nya 1x1,5 hitam', '1', '2', '1300.00', '5000.00', '50', 'meter', 'products/694260152b197_1765957653.jpeg', '', '0', '2025-12-17 14:47:33', '2025-12-17 14:49:16');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('3', 'ALU-89D5F4', 'kabel nya 1x1,5 merah', '1', '2', '1300.00', '5000.00', '50', 'meter', 'products/694260989ced6_1765957784.jpg', '', '0', '2025-12-17 14:49:44', '2025-12-17 16:25:47');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('4', 'ALU-142B83', 'kabel nya 1x1,5 hitam', '1', '2', '1300.00', '5000.00', '50', 'meter', 'products/694260c142731_1765957825.jpg', '', '0', '2025-12-17 14:50:25', '2025-12-17 16:25:46');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('5', 'ALU-00001', 'Isolasi', '1', '8', '5000.00', '9000.00', '20', 'pcs', 'products/6942786aa36ee_1765963882.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 16:31:22');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('6', 'ALU-00002', 'MCB 4 A', '1', '6', '11000.00', '19800.00', '5', 'pcs', 'products/6942783cc6986_1765963836.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 16:30:36');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('7', 'ALU-00003', 'MCB 6 A', '1', '6', '11000.00', '19800.00', '5', 'pcs', 'products/6942784859bdf_1765963848.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 16:30:48');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('8', 'ALU-00004', 'MCB 10 A', '1', '6', '11000.00', '19800.00', '5', 'pcs', 'products/6942780d73a79_1765963789.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 16:29:49');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('9', 'ALU-00005', 'MCB 16 A', '1', '6', '11000.00', '19800.00', '5', 'pcs', 'products/69427822a5a95_1765963810.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 16:30:10');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('10', 'ALU-00006', 'Klem selang gas', '1', '8', '1000.00', '1800.00', '20', 'pcs', 'products/694278de088df_1765963998.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 16:33:18');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('11', 'ALU-00007', 'Kabel power computer', '1', '2', '9000.00', '16200.00', '5', 'pcs', 'products/69427888cf034_1765963912.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 16:31:52');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('12', 'ALU-00008', 'Testpen', '1', '8', '3900.00', '7020.00', '20', 'pcs', 'products/6942793176a82_1765964081.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 16:34:41');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('13', 'ALU-00009', 'Colokan 3 cabang + saklar', '1', '4', '9500.00', '17100.00', '6', 'pcs', 'products/69427a47aeedf_1765964359.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:59:08');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('14', 'ALU-00010', 'Stop kontak 5 lubang', '1', '4', '11500.00', '20700.00', '6', 'pcs', 'products/69428ee1ef195_1765969633.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 18:07:13');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('15', 'ALU-00011', 'Fitting lampu plafon segi 4', '1', '5', '3500.00', '6300.00', '12', 'pcs', 'products/694280f75eedb_1765966071.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:07:51');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('16', 'ALU-00012', 'Fitting lampu plafon bulat hitam', '1', '5', '2000.00', '3600.00', '24', 'pcs', 'products/69427ff6ee10c_1765965814.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:05:32');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('17', 'ALU-00013', 'Fitting lampu gantung', '1', '5', '1600.00', '2880.00', '50', 'pcs', 'products/69428000345e1_1765965824.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:03:44');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('18', 'ALU-00014', 'Fitting lampu colok on/off', '1', '5', '3500.00', '6300.00', '24', 'pcs', 'products/69427a96213cb_1765964438.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 16:40:38');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('19', 'ALU-00015', 'Baterai AA', '1', '8', '783.00', '1409.00', '60', 'pcs', 'products/694279593cf51_1765964121.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 16:35:21');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('20', 'ALU-00016', 'Baterai AAA', '1', '8', '783.00', '1409.00', '60', 'pcs', 'products/69427961b4c09_1765964129.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 16:35:29');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('21', 'ALU-00017', 'Klem kabel A5', '1', '2', '3000.00', '5400.00', '15', 'bungkus', 'products/694278c5a8f1e_1765963973.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 16:32:53');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('22', 'ALU-00018', 'Klem kabel A8', '1', '2', '3200.00', '5760.00', '15', 'bungkus', 'products/694278d2890a7_1765963986.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 16:33:06');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('23', 'ALU-00019', 'Klem kabel 9', '1', '2', '3500.00', '6300.00', '5', 'bungkus', 'products/6942789d35dd8_1765963933.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 16:32:13');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('24', 'ALU-00020', 'Klem kabel A10', '1', '2', '3900.00', '7020.00', '5', 'bungkus', 'products/694278bae892a_1765963962.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 16:32:42');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('25', 'ALU-00021', 'Kabel ties 3.6 x 250', '1', '8', '200.00', '500.00', '304', 'pcs', 'products/6942833c507d5_1765966652.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:19:57');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('26', 'ALU-00022', 'Kabel ties 2.5 x 1.5', '1', '8', '200.00', '500.00', '506', 'pcs', 'products/694282a6bcfb4_1765966502.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:19:29');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('27', 'ALU-00023', 'Steker gepang', '1', '3', '1200.00', '2160.00', '36', 'pcs', 'products/69428cef8ff63_1765969135.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:58:55');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('28', 'ALU-00024', 'Steker contra gepeng', '1', '3', '1500.00', '2700.00', '48', 'pcs', 'products/69428801a5a46_1765967873.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:37:53');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('29', 'ALU-00025', 'Saklar seri 1B', '1', '9', '3500.00', '6300.00', '12', 'pcs', 'products/69428a3d8a53e_1765968445.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:47:25');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('30', 'ALU-00026', 'Saklar seri 1B (double)', '1', '9', '4700.00', '8460.00', '12', 'pcs', 'products/69428a4c8f169_1765968460.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:47:40');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('31', 'ALU-00027', 'Saklar seri 0B single', '1', '9', '3500.00', '6300.00', '12', 'pcs', 'products/694289a3a71d9_1765968291.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:59:26');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('32', 'ALU-00028', 'Saklar seri 0B double', '1', '9', '4700.00', '8460.00', '12', 'pcs', 'products/694289c1e5e1d_1765968321.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:45:21');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('33', 'ALU-00029', 'Stop kontak 1B', '1', '4', '4700.00', '8460.00', '12', 'pcs', 'products/69428ba0d540b_1765968800.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:53:20');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('34', 'ALU-00030', 'Stop kontak 0B', '1', '4', '4700.00', '8460.00', '12', 'pcs', 'products/69428b8cab13e_1765968780.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:53:00');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('35', 'ALU-00031', 'Stop kontak 2 lubang', '1', '4', '6500.00', '11700.00', '5', 'pcs', 'products/69428d5c35be4_1765969244.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 18:00:44');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('36', 'ALU-00032', 'Stop kontak 3 lubang', '1', '4', '7900.00', '14220.00', '6', 'pcs', 'products/69428d6d1bfd4_1765969261.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 18:01:01');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('37', 'ALU-00033', 'Stop kontak 4 lubang', '1', '4', '8700.00', '15660.00', '6', 'pcs', 'products/69428d79e95b1_1765969273.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 18:01:13');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('38', 'ALU-00034', 'Kabel tunggal 1x1.5 merah NYAF', '1', '2', '1160.00', '2088.00', '50', 'meter', 'products/694284590cfdb_1765966937.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:22:17');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('39', 'ALU-00035', 'Kabel tunggal 1x1.5 hitam NYAF', '1', '2', '1160.00', '2088.00', '50', 'meter', 'products/6942844eb2f1b_1765966926.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:22:06');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('40', 'ALU-00036', 'Box MCB 2 group', '1', '6', '9500.00', '17100.00', '4', 'pcs', 'products/6942799235a65_1765964178.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 16:36:18');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('41', 'ALU-00037', 'Box MCB 4 group', '1', '6', '13500.00', '24300.00', '6', 'pcs', 'products/6942799a9cc96_1765964186.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 16:36:26');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('42', 'ALU-00038', 'INBOW', '1', '9', '1500.00', '2700.00', '24', 'pcs', 'products/694281d89a6df_1765966296.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:51:20');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('43', 'ALU-00039', 'T DUS cabang 3 PUTIH', '1', '9', '1500.00', '2700.00', '24', 'pcs', 'products/69428b057fa5c_1765968645.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:50:45');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('44', 'ALU-00040', 'Steker arde bulat', '1', '3', '2800.00', '5040.00', '24', 'pcs', 'products/69428acc026e8_1765968588.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:49:48');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('45', 'ALU-00041', 'Steker colokan lampu on/off', '1', '3', '6500.00', '11700.00', '12', 'pcs', 'products/694288ecd7776_1765968108.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:41:48');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('46', 'ALU-00042', 'Steker colokan T multi', '1', '3', '3000.00', '5400.00', '24', 'pcs', 'products/69428a9350b7c_1765968531.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:48:51');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('47', 'ALU-00043', 'Kabel NYA 1x1.5 merah', '1', '2', '2444.00', '4399.00', '45', 'meter', 'products/694277fc8846c_1765963772.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 16:29:32');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('48', 'ALU-00044', 'Kabel NYA 1x1.5 hitam', '1', '2', '2444.00', '4399.00', '45', 'meter', 'products/694277ee49f16_1765963758.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 16:29:18');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('49', 'ALU-00045', 'Kabel SERABUT HAYAMA HYO 2x0.75 hitam', '1', '2', '3311.00', '5960.00', '45', 'meter', 'products/694282f65cbad_1765966582.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:16:22');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('50', 'ALU-00046', 'Kabel SERABUT HAYAMA HYO 2x0.75 putih', '1', '2', '3311.00', '5960.00', '45', 'meter', 'products/69428321043ff_1765966625.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:17:05');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('51', 'ALU-00047', 'Kabel transparan 2x50', '1', '2', '1166.00', '2099.00', '90', 'meter', 'products/6942841fb13de_1765966879.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:21:19');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('52', 'ALU-00048', 'Kabel transparan 2x30', '1', '2', '1166.00', '2099.00', '90', 'meter', 'products/69428415ab635_1765966869.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:21:09');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('53', 'ALU-00049', 'Kabel HAYAMA NYM 2x2.5 HITAM', '1', '2', '3000.00', '5400.00', '45', 'meter', 'products/694282486d46c_1765966408.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:16:35');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('54', 'ALU-00050', 'Isi lem tembak 27 cm', '1', '8', '1000.00', '1500.00', '100', 'pcs', 'products/69428571dd386_1765967217.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:27:17');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('55', 'ALU-00051', 'Lampu eco 15W', '1', '1', '4000.00', '7200.00', '10', 'pcs', 'products/6942849ed79c9_1765967006.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:23:26');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('56', 'ALU-00052', 'Lampu eco 20W', '1', '1', '4950.00', '8910.00', '10', 'pcs', 'products/694284b30b0b3_1765967027.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:23:47');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('57', 'ALU-00053', 'Lampu pion 40W', '1', '1', '8500.00', '15300.00', '5', 'pcs', 'products/694284da56d0e_1765967066.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:24:26');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('58', 'ALU-00054', 'Lampu pion 50W', '1', '1', '10000.00', '18000.00', '5', 'pcs', 'products/694284e474e39_1765967076.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:24:36');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('59', 'ALU-00055', 'LIGERA 5W', '1', '1', '2700.00', '4860.00', '10', 'pcs', 'products/6942860108356_1765967361.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:35:01');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('60', 'ALU-00056', 'LIGERA 15W', '1', '1', '5050.00', '9090.00', '10', 'pcs', 'products/694285c1b0066_1765967297.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:34:24');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('61', 'ALU-00057', 'LIGERA 20W', '1', '1', '6300.00', '11340.00', '10', 'pcs', 'products/694285e9381aa_1765967337.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:34:41');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('62', 'ALU-00058', 'LIGERA 40W', '1', '1', '10800.00', '19440.00', '5', 'pcs', 'products/694285f4536d9_1765967348.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:34:50');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('63', 'ALU-00059', 'PANALED Premium 5W', '1', '1', '3100.00', '5580.00', '10', 'pcs', 'products/694287060d78b_1765967622.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:33:42');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('64', 'ALU-00060', 'PANALED Premium 10W', '1', '1', '4450.00', '8010.00', '8', 'pcs', 'products/6942868238560_1765967490.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:31:30');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('65', 'ALU-00061', 'PANALED Premium 20W', '1', '1', '6750.00', '12150.00', '7', 'pcs', 'products/6942868f92218_1765967503.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:31:43');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('66', 'ALU-00062', 'PANALED Premium 30W', '1', '1', '8600.00', '15480.00', '5', 'pcs', 'products/694286a0587d3_1765967520.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:32:00');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('67', 'ALU-00063', 'PANALED Premium 40 W', '1', '1', '11850.00', '21330.00', '5', 'pcs', 'products/694286d75b892_1765967575.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:32:55');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('68', 'ALU-00064', 'PANALED Premium 50 W', '1', '1', '14750.00', '26550.00', '5', 'pcs', 'products/694286f9dcf50_1765967609.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:33:29');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('69', 'ALU-00065', 'PANALED Paket 5W', '1', '1', '3370.00', '6066.00', '20', 'pcs', 'products/6942866d9603b_1765967469.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:31:09');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('70', 'ALU-00066', 'PANALED Paket 10W', '1', '1', '4445.00', '8001.00', '10', 'pcs', 'products/6942864493b4f_1765967428.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:30:28');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('71', 'ALU-00067', 'PANALED Paket 15W', '1', '1', '5305.00', '9549.00', '10', 'pcs', 'products/694286501cc90_1765967440.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:30:40');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('72', 'ALU-00068', 'PANALED Paket 30W', '1', '1', '8600.00', '15480.00', '10', 'pcs', 'products/6942865e0b629_1765967454.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:30:54');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('73', 'ALU-00069', 'INALUX 10W', '2', '1', '3850.00', '6930.00', '12', 'pcs', 'products/6942817acccf8_1765966202.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 18:26:17');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('74', 'ALU-00070', 'INALUX 15W', '1', '1', '6450.00', '11610.00', '5', 'pcs', 'products/6942818c107bb_1765966220.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:10:20');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('75', 'ALU-00071', 'INALUX 20W', '1', '1', '5500.00', '9900.00', '8', 'pcs', 'products/6942819c25c3d_1765966236.jpg', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:10:36');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('76', 'ALU-00072', 'SCORE Emergency 9W', '1', '1', '27000.00', '48600.00', '3', 'pcs', 'products/69428785ba930_1765967749.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:59:51');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('77', 'ALU-00073', 'SCORE Emergency 12W', '1', '1', '30000.00', '54000.00', '2', 'pcs', 'products/6942876b67a5d_1765967723.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:35:23');
INSERT INTO `products` (`id`, `code`, `name`, `supplier_id`, `category_id`, `cost_price`, `sell_price`, `stock`, `measurement`, `image`, `description`, `is_active`, `created_at`, `updated_at`) VALUES ('78', 'ALU-00074', 'SCORE Emergency 18W', '1', '1', '33000.00', '59400.00', '2', 'pcs', 'products/694287777a0e9_1765967735.webp', '', '1', '2025-12-17 16:26:40', '2025-12-17 17:59:42');

-- Table: transactions
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(50) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `change_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  `transaction_date` datetime DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoice_number` (`invoice_number`),
  KEY `user_id` (`user_id`),
  KEY `idx_invoice` (`invoice_number`),
  KEY `idx_date` (`transaction_date`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table: transaction_items
DROP TABLE IF EXISTS `transaction_items`;
CREATE TABLE `transaction_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `subtotal` decimal(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `transaction_id` (`transaction_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `transaction_items_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `transaction_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table: stock_history
DROP TABLE IF EXISTS `stock_history`;
CREATE TABLE `stock_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `type` enum('in','out','adjustment') NOT NULL,
  `quantity` int(11) NOT NULL,
  `stock_before` int(11) NOT NULL,
  `stock_after` int(11) NOT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `reference_type` varchar(50) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `stock_history_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `stock_history_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('5', '5', 'in', '20', '0', '20', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('6', '6', 'in', '5', '0', '5', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('7', '7', 'in', '5', '0', '5', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('8', '8', 'in', '5', '0', '5', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('9', '9', 'in', '5', '0', '5', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('10', '10', 'in', '20', '0', '20', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('11', '11', 'in', '5', '0', '5', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('12', '12', 'in', '20', '0', '20', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('13', '13', 'in', '6', '0', '6', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('14', '14', 'in', '6', '0', '6', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('15', '15', 'in', '12', '0', '12', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('16', '16', 'in', '24', '0', '24', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('17', '17', 'in', '50', '0', '50', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('18', '18', 'in', '24', '0', '24', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('19', '19', 'in', '60', '0', '60', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('20', '20', 'in', '60', '0', '60', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('21', '21', 'in', '15', '0', '15', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('22', '22', 'in', '15', '0', '15', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('23', '23', 'in', '5', '0', '5', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('24', '24', 'in', '5', '0', '5', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('25', '25', 'in', '4', '0', '4', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('26', '26', 'in', '6', '0', '6', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('27', '27', 'in', '36', '0', '36', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('28', '28', 'in', '48', '0', '48', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('29', '29', 'in', '12', '0', '12', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('30', '30', 'in', '12', '0', '12', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('31', '31', 'in', '12', '0', '12', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('32', '32', 'in', '12', '0', '12', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('33', '33', 'in', '12', '0', '12', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('34', '34', 'in', '12', '0', '12', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('35', '35', 'in', '5', '0', '5', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('36', '36', 'in', '6', '0', '6', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('37', '37', 'in', '6', '0', '6', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('38', '38', 'in', '50', '0', '50', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('39', '39', 'in', '50', '0', '50', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('40', '40', 'in', '4', '0', '4', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('41', '41', 'in', '6', '0', '6', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('42', '42', 'in', '24', '0', '24', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('43', '43', 'in', '24', '0', '24', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('44', '44', 'in', '24', '0', '24', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('45', '45', 'in', '12', '0', '12', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('46', '46', 'in', '24', '0', '24', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('47', '47', 'in', '45', '0', '45', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('48', '48', 'in', '45', '0', '45', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('49', '49', 'in', '45', '0', '45', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('50', '50', 'in', '45', '0', '45', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('51', '51', 'in', '90', '0', '90', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('52', '52', 'in', '90', '0', '90', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('53', '53', 'in', '45', '0', '45', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('54', '54', 'in', '100', '0', '100', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('55', '55', 'in', '10', '0', '10', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('56', '56', 'in', '10', '0', '10', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('57', '57', 'in', '5', '0', '5', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('58', '58', 'in', '5', '0', '5', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('59', '59', 'in', '10', '0', '10', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('60', '60', 'in', '10', '0', '10', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('61', '61', 'in', '10', '0', '10', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('62', '62', 'in', '5', '0', '5', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('63', '63', 'in', '10', '0', '10', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('64', '64', 'in', '8', '0', '8', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('65', '65', 'in', '7', '0', '7', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('66', '66', 'in', '5', '0', '5', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('67', '67', 'in', '5', '0', '5', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('68', '68', 'in', '5', '0', '5', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('69', '69', 'in', '20', '0', '20', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('70', '70', 'in', '10', '0', '10', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('71', '71', 'in', '10', '0', '10', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('72', '72', 'in', '10', '0', '10', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('73', '73', 'in', '12', '0', '12', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('74', '74', 'in', '5', '0', '5', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('75', '75', 'in', '8', '0', '8', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('76', '76', 'in', '3', '0', '3', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('77', '77', 'in', '2', '0', '2', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('78', '78', 'in', '2', '0', '2', NULL, NULL, 'Import dari Excel', '1', '2025-12-17 16:26:40');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('79', '26', 'in', '500', '6', '506', NULL, 'adjustment', 'KOREKSI STOK', '1', '2025-12-17 17:19:29');
INSERT INTO `stock_history` (`id`, `product_id`, `type`, `quantity`, `stock_before`, `stock_after`, `reference_id`, `reference_type`, `notes`, `user_id`, `created_at`) VALUES ('80', '25', 'in', '300', '4', '304', NULL, 'adjustment', 'KOREKSI STOK PER PCS', '1', '2025-12-17 17:19:57');

SET FOREIGN_KEY_CHECKS=1;
