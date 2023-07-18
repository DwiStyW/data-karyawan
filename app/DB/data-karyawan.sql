/*
 Navicat Premium Data Transfer

 Source Server         : laragon
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : data-karyawan

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 18/07/2023 15:52:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for absen
-- ----------------------------
DROP TABLE IF EXISTS `absen`;
CREATE TABLE `absen`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_master` int NOT NULL,
  `tanggal` date NOT NULL,
  `jenis` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ket` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of absen
-- ----------------------------
INSERT INTO `absen` VALUES (1, 5, '2023-05-01', 'ijin', 'Nikahan', 'disetujui', '2023-05-26 04:03:54');
INSERT INTO `absen` VALUES (2, 6, '2023-05-02', 'sakit', 'tenggorokan kering', 'disetujui', '2023-05-26 04:05:43');
INSERT INTO `absen` VALUES (3, 5, '2023-05-03', 'alpha', '.....', 'disetujui', '2023-05-26 04:06:25');
INSERT INTO `absen` VALUES (4, 1, '2023-07-17', 'sakit', 'sakit perut', 'disetujui', '2023-07-17 03:14:01');
INSERT INTO `absen` VALUES (5, 2, '2023-07-17', 'ijin', 'ijin kamar mandi', 'disetujui', '2023-07-17 03:15:37');
INSERT INTO `absen` VALUES (6, 1, '2023-07-16', 'ijin', 'test', 'disetujui', '2023-07-17 07:52:43');

-- ----------------------------
-- Table structure for bagian
-- ----------------------------
DROP TABLE IF EXISTS `bagian`;
CREATE TABLE `bagian`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_departemen` int NOT NULL,
  `nama_bagian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bagian
-- ----------------------------
INSERT INTO `bagian` VALUES (1, 0, 'EXIM', '2023-02-28 01:38:17');
INSERT INTO `bagian` VALUES (2, 0, 'HRD', '2023-02-28 01:38:20');
INSERT INTO `bagian` VALUES (3, 0, 'IT', '2023-02-28 01:38:24');
INSERT INTO `bagian` VALUES (4, 1, 'QUALITY ASSURANCE', '2023-02-28 01:38:27');
INSERT INTO `bagian` VALUES (5, 1, 'REGISTRASI', '2023-02-28 01:38:30');
INSERT INTO `bagian` VALUES (6, 1, 'R & D', '2023-02-28 01:38:33');
INSERT INTO `bagian` VALUES (7, 1, 'QUALITY CONTROL', '2023-02-28 01:38:38');
INSERT INTO `bagian` VALUES (8, 2, 'ACCOUNTING', '2023-02-28 01:38:41');
INSERT INTO `bagian` VALUES (9, 2, 'KASIR', '2023-02-28 01:38:47');
INSERT INTO `bagian` VALUES (10, 3, 'MARKETING', '2023-02-28 01:38:50');
INSERT INTO `bagian` VALUES (11, 4, 'PRODUKSI', '2023-02-28 01:38:55');
INSERT INTO `bagian` VALUES (12, 4, 'PPIC', '2023-02-28 01:38:58');
INSERT INTO `bagian` VALUES (16, 5, 'PURCHASING', '2023-02-28 01:39:12');
INSERT INTO `bagian` VALUES (17, 6, 'GA', '2023-04-14 13:07:17');
INSERT INTO `bagian` VALUES (18, 6, 'Satpam', '2023-04-14 13:07:54');
INSERT INTO `bagian` VALUES (19, 4, 'Supply Chain', '2023-04-14 13:09:29');
INSERT INTO `bagian` VALUES (20, 4, 'Teknik', '2023-04-14 13:10:16');

-- ----------------------------
-- Table structure for batas_pensiun
-- ----------------------------
DROP TABLE IF EXISTS `batas_pensiun`;
CREATE TABLE `batas_pensiun`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tingkatan_pendidikan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `usia_max` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of batas_pensiun
-- ----------------------------
INSERT INTO `batas_pensiun` VALUES (1, 'SD', 45);
INSERT INTO `batas_pensiun` VALUES (2, 'SMP', 48);
INSERT INTO `batas_pensiun` VALUES (3, 'SMA', 50);
INSERT INTO `batas_pensiun` VALUES (4, 'Diploma', 55);
INSERT INTO `batas_pensiun` VALUES (5, 'S1', 55);
INSERT INTO `batas_pensiun` VALUES (6, 'S2', 55);
INSERT INTO `batas_pensiun` VALUES (7, 'S3', 55);
INSERT INTO `batas_pensiun` VALUES (8, 'Lainnya', 0);

-- ----------------------------
-- Table structure for bpjs_kes
-- ----------------------------
DROP TABLE IF EXISTS `bpjs_kes`;
CREATE TABLE `bpjs_kes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `no_bpjs_kes` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nik` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kelas` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `iuran` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_master` int NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alasan_nonaktif` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bpjs_kes
-- ----------------------------
INSERT INTO `bpjs_kes` VALUES (1, '1231231234', 'Suprianto', '', '1', '226150', 1, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (2, '1231231234', 'Khoirul Anam', '', '1', '226150', 2, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (3, '1231231234', 'Muhlasin', '', '1', '226150', 3, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (4, '1231231234', 'Nanang Sutrisno', '', '1', '226150', 4, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (5, '1231231234', 'Rofik', '', '1', '226150', 5, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (6, '1231231234', 'Sigit Nurdianto', '', '1', '226150', 6, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (7, '1231231234', 'Sulaeman', '', '1', '226150', 7, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (8, '1231231234', 'Asmunik', '', '1', '226150', 8, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (9, '1231231234', 'Astutik C', '', '1', '226150', 9, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (10, '1231231234', 'Iwan Rusnandar', '', '1', '226150', 10, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (11, '1231231234', 'Muhammad Anto', '', '1', '226150', 11, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (12, '1231231234', 'Mulyadi', '', '1', '226150', 12, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (13, '1231231234', 'Saiful Amar', '', '1', '226150', 13, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (14, '1231231234', 'Anis Sya\'Ati', '', '1', '226150', 14, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (15, '1231231234', 'Irawati A', '', '1', '226150', 15, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (16, '1231231234', 'Rofi\'I', '', '1', '226150', 16, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (17, '1231231234', 'Hasan Bisri', '', '1', '226150', 17, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (18, '1231231234', 'Ismail Marzuki', '', '1', '226150', 18, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (19, '1231231234', 'Bambang Rinekso', '', '1', '226150', 19, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (20, '1231231234', 'Eka Yuliardiansah', '', '1', '226150', 20, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (21, '1231231234', 'Eko Wahyudi', '', '1', '226150', 21, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (22, '1231231234', 'Slamet Hariadi', '', '1', '226150', 22, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (23, '1231231234', 'Wiro\' I', '', '1', '226150', 23, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (24, '1231231234', 'Anwari', '', '1', '226150', 24, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (25, '1231231234', 'Nanang Sudaryono', '', '1', '226150', 25, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (26, '1231231234', 'Waras', '', '1', '226150', 26, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (27, '1231231234', 'Hendro Mulyono', '', '1', '226150', 27, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (28, '1231231234', 'Paryati', '', '1', '226150', 28, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (29, '1231231234', 'Sri Wulandari (A)', '', '1', '226150', 29, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (30, '1231231234', 'Astutik B', '', '1', '226150', 30, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (31, '1231231234', 'Kumaiyah', '', '1', '226150', 31, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (32, '1231231234', 'Masitah', '', '1', '226150', 32, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (33, '1231231234', 'Sumarlik', '', '1', '226150', 33, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (34, '1231231234', 'Umi Mari\'Fah', '', '1', '226150', 34, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (35, '1231231234', 'Nur Chasanah', '', '1', '226150', 35, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (36, '1231231234', 'Hindun Kamida', '', '1', '226150', 36, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (37, '1231231234', 'Ninik Rodhotul Jannah', '', '1', '226150', 37, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (38, '1231231234', 'Suherni Indah Katiti ', '', '1', '226150', 38, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (39, '1231231234', 'Useni', '', '1', '226150', 39, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (40, '1231231234', 'Ngatminah', '', '1', '226150', 40, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (41, '1231231234', 'Indrawati (A)', '', '1', '226150', 41, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (42, '1231231234', 'Koniyah', '', '1', '226150', 42, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (43, '1231231234', 'Ninik Susana', '', '1', '226150', 43, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (44, '1231231234', 'Wiwik Suhartatik', '', '1', '226150', 44, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (45, '1231231234', 'Yuli Suliswanti', '', '1', '226150', 45, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (46, '1231231234', 'Hartatik', '', '1', '226150', 46, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (47, '1231231234', 'Ismaulanah', '', '1', '226150', 47, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (48, '1231231234', 'Lasianah', '', '1', '226150', 48, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (49, '1231231234', 'Marnah', '', '1', '226150', 49, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (50, '1231231234', 'Sumilah (A)', '', '1', '226150', 50, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (51, '1231231234', 'Ana Nur Laila', '', '1', '226150', 51, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (52, '1231231234', 'Asmani', '', '1', '226150', 52, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (53, '1231231234', 'Binti Alqori\'Ah', '', '1', '226150', 53, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (54, '1231231234', 'Evi Triskawati', '', '1', '226150', 54, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (55, '1231231234', 'Nur Hidayati', '', '1', '226150', 55, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (56, '1231231234', 'Siti Sunarsih', '', '1', '226150', 56, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (57, '1231231234', 'Sumiati (A)', '', '1', '226150', 57, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (58, '1231231234', 'Sutini', '', '1', '226150', 58, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (59, '1231231234', 'Luluk Ekawati', '', '1', '226150', 59, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (60, '1231231234', 'Ida Pratiwi', '', '1', '226150', 60, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (61, '1231231234', 'Mila Suryani', '', '1', '226150', 61, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (62, '1231231234', 'Nur Asiyah', '', '1', '226150', 62, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (63, '1231231234', 'Nur Atika Lestari', '', '1', '226150', 63, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (64, '1231231234', 'Yuliatin', '', '1', '226150', 64, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (65, '1231231234', 'Evi Yusniawati', '', '1', '226150', 65, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (66, '1231231234', 'Fira Nofita', '', '1', '226150', 66, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (67, '1231231234', 'Siti Khotimah', '', '1', '226150', 67, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (68, '1231231234', 'Yulia In Pangestu', '', '1', '226150', 68, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (69, '1231231234', 'Muliati', '', '1', '226150', 69, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (70, '1231231234', 'Siti Nur Aisah', '', '1', '226150', 70, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (71, '1231231234', 'Sumarti', '', '1', '226150', 71, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (72, '1231231234', 'Istianah A', '', '1', '226150', 72, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (73, '1231231234', 'Suwarni', '', '1', '226150', 73, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (74, '1231231234', 'Iswati B', '', '1', '226150', 74, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (75, '1231231234', 'Masrukah', '', '1', '226150', 75, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (76, '1231231234', 'Suriyah', '', '1', '226150', 76, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (77, '1231231234', 'Fatoni', '', '1', '226150', 77, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (78, '1231231234', 'Ampar Jaya Suwondo', '', '1', '226150', 78, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (79, '1231231234', 'Suryadi', '', '1', '226150', 79, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (80, '1231231234', 'Teguh Santoso', '', '1', '226150', 80, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (81, '1231231234', 'Ari Wibowo', '', '1', '226150', 81, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (82, '1231231234', 'Rokhmad', '', '1', '226150', 82, 'Aktif', '', '2023-03-09 18:52:24');
INSERT INTO `bpjs_kes` VALUES (83, '1231231234', 'Edy Sutrisno', '', '1', '226150', 83, 'Aktif', '', '2023-03-09 18:52:24');

-- ----------------------------
-- Table structure for bpjs_tk
-- ----------------------------
DROP TABLE IF EXISTS `bpjs_tk`;
CREATE TABLE `bpjs_tk`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `no_bpjs_tk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_kepesertaan` date NOT NULL,
  `iuran` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_master` int NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bpjs_tk
-- ----------------------------
INSERT INTO `bpjs_tk` VALUES (1, '01NC0015765', '2001-01-01', '447325', 1, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (2, '01NC0015765', '2001-01-01', '447325', 2, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (3, '01NC0015765', '2001-01-01', '447325', 3, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (4, '01NC0015765', '2001-01-01', '447325', 4, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (5, '01NC0015765', '2001-01-01', '447325', 5, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (6, '01NC0015765', '2001-01-01', '447325', 6, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (7, '01NC0015765', '2001-01-01', '447325', 7, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (8, '01NC0015765', '2001-01-01', '447325', 8, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (9, '01NC0015765', '2001-01-01', '447325', 9, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (10, '01NC0015765', '2001-01-01', '447325', 10, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (11, '01NC0015765', '2001-01-01', '447325', 11, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (12, '01NC0015765', '2001-01-01', '447325', 12, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (13, '01NC0015765', '2001-01-01', '447325', 13, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (14, '01NC0015765', '2001-01-01', '447325', 14, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (15, '01NC0015765', '2001-01-01', '447325', 15, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (16, '01NC0015765', '2001-01-01', '447325', 16, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (17, '01NC0015765', '2001-01-01', '447325', 17, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (18, '01NC0015765', '2001-01-01', '447325', 18, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (19, '01NC0015765', '2001-01-01', '447325', 19, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (20, '01NC0015765', '2001-01-01', '447325', 20, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (21, '01NC0015765', '2001-01-01', '447325', 21, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (22, '01NC0015765', '2001-01-01', '447325', 22, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (23, '01NC0015765', '2001-01-01', '447325', 23, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (24, '01NC0015765', '2001-01-01', '447325', 24, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (25, '01NC0015765', '2001-01-01', '447325', 25, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (26, '01NC0015765', '2001-01-01', '447325', 26, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (27, '01NC0015765', '2001-01-01', '447325', 27, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (28, '01NC0015765', '2001-01-01', '447325', 28, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (29, '01NC0015765', '2001-01-01', '447325', 29, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (30, '01NC0015765', '2001-01-01', '447325', 30, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (31, '01NC0015765', '2001-01-01', '447325', 31, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (32, '01NC0015765', '2001-01-01', '447325', 32, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (33, '01NC0015765', '2001-01-01', '447325', 33, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (34, '01NC0015765', '2001-01-01', '447325', 34, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (35, '01NC0015765', '2001-01-01', '447325', 35, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (36, '01NC0015765', '2001-01-01', '447325', 36, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (37, '01NC0015765', '2001-01-01', '447325', 37, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (38, '01NC0015765', '2001-01-01', '447325', 38, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (39, '01NC0015765', '2001-01-01', '447325', 39, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (40, '01NC0015765', '2001-01-01', '447325', 40, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (41, '01NC0015765', '2001-01-01', '447325', 41, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (42, '01NC0015765', '2001-01-01', '447325', 42, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (43, '01NC0015765', '2001-01-01', '447325', 43, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (44, '01NC0015765', '2001-01-01', '447325', 44, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (45, '01NC0015765', '2001-01-01', '447325', 45, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (46, '01NC0015765', '2001-01-01', '447325', 46, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (47, '01NC0015765', '2001-01-01', '447325', 47, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (48, '01NC0015765', '2001-01-01', '447325', 48, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (49, '01NC0015765', '2001-01-01', '447325', 49, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (50, '01NC0015765', '2001-01-01', '447325', 50, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (51, '01NC0015765', '2001-01-01', '447325', 51, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (52, '01NC0015765', '2001-01-01', '447325', 52, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (53, '01NC0015765', '2001-01-01', '447325', 53, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (54, '01NC0015765', '2001-01-01', '447325', 54, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (55, '01NC0015765', '2001-01-01', '447325', 55, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (56, '01NC0015765', '2001-01-01', '447325', 56, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (57, '01NC0015765', '2001-01-01', '447325', 57, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (58, '01NC0015765', '2001-01-01', '447325', 58, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (59, '01NC0015765', '2001-01-01', '447325', 59, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (60, '01NC0015765', '2001-01-01', '447325', 60, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (61, '01NC0015765', '2001-01-01', '447325', 61, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (62, '01NC0015765', '2001-01-01', '447325', 62, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (63, '01NC0015765', '2001-01-01', '447325', 63, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (64, '01NC0015765', '2001-01-01', '447325', 64, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (65, '01NC0015765', '2001-01-01', '447325', 65, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (66, '01NC0015765', '2001-01-01', '447325', 66, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (67, '01NC0015765', '2001-01-01', '447325', 67, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (68, '01NC0015765', '2001-01-01', '447325', 68, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (69, '01NC0015765', '2001-01-01', '447325', 69, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (70, '01NC0015765', '2001-01-01', '447325', 70, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (71, '01NC0015765', '2001-01-01', '447325', 71, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (72, '01NC0015765', '2001-01-01', '447325', 72, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (73, '01NC0015765', '2001-01-01', '447325', 73, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (74, '01NC0015765', '2001-01-01', '447325', 74, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (75, '01NC0015765', '2001-01-01', '447325', 75, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (76, '01NC0015765', '2001-01-01', '447325', 76, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (77, '01NC0015765', '2001-01-01', '447325', 77, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (78, '01NC0015765', '2001-01-01', '447325', 78, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (79, '01NC0015765', '2001-01-01', '447325', 79, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (80, '01NC0015765', '2001-01-01', '447325', 80, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (81, '01NC0015765', '2001-01-01', '447325', 81, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (82, '01NC0015765', '2001-01-01', '447325', 82, 'Aktif', '2023-03-23 02:40:22');
INSERT INTO `bpjs_tk` VALUES (83, '01NC0015765', '2001-01-01', '447325', 83, 'Aktif', '2023-03-23 02:40:22');

-- ----------------------------
-- Table structure for departemen
-- ----------------------------
DROP TABLE IF EXISTS `departemen`;
CREATE TABLE `departemen`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_departemen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of departemen
-- ----------------------------
INSERT INTO `departemen` VALUES (1, 'QUALITY', '2023-02-28 01:28:20');
INSERT INTO `departemen` VALUES (2, 'ACCOUNTING', '2023-02-28 01:28:14');
INSERT INTO `departemen` VALUES (3, 'MARKETING', '2023-02-28 01:28:07');
INSERT INTO `departemen` VALUES (4, 'PRODUKSI', '2023-02-28 01:37:58');
INSERT INTO `departemen` VALUES (5, 'PURCHASING', '2023-02-28 01:27:52');
INSERT INTO `departemen` VALUES (6, 'HRD', '2023-04-14 13:03:27');

-- ----------------------------
-- Table structure for distribusi_absen
-- ----------------------------
DROP TABLE IF EXISTS `distribusi_absen`;
CREATE TABLE `distribusi_absen`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_jabatan` int NOT NULL,
  `tanggal` date NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of distribusi_absen
-- ----------------------------
INSERT INTO `distribusi_absen` VALUES (1, 57, '2023-05-01', '2023-07-18 15:49:03');
INSERT INTO `distribusi_absen` VALUES (2, 57, '2023-07-16', '2023-07-18 15:49:10');
INSERT INTO `distribusi_absen` VALUES (3, 57, '2023-07-17', '2023-07-18 15:49:16');

-- ----------------------------
-- Table structure for history_pekerjaan
-- ----------------------------
DROP TABLE IF EXISTS `history_pekerjaan`;
CREATE TABLE `history_pekerjaan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_perusahaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tahun_masuk` date NOT NULL,
  `tahun_keluar` date NOT NULL,
  `jabatan_terakhir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alasan_pindah` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_master` int NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of history_pekerjaan
-- ----------------------------

-- ----------------------------
-- Table structure for jabatan
-- ----------------------------
DROP TABLE IF EXISTS `jabatan`;
CREATE TABLE `jabatan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `departemen` int NOT NULL,
  `bagian` int NOT NULL,
  `sie` int NOT NULL,
  `level` int NULL DEFAULT NULL,
  `pid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tags` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jabatan
-- ----------------------------
INSERT INTO `jabatan` VALUES (1, 'Anggota Satpam', 6, 18, 1, 6, '57', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (2, 'Koor Kebersihan', 6, 17, 2, 6, '2', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (3, 'Kebersihan', 6, 17, 3, 6, '57', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (4, 'Driver', 6, 17, 6, 6, '57', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (5, 'Inspector Qc', 1, 7, 5, 6, '55', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (6, 'Analis Bagian Qc', 1, 7, 5, 6, '55', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (7, 'Kepala Regu', 4, 11, 6, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (8, 'Ass. Op Penimbangan', 4, 11, 6, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (9, 'Ass. Op Mixing', 4, 11, 6, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (10, 'Gpw', 4, 11, 6, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (11, 'Opr Coating Koyo', 4, 11, 7, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (12, 'Act. Kapok OT', 4, 11, 10, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (13, 'Asisten Operator', 4, 11, 8, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (14, 'Asisten Operator', 4, 11, 9, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (15, 'Ass. Op  Jamu', 4, 11, 7, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (16, 'Ass. Op Coating Plaster', 4, 11, 7, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (17, 'Gpw / Coating', 4, 11, 7, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (18, 'Kapok Pack. Primer', 4, 11, 8, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (19, 'Kapok Pack. Skunder Koyo', 4, 11, 8, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (20, 'Ass. Op Packing Koyo', 4, 11, 8, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (21, 'Ass. Opr. Koyo / Ii', 4, 11, 8, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (22, 'Ass. Opr. Tkh', 4, 11, 8, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (23, 'Ass. Opr. Plong', 4, 11, 8, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (24, 'Gpp', 4, 11, 8, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (25, 'Pack Sek Takahi', 4, 11, 8, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (26, 'Kapok Chili Plast', 4, 11, 9, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (27, 'Opr. Plaster', 4, 11, 9, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (28, 'Operator', 4, 11, 9, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (29, 'Ass. Opr. Ok Plast', 4, 11, 9, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (30, 'Ass. Operator', 4, 11, 9, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (31, 'Ass. Op. Alkes', 4, 11, 9, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (32, 'Ass. Op Dressing', 4, 11, 9, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (33, 'Gpp', 4, 11, 9, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (34, 'Ass. Opr. Filling Ss', 4, 11, 10, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (35, 'Ass. Opr. Mixing Ss', 4, 11, 10, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (36, 'Ass. Operator', 4, 11, 10, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (37, 'Gpp', 4, 11, 10, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (38, 'Kapok Pack Mbp', 4, 11, 11, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (39, 'Helper Adm. Gudang', 4, 19, 12, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (40, 'Karu Gulung Kain', 4, 19, 13, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (41, 'Gpw', 4, 19, 13, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (42, 'Gpw / Gulung Kain / I', 4, 19, 13, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (43, 'Ass. Operator Gudang', 4, 19, 14, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (44, 'Teknik Workshop', 4, 20, 15, 6, '53', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (45, 'Line Mekanik', 4, 20, 16, 6, '54', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (46, 'Teknik Utility-Mekanik', 4, 20, 17, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (47, 'Opr. Tkh', 4, 11, 8, 6, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (48, 'Production Manager', 4, 0, 0, 2, '56', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (49, 'Purchasing Manager', 5, 0, 0, 2, '0', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (50, 'Accounting Manager', 2, 0, 0, 2, '0', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (51, 'Kasie PPIC', 4, 11, 0, 4, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (52, 'Kasie QA', 1, 4, 0, 4, '55', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (53, 'KABAG TEKNIK OPERASIONAL', 4, 20, 0, 3, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (54, 'KABAG TEKNIK PROJEK', 4, 20, 0, 3, '48', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (55, 'Quality Manager', 1, 0, 0, 2, '56', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (56, 'General Manager', 0, 0, 0, 1, '0', '0', '0000-00-00 00:00:00');
INSERT INTO `jabatan` VALUES (57, 'HRD', 6, 2, 0, 3, '56', '0', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for master
-- ----------------------------
DROP TABLE IF EXISTS `master`;
CREATE TABLE `master`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `foto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nik` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tempat_lahir` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `no_hp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `agama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_jabatan` int NOT NULL,
  `golongan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of master
-- ----------------------------
INSERT INTO `master` VALUES (1, 'Suprianto', '', '3515180609780000', 'Sidoarjo', '1978-09-20', 'laki-laki', 'Benowo 5/13 Rt. 07 Rw.02 Kel. Benowo Kec. Pakal / Surabaya', '', 'Islam', 1, 'III', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (2, 'Khoirul Anam', '', '3525132310770010', 'Gresik', '1975-12-21', 'laki-laki', 'Dsn. Ngasinan  Rt. 02 Rw. 07 Ds. Kepatihan Kec. Menganti / Gresik', '', 'Islam', 1, 'III', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (3, 'Muhlasin', '', '3525041502790000', 'Gresik', '1979-02-15', 'laki-laki', 'Dsn Jogodalu Rt. 006 Rw. 002 Ds. Jogodalu Kec. Benjeng / Gresik', '', 'Islam', 1, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (4, 'Nanang Sutrisno', '', '3514072112750000', 'Pasuruan', '1973-04-18', 'laki-laki', 'Dsn. Krajan Rt. 05 Rw. 04 Ds. Kluwut Kec. Wonorejo / Pasuruan', '', 'Islam', 2, 'III', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (5, 'Rofik', '', '3525130610810000', 'Gresik', '1977-10-23', 'laki-laki', 'Dsn Kutil Rt.05 Rw.01 Ds. Gempol Kurung  Kec.Menganti / Gresik', '', 'Islam', 3, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (6, 'Sigit Nurdianto', '', '3515162603830000', 'Sidoarjo', '1983-03-26', 'laki-laki', 'Pakal Barat I/5 Rt. 01 Rw.03 Kel. Pakal Kec. Pakal / Surabaya', '', 'Islam', 3, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (7, 'Sulaeman', '', '3578311102810000', 'Surabaya', '1981-02-11', 'laki-laki', 'Dk. Kapasan Rt 04 Rw 02 Kel. Sambikerep Kec. Sambikerep / Surabaya', '', 'Islam', 3, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (8, 'Asmunik', '', '3525134101810020', 'Gresik', '1981-01-01', 'perempuan', 'Dsn Ngablakrejo, Ds Gempol Kurung Rt. 12 Rw 03 Menganti/Gresik', '', 'Islam', 3, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (9, 'Astutik C', '', '3525136602840000', 'Gresik', '1984-02-26', 'perempuan', 'Dsn. Ngablakrejo Rt 04 Rw 03 Ds. Gempol Kurung, Menganti Gresik', '', 'Islam', 3, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (10, 'Iwan Rusnandar', '', '3578102608840000', 'Gresik', '1984-08-26', 'laki-laki', 'Kapas Baru Iii / 114 C', '', 'Islam', 3, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (11, 'Muhammad Anto', '', '3522130806790000', 'Gresik', '1979-04-01', 'laki-laki', 'Ds. Kepatihan Kec. Menganti / Gresik', '', 'Islam', 3, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (12, 'Mulyadi', '', '3525132005820010', 'Gresik', '1982-05-20', 'laki-laki', 'Dsn Ngablakrejo Desa Gempol Kurung Kec. Menganti / Gresik', '', 'Islam', 3, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (13, 'Saiful Amar', '', '3578312505840000', 'Surabaya', '1984-05-25', 'laki-laki', 'Bringin Rt. 01 Rw 01 Kel. Bringin Kec.Sambi Kerep / Surabaya', '', 'Islam', 4, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (14, 'Anis Sya\'Ati', '', '3525135306820000', 'Gresik', '1982-06-13', 'perempuan', 'Kepatihan Rt 04 Rw 02 Ds. Kepatihan Menganti / Gresik', '', 'Islam', 5, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (15, 'Irawati A', '', '3578154612740000', 'Surabaya', '1974-12-06', 'perempuan', 'Gadukan Timur I/8/B Rt. 003 Rw. 004 Kel. Morokrembangan /  Kec. Krembangan Surabaya', '', 'Islam', 6, ' IV', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (16, 'Rofi\'I', '', '3525130408760010', 'Surabaya', '1976-08-04', 'laki-laki', 'Dsn. Ngablak Rejo Rt. 005 Rw 003 Ds. Gempol Kurung  Kec.Menganti / Gresik', '', 'Islam', 7, 'IV', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (17, 'Hasan Bisri', '', '3578300203820000', 'Surabaya', '1982-03-02', 'laki-laki', 'Dk. Babat I/18 Rt 03 Rw 01 Kel Babat Jerawat Kec. Pakal / Surabaya', '', 'Islam', 8, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (18, 'Ismail Marzuki', '', '3525132006810000', 'Gresik', '1981-06-20', 'laki-laki', 'Wringin Kurung Rt. 02 Rw. 04 Kel. Gempol Kurung Kec. Menganti / Gresik', '', 'Islam', 9, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (19, 'Bambang Rinekso', '', '3508070609820000', 'Gresik', '1982-09-06', 'laki-laki', 'Jl. Bibis Tama No. 7, Tandes / Surabaya', '', 'Kristen', 10, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (20, 'Eka Yuliardiansah', '', '3578302107870000', 'Gresik', '1987-07-21', 'laki-laki', 'Ds. Slempit Rt 13 Rw 03, Kedamean / Gresik', '', 'Islam', 10, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (21, 'Eko Wahyudi', '', '3525131209810000', 'Gresik', '1981-09-12', 'laki-laki', 'Ds. Pengalangan Rt 06 Rw 03', '', 'Islam', 10, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (22, 'Slamet Hariadi', '', '3578301707830000', 'Surabaya', '1983-07-17', 'laki-laki', 'Dk. Babat Rt 03 Rw 01 Kec. Babat Jerawat Kec.Pakal / Surabaya', '', 'Islam', 10, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (23, 'Wiro\' I', '', '3514076102790000', 'Pasuruan', '1979-02-21', 'laki-laki', 'Dsn Songgat Rt.05 Rw.02 Kel. Pengalangan Kec. Menganti / Gresik', '', 'Islam', 11, 'III', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (24, 'Anwari', '', '3525132904830000', 'Gresik', '1983-04-29', 'laki-laki', 'Ngablak Rejo Rt 04 Rw 03 Kel.Gempol Kurung Kec. Menganti / Gresik', '', 'Islam', 15, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (25, 'Nanang Sudaryono', '', '3578100811790000', 'Surabaya', '1979-11-08', 'laki-laki', 'Kapas Baru I/83 Rt.03 Rw. 07 Kel. Kapasmadya Baru Kec. Tambak Sari / Surabaya', '', 'Islam', 17, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (26, 'Waras', '', '3525132712810000', 'Gresik', '1981-12-27', 'laki-laki', 'Dsn. Balong Dinding Rt.20 Rw. 05 Kel. Sidowungu Kec. Menganti / Gresik', '', 'Islam', 16, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (27, 'Hendro Mulyono', '', '3517200909800000', 'Gresik', '1980-09-09', 'laki-laki', 'Dinoyo Tangsi Gg. Iii No. 8', '', 'islam', 17, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (28, 'Paryati', '', '3578306107760000', 'Tulungagung', '1976-07-21', 'perempuan', 'Kauman Asri I Rt. 01 Rw. 06 Kel. Benowo Kec. Pakal / Surabaya', '', 'Islam', 18, 'III', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (29, 'Sri Wulandari (A)', '', '3525134910840010', 'Gresik', '1984-10-09', 'perempuan', 'Pelem Watu Rt. 06 Rw. 03 Kel. Pelem Watu Kec.Menganti / Gresik', '', 'Islam', 19, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (30, 'Astutik B', '', '3525135711780010', 'Gresik', '1978-11-17', 'perempuan', 'Gempol Rt. 06 Rw 02 Kel. Gempol Kurung Kec. Menganti / Gresik', '', 'Islam', 20, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (31, 'Kumaiyah', '', '3578084205810000', 'Surabaya', '1981-05-02', 'perempuan', 'Dk. Ngemplak No. 54 Rt. 02 Rw.05Nkel. Made Kec.Lakarsantri / Surabaya', '', 'Islam', 20, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (32, 'Masitah', '', '3578145309770000', 'Surabaya', '1977-09-13', 'perempuan', 'Jl. Raya Bibis No. 18 Rt. 01 Rw. 07 Kel. Manukan Wetan Kec. Tandes / Surabaya', '', 'Islam', 21, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (33, 'Sumarlik', '', '3525135708760010', 'Surabaya', '1976-08-17', 'laki-laki', 'Wringin Kurung, Rt 02 Rw 04 Ds. Gempol Kurung Kec. Menganti  / Gresik', '', 'Islam', 22, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (34, 'Umi Mari\'Fah', '', '3525136107810010', 'Lamongan', '1981-07-21', 'perempuan', ' Dsn. Ngablak Rejo Rt.03 Rw 03 Kel. Gempol Kurung Kec. Menganti / Gresik', '', 'Islam', 13, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (35, 'Nur Chasanah', '', '3578304610770000', 'Surabaya', '1977-10-06', 'perempuan', 'Benowo G3 / 46/B Rt. 02 Rw 02. Kel. Benowo Kec. Pakal / Surabaya', '', 'Islam', 23, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (36, 'Hindun Kamida', '', '3578306106790000', 'Gresik', '1979-06-21', 'perempuan', 'Beji No. 28 Rt.02/Rw.04  Pakal/Surabaya', '', 'Islam', 24, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (37, 'Ninik Rodhotul Jannah', '', '3578065102810000', 'Surabaya', '1981-02-11', 'perempuan', 'Jl. Petemon 4/85/A Rt. 05 Rw. 11 Kel. Petemon Kec. Sawahan /  Surabaya', '', 'Islam', 24, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (38, 'Suherni Indah Katiti ', '', '3578145509760000', 'Malang', '1976-09-25', 'perempuan', 'Bibis Tama Ii/84 Rt 1 Rw 7 Kel. Manukan Wetan Kec. Tandes / Surabaya', '', 'Islam', 24, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (39, 'Useni', '', '3525137006750090', 'Gresik', '1975-06-30', 'perempuan', 'Dsn Ngablakrejo Rt 05 Rw 03 Ds. Gempol Kurung  Kec.Menganti / Gresik', '', 'Islam', 25, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (40, 'Ngatminah', '', '3578196403790000', 'Tuban', '1979-03-24', 'perempuan', 'Rejosari Baru 3/28 Rt.06 Rw.03 Kel. Benowo Kec. Pakal / Surabaya', '', 'Islam', 26, 'III', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (41, 'Indrawati (A)', '', '3578184907790000', 'Surabaya', '1979-07-09', 'perempuan', ' Lidah Kulon Rt. 05 Rw.03 Kel. Lidah Kulon Kec. Lakarsantri / Surabaya', '', 'Islam', 27, 'III', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (42, 'Koniyah', '', '3525135903780000', 'Gresik', '1978-03-19', 'perempuan', 'Ngablak Rejo Rt 04 Rw 03 Kel.Gempol Kurung Kec. Menganti / Gresik', '', 'Islam', 27, 'III', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (43, 'Ninik Susana', '', '3525134710760010', 'Gresik', '1976-10-07', 'perempuan', 'Hulaan Rt. 17 Rw. 08 Kel. Hulaan Kec. Menganti / Gresik', '', 'Islam', 27, 'III', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (44, 'Wiwik Suhartatik', '', '3525135506760000', 'Gresik', '1976-06-15', 'perempuan', 'Hulaan, Rt 17 Rw 08 Kel. Hulaan Kec.Menganti / Gresik', '', 'Islam', 27, 'III', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (45, 'Yuli Suliswanti', '', '3525137007780000', 'Gresik', '1978-07-30', 'perempuan', 'Setro Rt 05 Rw. 03 Kel. Setro Kec. Menganti / Gresik', '', 'Islam', 27, 'III', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (46, 'Hartatik', '', '3525135912770010', 'Surabaya', '1977-12-19', 'perempuan', 'Dsn Ngablak Rejo Rt. 03 Rw. 03 Kel.Gempol Kurung Kec. Menganti / Gresik', '', 'Islam', 28, 'III', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (47, 'Ismaulanah', '', '3578304202790000', 'Surabaya', '1979-02-02', 'perempuan', 'Griya Surabaya Asri A/01 Rt.03 Rw.04 Kel. Sumber Rejo Kec. Pakal / Surabaya', '', 'Islam', 28, 'III', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (48, 'Lasianah', '', '3525135602800010', 'Surabaya', '1980-02-16', 'perempuan', 'Dsn. Kepatihan Rt.05 Rw.03 Kel. Kepatihan Kec. Menganti / Gresik', '', 'Islam', 28, 'III', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (49, 'Marnah', '', '3578305809800000', 'Surabaya', '1980-09-18', 'perempuan', 'Dk. Sumberlanggeng Rt.03 Rw.03 Kel.Sumber Rejo Kec. Pakal / Surabaya', '', 'Islam', 28, 'III', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (50, 'Sumilah (A)', '', '3525134804730000', 'Gresik', '1973-04-08', 'perempuan', ' Dsn. Ngablak Rejo  Rt.03 Rw.03 Kel. Gempol Kurung Kec.Menganti / Gresik', '', 'Islam', 28, 'III', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (51, 'Ana Nur Laila', '', '3525134402800010', 'Gresik', '1980-02-04', 'perempuan', 'Dsn. Kepatihan Rt. 05 Rw. 03 Kel. Kepatihan Kec. Menganti / Gresik', '', 'Islam', 29, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (52, 'Asmani', '', '3578306006830000', 'Surabaya', '1983-06-20', 'perempuan', 'Dk. Kauman  Rt.03 Rw. 02 Kel. Sumbe Rejo Kec. Pakal / Surabaya', '', 'Islam', 29, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (53, 'Binti Alqori\'Ah', '', '3525136912730010', 'Nganjuk', '1973-12-29', 'perempuan', 'Gempol Kurung Rt. 12 Rw 03 Ds Gempol Kurung Kec.  Menganti / Gresik', '', 'Islam', 29, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (54, 'Evi Triskawati', '', '3525134103750010', 'Kediri', '1975-03-01', 'perempuan', 'Hulaan Rt 15 Rw. 07 Kel. Hulaan Kec.Menganti / Gresik', '', 'Islam', 29, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (55, 'Nur Hidayati', '', '3578146207820000', 'Tuban', '1982-07-22', 'perempuan', 'Jln. Bibis Tama 2 / 105 Rt. 02 Rw. 07 Kel. Manukan Wetan Kec.Tandes / Surabaya', '', 'Islam', 30, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (56, 'Siti Sunarsih', '', '3524215107750000', 'Lamongan', '1975-07-11', 'perempuan', 'Kruwul Rt. 04 Rw. 01 Kel. Sukoanyar, Kec. Turi / Lamongan', '', 'Islam', 30, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (57, 'Sumiati (A)', '', '3525134108780000', 'Gresik', '1978-08-01', 'perempuan', 'Dsn. Banyu Urip Rt. 01 Rw. 05 Ds. Gempol Kurung Kec. Menganti / Gresik', '', 'Islam', 30, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (58, 'Sutini', '', '3525136911780000', 'Gresik', '1978-11-29', 'perempuan', 'Dsn. Banyu Urip Rt.03 Rw. 05 Kel. Gempol Kurung Kec. Menganti / Gresik', '', 'Islam', 30, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (59, 'Luluk Ekawati', '', '3525044812800000', 'Banyuwangi', '1980-12-08', 'perempuan', 'Kacangan Rt. 16 Rw. 06 Kel. Bulurejo Kec. Benjeng / Gresik', '', 'Islam', 31, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (60, 'Ida Pratiwi', '', '3525134203840000', 'Gresik', '1984-03-02', 'perempuan', 'Dsn Ngablak Rejo Rt. 03 Rw. 03 Ds. Gempol Kurung Kec.Menganti / Gresik', '', 'Islam', 32, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (61, 'Mila Suryani', '', '3578155101820000', 'Surabaya', '1982-01-11', 'perempuan', 'Jln. Gadukan Timur I / 8/B Rt.03 Rw.04 Kel. Morokrembangan Kec. Krembangan / Surabaya', '', 'Islam', 14, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (62, 'Nur Asiyah', '', '3518084206810000', 'Nganjuk', '1981-06-02', 'perempuan', 'Hulaan Rt. 13 Rw. 06 Hulaan / Menganti / Gresik', '', 'Islam', 14, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (63, 'Nur Atika Lestari', '', '3525134711820000', 'Gresik', '1982-11-07', 'perempuan', 'Ngablak Rejo Rt. 12 Rw. 03 Gempol Kurung Kec. Menganti / Gresik', '', 'Islam', 14, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (64, 'Yuliatin', '', '3578194512800000', 'Surabaya', '1980-12-05', 'perempuan', 'Sememi Jaya 4/C/15/B Rt. 02 Rw. 01 Kel. Sememi Kec. Benowo / Surabaya', '', 'Islam', 14, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (65, 'Evi Yusniawati', '', '3525135201830000', 'Gresik', '1983-01-12', 'perempuan', 'Desa Setro Rt 05 / Rw 03 Kec. Menganti / Gresik', '', 'Islam', 33, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (66, 'Fira Nofita', '', '3525134611810000', 'Gresik', '1981-11-06', 'perempuan', 'Desa Setro Rt 06 / Rw 03 Kec. Menganti / Gresik', '', 'Islam', 33, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (67, 'Siti Khotimah', '', '3578304704780000', 'Surabaya', '1978-04-07', 'perempuan', 'Dk. Sumbersari Rt 02 Rw 02 Kel. Sumber Rejo  Kec. Pakal / Surabaya', '', 'Islam', 33, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (68, 'Yulia In Pangestu', '', '3578065507830000', 'Lumajang', '1983-07-15', 'perempuan', 'Putat Jaya Pasar 31 Rt.02 Rw.03 Kel. Putat Jaya Kec. Sawahan / Surabaya', '', 'Protestan', 33, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (69, 'Muliati', '', '3525134104800010', 'Gresik', '1980-04-01', 'perempuan', 'Hulaan Rt. 17 Rw. 08  Kel. Hulaan Kec.Menganti / Gresik ', '', 'Islam', 12, 'III', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (70, 'Siti Nur Aisah', '', '3525134504810000', 'Gresik', '1981-04-05', 'perempuan', 'Randu Padangan Rt. 18 Rw. 06 Kel.  Randu Padangan Kec. Menganti / Gresik', '', 'Islam', 34, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (71, 'Sumarti', '', '3525136201820000', 'Gresik', '1982-01-22', 'perempuan', 'Randu Padangan Rt. 18 Rw. 06 Kel. Randu Paangan Kec. Menganti / Gresik', '', 'Islam', 35, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (72, 'Istianah A', '', '3525136007810010', 'Gresik', '1981-07-20', 'perempuan', 'Jl. Raya Kepatihan Rt. 04 Rw. 02 Kel. Kepatihan Kec.Menganti / Gresik', '', 'Islam', 35, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (73, 'Suwarni', '', '3578184901790000', ' Surabaya', '1979-01-09', 'perempuan', 'Lidah Kulon Rt. 05 Rw. 03 No. 537 Kel.Lidah Kulon Kec. Lakarsantri / Surabaya', '', 'Islam', 36, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (74, 'Iswati B', '', '3525136203800000', 'Gresik', '1980-03-22', 'perempuan', 'Dsn Banyuurip Rt/Rw 18/05 Ds Gempol Kurung / Menganti / Grs', '', 'Islam', 37, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (75, 'Masrukah', '', '3525135412750000', 'Gresik', '1975-12-14', 'perempuan', ' Jl. Raya Geger 94 Rt. 02 Rw. 01 Iker / Iker Geger Kec. Cerme / Gresik', '', 'Islam', 38, 'IV', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (76, 'Suriyah', '', '3525135207780000', 'Gresik', '1978-07-12', 'perempuan', 'Dsn Ngablak Rejo Rt.03 Rw. 03 Kel.Gempol Kurung Kec. Menganti / Gresik', '', 'Islam', 39, 'III', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (77, 'Fatoni', '', '3525132206810010', 'Gresik', '1981-06-22', 'laki-laki', 'Benowo Gg. Iii/29 Rt/Rw 02/02 Pakal / Surabaya', '', 'Islam', 40, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (78, 'Ampar Jaya Suwondo', '', '3525132603780000', 'Gresik', '1978-03-26', 'laki-laki', 'Ds. Setro Rt. 05 Rw. 03 No. 37 Kec. Menganti / Gresik', '', 'Islam', 41, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (79, 'Suryadi', '', '3578142501780000', 'Surabaya', '1978-01-25', 'laki-laki', 'Jln. Bibis Tama 2/86 Rt 01 Rw 02 Kel. Bibis / Tandes / Surabaya', '', 'Islam', 42, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (80, 'Teguh Santoso', '', '3507250206810000', 'Malang', '1981-06-02', 'laki-laki', 'Dsn. Badut Rt. 15 Rw.07 Kel. Drancang Kec. Menganti / Gresik', '', 'Islam', 43, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (81, 'Ari Wibowo', '', '3578140211770000', ' Surabaya', '1977-11-02', 'laki-laki', 'Manukan Kulon Blok 20/F/1 Rt. 002 Rw. 003 Kel. Manukan Wetan Kec. Tandes / Surabaya', '', 'Islam', 44, 'III', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (82, 'Rokhmad', '', '3578302911820000', 'Surabaya', '1982-11-29', 'laki-laki', ' Dsn. Songgat No. 33 Rt. 04 Rw.02 Kel. Pengalangan Kec. Menganti / Gresik', '', 'Islam', 45, 'II', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (83, 'Edy Sutrisno', '', '3578301002840000', 'Gresik', '1984-02-10', 'laki-laki', 'Raya Benowo 11 Rt 001 Rw 001, Kel. Benowo, Kec. Pakal / Surabaya', '', 'Islam', 46, 'I', 'Aktif', '2023-03-08 08:56:00');
INSERT INTO `master` VALUES (84, 'Ranis', '', '3525134703780001', 'Gresik', '1978-03-07', 'perempuan', 'Dsn. Kutil Rt. 05 Rw. 01 Kel. Gempol Kurung Kec. Mengati / Gresik', NULL, 'Islam', 47, 'Tetap', 'Non Aktif', '2023-04-19 05:09:24');
INSERT INTO `master` VALUES (85, 'Watini', '', '3525115903730005', 'Gresik', '1973-03-19', 'perempuan', 'Dsn Geger Gang Telaga Rt. 02 Rw. 01 Kel. Iker Iker  Geger Kec.Cerme / Gresik', NULL, 'Islam', 24, 'Tetap', 'Non Aktif', '2023-04-19 05:08:36');

-- ----------------------------
-- Table structure for pendidikan
-- ----------------------------
DROP TABLE IF EXISTS `pendidikan`;
CREATE TABLE `pendidikan`  (
  `id_pendidikan` int NOT NULL AUTO_INCREMENT,
  `tingkat_pendidikan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_sekolah` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jurusan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_awal` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_akhir` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_master` int NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id_pendidikan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 157 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pendidikan
-- ----------------------------
INSERT INTO `pendidikan` VALUES (1, 'SMA', 'SMA YPM Panjunan Sukodono / sidoarjo', '', '0000', '0000', 1, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (2, 'SD', 'Madrasah, Gresik', '', '0000', '0000', 2, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (3, 'SMP', 'SMP Tsanawiyah, Gresik ', '', '0000', '0000', 2, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (4, 'SMA', 'SMU NU 1, Gresik', '', '0000', '0000', 2, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (5, 'SMA', 'SMK PGRI 6 Surabaya', '', '0000', '0000', 3, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (6, 'SD', 'SDN PASURUAN', '', '0000', '0000', 4, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (7, 'SMP', 'SMP PASURUAN', '', '0000', '0000', 4, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (8, 'SMP', 'SMP BINA PUTRA', '', '0000', '0000', 5, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (9, 'SD', 'SDN Bungurasih', '', '0000', '0000', 6, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (10, 'SMP', 'SMP PGRI I Antartika Buduran, Sidoarjo', '', '0000', '0000', 6, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (11, 'SMP', 'MTs Nyai Haji Ashfiyah / SMP', '', '0000', '0000', 7, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (12, 'SD', 'SDN Gempol Kurung', '', '0000', '0000', 8, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (13, 'SD', 'SDN Gempol Kurung', '', '0000', '0000', 9, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (14, 'SMP', 'SMP Nurul Huda', '', '0000', '0000', 9, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (15, 'SD', 'SD', '', '0000', '0000', 10, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (16, 'SMP', 'SMP MUHAMMADDIYAH 4 Balen Bojonegoro', '', '0000', '0000', 11, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (17, 'SD', 'SDN JANTOK Kediri', '', '0000', '0000', 12, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (18, 'SMP', 'SMPN PURWOASRI', '', '0000', '0000', 12, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (19, 'SD', 'SDN Bringin Surabaya ', '', '0000', '0000', 13, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (20, 'SMP', 'SLTP Giri Surya, Surabaya ', '', '0000', '0000', 13, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (21, 'SMA', 'STM Siang, Jurusan Otomotif, Surabaya ', '', '0000', '0000', 13, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (22, 'SMP', ' SLTP Nurul Huda I Kepatihan', '', '0000', '0000', 14, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (23, 'SMA', ' SMU PGRI I Martapura Kalimantan Selatan', '', '0000', '0000', 14, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (24, 'SD', 'MI Nurul Huda I Kepatihan', '', '0000', '0000', 14, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (25, 'SMA', 'SMEA Negeri I Wonokromo Surabaya', '', '0000', '0000', 15, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (26, 'SMA', 'SMA Negeri 12 Surabaya', '', '0000', '0000', 16, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (27, 'SMA', 'Madrasah Aliyah Imam Syafi\'I Benowo / Surabaya', '', '0000', '0000', 17, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (28, 'SD', 'SDN Gempol Kurung II', '', '0000', '0000', 18, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (29, 'SMP', 'SLTPN 14 Surabaya', '', '0000', '0000', 18, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (30, 'SMA', 'SMU Sunan Giri', '', '0000', '0000', 18, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (31, 'SD', 'SD Lumajang', '', '0000', '0000', 19, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (32, 'SMA', 'SMA Lumajang', '', '0000', '0000', 19, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (33, 'SMP', 'SMP Lumajang', '', '0000', '0000', 19, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (34, 'SMA', 'SMA Negeri Kedamean', '', '0000', '0000', 20, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (35, 'SMA', 'SMA AL Azhar Menganti', '', '0000', '0000', 21, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (36, 'SMA', 'MA BABAT', '', '0000', '0000', 22, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (37, 'SD', 'MI BABAT', '', '0000', '0000', 22, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (38, 'SMP', 'MTS BABAT', '', '0000', '0000', 22, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (39, 'SMP', 'MTS Bangil / Pasuruan', '', '0000', '0000', 23, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (40, 'SD', 'SDN Sambisirah 1 Pasuruan', '', '0000', '0000', 23, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (41, 'SMA', 'SMU Al Azhar', '', '0000', '0000', 24, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (42, 'SD', 'SDN Gading VII Surabaya ', '', '0000', '0000', 25, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (43, 'SMP', 'SLTPN 15 Surabaya', '', '0000', '0000', 25, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (44, 'SMA', 'SMUN 19 Surabaya (IPS)', '', '0000', '0000', 25, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (45, 'SD', 'SDN GEMPOL', '', '0000', '0000', 26, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (46, 'SMP', 'SMP KEPATIHAN', '', '0000', '0000', 26, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (47, 'SMA', 'SMU Sunan Giri Menganti', '', '0000', '0000', 26, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (48, 'SD', 'SDN TURI PINGGIR I', '', '0000', '0000', 27, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (49, 'SMA', 'SMK NEGERI 1 JOMBANG', '', '0000', '0000', 27, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (50, 'SMP', 'SMP NEGERI MEGALUH', '', '0000', '0000', 27, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (51, 'S1', 'UNIVERSITAAS JEMBER TEKNIK MESIN', '', '0000', '0000', 27, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (52, 'SD', 'SDN KARANGREJO', '', '0000', '0000', 28, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (53, 'SMP', 'SMP SEMBON', '', '0000', '0000', 28, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (54, 'SMP', ' SLTP Sunan Giri, Menganti', '', '0000', '0000', 29, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (55, 'SD', 'MI Bahrul Ulum, Pelemwatu', '', '0000', '0000', 29, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (56, 'SMA', 'SMU Sunan Giri, Menganti', '', '0000', '0000', 29, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (57, 'SD', 'SDN Gempol Kurung, Menganti / Gresik', '', '0000', '0000', 30, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (58, 'SD', 'SDN Made I', '', '0000', '0000', 31, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (59, 'SMA', 'SMK Wijaya Putra I', '', '0000', '0000', 31, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (60, 'SD', 'SDN Bibis / Surabaya', '', '0000', '0000', 32, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (61, 'SMA', 'SMEA Kartini Sukomanunggal / Surabaya', '', '0000', '0000', 32, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (62, 'SMP', 'SMP Jos sudarso', '', '0000', '0000', 32, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (63, 'SD', 'SDN III LK', '', '0000', '0000', 33, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (64, 'SMA', 'SMA PGRI 5 Surabaya', '', '0000', '0000', 33, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (65, 'SMP', 'SMP Siti Aminah', '', '0000', '0000', 33, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (66, 'SMP', 'Madarasah Tsanawiyah/SMP', '', '0000', '0000', 34, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (67, 'SMP', 'MTs Imam Syafi\'I tahun', '', '0000', '0000', 35, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (68, 'SMA', 'SMU AL AZHAR BENOWO / SURABAYA', '', '0000', '0000', 36, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (69, 'SMA', 'SMEA Pawiyatan Surabaya', '', '0000', '0000', 37, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (70, 'SMA', 'SMEA Pemuda Kesamben Blitar', '', '0000', '0000', 38, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (71, 'SD', 'SDN GEMPOL', '', '0000', '0000', 39, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (72, 'SMP', 'SMP', '', '0000', '0000', 39, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (73, 'SD', 'SDN TUBAN', '', '0000', '0000', 40, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (74, 'SMA', 'SMK YPK \'64 Tuban', '', '0000', '0000', 40, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (75, 'SMP', 'SMP TUBAN', '', '0000', '0000', 40, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (76, 'SD', 'sdn lakarsantri', '', '0000', '0000', 41, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (77, 'SMP', 'SMP PGRI 70 Surabaya', '', '0000', '0000', 41, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (78, 'SD', 'SDN GEMPOL KURUNG', '', '0000', '0000', 42, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (79, 'SMP', 'SMPn 14 Benowo / Surabaya', '', '0000', '0000', 42, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (80, 'SMA', 'SMEA PGRI II Surabaya', '', '0000', '0000', 43, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (81, 'SD', 'SDN Hulaan', '', '0000', '0000', 44, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (82, 'SMA', 'SMA (IPS) Sunan Giri Menganti / Gresik', '', '0000', '0000', 44, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (83, 'SMP', 'SMP Sunan Giri Menganti / Gresik', '', '0000', '0000', 44, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (84, 'SD', 'SDN SETRO', '', '0000', '0000', 45, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (85, 'SMP', 'SMP Sunan Giri Menganti / Gresik', '', '0000', '0000', 45, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (86, 'Lainnya', 'Pernah kursus komputer tingkat LOTUS Surabaya', '', '0000', '0000', 46, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (87, 'SD', 'SDN SURABAYA', '', '0000', '0000', 46, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (88, 'SMP', 'SMPN SURABAYA', '', '0000', '0000', 46, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (89, 'SMA', 'SMU Kartika Krembangan surabaya', '', '0000', '0000', 46, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (90, 'SD', 'SDN Sumberejo II Surabaya', '', '0000', '0000', 47, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (91, 'SMP', 'SMP Wachid Hasyim 7 Surabaya', '', '0000', '0000', 47, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (92, 'SMA', 'SMU Karman Amat IPS Surabaya', '', '0000', '0000', 47, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (93, 'SMP', 'SMP Yos Sudarso / Tandes / Surabaya', '', '0000', '0000', 48, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (94, 'SD', 'SDN PAKAL', '', '0000', '0000', 49, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (95, 'SMP', 'SMP Bina Putra Benowo / Surabaya', '', '0000', '0000', 49, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (96, 'SMA', 'SMEA PGRI 7 Benowo / Surabaya ( Keuangan )', '', '0000', '0000', 50, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (97, 'SD', 'SDN Kepatihan / Surabaya', '', '0000', '0000', 51, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (98, 'SMP', 'SMP Nurul Huda Benowo / Surabaya', '', '0000', '0000', 51, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (99, 'SMA', 'SMU Karman Amat Benowo / Surabaya', '', '0000', '0000', 51, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (100, 'SD', 'MI Sumberejo II Surabaya', '', '0000', '0000', 52, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (101, 'SMP', 'SMP wachid Hasyim', '', '0000', '0000', 52, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (102, 'SMA', 'SMEA PGRI Kertosono', '', '0000', '0000', 53, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (103, 'Lainnya', 'Kursus Akuntansi \" SUCCESS ACCOUNTING COURSE \" Kediri 1994', '', '0000', '0000', 54, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (104, 'SD', 'SD KEDIRI', '', '0000', '0000', 54, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (105, 'SMA', 'SMAN 3 Pesantren Kediri', '', '0000', '0000', 54, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (106, 'SMP', 'SMPN KEDIRI', '', '0000', '0000', 54, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (107, 'SD', 'SDN Singgahan', '', '0000', '0000', 55, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (108, 'SMA', 'SMK Pawiyatan Sukomanunggal Surabaya', '', '0000', '0000', 55, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (109, 'SMP', 'SMP Singgahan', '', '0000', '0000', 55, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (110, 'SMA', 'SMUN 1 Lamongan', '', '0000', '0000', 56, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (111, 'SMP', 'SMP Wachid Hasyim 7 Sby', '', '0000', '0000', 57, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (112, 'SMA', 'SMK Wijaya Putra 1 SURABAYA', '', '0000', '0000', 58, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (113, 'SMP', 'SLTP PGRI 4 Banyuwangi', '', '0000', '0000', 59, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (114, 'SD', 'SDN Gempol Kurung II', '', '0000', '0000', 60, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (115, 'SMP', 'SLTPN 14 Surabaya', '', '0000', '0000', 60, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (116, 'SMA', 'SMK Wijaya Putra Bisnis manajemen & Akutansi 2002', '', '0000', '0000', 60, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (117, 'SD', 'SDN SURABAYA', '', '0000', '0000', 61, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (118, 'SMP', 'SLPN SURABAYA', '', '0000', '0000', 61, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (119, 'SMA', 'SMK Kawung I Surabaya', '', '0000', '0000', 61, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (120, 'SD', 'SDN Kertosono', '', '0000', '0000', 62, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (121, 'SMA', 'SMK Muhammadiyah I Nganjuk', '', '0000', '0000', 62, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (122, 'SMA', 'SMU 12 SURABAYA', '', '0000', '0000', 63, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (123, 'SD', 'SDN KLAKAH REJO I', '', '0000', '0000', 64, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (124, 'SMP', 'SMP 14 SURABAYA', '', '0000', '0000', 64, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (125, 'SMA', 'SMU XI Surabaya', '', '0000', '0000', 64, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (126, 'SMA', 'SMK SUNAN GIRI MENGANTI', '', '0000', '0000', 65, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (127, 'SMA', ' SMK SUNAN GIRI MENGANTi', '', '0000', '0000', 66, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (128, 'SD', 'SD Sumberejo II', '', '0000', '0000', 67, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (129, 'SMP', 'SMP Wachid Hasyim 7 Surabaya', '', '0000', '0000', 67, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (130, 'SMA', 'SMK Negeri 1 Lumajang Akuntansi', '', '0000', '0000', 68, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (131, 'SMA', 'SMU Sunan Giri Menganti / Gresik', '', '0000', '0000', 69, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (132, 'SMP', ' SMP Terbuka negeri 14 Surabaya', '', '0000', '0000', 70, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (133, 'SMP', 'MTs. Thoriqul Huda Randu Padangan ', '', '0000', '0000', 71, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (134, 'SD', 'SDN Kepatihan', '', '0000', '0000', 72, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (135, 'SMA', 'SMK Wijaya Putra I Surabaya Manajemen Bisnis', '', '0000', '0000', 72, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (136, 'SMP', 'SMPN Negeri I Menganti', '', '0000', '0000', 72, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (137, 'SMP', 'MTS NGANJUK', '', '0000', '0000', 73, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (138, 'SD', 'SDN SURABAYA', '', '0000', '0000', 73, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (139, 'SMA', 'SMU PGRI 23 Wiyung / Surabaya ', '', '0000', '0000', 73, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (140, 'SMA', 'SMA', '', '0000', '0000', 74, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (141, 'SMA', 'SMEA Wijaya Putra I Surabaya', '', '0000', '0000', 75, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (142, 'SMA', 'SMA Negeri 12 (A2) Surabaya', '', '0000', '0000', 76, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (143, 'SMA', 'SMU ASSA\'ADAH BUNGA GRESIK', '', '0000', '0000', 77, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (144, 'S1', 'S1 Universitas Wijaya Putra ', '', '0000', '0000', 78, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (145, 'SD', 'SDN Setro', '', '0000', '0000', 78, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (146, 'SMP', 'SMP Sunan Giri Menganti', '', '0000', '0000', 78, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (147, 'SMA', 'SMU Sunan Giri Menganti', '', '0000', '0000', 78, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (148, 'Diploma', 'D1 PERHOTELAN', '', '0000', '0000', 79, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (149, 'SMA', 'STM PGRI Singosari, Mekanik Otomotif', '', '0000', '0000', 80, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (150, 'SD', 'SDN 115 Manukan Kulon Surabaya ', '', '0000', '0000', 81, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (151, 'SMP', 'SMPN 20 Sambi Kerep Surabaya', '', '0000', '0000', 81, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (152, 'SMA', 'STMN 2 ( Mesin ) Surabaya', '', '0000', '0000', 81, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (153, 'SMA', 'SMA', '', '0000', '0000', 82, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (154, 'SMA', 'SMA', '', '0000', '0000', 83, '0000-00-00 00:00:00');
INSERT INTO `pendidikan` VALUES (155, 'SD', 'SDN KUTIL', '-', NULL, NULL, 84, '2023-04-19 04:01:42');
INSERT INTO `pendidikan` VALUES (156, 'SMA', 'SMEA Bhakti Cerme', NULL, NULL, NULL, 85, '2023-04-19 04:08:32');

-- ----------------------------
-- Table structure for riwayat_bpjs_kes
-- ----------------------------
DROP TABLE IF EXISTS `riwayat_bpjs_kes`;
CREATE TABLE `riwayat_bpjs_kes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_bpjs` int NOT NULL,
  `id_master` int NOT NULL,
  `iuran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 167 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of riwayat_bpjs_kes
-- ----------------------------
INSERT INTO `riwayat_bpjs_kes` VALUES (1, 1, 1, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (2, 2, 2, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (3, 3, 3, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (4, 4, 4, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (5, 5, 5, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (6, 6, 6, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (7, 7, 7, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (8, 8, 8, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (9, 9, 9, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (10, 10, 10, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (11, 11, 11, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (12, 12, 12, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (13, 13, 13, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (14, 14, 14, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (15, 15, 15, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (16, 16, 16, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (17, 17, 17, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (18, 18, 18, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (19, 19, 19, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (20, 20, 20, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (21, 21, 21, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (22, 22, 22, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (23, 23, 23, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (24, 24, 24, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (25, 25, 25, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (26, 26, 26, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (27, 27, 27, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (28, 28, 28, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (29, 29, 29, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (30, 30, 30, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (31, 31, 31, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (32, 32, 32, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (33, 33, 33, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (34, 34, 34, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (35, 35, 35, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (36, 36, 36, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (37, 37, 37, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (38, 38, 38, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (39, 39, 39, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (40, 40, 40, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (41, 41, 41, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (42, 42, 42, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (43, 43, 43, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (44, 44, 44, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (45, 45, 45, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (46, 46, 46, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (47, 47, 47, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (48, 48, 48, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (49, 49, 49, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (50, 50, 50, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (51, 51, 51, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (52, 52, 52, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (53, 53, 53, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (54, 54, 54, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (55, 55, 55, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (56, 56, 56, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (57, 57, 57, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (58, 58, 58, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (59, 59, 59, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (60, 60, 60, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (61, 61, 61, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (62, 62, 62, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (63, 63, 63, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (64, 64, 64, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (65, 65, 65, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (66, 66, 66, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (67, 67, 67, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (68, 68, 68, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (69, 69, 69, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (70, 70, 70, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (71, 71, 71, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (72, 72, 72, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (73, 73, 73, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (74, 74, 74, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (75, 75, 75, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (76, 76, 76, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (77, 77, 77, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (78, 78, 78, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (79, 79, 79, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (80, 80, 80, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (81, 81, 81, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (82, 82, 82, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (83, 83, 83, '226150', 'April-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (84, 1, 1, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (85, 2, 2, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (86, 3, 3, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (87, 4, 4, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (88, 5, 5, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (89, 6, 6, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (90, 7, 7, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (91, 8, 8, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (92, 9, 9, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (93, 10, 10, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (94, 11, 11, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (95, 12, 12, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (96, 13, 13, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (97, 14, 14, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (98, 15, 15, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (99, 16, 16, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (100, 17, 17, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (101, 18, 18, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (102, 19, 19, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (103, 20, 20, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (104, 21, 21, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (105, 22, 22, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (106, 23, 23, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (107, 24, 24, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (108, 25, 25, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (109, 26, 26, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (110, 27, 27, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (111, 28, 28, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (112, 29, 29, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (113, 30, 30, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (114, 31, 31, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (115, 32, 32, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (116, 33, 33, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (117, 34, 34, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (118, 35, 35, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (119, 36, 36, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (120, 37, 37, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (121, 38, 38, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (122, 39, 39, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (123, 40, 40, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (124, 41, 41, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (125, 42, 42, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (126, 43, 43, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (127, 44, 44, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (128, 45, 45, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (129, 46, 46, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (130, 47, 47, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (131, 48, 48, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (132, 49, 49, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (133, 50, 50, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (134, 51, 51, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (135, 52, 52, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (136, 53, 53, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (137, 54, 54, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (138, 55, 55, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (139, 56, 56, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (140, 57, 57, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (141, 58, 58, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (142, 59, 59, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (143, 60, 60, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (144, 61, 61, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (145, 62, 62, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (146, 63, 63, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (147, 64, 64, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (148, 65, 65, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (149, 66, 66, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (150, 67, 67, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (151, 68, 68, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (152, 69, 69, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (153, 70, 70, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (154, 71, 71, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (155, 72, 72, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (156, 73, 73, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (157, 74, 74, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (158, 75, 75, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (159, 76, 76, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (160, 77, 77, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (161, 78, 78, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (162, 79, 79, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (163, 80, 80, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (164, 81, 81, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (165, 82, 82, '226150', 'May-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (166, 83, 83, '226150', 'May-2023');

-- ----------------------------
-- Table structure for riwayat_bpjs_tk
-- ----------------------------
DROP TABLE IF EXISTS `riwayat_bpjs_tk`;
CREATE TABLE `riwayat_bpjs_tk`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_bpjs` int NOT NULL,
  `id_master` int NOT NULL,
  `iuran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of riwayat_bpjs_tk
-- ----------------------------
INSERT INTO `riwayat_bpjs_tk` VALUES (1, 1, 1, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (2, 2, 2, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (3, 3, 3, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (4, 4, 4, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (5, 5, 5, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (6, 6, 6, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (7, 7, 7, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (8, 8, 8, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (9, 9, 9, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (10, 10, 10, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (11, 11, 11, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (12, 12, 12, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (13, 13, 13, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (14, 14, 14, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (15, 15, 15, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (16, 16, 16, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (17, 17, 17, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (18, 18, 18, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (19, 19, 19, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (20, 20, 20, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (21, 21, 21, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (22, 22, 22, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (23, 23, 23, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (24, 24, 24, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (25, 25, 25, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (26, 26, 26, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (27, 27, 27, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (28, 28, 28, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (29, 29, 29, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (30, 30, 30, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (31, 31, 31, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (32, 32, 32, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (33, 33, 33, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (34, 34, 34, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (35, 35, 35, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (36, 36, 36, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (37, 37, 37, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (38, 38, 38, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (39, 39, 39, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (40, 40, 40, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (41, 41, 41, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (42, 42, 42, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (43, 43, 43, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (44, 44, 44, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (45, 45, 45, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (46, 46, 46, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (47, 47, 47, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (48, 48, 48, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (49, 49, 49, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (50, 50, 50, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (51, 51, 51, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (52, 52, 52, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (53, 53, 53, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (54, 54, 54, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (55, 55, 55, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (56, 56, 56, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (57, 57, 57, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (58, 58, 58, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (59, 59, 59, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (60, 60, 60, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (61, 61, 61, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (62, 62, 62, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (63, 63, 63, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (64, 64, 64, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (65, 65, 65, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (66, 66, 66, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (67, 67, 67, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (68, 68, 68, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (69, 69, 69, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (70, 70, 70, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (71, 71, 71, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (72, 72, 72, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (73, 73, 73, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (74, 74, 74, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (75, 75, 75, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (76, 76, 76, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (77, 77, 77, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (78, 78, 78, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (79, 79, 79, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (80, 80, 80, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (81, 81, 81, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (82, 82, 82, '447325', 'April-2023');
INSERT INTO `riwayat_bpjs_tk` VALUES (83, 83, 83, '447325', 'April-2023');

-- ----------------------------
-- Table structure for riwayat_karyawan
-- ----------------------------
DROP TABLE IF EXISTS `riwayat_karyawan`;
CREATE TABLE `riwayat_karyawan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_master` int NOT NULL,
  `jenis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jabatan` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 879 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of riwayat_karyawan
-- ----------------------------
INSERT INTO `riwayat_karyawan` VALUES (1, 65, 'Masuk', '33', 'KARYAWAN HARIAN LEPAS', '', '2003-01-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (2, 65, 'Kontrak', '33', 'KARYAWAN KONTRAK', '', '2005-02-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (3, 65, 'Tetap', '33', 'DIANGKAT KARYAWAN TETAP (GPP I) BAGIAN PLESTER', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (4, 65, 'SP 1', '33', 'SP1: SERING TIDAK MEMAKAI MASKER PADA SAAT BEKERJA', '', '2009-03-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (5, 65, 'Pelatihan', '33', 'PELATIHAN STRESS KERJA', '', '2009-05-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (6, 65, 'Pelatihan', '33', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DG TABUNG APAR', '', '2013-07-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (7, 65, 'Pelatihan', '33', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (8, 65, 'Penghargaan', '33', 'MENDAPATKAN PENGHARGAAN MASA KERJA 10 TAHUN', '', '2014-12-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (9, 77, 'Masuk', '40', 'HARIAN LEPAS', '', '2003-06-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (10, 77, 'Kontrak', '40', 'KONTRAK', '', '2004-01-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (11, 77, 'Tetap', '40', 'DIANGKAT KARYAWAN TETAP HELPER (I) BAG COATING', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (12, 77, 'Pelatihan', '40', 'PELATIHAN MOTIVASI KERJA', '', '2007-04-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (13, 77, 'Kesehatan', '40', 'MELAKUKAN PHOTO THORAX', '', '2011-03-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (14, 77, 'Pelatihan', '40', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DG TABUNG APAR', '', '2011-05-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (15, 77, 'Penghargaan', '40', 'MENDAPATKAN PENGHARGAAN MASA KERJA 10 TAHUN', '', '2014-12-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (16, 66, 'Masuk', '33', 'GPP KONTRA', '', '2000-09-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (17, 66, 'Kontrak', '33', 'KARYAWAN GPP KONTRAK', '', '2002-02-26', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (18, 66, 'Tetap', '33', 'KARYAWAN TETAP BAG PLESTER', '', '2003-02-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (19, 66, 'SP 1', '33', 'SP 2 : KURANG TELITI TERJADI 2 PENOMORAN', '', '2003-10-21', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (20, 66, 'Pelatihan', '33', 'PELATIHAN MOTIVASI KERJA', '', '2007-04-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (21, 66, 'Pelatihan', '33', 'PELATIHAN MOTIVASI KERJA', '', '2007-10-26', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (22, 66, 'SP 1', '33', 'SP 1 LALAI DALAM BEKERJA MENGAKIBATKAN 251 STICKER SALAH PRINT', '', '2009-07-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (23, 66, 'SP 1', '33', 'SP 1 : 2 MEI \'14, CEROBOH TDK NGECEK ULANG UNTUK PRINT BOX, SEHINGGGA TERJADI KESALAHAN 2.200 PCS ', '', '2014-06-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (24, 36, 'Masuk', '24', 'KARYAWAN BAG PRODUKSI STATUS KONTRA', '', '2009-11-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (25, 36, 'Pelatihan', '24', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2014-06-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (26, 36, 'Tetap', '24', 'GPP TETAP (I)', '', '2015-06-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (27, 36, 'Pelatihan', '24', 'PELATIHAN PROPTAP PENANDAAN PT(6)-009 REV.03', '', '2016-03-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (28, 78, 'Masuk', '41', 'GPW HARIAN LEPAS', '', '2003-01-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (29, 78, 'Kontrak', '41', 'GPP KARYAWAN KONTRAK', '', '2004-01-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (30, 78, 'Promosi', '41', 'KENAIKAN JABATAN DARI KARYAWAN KONTRAK MENJADI HELPER (I) BAG COATING', '', '2005-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (31, 78, 'Pelatihan', '41', 'PELATIHAN PERSYARATAN ISO, IMPLEMENTASI DAN MANFAATNYA BAG ORGANISASI ', '', '2007-01-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (32, 78, 'Pelatihan', '41', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN', '', '2008-10-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (33, 78, 'Pelatihan', '41', 'PELATIHAN MOTIVASI KERJA', '', '2010-03-17', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (34, 78, 'Pelatihan', '41', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DG MENGGUNAKAN TABUNG APAR', '', '2012-07-28', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (35, 78, 'Pelatihan', '41', 'PELTIHAN KEDISIPLINAN DAN ETOS KERJA', '', '2011-08-09', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (36, 78, 'Pelatihan', '41', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DG MENGGUNAKAN TABUNG APAR', '', '2012-07-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (37, 78, 'SP 1', '41', 'SP I : TIDUR SAAT JAM KERJA (PD TANGGAL 3 NOPEMBER 2014', '', '2014-11-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (38, 78, 'Pelatihan', '41', 'PELATIHAN : PENGENALAN DAN PELAKSANAAN SISTEM MANAJEMEN MUTU ', '', '2014-12-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (39, 78, 'Penghargaan', '41', 'MENDAPAT PENGHARGAAN MASA KERJA 10 TAHUN ISO 9001:2008', '', '2014-12-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (40, 78, 'Pelatihan', '41', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DG MENGGUNAKAN TABUNG APAR', '', '2015-06-25', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (41, 8, 'Masuk', '3', 'KEBERSIHAN DALAM', '', '1996-06-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (42, 8, 'Pelatihan', '3', 'PELATIHAN PENTINGNYA KEBERSIHAN DALAM MENUNJANG MUTU PRODUK', '', '2006-08-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (43, 8, 'Pelatihan', '3', 'PELATIHAN PENTINGNYA KEBERSIHAN DALAM MENUNJANG MUTU PRODUK', '', '2007-07-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (44, 8, 'Penghargaan', '3', 'RANKING 1 KARYAWAN BERPRESTASI TAHUN 2006', '', '0000-00-00', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (45, 8, 'Penghargaan', '3', 'RANKING 2 KARYAWAN BERPRESTASI TAHUN 2007', '', '0000-00-00', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (46, 8, 'Pelatihan', '3', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN', '', '2008-10-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (47, 8, 'Pelatihan', '3', 'PELATIHAN P3K', '', '2009-11-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (48, 8, 'Pelatihan', '3', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DENGAN TABUNG APAR', '', '2013-07-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (49, 9, 'Masuk', '3', 'KARYAWAN BAGIAN KEBERSIH', '', '2000-09-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (50, 9, 'Pelatihan', '3', 'PELATIHAN PENTINGNYA KEBERSIHAN DALAM MENJAGA MUTU PRODUK', '', '2007-07-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (51, 9, 'Pelatihan', '3', 'PELATIHAN ETIKA KERJA', '', '2008-01-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (52, 9, 'Pelatihan', '3', 'PELATIHAN ETIKA KERJA', '', '2008-08-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (53, 9, 'Pelatihan', '3', 'PELATIHAN STESS KERJA', '', '2009-05-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (54, 9, 'Pelatihan', '3', 'PELATIHAN P3K', '', '2009-09-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (55, 9, 'Pelatihan', '3', 'PENANGGULANGAN KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR YANG TEPAT DAN BENAR ', '', '2013-07-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (56, 9, 'Pelatihan', '3', 'PELATIHAN PENGENALAN DAN PELAKSANAAN SISTEM MANAJEMEN MUTU ISO 9001 : 2008', '', '2014-12-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (57, 19, 'Masuk', '10', 'MASUK KERJA SEBAGAI GPW - HARIAN LEPAS', '', '2003-06-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (58, 19, 'Kontrak', '10', 'DIANGKAT  SEBAGAI GPW - KONTRAK', '', '2005-02-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (59, 19, 'Tetap', '10', 'DIANGKAT SEBAGAI GPW - TETAP GOL I BAGIAN MIXING', '', '2007-03-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (60, 19, 'Pelatihan', '10', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN', '', '2009-07-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (61, 19, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2011-03-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (62, 19, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2012-03-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (63, 19, 'Pelatihan', '10', 'PENANGGULANGAN KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR YANG TEPAT DAN BENAR ', '', '2012-07-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (64, 19, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2013-03-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (65, 19, 'Pelatihan', '10', 'PELATIHAN PENAMBAHAN NOMOR URUT WADAH KOLOID DR MIXING KE COATING', '', '2013-03-15', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (66, 19, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2014-02-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (67, 19, 'SP 1', '10', 'SP 1 : HARI SELASA, 8 JULI \'14, LALAI DAN CEROBOH SAAT MELAKUKAN PROSES MIXING TERJADI PENYIMPANGAN MENCAMPUR SERBUK MAG DENGAN CAIRAN IMC, SEHINGGA TERJADI PENGGUMPALAN', '', '2014-09-16', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (68, 19, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2015-03-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (69, 19, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2016-04-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (70, 19, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2017-05-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (71, 19, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2018-05-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (72, 19, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2019-08-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (73, 83, 'Masuk', '46', 'MASUK KERJA SEBAGAI TEKNIK OUTOMOTIVE ( HL )', '', '2010-12-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (74, 83, 'Kontrak', '46', 'DIKONTRAK SEBAGAI MEKANIK OUTOMOTIVE', '', '2012-02-01', '2023-05-05 09:35:28');
INSERT INTO `riwayat_karyawan` VALUES (75, 83, 'Pelatihan', '46', 'PELATIHAN PENANGGULANGAN KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR YANG TEPAT DAN BENAR', '', '2013-02-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (76, 83, 'SP 1', '46', 'SP1 : TGL 06 JULI 2017 SENGAJA MEROKOK PADA JAM KERJA DI AREA WORKSHOP', '', '2017-07-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (77, 83, 'Tetap', '46', 'EFEKTIF MULAI 01/6/19 DIANGKAT JADI TETAP', '', '2019-06-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (78, 20, 'Masuk', '10', 'MASUK KERJA SEBAGAI KARYAWAN GPW HARIAN LEPAS', '', '2005-07-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (79, 20, 'Tetap', '10', 'DIKONTRAS SEBAGAI GPW', '', '2006-07-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (80, 20, 'Tetap', '10', 'DIANGKAT MENJADI KARYAWAN TETAP SEBAGAI GPW MIXING/ I', '', '2011-02-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (81, 20, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2011-03-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (82, 20, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2012-03-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (83, 20, 'Pelatihan', '10', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN MENGGUNAKAN TABUNG APAR', '', '2012-07-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (84, 20, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2013-03-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (85, 20, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2014-02-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (86, 20, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2015-03-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (87, 20, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2016-04-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (88, 20, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2017-05-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (89, 20, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2018-05-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (90, 20, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2019-08-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (91, 21, 'Masuk', '10', 'GPP KARYAWAN KONTRAK', '', '2004-01-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (92, 21, 'Tetap', '10', 'DIANGKAT KARYAWAN TETAP HELPER (I) BAG MIXING', '', '2005-01-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (93, 21, 'Peringatan', '10', 'PADA HARI KAMIS , 3 JAN \'08 TIDAK MASUK KERJA TANPA KETERANGAN', '', '2008-01-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (94, 21, 'Pelatihan', '10', 'PELATIHAN ETIKA KERJA', '', '2008-01-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (95, 21, 'Pelatihan', '10', 'PELATIHAN KEDISIPLINAN', '', '2008-07-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (96, 21, 'Pelatihan', '10', 'PELATIHAN TATA CARA DLM CPOB', '', '2008-09-25', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (97, 21, 'Pelatihan', '10', 'PELATIHAN ETIKA KERJA', '', '2009-04-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (98, 21, 'Pelatihan', '10', 'PELATIHAN MOTIVASI KERJA', '', '2010-03-17', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (99, 21, 'SP 2', '10', 'SP II : LALAI DALAM BEKERJA MENGAKIBATKAN ACRYLIC 60 KG BERCAMPUR DENGAN SISA KOLOID CABE', '', '2010-03-30', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (100, 21, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2011-03-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (101, 21, 'Pelatihan', '10', 'PELANTIHAN  PENANGGULANGAN BAHAYA KEBAKARAN DG TABUNG APAR', '', '2011-05-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (102, 21, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2012-03-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (103, 21, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2013-03-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (104, 21, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2014-02-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (105, 21, 'Penghargaan', '10', 'MENDAPATKAN PENGHRGAAN 10 TAHUN MASA KERAJ', '', '2014-12-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (106, 21, 'Pelatihan', '10', 'PELATIHAN PENGENALAN DAN PELAKSANAAN SISTEM MANAJEMEN MUTU ISO 9001 : 2008', '', '2014-12-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (107, 21, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2015-03-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (108, 21, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2016-04-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (109, 21, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2017-05-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (110, 21, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2018-05-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (111, 21, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2019-08-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (112, 27, 'Masuk', '17', 'MULAI MASUK KERJA SEBAGAI GPW (HL)', '', '2005-07-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (113, 27, 'Kontrak', '17', 'MULAI MASUK SEBAGAI GPW COATING STATUS KONTRAK', '', '2006-07-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (114, 27, 'Kesehatan', '17', 'MELAKUKAN PHOTO THORAX', '', '2011-03-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (115, 27, 'Kesehatan', '17', 'MELAKUKAN PHOTO THORAX', '', '2012-03-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (116, 27, 'Kesehatan', '17', 'MELAKUKAN PHOTO THORAX', '', '2013-03-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (117, 27, 'Kesehatan', '17', 'MELAKUKAN PHOTO THORAX', '', '2014-02-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (118, 27, 'Kesehatan', '17', 'MELAKUKAN PHOTO THORAX', '', '2015-03-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (119, 27, 'Tetap', '17', 'GPW TETAP (I)', '', '2015-06-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (120, 27, 'Kesehatan', '17', 'MELAKUKAN PHOTO THORAX', '', '2016-04-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (121, 27, 'Kesehatan', '17', 'MELAKUKAN PHOTO THORAX', '', '2017-05-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (122, 27, 'Kesehatan', '17', 'MELAKUKAN PHOTO THORAX', '', '2018-05-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (123, 27, 'Kesehatan', '17', 'MELAKUKAN PHOTO THORAX', '', '2019-08-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (124, 74, 'Masuk', '37', 'MULAI MASUK KERJA SEBAGAI GPP KONTRAK', '', '2000-02-21', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (125, 74, 'Tetap', '37', 'KARYAWAN TETAP BAGIAN PLESTER', '', '2000-09-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (126, 74, 'Pelatihan', '37', 'PELATIHAN PERSYARATAN ISO, IMPLEMENTASI & MANFAAT BAGI PERUSAHAAN', '', '2007-01-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (127, 74, 'Pelatihan', '37', 'PELATIHAN LOYALITAS KERJA', '', '2009-02-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (128, 74, 'Pelatihan', '37', 'PELATIHAN TEAM WORK ( KERJA SAMA )', '', '2012-03-09', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (129, 74, 'Pelatihan', '37', 'PELATIHAN KETERTIBAN & ETOS KERJA', '', '2012-06-29', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (130, 74, 'Pelatihan', '37', 'PELATIHAN HIEGEANE PERORANGAN UNTUK KARYAWAN', '', '2014-10-29', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (131, 74, 'Pelatihan', '37', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA DAN MEMASUKI AREA PRODUKSI OBAT TRADISIONAL', '', '2014-11-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (132, 10, 'Masuk', '3', 'OFFICE BOY', '', '1999-11-29', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (133, 10, 'SP 1', '3', 'SP1: MENINGGALKAN AREA KERJA DAN BERCAKAP - CAKAP DENGANREKAN KERJA SAAT JAM KERJA', '', '2006-06-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (134, 10, 'SP 1', '3', 'SP 3 : TIDUR DITEMPAT KERJA (GUDANG KARTON) SAAT JAM KERJA', '', '2004-04-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (135, 10, 'Pelatihan', '3', 'PELATIHAN PENTINGNYA KEBERSIHAN UNTUK MENUNJANG MUTU PRODUK', '', '2006-08-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (136, 10, 'Pelatihan', '3', 'PELATIHAN MOTIVASI KERJA', '', '2006-10-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (137, 10, 'Pelatihan', '3', 'PELATIHAN KEDISIPLINAN KERJA', '', '2007-06-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (138, 10, 'Pelatihan', '3', 'PELATIHAN PENTINGNYA KEBERSIHAN UNTUK MENUNJANG MUTU PRODUK', '', '2007-07-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (139, 10, 'SP 1', '3', 'SP 1 : MULAI TGL 1-7 NOVEMBER, SELALU TERLAMBAT ', '', '2007-11-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (140, 10, 'Pelatihan', '3', 'PELATIHAN KEDISIPLINAN', '', '2007-12-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (141, 10, 'SP 1', '3', 'SP 2: SERING TERLAMBAT, TIDAK MASUK KERJA, SERING MENINGGALKAN PEKERJAAN, HASIL KERJA TIDAK BAIK', '', '2007-03-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (142, 10, 'Pelatihan', '3', 'PELATIHAN KEDISIPLINAN', '', '2008-07-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (143, 10, 'Pelatihan', '3', 'PELATIHAN MOTIVASI KERJA', '', '2008-12-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (144, 10, 'SP 1', '3', 'SP 1 : TGL 10JUNI 2013, TIDAK MASUK KERJA TANDA KETERANGAN.', '', '2013-06-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (145, 10, 'Pelatihan', '3', 'PELATIHAN KEDISIPLINAN', '', '2013-06-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (146, 10, 'Pelatihan', '3', 'PELATIHAN PENANGGULANGAN KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR YANG TEPAT DAN BENAR', '', '2015-06-25', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (147, 11, 'Masuk', '3', 'OFFICE BOY', '', '2000-09-21', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (148, 11, 'SP 1', '3', 'SP 1 : TIDAK MELAKSANAKAN TUGAS, BERCAKAP-CAKAP PADA SAAT JAM KERJA DAN TIDURAN DI SEBELAH PANEL MIXING', '', '2007-01-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (149, 11, 'SP 1', '3', 'SP 1 : TIDURAN DI RUANG GULUNG KAIN SEHINGGA MENGGANGGU AKTIVITAS KERJA ', '', '2007-08-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (150, 11, 'Pelatihan', '3', 'PELATIHAN PENTINGNYA KEBERSIHAN DALAM MENUNJANG MUTU PRODUK', '', '2007-08-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (151, 11, 'Pelatihan', '3', 'PELATIHAN PENTINGNYA KEBERSIHAN DALAM MENUNJANG MUTU PRODUK', '', '2007-07-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (152, 11, 'SP 1', '3', 'SP 1 : TGL 28 TIDAK MASUK KERJA TANPA KETERANGAN', '', '2008-06-29', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (153, 11, 'Pelatihan', '3', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DENGAN MENGGUNAKAN APAR', '', '2008-03-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (154, 11, 'Pelatihan', '3', 'TATA CARA DALAM CPOB', '', '2008-09-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (155, 11, 'SP 1', '3', 'SP 1: TIDAK MEMAKAI MASKER PADA SAAT BEKERJA', '', '2012-01-17', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (156, 11, 'Pelatihan', '3', 'MENGELOLAH STRESS KERJA & MENJADIKANNYA SEBAGAI MOTIVASI UNTUK SUKSES', '', '2012-11-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (157, 11, 'Pelatihan', '3', 'PELATIHAN KEDISIPLINAN', '', '2013-10-25', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (158, 11, 'SP 1', '3', 'SP 1 : TGL 27 SEPT 2013 MENYIMPAN MAKAN DAN MINUMAN DI DALAM LOCKER', '', '2013-10-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (159, 11, 'SP 1', '3', 'SP 1 : TGL 17 NOVEMBER, MENYIMPAN MINUMAN (KOPI) DI DALAM LOCKER.', '', '2014-11-17', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (160, 12, 'Masuk', '3', 'MASUK PERTAMA SEBAGAI PERAWAT TAMAN', '', '2001-09-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (161, 12, 'SP 1', '3', 'SP 1 : BUANG AIR KECIL DI SEMBARANG TEMPAT LINGKUNGAN PERUSAHAAN', '', '2003-10-21', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (162, 12, 'Pelatihan', '3', 'PELATIHAN PENTINGNYA KEBERSIHAN DALAM MENUNJANG MUTU PRODUK ', '', '2006-08-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (163, 12, 'Pelatihan', '3', 'PELATIHAN PERSYARATAN ISO, IMPLEMENTASI DAN MANFAAT PADA ORGANISASI PERUSAHAAN', '', '2006-01-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (164, 12, 'Pelatihan', '3', 'PELATIHAN PMK DANGAN APAR', '', '2007-07-26', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (165, 12, 'Pelatihan', '3', 'PELATIHAN PENTINGNYA KEBERSIHAN DALAM MENJAGA MUTU PRODUK ', '', '2007-07-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (166, 12, 'Pelatihan', '3', 'PELATIHAN PMK DENGAN APAR', '', '2008-03-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (167, 12, 'SP 1', '3', 'SP 2 : MENINGGALKAN PEKERJAAN TANPA IJIN PIMPINAN', '', '2009-12-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (168, 12, 'SP 1', '3', 'SP 1 : TDK TELITI DALAM MENGHITUNG PIPA GAS UKURAN 1/2  X 1,2 SEHINGGA SELISIH 10 BATANG', '', '2010-07-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (169, 12, 'Pelatihan', '3', 'PELATIHAN PMK DENGAN APAR', '', '2011-05-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (170, 12, 'Pelatihan', '3', 'PENGENALAN DAN PELAKSANAAN MANAJEMEN MUTU ISO 9001 : 2008', '', '2014-12-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (171, 12, 'Peringatan', '3', 'MEMBAWA ROKOK DAN KOREK API KE DALAM LOCKER', '', '2016-01-21', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (172, 51, 'Masuk', '29', '30/06/00 - 30/09/00 MASUK KERJA KONTRAK SEBAGAI KARYAWAN PRODUKSI KONTRAK', '', '2000-06-30', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (173, 51, 'Kontrak', '29', 'KARYAWAN KONTRAK', '', '2000-09-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (174, 51, 'Tetap', '29', 'KARYAWAN GPP TETAP', '', '2003-05-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (175, 51, 'Promosi', '29', 'NAIK JABATAN DARI GPP MENJADI ASS. OPERATOR PLESTER GOLONGAN II', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (176, 51, 'Pelatihan', '29', 'PELATIHAN ISO IMPLEMENTASI DAN MANFAATNYA', '', '2006-01-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (177, 51, 'Pelatihan', '29', 'PELATIHAN ETIKA KERJA', '', '2009-04-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (178, 51, 'SP 2', '29', 'SP II : HARI SELASA, 12 OKTOBER 2010, TELAH LALAI DALAM BEKERJA SEHINGGA MENGAKIBATKAN HASIL PRODUKSI TIDAK SESUAI DENGAN STANDAR FANCY KUNING SEBANYAK 4085 STRIP RELEASE PAPERNYA MELIPAT KEDALAM', '', '2010-10-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (179, 51, 'Penghargaan', '29', 'MENDAPATKAN PENGHARGAAN KARYAWAN BERPRESTASI TAHUN 2013', '', '2013-08-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (180, 14, 'Masuk', '5', 'MASUK KERJA SEBAGAI GPP KONTRAK', '', '2004-01-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (181, 14, 'Kontrak', '5', 'PERPANJANGAN KONTRAK', '', '2005-01-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (182, 14, 'Masuk', '5', 'MASUK KERJA KEMBALI SEBAGAI GPW KONTRAK', '', '2006-02-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (183, 14, 'Kontrak', '5', 'PERPANJANGAN KONTRAK', '', '2007-02-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (184, 14, 'Promosi', '5', 'NAIK JABATAN MENJADI INSPECTOR II GOL. II BAGIAN QC', '', '2008-03-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (185, 14, 'Pelatihan', '5', 'PELATIHAN TATACARA DALAM CPOB', '', '2008-09-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (186, 14, 'Pelatihan', '5', 'PELATIHAN KOMUNIKASI', '', '2013-11-20', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (187, 14, 'Pelatihan', '5', 'PELATIHAN PENGENALAN ISO 9001 : 2008', '', '2014-07-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (188, 14, 'Penghargaan', '5', 'MENDAPATKAN PENGHARGAAN 10 THN MASA KERJA', '', '2014-12-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (189, 14, 'SP 1', '5', 'SP I : CEROBOH DALAM PENGEMASAN MINYAK ANGIN', '', '2016-02-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (190, 24, 'Masuk', '15', 'GPW HARIAN LEPAS', '', '2003-04-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (191, 24, 'Kontrak', '15', '05/01/04-04/01/05 GPP KARYAWAN KONTRAK', '', '2004-01-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (192, 24, 'Tetap', '15', 'DIANGKAT JADI KARYAWAN TETAP BAGIAN PLESTER', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (193, 24, 'Pelatihan', '15', 'PELATIHAN PERSYARATAN ISO IMPLEMENTASI DAN MANFAATNYA', '', '2007-08-15', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (194, 24, 'Promosi', '15', 'NAIK JABATAN JADI ASS. OPR PENIMBANGAN JAMU / II', '', '2008-12-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (195, 24, 'Pelatihan', '15', 'PELATIHAN DISIPLIN KERJA', '', '2010-03-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (196, 24, 'Pelatihan', '15', 'PELATIHAN MOTIVASI KERJA', '', '2010-03-17', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (197, 24, 'Kesehatan', '15', 'MELAKUKAN PHOTO THORAX', '', '2011-03-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (198, 24, 'Kesehatan', '15', 'MELAKUKAN PHOTO THORAX', '', '2012-03-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (199, 24, 'Kesehatan', '15', 'MELAKUKAN PHOTO THORAX', '', '2013-03-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (200, 24, 'Kesehatan', '15', 'MELAKUKAN PHOTO THORAX', '', '2014-02-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (201, 24, 'Penghargaan', '15', 'MENDAPATKAN PENGHARGAAN 10 TAHUN MASA KERJA ', '', '2014-12-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (202, 24, 'Pelatihan', '15', 'PELATIHAN PENERAPAN HYGENE PERORANGAN UNTUK KARYAWAN', '', '2014-10-29', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (203, 24, 'Pelatihan', '15', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA DAN MEMASUKI AREA PRODUKSI OBAT TRADISIONAL', '', '2014-11-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (204, 24, 'Pelatihan', '15', 'PELATIHAN MENGENAKAN PAKAIAN KERJA & MEMASUKI AREA PRODUKSI OBAT TRADISIONAL', '', '2016-03-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (205, 24, 'SP 2', '15', 'SP II : MENGELUARKAN BRANG BEKAS TANPA SURAT PERINTAH PENGELUARAN BARANG MUTASI JABTAN JADI ASS. OPR. COATING / II', '', '2017-05-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (206, 24, 'SP 1', '15', 'SP I : TELEDOR TIDAK MELAKUKAN PENGUKURAN PLESTER FIRSTRIP', '', '2018-04-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (207, 52, 'Masuk', '29', '18/11-29/12/1999 MASUK KERJA SEBAGAI KARY. KONTRAK', '', '1999-11-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (208, 52, 'Tetap', '29', 'DIANGKAT JADI KARYAWAN TETAP\nNAIK JABATAN JADI ASS. OPR. OK PLAST PADA TAHUN 2006', '', '2000-05-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (209, 52, 'SP 2', '29', 'SP II : TIDAK TELITI DALAM MENJALANKAN MESIN, SEHINGGA MENGAKIBATKAN PRODUK BETADINE REGULER SEBANYAK 2C TIDAK SESUAI DENGAN SPESIFIKASI (WOUND PAD) TERBALIK.', '', '2007-08-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (210, 52, 'Pelatihan', '29', 'PELATIHAN STRESS KERJA', '', '2008-06-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (211, 52, 'Pelatihan', '29', 'PELATIHAN ETIKA KERJA', '', '2008-08-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (212, 52, 'Pelatihan', '29', 'PELATIHAN BEKERJA SESUAI DENGAN CPOB', '', '2009-03-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (213, 52, 'Pelatihan', '29', 'PELATIHAN BEKERJA SESUAI SPESIFIKASI', '', '2009-03-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (214, 52, 'Pelatihan', '29', 'PELATIHAN KEDISIPLINAN', '', '2013-06-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (215, 52, 'Pelatihan', '29', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (216, 30, 'Masuk', '20', 'MASUK KERJA SEBAGAI KARYAWAN PRODUKSI BUNGKUS TAKAHI.JABATAN MENJADI PACKING SEKUNDER TAKAHI ( PADA TAHUN 2006 )', '', '1997-04-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (217, 30, 'SP 2', '20', 'SP II : TELAH LALAI DALAM BEKERJA SEHINGGA ADA PRODAK YANG TIDAK SESUAI DENGAN SPESIFIKASINYA. TERDAPAT SACHET KOSONG  & HANYA ADA 3 LBR PROD. DALAM 1 SACHET.', '', '2008-05-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (218, 30, 'SP 3', '20', 'SP III : TELAH BEBERAPA KALI TIDAK MEMAKAI PERLENGKAPAN KERJA YANG SUDAH DI BERIKAN PADA TANGGAL 30 SEPT & 06 NOV 2008', '', '2009-07-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (219, 30, 'Pelatihan', '20', 'PELATIHAN PEMAHAMAN MUTU PRODUK', '', '2008-11-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (220, 30, 'Pelatihan', '20', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN', '', '2008-11-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (221, 30, 'SP 2', '20', 'SP II : PADA HARI KAMIS, 7 OKTOBER 2010 TELAH LALAI DALAM BEKERJA SEHINGGA 7700 SACHET KOYO CABE SALAH PRINT TANGGAL EXPIRED NYA.', '', '2010-10-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (222, 30, 'Promosi', '20', 'NAIK JABATAN  JADI ASST. OPR. PACKING KOYO GOLONGAN II', '', '2011-02-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (223, 30, 'Pelatihan', '20', 'PELATIHAN : PENGENALAN DAN PELAKSANAAN SYSTEM MANAJEMEN MUTU ISO 2001 : 2008', '', '2014-12-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (224, 30, 'Pelatihan', '20', 'PELTIHAN PROPTAP PENANDAAN PT(06)-009 REV.03', '', '2016-03-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (225, 30, 'SP 1', '20', 'SP I  : SENIN, 10/7/17 DENGAN SENGAJA MENINGGALKAN PEKERJAANNYA KEMAS SEKUNDER KOYO PUKUL 16.20 SEBELUM JAM KERJA BERAKHIR JAM 16.30', '', '2017-07-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (226, 53, 'Masuk', '29', '04/11/00-04/12/00 KARYAWAN KONTRAK GPP', '', '2000-11-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (227, 53, 'Kontrak', '29', '18/02-17/08/02 KARYAWAN KONTRAK GPP', '', '2002-02-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (228, 53, 'Tetap', '29', 'EFEKTIF DIANGKAT JADI KARYAWAN TETAP', '', '2003-03-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (229, 53, 'Promosi', '29', 'KENAIKAN JABATAN DARI GPP MENJADI ASST. OPERATOR PLESTER GOLONGAN II ', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (230, 53, 'Pelatihan', '29', 'PELATIHAN KEDISIPLINAN', '', '2006-07-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (231, 53, 'Pelatihan', '29', 'PELATIHAN MOTIVASI KERJA', '', '2006-10-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (232, 53, 'SP 3', '29', 'SP III : AMANPLAST HEART TIDAK ADA WOUNDPAD NYA.', '', '2008-05-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (233, 53, 'Pelatihan', '29', 'PELATIHAN PEMAHAMAN MUTU PRODUK.', '', '2008-11-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (234, 53, 'Pelatihan', '29', 'PELATIHAN PERSYARATAN ISO DALAM PEKERJAAN & IMPLEMENTASINYA', '', '2009-03-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (235, 53, 'Pelatihan', '29', 'PELATIHAN P3K', '', '2009-11-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (236, 53, 'Pelatihan', '29', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (237, 53, 'Pelatihan', '29', 'PELATIHAN PENGENALAN & PELAKSANAAN SYSTEM MANAJEMEN MUTU ISO 9001 : 2008', '', '2014-12-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (238, 54, 'Masuk', '29', '07/02-07/05/00 KARYAWAN GPP KONTRAK', '', '2000-02-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (239, 54, 'Kontrak', '29', '15/05-14/08/00 KARYAWAN GPP KONTRAK', '', '2000-05-15', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (240, 54, 'Tetap', '29', 'DIANGKAT JADI KARYAWAN TETAP\nJABATANNYA MENJADI ASST. OPR OK PLAST ( DI TAHUN 2006 )', '', '2000-11-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (241, 54, 'SP 2', '29', 'SP II : TELAH LALAI DALAM BEKERJA SEHINGGA MENGAKIBATKAN BARANG HASIL DRESSING SPUNLACE DIREJECT', '', '2003-09-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (242, 54, 'Pelatihan', '29', 'PELATIHAN MUTU UNTUK HASIL DRESSING PLESTER', '', '2009-08-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (243, 54, 'Pelatihan', '29', 'PELATIHAN DOKUMENTASI CPOB', '', '2009-10-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (244, 54, 'SP 1', '29', 'SP I : HARI SELASA, 23 FEB 2010 TIDAK  MASUK KERJA TANPA KETERANGAN (ALPHA)', '', '2010-02-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (245, 54, 'Penghargaan', '29', 'MENDAPATKAN PENGHARGAAN KARYAWAN BERPRESTASI TAHUN 2013', '', '2013-08-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (246, 54, 'Pelatihan', '29', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (247, 17, 'Masuk', '8', 'AWAL MASUK KERJA SEBAGAI KRY. HL', '', '2003-05-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (248, 17, 'Kontrak', '8', 'AWAL KONTRAK', '', '2004-01-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (249, 17, 'Tetap', '8', 'KARYAWAN TETAP PRODUKSI HELPER/I BAGIAN MIXING', '', '2005-02-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (250, 17, 'SP 1', '8', 'SP I : TIDAK MELAKSANAKAN TUGAS / KEWAJIBANNYA PADA JAM KERJA. BERCAKAP CAKAP DAN TIDURAN DI SEBELAH PANEL MIXING', '', '2007-01-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (251, 17, 'Pelatihan', '8', 'PELATIHAN PERSYARATAN ISO, IMPLEMENTASI DAN MANFAATNYA BAGI PERUSAHAAN.', '', '2007-08-15', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (252, 17, 'Tetap', '8', 'DIANGKAT MENJADI ASS. OP. PENIMBANGAN GOLONGAN II', '', '2008-12-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (253, 17, 'Pelatihan', '8', 'PELATIHAN TATACARA DALAM CPOB', '', '2008-09-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (254, 17, 'Kesehatan', '8', 'MELAKUKAN PHOTO THORAX', '', '2011-03-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (255, 17, 'Kesehatan', '8', 'MELAKUKAN PHOTO THORAX', '', '2012-03-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (256, 17, 'Pelatihan', '8', 'PELATIHAN SISTEM MANAJEMEN MUTU ISO 9001 : 2008', '', '2012-09-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (257, 17, 'Penghargaan', '8', 'MENDAPAT PENGHARGAAN SEBAGAI KARYAWAN BERPRESTASI DENGAN NILAI 91', '', '2012-12-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (258, 17, 'Kesehatan', '8', 'MELAKUKAN PHOTO THORAX', '', '2013-03-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (259, 17, 'Kesehatan', '8', 'MELAKUKAN PHOTO THORAX', '', '2014-02-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (260, 17, 'Penghargaan', '8', 'MENDAPAT PENGHARGAAN 10 THN MASA KERJA & KARY BERPRESTASI', '', '2014-12-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (261, 17, 'Kesehatan', '8', 'MELAKUKAN PHOTO THORAX', '', '2015-03-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (262, 17, 'Pelatihan', '8', 'PELATIHAN PROPTAP PENGISIAN BATH RECORT, FORM PENCATATAN DAN FORM PENGISIAN NO. DOK: PT (6)-010 REV : 01', '', '2016-03-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (263, 17, 'Kesehatan', '8', 'MELAKUKAN PHOTO THORAX', '', '2016-04-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (264, 17, 'Kesehatan', '8', 'MELAKUKAN PHOTO THORAX', '', '2017-05-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (265, 17, 'Kesehatan', '8', 'MELAKUKAN PHOTO THORAX', '', '2018-05-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (266, 17, 'Kesehatan', '8', 'MELAKUKAN PHOTO THORAX', '', '2019-08-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (267, 60, 'Masuk', '32', 'AWAL MASUK KERJA HL', '', '2002-11-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (268, 60, 'Kontrak', '32', '05/01/04-04/01/05 AWAL KONTRAK SEBAGAI GPP', '', '2004-01-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (269, 60, 'Kontrak', '32', '06/01/05-05/01/06 PERPANJANGAN KONTRAK ', '', '2005-01-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (270, 60, 'Tetap', '32', 'DIANGKAT SEBAGAI KARYAWAN TETAP GPP BAGIAN PLESTER', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (271, 60, 'Tetap', '32', 'DIANGKAT MENJADI ASS. OPERATOR DRESSING GOL II BAGIAN PLESTER', '', '2008-08-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (272, 60, 'Penghargaan', '32', 'MENDAPAT PENGHARGAAN 10 THN MASA KERJA', '', '2014-12-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (273, 60, 'SP 1', '32', 'SP I : SALAH TULIS NOMER BATCH', '', '2017-02-09', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (274, 18, 'Masuk', '9', 'AWAL MASUK KERJA SBGAI KARYAWAN PRODUKSI\nJABATANNYA GPW BAGIAN PLESTER DI TH 2006', '', '2002-04-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (275, 18, 'Pelatihan', '9', 'PELATIHAN PEMADAMAN KEBAKARAN', '', '2007-07-26', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (276, 18, 'Tetap', '9', 'DIANGKAT JADI OERATOR MIXING GOL I KE II', '', '2008-08-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (277, 18, 'Pelatihan', '9', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN', '', '2008-10-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (278, 18, 'Kesehatan', '9', 'MELAKUKAN PHOTO THORAX', '', '2011-03-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (279, 18, 'Kesehatan', '9', 'MELAKUKAN PHOTO THORAX', '', '2012-03-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (280, 18, 'Kesehatan', '9', 'MELAKUKAN PHOTO THORAX', '', '2013-03-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (281, 18, 'Pelatihan', '9', 'PELATIHAN PENAMBAHAN NOMER URUT WADAH KOLOID DARI MIXING KE COATING', '', '2013-03-15', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (282, 18, 'Pelatihan', '9', 'PELATIHAN PENANGGULANGAN KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR YANG TEPAT DAN BENAR', '', '2013-07-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (283, 18, 'Kesehatan', '9', 'MELAKUKAN PHOTO THORAX', '', '2014-02-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (284, 18, 'Kesehatan', '9', 'MELAKUKAN PHOTO THORAX', '', '2015-03-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (285, 18, 'Pelatihan', '9', 'PELATIHAN PROPTAP PENGISIAN BATH RECORT, FORM PENCATATAN DAN FORM PENGISIAN NO. DOK: PT (6)-010 REV : 01', '', '2016-03-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (286, 18, 'Kesehatan', '9', 'MELAKUKAN PHOTO THORAX', '', '2016-04-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (287, 18, 'Kesehatan', '9', 'MELAKUKAN PHOTO THORAX', '', '2017-05-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (288, 18, 'Kesehatan', '9', 'MELAKUKAN PHOTO THORAX', '', '2018-05-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (289, 18, 'Kesehatan', '9', 'MELAKUKAN PHOTO THORAX', '', '2019-08-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (290, 72, 'Masuk', '35', '04/07/2000-03/10/2000 AWAL MASUK KONTRAK', '', '2000-07-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (291, 72, 'Kontrak', '35', '08/10/2000-08/12/2000 PERPANJANGAN KONTRAK\nDI TAHUN 2006 JABATANNYA ADALAH ASS. OPR MIXING SS', '', '2000-10-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (292, 72, 'Pelatihan', '35', 'PELATIHAN MOTIVASI KERJA', '', '2007-10-26', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (293, 72, 'Pelatihan', '35', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN', '', '2009-07-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (294, 72, 'Pelatihan', '35', 'PELATIHAN MEMAHAMI PENTINGNYA PENANDAAN DALAM SUATU PROSES PENGEMASAN', '', '2012-03-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (295, 72, 'Pelatihan', '35', 'PELATIHAN PENGENALAN 5R', '', '2012-07-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (296, 72, 'Kesehatan', '35', 'MELAKUKAN PHOTO THORAX', '', '2013-03-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (297, 72, 'Kesehatan', '35', 'MELAKUKAN PHOTO THORAX', '', '2014-02-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (298, 72, 'Pelatihan', '35', 'PELATIHAN PENERAPAN HIGIENE PERONGAN UNTUK KARYAWAN BAGIAN OT', '', '2014-10-29', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (299, 72, 'Pelatihan', '35', 'PELATIHAN MEMAKAI PAKAIAN KERJA DAN MEMASUKI AREA PRODUKSI OBAT TRADISIONAL', '', '2014-11-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (300, 31, 'Masuk', '20', 'AWAL MASUK KERJA SEBAGAI KARYAWAN GPP', '', '2000-07-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (301, 31, 'SP 2', '20', 'SP II : TELAH CEROBOH DAN KURANG HATI HATI DALAM MENJALANKAN MESIN SEAL,TIDAK MELAKUKAN KONTROL YANG CERMAT TERHADAP SUHU MESIN DAN HASIL SEALING SEHINGGA ADA 53 BUAH KANTONG / SACHET COSMO CAPSICUM PLESTER YANG HANGUS,SEDANGKAN STOCK BARANG TERSEBUT TERBATAS.', '', '2003-10-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (302, 31, 'Tetap', '20', 'JABATANNYA KARYAWAN TETAP (GPP) BAGIAN PLESTER TH 2006', '', '0000-00-00', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (303, 31, 'Pelatihan', '20', 'PELATIHAN STRESS KERJA', '', '2006-05-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (304, 31, 'Pelatihan', '20', 'PELATIHAN PERSYARATAN ISO IMPLEMENTASI & MANFAAT BAGI PEMASARAN', '', '2007-08-15', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (305, 31, 'Pelatihan', '20', 'PELATIHAN KEDISIPLINAN', '', '2008-07-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (306, 31, 'Pelatihan', '20', 'PELATIHAN MOTIVASI KERJA', '', '2008-12-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (307, 31, 'Pelatihan', '20', 'PELATIHAN LOYOALITAS KERJA', '', '2009-02-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (308, 31, 'Pelatihan', '20', 'PELATIHAN MOTIVASI KERJA', '', '2010-03-17', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (309, 31, 'Tetap', '20', 'DIANGKAT MENJADI ASS. OP PACKING KOYO/II', '', '2011-02-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (310, 31, 'SP 1', '20', 'SP I : TIDAK TELITI DALAM MENCARI 3187 VDS NEOBUN YANG TERSELIP SEHINGGA HARUS MENGEPRINT ULANG, DIMANA 3187 VDS NEOBUN YANG TERSELIP TADI PADA AKHIRNYA DITEMUKAN DAN TIDAK TERPAKAI', '', '2011-11-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (311, 31, 'Pelatihan', '20', 'PELATIHAN MENGENAKAN PAKAIAN KERJA DENGAN BAIK', '', '2014-06-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (312, 31, 'Pelatihan', '20', 'PELATIHAN PROPTAP PENANDAAN PT(6)-009 REV.03', '', '2016-03-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (313, 59, 'Masuk', '31', '23/02/00-31/08/00 MASUK KERJA GPP KONTRAK', '', '2000-02-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (314, 59, 'Tetap', '31', 'KARYAWAN PRODUKSI BAGIAN PLESTER TETAP.', '', '2000-11-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (315, 59, 'SP 1', '31', 'SP I : TIDAK TELITI MENYELEKSI HASIL PRODUKSI AMANPLAST SEBANYAK 5300 STRIP TIDAK ADA LIPATAN PROTEKTOR.', '', '2003-06-09', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (316, 59, 'Promosi', '31', 'NAIK JABATAN GPP MENJADI ASS. OPERATOR / II BAGIAN PLESTER.', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (317, 59, 'Penghargaan', '31', 'MENDAPATKAN PENGHARGAAN KARYAWAN BERPRESTASI TAHUN 2013', '', '2013-08-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (318, 59, 'Pelatihan', '31', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (319, 59, 'Pelatihan', '31', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR', '', '2015-06-25', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (320, 61, 'Masuk', '14', 'MASUK KERJA SEBAGAI KARYAWAN HARIAN LEPAS', '', '2002-05-16', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (321, 61, 'Kontrak', '14', '1-AGST-04 - 5 JAN 06 DIANGKAT JADI KARYAWAN KONTRAK', '', '2004-08-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (322, 61, 'Tetap', '14', 'DIANGKAT JADI KARYAWAN TETAP (GPP I ) BAGIAN PLESTER', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (323, 61, 'Tetap', '14', 'DIANGKAT SEBAGAI ASSISTEN OPERATOR (GOL II ) BAGIAN PLESTER', '', '2008-07-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (324, 61, 'Pelatihan', '14', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (325, 61, 'Penghargaan', '14', 'MENDAPATKAN PENGHARGAAN 10 THN MASA KERJA', '', '2014-12-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (326, 32, 'Masuk', '21', 'AWAL MASUK KERJA GPP KONTRAK', '', '1999-11-16', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (327, 32, 'Tetap', '21', 'DIANGKAT JDI KARY. TETAP \nDI TAHUN 2006 JABATANNYA ADALAH ASS. OPR KOYO', '', '2000-05-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (328, 32, 'SP 1', '21', 'SP I : TIDAK MASUK KERJA TANPA MEMBERIKAN PEMBERITAHUAN SECARA TERTULIS MAUPUN LISAN KEPADA PIMPINAN / PERSONALIA', '', '2007-05-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (329, 32, 'Pelatihan', '21', 'PELATIHAN STRESS KERJA', '', '2007-11-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (330, 32, 'Pelatihan', '21', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN', '', '2009-07-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (331, 32, 'Pelatihan', '21', 'PELATIHAN PENGGUNAAN LABEL \"BERSIH\"', '', '2013-07-31', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (332, 32, 'Pelatihan', '21', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (333, 32, 'Pelatihan', '21', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2014-07-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (334, 32, 'SP 1', '21', 'SP I : TELAH LALAI TIDAK MELALUKAN PENGECEKAN BARANG YANG DIKERJAKAN SEHINGGA BARANG TERSEBUT TIDAK BISA DIPROSES LANJUT DAN MASUK KARANTINA', '', '2016-08-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (335, 32, 'SP 1', '21', 'SP I : SAAT RAZIA DITEMUKAN SEBUAH HANDPHINE DAN MAKE UP BERADA DI RUANG PLONG DAN POTONG', '', '2016-06-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (336, 69, 'Masuk', '12', '23 FEB - 23 MEI 2000 KARYAWAN GPP KONTRAK ', '', '2000-02-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (337, 69, 'Kontrak', '12', '5 JUNI- 4 SEPT 2000 KARYAWAN GPP KONTRAK \nDI TAHUN 2006 JABATANNYA ADALAH ASST. OPERATOR FILLING SS', '', '2000-06-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (338, 69, 'SP 2', '12', 'SP II : TIDAK HATI - HATI DALAM MENJALANKAN MESIN PRINTING PADA SACHET COSMOS CAPSICUM PLASTER SEHINGGA TIDAK BISA DIHAPUS', '', '2003-10-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (339, 69, 'Pelatihan', '12', 'PELATIHAN MOTIVASI KERJA', '', '2008-12-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (340, 69, 'Pelatihan', '12', 'PELATIHAN LOYALITAS KERJA', '', '2009-02-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (341, 69, 'Pelatihan', '12', 'PELATIHAN TEAM WORK ( KERJA SAMA )', '', '2012-03-09', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (342, 69, 'Pelatihan', '12', 'PELATIHAN MEMAHAMI PENTINGNYA PENANDAAN DALAM PROSES PENGEMASAN', '', '2012-03-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (343, 69, 'Pelatihan', '12', 'PELATIHAN PENANGGULANGAN KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR YANG TEPAT DAN BENAR', '', '2013-07-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (344, 69, 'Pelatihan', '12', 'PELATIHAN PENERAPAN HYGENE PERORANGAN UNTUK KARYAWAN BAGIAN OT', '', '2014-10-29', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (345, 69, 'Pelatihan', '12', 'PELATIHAN MENGENAKAN PAKAIAN KERJA DAN MEMASUKI AREA PRODUKSI OT', '', '2014-11-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (346, 25, 'Masuk', '17', 'AWAL MASUK KERJA DI PRODUKSI GPW GUDANG JADI\nDI TAHUN 2000 YANG BERSANGKUTAN JABATANNY ADALAH SEBAGAI ASS. OPR. GUDANG', '', '2000-07-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (347, 25, 'Pelatihan', '17', 'PELATIHAN STRESS KERJA', '', '2006-05-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (348, 25, 'Pelatihan', '17', 'PELATIHAN MOTIVASI KERJA', '', '2006-10-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (349, 25, 'Pelatihan', '17', 'PELATIHAN PERSYARATAN ISO, IMPLEMENTASI DAN MANFAAT BAGI ORGANISASI PERUSAHAAN', '', '2007-01-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (350, 25, 'Pelatihan', '17', 'PELATIHAN PEMADAMAN KEBAKARAN', '', '2007-07-26', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (351, 25, 'SP 3', '17', 'SP III : TIDUR PADA SAAT JAM KERJA', '', '2008-06-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (352, 25, 'Pelatihan', '17', 'PELATIHAN KEDISIPLINAN', '', '2008-07-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (353, 25, 'SP 2', '17', 'SP II : TIDURAN PADA SAAT JAM KERJA SEKITAR PUKUL 13.15', '', '2012-08-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (354, 25, 'Pelatihan', '17', 'PELATIHAN KETERTIBAN DAN ETOS KERJA', '', '2012-06-29', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (355, 25, 'Pelatihan', '17', 'MENGELOLAH STRESS KERJA & MENJADIKANNYA SEBAGAI MOTIVASI UNTUK SUKSES', '', '2012-11-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (356, 25, 'Pelatihan', '17', 'PELATIHAN PENGENALAN ISO 9001 : 2008', '', '2014-07-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (357, 25, 'SP 1', '17', 'SP I : TIDAK MELAKUKAN KOORDINASI DENGAN TIM GUDANG SEHINGGA TERJADI KELEBIHAN PENGIRIMAN SEBANYAK 2 KARTON', '', '2015-03-16', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (358, 25, 'Pelatihan', '17', 'PELATIHAN TRAINING PENGOPRASIAN FORKLIFT', '', '2015-03-17', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (359, 25, 'Pelatihan', '17', 'PELATIHAN PROSEDUR TETAP PENGISIAN BATCH RECORD, FORM PENCATATAN DAN PEMERIKSAAN', '', '2015-06-15', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (360, 62, 'Masuk', '14', 'GPW HARIAN LEPAS', '', '2003-04-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (361, 62, 'Kontrak', '14', '05/1/04 - 04/01/05 GPP KONTRAK', '', '2004-01-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (362, 62, 'SP 1', '14', 'SP I : TELEDOR DAN KURANG TELITI DALAM MENJALANKAN MESIN PRINTING YANG TIDAK SESUSAI DENGAN BUKU PANDUAN SEHINGGA MENGAKIBATKAN 1500 SACHET (KANTONG) TAKAHI HOT TIDAK BISA DIPAKAI DAN DITOLAK OLEH QC', '', '2004-12-09', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (363, 62, 'Kontrak', '14', 'PERPANJANGAN KONTRAK', '', '2004-12-09', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (364, 62, 'Kontrak', '14', '06/01/05-05/01/06 DIANGKAT KARYAWAN TETAP GPP / I BAGIAN PLESTER', '', '2005-01-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (365, 62, 'Tetap', '14', 'DIANGKAT SEBAGAI ASSISTEN OPERATOR GOL 2 BAGIAN PLESTER', '', '2008-07-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (366, 62, 'Pelatihan', '14', 'PELATIHAN MENGENAKAN PAKAIAN KERJA DENGAN BAIK', '', '2014-06-09', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (367, 62, 'Penghargaan', '14', 'MENDAPATKAN PENGHARGAAN 10 TAHUN MASA KERJA', '', '2014-12-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (368, 63, 'Masuk', '14', 'GPP HARIAN LEPAS', '', '2003-01-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (369, 63, 'Kontrak', '14', 'KARYAWAN KONTRAK ( 06/01/05 - 05/01/16 )', '', '2004-06-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (370, 63, 'Tetap', '14', 'DIANGKAT KARYAWAN TETAP GPP I (I) BAGIAN PLESTER', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (371, 63, 'Tetap', '14', 'DIANGKAT SEBAGAI ASISTEN OPERATOR GOL II BAGIAN PLESTER', '', '2008-07-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (372, 63, 'Penghargaan', '14', 'MEMPEROLEH PENGHARGAAN KARYAWAN BERPRESTASI', '', '2010-06-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (373, 63, 'Penghargaan', '14', 'MEMPEROLEH PENGHARGAAN 10 TAHUN MASA KERJA', '', '2014-12-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (374, 55, 'Masuk', '30', '10/7 - 8/12 2000 AWAL MASUK KERJA GPP KONTRAK', '', '2000-07-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (375, 55, 'Promosi', '30', 'KENAIKAN JABATAN DARI GPP MENJADI ASS. OPERATOR II BAGIAN PLESTER', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (376, 55, 'Pelatihan', '30', 'PELATIHAN STRESS KERJA', '', '2006-11-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (377, 55, 'Pelatihan', '30', 'PELATIHAN STRESS KERJA', '', '2007-11-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (378, 55, 'SP 2', '30', 'SP II : TELAH LALAI DALAM BEKERJA SEHINGGA MENGAKIBATKAN BARANG HASIL DRESSING SPUNLACE DIREJECT', '', '2009-03-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (379, 55, 'Pelatihan', '30', 'PELATIHAN MUTU UNTUK HASIL DRESSING PLESTER', '', '2009-08-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (380, 55, 'Pelatihan', '30', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (381, 55, 'SP 1', '30', 'SP I : DITEMUKAN SEBUAH PERMEN BERADA DI DALAM RUANG DRESSING ALKES', '', '2016-06-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (382, 5, 'Masuk', '3', 'AWAL MASUK KERJA BAGIAN KEBERSIHAN\nDI TH 2006 JABATANNYA OFFICE BOY', '', '1999-07-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (383, 5, 'Pelatihan', '3', 'PELATIHAN PENTINGNYA KEBERSIHAN DALAM MENUNJANG MUTU PRODUK', '', '2006-08-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (384, 5, 'Pelatihan', '3', 'PELATIHAN PENTINGNYA KEBERSIHAN DALAM MENUNJANG MUTU PRODUK', '', '2007-07-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (385, 5, 'Penghargaan', '3', 'RANGKING I KARYAWAN BERPRESTASI DI TAHUN 2007', '', '2007-12-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (386, 5, 'Pelatihan', '3', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN', '', '2009-07-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (387, 5, 'Penghargaan', '3', 'MENDAPATKAN PENGHARGAAN 15 TAHUN MASA KERJA', '', '2014-12-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (388, 5, 'Promosi', '3', 'NAIK GOLONGAN DARI I KE II BAGIAN OFFICE BOY', '', '2019-02-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (389, 82, 'Masuk', '45', '23/06/06 - 10/03/08 MASUK KERJA SEBAGAI KARYAWAN GENERAL TEKHNIK WORKER ( HL )', '', '2006-06-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (390, 82, 'Kontrak', '45', '02/06/08 - 01/06/09 DIKONTRAK SEBAGAI GTW', '', '2008-06-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (391, 82, 'Tetap', '45', 'DIANGKAT MENJADI KARYAWAN TETAP SEBAGAI LINE MEKANIK I', '', '2010-07-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (392, 82, 'Kesehatan', '45', 'MELAKUKAN PHOTO THORAX', '', '2012-03-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (393, 82, 'Kesehatan', '45', 'MELAKUKAN PHOTO THORAX', '', '2013-03-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (394, 82, 'Pelatihan', '45', 'PELATIHAN PENGENALAN SYSTEM MANAJEMEN MUTU ISO 9001 : 2008', '', '2013-03-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (395, 82, 'Pelatihan', '45', 'DITUNJUK SEBAGAI ANGGOTA P2K3', '', '2013-05-15', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (396, 82, 'Promosi', '45', 'NAIK GOLONGAN DARI I KE II', '', '2018-10-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (397, 70, 'Masuk', '34', '18/11 - 29/12/99 AWAL MASUK KERJA GPP KONTRAK\nDIANGKAT JADI KARYAWAN TETAP GPP DI TAHUN 2000\nYANG BERSANGKUTAN JABATANNYA ADALAH ASS. OP. FILLING SS DI TAHUN 2006', '', '1999-11-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (398, 70, 'SP 2', '34', 'SP II : KESALAHAN PRINTING PADA SACHET COSMOPLAST', '', '2003-10-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (399, 70, 'Pelatihan', '34', 'PELATIHAN TEAMWORK KERJASAMA', '', '2012-03-09', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (400, 70, 'Kesehatan', '34', 'MELAKUKAN PHOTO THORAX', '', '2012-03-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (401, 70, 'Pelatihan', '34', 'PELATIHAN PENERAPAN HIGIENE PERORANGAN UNTUK KARYAWAN BAG. OBAT TRADISIONAL', '', '2014-10-20', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (402, 70, 'Pelatihan', '34', 'PELATIHAN MENGENAKAN PAKAIAN KERJA DAN MEMASUKI AREA PRODUKSI OBAT TRADISIONAL', '', '2014-11-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (403, 56, 'Masuk', '30', 'KARYAWAN GPP HARIAN LEPAS', '', '2000-11-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (404, 56, 'Kontrak', '30', 'KARYAWAN GPP KONTRAK', '', '2002-02-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (405, 56, 'Tetap', '30', 'KARYAWAN PRODUKSI TETAP', '', '2003-03-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (406, 56, 'Promosi', '30', 'KENAIKAN JABATAN DARI GPP MENJADI ASSISTEN OPERATOR II BAGIAN PLESTER', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (407, 56, 'Pelatihan', '30', 'PELATIHAN STRESS KERJA', '', '2006-05-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (408, 56, 'Pelatihan', '30', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (409, 29, 'Masuk', '19', 'GPW HARIAN LEPAS', '', '2003-04-28', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (410, 29, 'Kontrak', '19', '05/01/04 - 05/01/06 GPP KONTRAK', '', '2004-01-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (411, 29, 'Tetap', '19', 'KARYAWAN TETAP ( GPP ) BAGIAN KOYO CABE', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (412, 29, 'SP 1', '19', 'SP I : LALAI SEHINGGA ADA PRODUKSI YANG TIDAK SESUAI DENGAN SPESIFIKASI TERDAPAT SACHET KOSONG DAN HANYA ADA 3 LBR PRODUK DALAM 1 SACHET ', '', '2008-05-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (413, 29, 'Pelatihan', '19', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DANGAN MENGGU AKAN TABUNG APAR', '', '2008-03-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (414, 29, 'Pelatihan', '19', 'PELATIHAN TATA CARA DALAM CPOB', '', '2008-09-25', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (415, 29, 'SP 1', '19', 'SP I : PADA HARI KAMISTANGGAL 09 AGUSTUS 2018 KURANG KONTROL PADA ANGGOTANYA DAN BARU SADAR KALAU HOLOGRAM YANG TERTEMPEL DI SACHET ADALAH DESIGN LAMA DAN HOLOGRAMNYA SEJUMLAH 240 PCS TIDAK BISA DITEMPEL ULANG. SEHINGGA MENIMBULKAN KERUGIAN PERUSAHAAN.', '', '2008-09-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (416, 29, 'Tetap', '19', 'EFEKTIF PER 01 SEPTEMBER 2018 NAIK JABATAN DARI GPP I MENJADI KAPOK PACKING SEKUNDER KOYO GOLONGAN II', '', '2018-09-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (417, 33, 'Masuk', '22', 'AWAL MASUK SEBAGAI KARYAWAN PRODUKSI BAGIAN KOYO \nJABATANNYA ADALAH ASS. OPR. TKH DI TAHUN 2006', '', '1996-06-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (418, 33, 'Pelatihan', '22', 'PELATIHAN ETIKA KERJA', '', '2008-01-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (419, 33, 'SP 2', '22', 'SP II : LALAI SEHINGGA ADA PRODUK YANG TIDAK SESUAI DENGAN SPESIFIKASI, TERDAPAT SACHET KOSONG DAN HANYA ADA 3 LBR PRODAK DALAM 1 SACHET ', '', '2008-05-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (420, 33, 'Pelatihan', '22', 'PELATIHAN STRESS KERJA', '', '2008-06-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (421, 33, 'SP 2', '22', 'SP II : PADA HARI KAMIS TGL 7 OKTOBER TELAH LALAI DALAM BEKERJA SEHINGGA 7700 SACHET KOYO CABE SALAH PRINT TANGGAL EXPIRED', '', '2010-10-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (422, 33, 'Pelatihan', '22', 'PELATIHAN PENGGUNAAN LABEL SEDANG PROSES', '', '2013-08-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (423, 33, 'Pelatihan', '22', 'PELATIHAN MENGENAI PAKAIAN KERJA YANG BAIK', '', '2014-06-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (424, 33, 'Pelatihan', '22', 'PELTIHAN PROPTAP PENANDAAN PT(06)-009 REV.03', '', '2016-03-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (425, 33, 'SP 1', '22', 'SP I : PADA HARI SENIN, 10 JULI 2017 DENGAN SENGAJA MENINGGALKAN PEKERJAAN DI BAGIAN KEMAS SEKUNDER KOYO PUKUL 16.20 SEBELUM JAM KERJA BERAKHIR PUKUL 16.30 DAN MENGANGGU PERSONIL LAIN', '', '2017-07-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (426, 71, 'Masuk', '35', '23/02-04/09/2000 AWAL MASUK KERJA GPP KONTRAK\nYANG BERSANGKUTAN JABATANNYA ADALAH ASS. OPR. MIXING SS DI TAHUN 2000', '', '2000-02-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (427, 71, 'Pelatihan', '35', 'PLATIHAN STRESS KERJA', '', '2006-11-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (428, 71, 'Penghargaan', '35', 'MENDAPATKAN PENGHARGAAN SEBAGAI KARYAWAN BERPRESTASI THN 2012 DENGAN  NILAI 90', '', '2012-12-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (429, 71, 'SP 1', '35', 'SP I : TGL 19 JUNI 2013 TIDAK MASUK KERJA TANPA KET. ALPHA', '', '2013-06-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (430, 71, 'Pelatihan', '35', 'PENANGGULANGAN KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR YANG TEPAT DAN BENAR ', '', '2013-07-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (431, 71, 'Pelatihan', '35', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (432, 71, 'Pelatihan', '35', 'PELATIHAN KEDISIPLINAN', '', '2013-08-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (433, 57, 'Masuk', '30', 'MASUK KERJA SEBAGAI KARYAWAN PRODUKSI ALKES DGN JABATAN GPP', '', '1997-05-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (434, 57, 'SP 1', '30', 'SP I : BETADINE JUNIOR WOVWN PAD NYA MIRING', '', '2003-09-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (435, 57, 'Promosi', '30', 'KENAIKAN JABATAN DARI GPP MENJADI ASST. OPERATOR II BAGIAN PLESTER', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (436, 57, 'Pelatihan', '30', 'PELATIHAN STRESS KERJA', '', '2009-05-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (437, 58, 'Masuk', '30', '3/7 - 8/12/2000 AWAL MASUK KERJA GPP KONTRAK', '', '2000-07-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (438, 58, 'Promosi', '30', 'KENAIKAN JABATAN DARI GPP MENJADI ASS.OPR/II BAGIAN PLESTER', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (439, 58, 'Pelatihan', '30', 'PELATIHAN PERSYARATAN ISO IMPLEMENTASI DAN MANFAATNYA BAGI PERUSAHAAN', '', '2007-01-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (440, 58, 'Penghargaan', '30', 'MENDAPATKAN PENGHARGAAN KARYAWAN BERPRESTASI TAHUN 2013', '', '2013-08-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (441, 58, 'Pelatihan', '30', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (442, 73, 'Masuk', '36', '13/3 - 13/6 2000 AWAL MASUK KERJA KONTRAK', '', '2000-03-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (443, 73, 'Kontrak', '36', '23/6 - 22/9 2000 KARYAWAN KONTRAK\n DITAHUN 2006 JABATANNYA ADALAH ASS. OPR PRINTING SS', '', '2000-06-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (444, 73, 'Pelatihan', '36', 'PELATIHAN BEKERJA SESUAI DENGAN CPOB', '', '2009-03-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (445, 73, 'SP 1', '36', 'SP I : TELAH LALAI DALAM BEKERJA SEHINGGA ADA 1 SACHET KOYO CABE NO. BATCH 1800958N KOSONG ISINYA', '', '2009-04-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (446, 73, 'Pelatihan', '36', 'PELATIHAN TEAM WORK ( KERJA SAMA )', '', '2012-03-09', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (447, 73, 'SP 1', '36', 'SP I : LALAI TIDAK MENINGGALKAN PESAN SEHINGGA TERJADI KELEBIHAN PRINTING VDS NEOBUN', '', '2012-03-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (448, 73, 'Pelatihan', '36', 'PELATIHAN KETERTIBAN DAN ETOS KERJA', '', '2012-06-29', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (449, 73, 'Pelatihan', '36', 'PELATIHAN KOMUNIKASI', '', '2012-09-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (450, 73, 'Pelatihan', '36', 'PELATIHAN MENGELOLAH STRESS KERJA & MENJADIKANNYA SEBAGAI MOTIVASI UNTUK SUKSES', '', '2012-11-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (451, 73, 'Pelatihan', '36', 'PELATIHAN MENGHASILKAN PRODUK SESUAI STANDART', '', '2012-12-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (452, 73, 'SP 1', '36', 'SP I : PADA HARI RABU 23 JANUARI 2013 MENYIMPAN MAKANAN (KACANG ) DI DALAM LOKER', '', '2013-01-25', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (453, 73, 'Pelatihan', '36', 'PELATIHAN KEDISIPLINAN', '', '2013-06-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (454, 73, 'Pelatihan', '36', 'PELATIHAN PENERAPAN HYGIENE PERORANGAN UNTUK KARYAWAN BAGIAN OBAT TRADISIONAL', '', '2014-10-29', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (455, 73, 'Pelatihan', '36', 'PELATIHAN MENGENAKAN PAKAIAN KERJA DAN MEMASUKI AREA PRODUKSI OBAT TRADISIONAL', '', '2014-11-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (456, 80, 'Masuk', '43', 'AWAL MASUK KERJA HARIAN LEPAS GWW', '', '2005-08-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (457, 80, 'Kontrak', '43', 'GWW KONTRAK', '', '2006-05-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (458, 80, 'Kontrak', '43', 'PERPANJANGAN KONTRAK', '', '2007-05-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (459, 80, 'Tetap', '43', 'DIANGKAT SEBAGAI HELPER GUDANG GOLONGAN I (TETAP )', '', '2008-05-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (460, 80, 'Pelatihan', '43', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR', '', '2008-03-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (461, 80, 'Pelatihan', '43', 'PELATIHAN TATA CARA DALAM CPOB', '', '2008-09-25', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (462, 80, 'Pelatihan', '43', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR', '', '2008-10-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (463, 80, 'Tetap', '43', 'DIANGKAT SEBAGAI ASS. OPERATOR GUDANG GOLONGAN II ', '', '2012-10-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (464, 80, 'Pelatihan', '43', 'PELATIHAN KETERTIBAN DAN ETOS KERJA', '', '2012-06-29', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (465, 80, 'Pelatihan', '43', 'PENANGGULANGAN KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR YANG TEPAT DAN BENAR ', '', '2012-07-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (466, 80, 'Kesehatan', '43', 'MELAKUKAN PHOTO THORAX', '', '2013-03-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (467, 34, 'Masuk', '13', 'AWAL MASUK KERJA PRODUKSI BAGIAN KOYO\nJABATANNYA ADALAH PACK. SEK TAKAHI DITAHUN 2006', '', '1996-07-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (468, 34, 'SP 1', '13', 'SP I : TELAH CEROBOH MENJALANKAN TUGAS, PENGEMASAN KOYO TAKAHI HOT BESAR UNTUK VIETNAM DENGAN NO. BATCH 14301017 TERNYATA TERDAPAT SACHET YANG KOSONG', '', '2005-04-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (469, 34, 'SP 1', '13', 'SP I : MEMBAWA, MENARUH MAKANAN DI LOCKER', '', '2001-09-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (470, 34, 'Pelatihan', '13', 'PELATIHAN PERSYARATAN ISO IMPLEMENTASI DAN MANFAATNYA BAGI PERUSAHAAN', '', '2007-08-15', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (471, 34, 'Tetap', '13', 'DIANGKAT SEBAGAI ASS. OPERATOR ( GOL 2 )', '', '2008-07-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (472, 34, 'Pelatihan', '13', 'PELATIHAN TATA CARA DALAM CPOB', '', '2008-09-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (473, 34, 'Pelatihan', '13', 'PELATIHAN PERSYARATAN ISO IMPLEMENTASI DAN MANFAATNYA BAGI PERUSAHAAN', '', '2009-03-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (474, 34, 'Pelatihan', '13', 'PELATIHAN BEKERJA SESUAI DENGAN SPESIFIKASI', '', '2009-03-25', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (475, 34, 'Pelatihan', '13', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2014-06-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (476, 34, 'Pelatihan', '13', 'PELTIHAN PROPTAP PENANDAAN PT(06)-009 REV.03', '', '2016-03-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (477, 26, 'Masuk', '16', 'AWAL MASUK KERJA SEBAGAI KARYAWAN HARIAN LEPAS', '', '2003-03-31', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (478, 26, 'Kontrak', '16', '05/01/04 - 05/01/05 KARYAWAN KONTRAK', '', '2004-01-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (479, 26, 'Kontrak', '16', '06/01/05- 05/01/06 PERPANJANGAN KONTRAK', '', '2005-01-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (480, 26, 'Promosi', '16', 'KENAIAKAN JABATAN DARI KONTRAK MENJADI HELPER BAGIAN COATING GOLONGAN II', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (481, 26, 'Pelatihan', '16', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DI INTERNAL PERUSAHAAN', '', '2007-03-29', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (482, 26, 'SP 1', '16', 'SP I : PADA TANGGAL 18 MEI 2010 TIDAK MASUK KERJA TANPA KETRANGAN (ALPHA)', '', '2010-05-20', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (483, 26, 'SP 1', '16', 'SP I : TIDAK BERSEDIA BEKERJA LEMBUR PADA HARI MINGGU 17 JULI 2011', '', '2011-07-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (484, 26, 'Kesehatan', '16', 'MELAKUKAN PHOTO THORAX', '', '2012-03-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (485, 26, 'Kesehatan', '16', 'MELAKUKAN PHOTO THORAX', '', '2013-03-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (486, 26, 'Pelatihan', '16', 'PELATIHAN PENAMBAHAN NOMER URUT PADA WADAH KOLOID DARI MIXING KE COATING', '', '2013-03-15', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (487, 26, 'Kesehatan', '16', 'MELAKUKAN PHOTO THORAX', '', '2014-02-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (488, 26, 'Pelatihan', '16', 'PELATIHAN MENGENAKAN PAKAIAN KERJA YANG BAIK', '', '2014-06-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (489, 26, 'Penghargaan', '16', 'MENDAPATKAN PENGHARGAAN 10 TAHUN MASA KERJA ', '', '2014-12-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (490, 26, 'Kesehatan', '16', 'MELAKUKAN PHOTO THORAX', '', '2015-03-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (491, 26, 'Pelatihan', '16', 'PELATIHAN PROPTAP PENGISIAN BATH RECORT, FORM PENCATATAN DAN FORM PENGISIAN NO. DOK: PT (6)-010 REV : 01', '', '2016-03-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (492, 26, 'Kesehatan', '16', 'MELAKUKAN PHOTO THORAX', '', '2016-04-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (493, 26, 'Kesehatan', '16', 'MELAKUKAN PHOTO THORAX', '', '2017-05-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (494, 26, 'Kesehatan', '16', 'MELAKUKAN PHOTO THORAX', '', '2018-05-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (495, 26, 'Kesehatan', '16', 'MELAKUKAN PHOTO THORAX', '', '2019-08-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (496, 64, 'Masuk', '14', 'AWAL MASUK KERJA GPP HARIAN LEPAS', '', '2002-05-16', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (497, 64, 'Kontrak', '14', 'GPP KARYAWAN KONTRAK', '', '2003-08-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (498, 64, 'Kontrak', '14', 'PERPANJANGAN KONTRAK', '', '2005-06-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (499, 64, 'Tetap', '14', 'DIANGKAT SEBAGAI KARYAWAN TETAP GPP GOLONGAN I BAGIAN PLESTER', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (500, 64, 'Tetap', '14', 'DIANGKAT MENJADI ASSISTEN OPERATOR GOLONGAN II BAGIAN PLESTER', '', '2008-06-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (501, 64, 'Pelatihan', '14', 'PELATIHAN BEKERJA SESUAI DENGAN SPESIFIKASI', '', '2009-03-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (502, 64, 'SP 2', '14', 'SP II : TELAH LALAI DALAM BEKERJA SEHINGGA MENGAKIBATKAN BARANG HASIL DRESSING SPUNLACE DIREJECT', '', '2009-03-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (503, 64, 'Pelatihan', '14', 'PELATIHAN DISIPLIN KERJA', '', '2010-03-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (504, 64, 'Pelatihan', '14', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (505, 64, 'Penghargaan', '14', 'MENDAPATKAN PENGHARGAAN 10 TAHUN MASA KERJA', '', '2014-12-29', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (506, 64, 'SP 1', '14', 'SP I : DITEMUKAN SEBUAH KATALOG BERADA DIDALAM RUANG DRESSING ALKES', '', '2016-06-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (507, 81, 'Masuk', '44', 'MASUK KERJA BAGIAN TEKNIK', '', '2000-05-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (508, 81, 'Promosi', '44', 'KENAIKAN JABATAN (SK.05/IV/HRD/HRD/IAS/2000 DARI GOLONGAN II KE GOLONGAN III DENGAN JABATAN MEKANIK II', '', '2005-04-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (509, 81, 'Pelatihan', '44', 'MENGIKUTI PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DENGAN MEMAKAI TABUNG APAR', '', '2010-07-28', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (510, 81, 'Pelatihan', '44', 'MENGIKUTI PELATIHAN P2K3', '', '2011-02-17', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (511, 81, 'Kesehatan', '44', 'MELAKUKAN PHOTO THORAX', '', '2012-03-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (512, 81, 'Kesehatan', '44', 'MELAKUKAN PHOTO THORAX', '', '2013-03-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (513, 81, 'Pelatihan', '44', 'MENGIKUTI PELATIHAN PENGENALAN SYSTEM MANAJEMEN MUTU ISO 9001 : 2008', '', '2013-03-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (514, 81, 'SP 1', '44', 'SP I : DENGAN SENGAJA MENYIMPAN SABUN PONDS HITAM DALAM LOCKER', '', '2017-08-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (515, 46, 'Kontrak', '28', '10FEB-14 AGT 2000 GPP KONTRAK ', '', '2000-02-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (516, 46, 'Tetap', '28', 'GPP TETAP', '', '2000-09-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (517, 46, 'SP 1', '28', 'SP I : MEMBAWA MAKANAN KE LOCKER I', '', '2001-09-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (518, 46, 'Promosi', '28', 'NAIK JABATAN DARI ASS. OPERATOR JADI OPERATOR III BAGIAN PRODUKSI ALKES', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (519, 46, 'Pelatihan', '28', 'MENGIKUTI PELATIHAN STRESS KERJA', '', '2006-11-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (520, 46, 'Pelatihan', '28', 'MENGIKUTI PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN', '', '2008-10-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (521, 46, 'SP 1', '28', 'SP I : MELAKUKAN KESALAHAN DALAM MENJALANKAN MESIN DRESSING YANG MENGHASILKAN PRODUK YANG TIDAK SESUAI SEJUMLAH 8.500 STRIP DENGAN NO.BATCH P12/II-3 TR V ( PROSES PRODUK AMANPLAST TP MENGGUNAKAN PLASTER ROLL U/OKPLAST )', '', '2012-12-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (522, 46, 'Pelatihan', '28', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (523, 46, 'Masuk', '28', 'MASUK KERJA SEBAGAI KARYAWAN PRODUKSI\nNAIK JABATAN JADI OPERATOR MESIN MIXING DITAHUN 2006', '', '1997-09-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (524, 41, 'Masuk', '27', 'MASUK KERJA SEBAGAI KARYAWAN PRODUKSI ALKES ', '', '1997-05-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (525, 41, 'Pelatihan', '27', 'MENGIKUTI PELATIHAN KEDISIPLINAN', '', '2006-07-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (526, 41, 'Pelatihan', '27', 'MENGIKUTI PELATIHAN LOYALITAS KERJA', '', '2009-02-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (527, 41, 'SP 1', '27', 'SP I : HARI JUMAT, 25/6/09 TIDAK MASUK KERJA TANPA KETERANGAN', '', '2009-06-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (528, 41, 'Pelatihan', '27', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (529, 47, 'Masuk', '28', '15/11 - 29/12/99 GENERAL PRODUCTION PACKER (GPP) KONTRAK', '', '1999-11-15', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (530, 47, 'Tetap', '28', 'DITETAPKAN JADI KARYAWAN', '', '2000-05-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (531, 47, 'SP 1', '28', 'SP I : MELANGGAR KTENTUAN CUTI MENIKAH', '', '2001-10-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (532, 47, 'Promosi', '28', 'NAIK JABATAN DARI ASS. OPERATOR JADI OPERATOR III BAGIAN PLESTER', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (533, 47, 'Pelatihan', '28', 'MENGIKUTI PELATIHAN STRESS KERJA', '', '2006-05-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (534, 47, 'Pelatihan', '28', 'MENGIKUTI PELATIHAN MOTIVASI KERJA', '', '2006-10-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (535, 47, 'Pelatihan', '28', 'MENGIKUTI PELATIHAN DOKUMENTASI CPOB', '', '2009-10-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (536, 47, 'Penghargaan', '28', 'MENDAPATKAN PENGHARGAAN KARYAWAN BERPRESTASI TAHUN 2013', '', '2013-08-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (537, 47, 'Pelatihan', '28', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (538, 42, 'Masuk', '27', 'MASUK KERJA BAGIAN PRODUKSI BAGIAN BUNGKUS\nTAHUN 2006 JABATANNYA ADALAH OPR. OK PLAST\nTAHUN 2008 MEMPEROLEH RANGKING III KARYAWAN BERPRESTASI', '', '1996-07-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (539, 42, 'Pelatihan', '27', 'MENGIKUTI PELATIHAN PENGENALAN ISO 9001 : 2008', '', '2009-10-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (540, 42, 'Penghargaan', '27', 'MEMPEROLEH PENGHARGAAN SEBAGAI KARYAWAN TERBAIK DENGAN NILAI 81', '', '2011-12-16', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (541, 42, 'Pelatihan', '27', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (542, 48, 'Kontrak', '28', 'MASUK KERJA BAGIAN GPP KONTRAK', '', '2000-02-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (543, 48, 'Masuk', '28', 'DIANGKAT JADI KARYAWAN TETAP.', '', '2000-09-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (544, 48, 'Promosi', '28', 'NAIK JABATAN DRI ASS. OPERATOR JADI OPERATOR PLESTER GOLONGAN III', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (545, 48, 'SP 1', '28', 'SP I : TELAH BERTINDAK CEROBOH PADA SAAT PERGANGTIAN PRODUK SEHINGGA MENIMBULKAN KERUGIAN SEBANYAK 2200 STRIP', '', '2006-04-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (546, 48, 'Pelatihan', '28', 'MENGIKUTI PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DGN TABUNG APAR', '', '2008-03-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (547, 48, 'Pelatihan', '28', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (548, 48, 'SP 1', '28', 'SP I : SALAH MENULIS NOMER BATCH.', '', '2016-02-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (549, 49, 'Masuk', '28', 'MASUK KERJA SEBAGAI KARYAWAN PRODUKSI', '', '1997-04-29', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (550, 49, 'Promosi', '28', 'KENAIKAN JABATAN DARI ASS. OPERATOR PLESTER GOLONGAN III', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (551, 49, 'Pelatihan', '28', 'MENGIKUTI PELATIHAN BEKERJA SESUAI DENGAN CPOB', '', '2009-03-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (552, 49, 'SP 2', '28', 'SP II : TELAH LALAI DALAM BEKERJA SEHINGGA MENGAKIBATKAN BARANG HASIL DRESSING SPUNLACE DIRIJECT', '', '2009-03-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (553, 49, 'Penghargaan', '28', 'MENDAPATKAN PENGHARGAAN KARYAWAN BERPRESTASI TAHUN 2013', '', '2013-08-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (554, 49, 'Pelatihan', '28', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (555, 49, 'SP 1', '28', 'SP I : TELAH TERJADI PENYIMPANGAN PADA PROSES PRODUKSI PLESTER BETADINE DAN KELALAIAN DALAM MENULIS NOMER BATCH PADA PLESTER', '', '2015-09-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (556, 4, 'Masuk', '2', 'AWAL MASUK KERJA BAGIAN KEBERSIHAN\nDITAHUN 2006 NAIK JABATAN MENJADI KOORDINATOR KEBERSIHAN', '', '1996-05-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (557, 4, 'SP 1', '2', 'SP I : TIDAK MASUK KERJA TANPA PEMBERITAHUAN SECARA LISAN MAUPUN TERTULIS PADA PIMPINAN / PERSONALIA', '', '2007-09-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (558, 4, 'Pelatihan', '2', 'PELATIHAN PENTINGNYA KEBERSIHAN DALAM MENUNJANG  MUTU PRODUK', '', '2006-08-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (559, 4, 'Pelatihan', '2', 'PELATIHAN LEADERSHIP (KEPEMIMPINAN )', '', '2007-03-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (560, 4, 'Pelatihan', '2', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR', '', '2008-03-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (561, 4, 'Pelatihan', '2', 'PELATIHAN LEADERSHIP (KEPEMIMPINAN ) 2', '', '2008-05-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (562, 4, 'Pelatihan', '2', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DENGAN MENGGUNAKAN ', '', '2010-07-28', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (563, 4, 'Pelatihan', '2', 'PELATIHAN MOTIVASI KERJA', '', '2010-03-17', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (564, 4, 'Pelatihan', '2', 'PELATIHAN KEDISIPLINAN DAN ETOS KERJA', '', '2011-08-09', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (565, 4, 'Penghargaan', '2', 'MENDAPATKAN PENGHARGAAN SEBAGAI KARYAWAN BERPRESTASI THN 2012 DENGAN NILAI 96', '', '2012-12-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (566, 4, 'Pelatihan', '2', 'PELATIHAN KEDISIPLINAN', '', '2012-11-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (567, 4, 'Promosi', '2', 'NAIK DARI GOLONGAN II KE GOLONGAN III', '', '2019-02-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (568, 40, 'Masuk', '26', 'MASUK KERJA BAGIAN PRODUKSI HARIAN LEPAS', '', '2002-05-16', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (569, 40, 'Kontrak', '26', '1/8/03 - 5/1/06 JADI KARYAWAN KONTRAK', '', '2003-08-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (570, 40, 'Tetap', '26', 'DIANGKAT MENJADI KARYAWAN TETAP GPP I PLESTER', '', '2006-08-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (571, 40, 'Pelatihan', '26', 'MENGIKUTI PELATIHAN STRESS KERJA', '', '2006-05-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (572, 40, 'Pelatihan', '26', 'MENGIKUTI PELATIHAN LEADERSHIP (KEPEMIMPINAN)', '', '2007-03-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (573, 40, 'Pelatihan', '26', 'MENGIKUTI PELATIHAN MOTIVASI KERJA', '', '2007-04-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (574, 40, 'Pelatihan', '26', 'MENGIKUTI PELATIHAN PEMADAMAN KEBAKARAN', '', '2007-07-26', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (575, 40, 'Pelatihan', '26', 'MENGIKUTI PELATIHAN PERSYARATAN ISO IMPLEMENTASI DAN MANFAATNYA', '', '2007-08-15', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (576, 40, 'Promosi', '26', 'NAIK JABATAN JADI ACTING KAPOK CHILLI PLAST GOLONGAN II', '', '2008-12-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (577, 40, 'Pelatihan', '26', 'MENGIKUTI PELATIHAN PERSYARATAN ISO IMPLEMENTASI DAN MANFAATNYA', '', '2009-03-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (578, 40, 'Pelatihan', '26', 'MENGIKUTI PELATIHAN MEMAHAMI PENTINGNYA PENANDAAN DALAM PROSES KEMAS', '', '2012-03-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (579, 40, 'Pelatihan', '26', 'MENGIKUTI PELATIHAN 5 R', '', '2012-07-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (580, 40, 'Pelatihan', '26', 'MENGIKUTI PELATIHAN SYSTEM MANAJEMEN MUTU ISO 9001 : 2008', '', '2012-09-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (581, 40, 'Promosi', '26', 'NAIK JABATAN JADI  KAPOK CHILLI PLAST \nPELATIHAN MENGHASILKAN PRODUK SESUAI STANDAR', '', '2012-12-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (582, 40, 'Pelatihan', '26', 'MENGIKUTI PELATIHAN KOMUNIKASI', '', '2013-11-20', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (583, 40, 'Pelatihan', '26', 'PELATIHAN PENGENALAN ISO 9001 : 2008', '', '2014-07-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (584, 40, 'Penghargaan', '26', 'MEMPEROLEH PENGHARGAAN 10 TAHUN MASA KERJA', '', '2014-12-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (585, 40, 'Pelatihan', '26', 'MENGIKUTI PELATIHAN PROSEDUR TETAP PENGISISAN BATCH RECORD, FORM PENCATATAN DAN PEMERIKSAAN', '', '2015-06-15', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (586, 40, 'Pelatihan', '26', 'MENGIKUTI PELATIHAN KOMUNIKASI', '', '2015-11-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (587, 43, 'Masuk', '27', 'MULAI MASUK KERJA PRODUKSI OKPLAST\nTAHUN 2006 JABATANNYA JADI OPR. OKPLAST', '', '1996-09-09', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (588, 43, 'Pelatihan', '27', 'MENGIKUTI PELATIHAN STRESS KERJA', '', '2007-11-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (589, 43, 'SP 2', '27', 'SP II : LALAI DALAM BEKERJA SEHINGGA MENGAKIBATKAN 287 STRIP ELASTRIP LOLOS DARI SORTIRAN SAAT MESIN DRESSING BERJALAN', '', '2010-03-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (590, 43, 'Penghargaan', '27', 'MENDAPATKAN PENGHARGAAN SEBAGAI KARYAWAN BERPRESTASI DENAGN NILAI 90', '', '2012-12-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (591, 28, 'Masuk', '18', 'MASUK SEBAGAI KARYAWAN PRODUKSI BAGIAN KOYO\nDI TAHUN 2006 JABATANNYA OPR. TKH', '', '1995-11-20', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (592, 28, 'Pelatihan', '18', 'MENGIKUTI PELATIHAN STRESS KERJA', '', '2007-05-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (593, 28, 'SP 1', '18', 'SP I : TELAH LALAI DALAM BEKERJA SEHINGGA ADA SATU SACHET KOYO CABE NO BATCH 1800958 N ISI NYA KOSONG', '', '2009-04-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (594, 28, 'SP 1', '18', 'SP I : TIDAK MENINGGALKAN PESAN KE REKAN KERJANYA SEHINGGA MENGAKIBATKAN KELEBIHAN PRODUKSI SACHET KOYO', '', '2012-07-25', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (595, 28, 'Pelatihan', '18', 'PELATIHAN KOMUNIKASI', '', '2012-09-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (596, 28, 'Pelatihan', '18', 'MENGELOLAH STRESS KERJA & MENJADIKANNYA SEBAGAI MOTIVASI UNTUK SUKSES', '', '2012-11-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (597, 28, 'Pelatihan', '18', 'PELATIHAN PENGGUNAAN LABEL SEDANG PROSES', '', '2013-08-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (598, 28, 'Pelatihan', '18', 'PELATIHAN PENGENALAN ISO 9001 : 2008', '', '2014-07-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (599, 28, 'Pelatihan', '18', 'MENGIKUTI PELATIHAN KOMUNIKASI', '', '2015-11-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (600, 28, 'Pelatihan', '18', 'MENGIKUTI PELATIHAN AWARENESS OF QUALITY MANAGEMENT SYSTEM ISO 9001 2005', '', '2018-08-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (601, 50, 'Masuk', '28', 'MASUK KERJA BAGIAN PRODUKSI KONTRAK', '', '1999-11-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (602, 50, 'Tetap', '28', 'DIANGKAT JADI KARYAWAN TETAP', '', '2000-05-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (603, 50, 'Promosi', '28', 'NAIK JABATAN DARI ASS. OPR JADI OPERATOR GOLONGAN III DI PLESTER', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (604, 50, 'SP 1', '28', 'SP I : TIDAK MASUK KERJA TANPA KETERANGAN', '', '2007-08-16', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (605, 50, 'Pelatihan', '28', 'MENGIKUTI PELATIHAN LOYALITAS KERJA', '', '2009-02-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (606, 50, 'Pelatihan', '28', 'MENGIKUTI PELATIHAN BEKERJA SESUAI SPESIFIKASINYA', '', '2009-03-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (607, 50, 'Pelatihan', '28', 'MENGIKUTI PELATIHAN STRESS KERJA', '', '2009-05-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (608, 50, 'Pelatihan', '28', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (609, 76, 'Masuk', '39', 'MASUK KERJA BAGIAN PRODUKSI (PACKING KOYO )\nDITAHUN 2006 MUTASI KE BAGIAN QC SEBAGAI INSPECTOR\nDITAHUN 2006 MEMPEROLEH RANGKING I KARYAWAN BERPRESTASI ', '', '1996-06-26', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (610, 76, 'SP 2', '39', 'SP II : KURANG TELITI DAN LALAI MELAKUKAN KONTROL HASIL PRINTING COSMOPLAST', '', '2003-10-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (611, 76, 'Pelatihan', '39', 'MENGIKUTI PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN', '', '2008-10-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (612, 76, 'SP 2', '39', 'SP II : TELAH LALAI DALAM BEKERJA SEHINGGA MENGAKIBATKAN BARANG HASIL DRESSING SPUNLACE DI REJECT', '', '2009-03-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (613, 76, 'Penghargaan', '39', 'MEMPEROLEH RANGKING I KARYAWAN BERPRESTASI ', '', '2011-12-16', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (614, 76, 'Pelatihan', '39', 'PELATIHAN KETERTIBAN DAN ETOS KERJA', '', '2012-03-29', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (615, 76, 'Pelatihan', '39', 'PELATIHAN MENGHASILKAN PRODUK SESUAI STANDART', '', '2012-12-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (616, 76, 'Pelatihan', '39', 'PENANGGULANGAN KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR YANG TEPAT DAN BENAR ', '', '2013-07-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (617, 76, 'Pelatihan', '39', 'PELATIHAN PENANGGULANGAN KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR YANG TEPAT DAN BENAR', '', '2015-06-25', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (618, 23, 'Masuk', '11', 'MASUK KERJA SEBAGAI KEBERSIHAN\nDITAHUN 2006 NAIK JABATAN SEBAGAI ASS. OPR. GULUNG KAIN ', '', '1997-05-20', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (619, 23, 'SP 1', '11', 'SP I : TIDAK MASUK KERJA TANPA KETERANGAN', '', '2006-11-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (620, 23, 'Kesehatan', '11', 'MELAKUKAN PHOTO THORAX', '', '2011-03-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (621, 23, 'Kesehatan', '11', 'MELAKUKAN PHOTO THORAX', '', '2012-03-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (622, 23, 'Penghargaan', '11', 'MEMPEROLEH PENGHARGAAN SEBAGAI KARYAWAN BERPRESTASI', '', '2012-12-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (623, 23, 'Kesehatan', '11', 'MELAKUKAN PHOTO THORAX', '', '2013-03-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (624, 23, 'SP 1', '11', 'SP I : MELAKUKAN KESALAHAN PEMAKAIAN PADA PROSES COATING', '', '2014-01-17', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (625, 23, 'Kesehatan', '11', 'MELAKUKAN PHOTO THORAX', '', '2014-02-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (626, 23, 'Kesehatan', '11', 'MELAKUKAN PHOTO THORAX', '', '2015-03-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (627, 23, 'Pelatihan', '11', 'PELATIHAN PROPTAP PENGISIAN BATH RECORT, FORM PENCATATAN DAN FORM PENGISIAN NO. DOK: PT (6)-010 REV : 01', '', '2016-03-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (628, 23, 'Kesehatan', '11', 'MELAKUKAN PHOTO THORAX', '', '2016-04-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (629, 23, 'Kesehatan', '11', 'MELAKUKAN PHOTO THORAX', '', '2017-05-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (630, 23, 'Kesehatan', '11', 'MELAKUKAN PHOTO THORAX', '', '2018-05-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (631, 23, 'Kesehatan', '11', 'MELAKUKAN PHOTO THORAX', '', '2019-08-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (632, 44, 'Masuk', '27', 'MASUK KERJA BAGIAN PRODUKSI\nTAHUN 2006 NAIK JABATAN JADI OPR. OK PLAST', '', '1996-09-09', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (633, 44, 'Penghargaan', '27', 'MENDAPATKAN PENGHARGAAN KARYAWAN BERPRESTASI TAHUN 2013', '', '2013-08-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (634, 45, 'Masuk', '27', 'MASUK KERJA BAGIAN PRODUKSI BAGIAN PLESTER\nDITAHUN 2006 NAIK JABATAN JADI OPR OK PLAST', '', '1997-04-28', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (635, 45, 'Pelatihan', '27', 'PELATIHAN PERSYARATAN ISO IMPLEMENTASI DAN MANFAATNYA', '', '2007-01-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (636, 45, 'Penghargaan', '27', 'MENDAPATKAN PENGHARGAAN KARYAWAN BERPRESTASI TAHUN 2013', '', '2013-08-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (637, 45, 'Pelatihan', '27', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (638, 15, 'Masuk', '6', 'MASUK KERJA BAGIAN PRODUKSI\nDITAHUN 2006 NAIK JABATAN MENJADI ANALIS GOLONGAN III DI BAGIAN QC', '', '1994-05-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (639, 15, 'Pelatihan', '6', 'PELATIHAN PERSYARATAN ISO, IMPLEMENTASI & MANFAATNYA', '', '2006-07-25', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (640, 15, 'Pelatihan', '6', 'PELATIHAN MOTIVASI KERJA', '', '2006-10-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (641, 15, 'Kesehatan', '6', 'MELAKUKAN PHOTO THORAX', '', '2011-03-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (642, 15, 'Kesehatan', '6', 'MELAKUKAN PHOTO THORAX', '', '2012-03-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (643, 15, 'Kesehatan', '6', 'MELAKUKAN PHOTO THORAX', '', '2014-02-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (644, 15, 'Pelatihan', '6', 'PELATIHAN PENGENALAN DAN PELAKSANAAN SYSTEM MANAJEMEN MUTU ISO 9001 : 2008', '', '2014-12-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (645, 15, 'Kesehatan', '6', 'MELAKUKAN PHOTO THORAX', '', '2015-03-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (646, 15, 'Pelatihan', '6', 'PELATIHAN PROSEDUR TETAP PENGISIAN BATCH RECORD, FORM PENCATATAN DAN PEMERIKSAAN', '', '2015-06-15', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (647, 15, 'Kesehatan', '6', 'MELAKUKAN PHOTO THORAX', '', '2016-04-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (648, 15, 'Kesehatan', '6', 'MELAKUKAN PHOTO THORAX', '', '2017-05-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (649, 15, 'Kesehatan', '6', 'MELAKUKAN PHOTO THORAX', '', '2018-05-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (650, 15, 'Kesehatan', '6', 'MELAKUKAN PHOTO THORAX', '', '2019-08-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (651, 75, 'Tetap', '38', 'MULAI MASUK KERJA SEBAGAI KARYAWAN PRODUKSI\nTAHUN 2006 NAIK JABATAN MENJADI KAPOK PACK MBP ', '', '1996-07-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (652, 75, 'Pelatihan', '38', 'MENGIKUTI PELATIHAN STRESS KERJA', '', '2006-05-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (653, 75, 'Pelatihan', '38', 'MENGIKUTI PELATIHAN ISO, IMPLEMENTASI DAN MANFAATNYA.', '', '2006-07-25', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (654, 75, 'Pelatihan', '38', 'MENGIKUTI PELATIHAN KONFLIK DI TEMPAT KERJA', '', '2006-12-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (655, 75, 'Masuk', '38', '25 /2/08 - 25/5/08 MENGIKUTI TRAINING DI BAGIAN TRADING JATIM ACT. ADM TRADING', '', '2008-02-25', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (656, 75, 'Promosi', '38', 'NAIK JABATAN MENJADI KARU MBP GOLONGAN IV', '', '2008-12-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (657, 75, 'Pelatihan', '38', 'MENGIKUTI PELATIHAN STRESS KERJA', '', '2008-06-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (658, 75, 'Pelatihan', '38', 'MENGIKUTI PELATIHAN PEMAHAMAN MUTU PRODUK', '', '2008-11-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (659, 75, 'Pelatihan', '38', 'MENGIKUTI PELATIHAN LEADERSHIP 2', '', '2009-01-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (660, 75, 'Pelatihan', '38', 'MENGIKUTI PELATIHAN ISO DALAM PEKERJAAN, IMPLEMENTASI DAN MANFAATNYA.', '', '2009-03-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (661, 75, 'Pelatihan', '38', 'MENGIKUTI PELATIHAN PENGENALAN ISO 9001 : 2008', '', '2009-10-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (662, 75, 'Pelatihan', '38', 'MENGIKUTI PELATIHAN P3K', '', '2009-11-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (663, 75, 'Pelatihan', '38', 'MENGIKUTI PELATIHAN 5R', '', '2010-04-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (664, 75, 'Pelatihan', '38', 'MENGIKUTI PELATIHAN DOKUMENTASI & PELABELAN', '', '2011-05-26', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (665, 75, 'Pelatihan', '38', 'MENGIKUTI PELATIHAN : MEMAHAMI PENTINGNYA PENANDAAN DALAM PROSES KEMAS', '', '2012-03-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (666, 75, 'Pelatihan', '38', 'MENGIKUTI PELATIHAN 5R', '', '2012-07-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (667, 75, 'Pelatihan', '38', 'MENGIKUTI PELATIHAN SYSTEM MANAJEMEN MUTU ISO 9001 : 2008', '', '2012-09-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (668, 75, 'SP 1', '38', 'SP I : HARI JUMAT, 27/9/13 MENYIMPAN MAKANAN & MINUMAN DALAM LOCKER', '', '2012-10-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (669, 75, 'Pelatihan', '38', 'MENGELOLAH STRESS KERJA & MENJADIKANNYA SEBAGAI MOTIVASI UNTUK SUKSES', '', '2012-11-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (670, 75, 'Pelatihan', '38', 'PELATIHAN MENGHASILKAN PRODUK SESUAI STANDART', '', '2012-12-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (671, 75, 'Pelatihan', '38', 'PENANGGULANGAN KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR YANG TEPAT DAN BENAR ', '', '2014-06-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (672, 75, 'Pelatihan', '38', 'MENGIKUTI PELATIHAN PENGENALAN ISO 9001 : 2008', '', '2014-07-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (673, 75, 'SP 2', '38', 'SP II : TIDAK MELAKUKAN PENGECEKAN MESIN MBP SEBELUM MENINGGALKAN TEMPAT KERJA', '', '2016-09-20', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (674, 75, 'Pelatihan', '38', 'MENGIKUTI PELATIHAN PROSEDUR TETAP PENGISIAN BATCH RECORD, FORM PENCATATAN DAN PEMERIKSAAN', '', '2015-06-15', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (675, 75, 'Pelatihan', '38', 'MENGIKUTI PELATIAHAN KOMUNIKASI', '', '2015-11-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (676, 75, 'SP 2', '38', 'SP II : DENGAN SENGAJA MEMBAWA HP KE DALAM RUANG PRODUKSI', '', '2017-06-20', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (677, 75, 'Pelatihan', '38', 'MENGIKUTI PROTAB PENANDAAN PT (6)-009 REV 003', '', '2017-05-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (678, 16, 'Masuk', '7', 'MASUK KERJA BAGIAN PRODUKSI MIXER', '', '1997-03-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (679, 16, 'Promosi', '7', 'NAIK JABATAN DARI OPERATOR MIXING MENJADI KARU MIXING GOLONGAN IV', '', '2005-07-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (680, 16, 'Pelatihan', '7', 'MENGIKUTI PELATIHAN LEADERSHIP ( KEPEMIMPINAN )', '', '2006-09-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (681, 16, 'Pelatihan', '7', 'MENGIKUTI PELATIHAN KONFLIK DI TEMPAT KERJA', '', '2006-12-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (682, 16, 'Pelatihan', '7', 'MENGIKUTI PELATIHAN PEMADAM KEBAKARAN DENGAN APAR\nDITAHUN 2008 MEMPEROLEH RANGKING I KARYAWAN BERPRESTASI', '', '2007-07-26', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (683, 16, 'Pelatihan', '7', 'MENGIKUTI PELATIHAN LEADERSHIP 2', '', '2008-05-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (684, 16, 'Pelatihan', '7', 'MENGIKUTI PELATIHAN TATA CARA CPOB', '', '2008-09-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (685, 16, 'Pelatihan', '7', 'MENGIKUTI PELATIHAN LEADERSHIP 2', '', '2009-01-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (686, 16, 'Pelatihan', '7', 'PELATIHAN PENGENALAN ISO 9001 : 2008', '', '2009-10-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (687, 16, 'Pelatihan', '7', 'MENGIKUTI PELATIHAN P3K', '', '2009-11-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (688, 16, 'Pelatihan', '7', 'MENGIKUTI PELATIHAN PEMADAM KEBAKARAN DENGAN APAR', '', '2010-07-28', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (689, 16, 'Kesehatan', '7', 'MELAKUKAN PHOTO THORAX', '', '2011-03-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (690, 16, 'SP 1', '7', 'SP I : HARI JUM\'AT, 5/8/11 TIDAK MASUK KERJA TANPA KETERANGAN', '', '2011-08-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (691, 16, 'Pelatihan', '7', 'MENGIKUTI PELATIHAN PENGENALAN 5R', '', '2011-07-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (692, 16, 'Pelatihan', '7', 'PELATIHAN KEDISIPLINAN DAN ETOS KERJA', '', '2001-08-09', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (693, 16, 'Kesehatan', '7', 'MELAKUKAN PHOTO THORAX', '', '2012-03-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (694, 16, 'Pelatihan', '7', 'MENGIKUTI PELATIHAN SYSTEM MANAJEMEN MUTU ISO 9001 : 2008', '', '2012-09-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (695, 16, 'Pelatihan', '7', 'PELATIHAN KOMUNIKASI', '', '2012-09-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (696, 16, 'Pelatihan', '7', 'MENGELOLAH STRESS KERJA & MENJADIKANNYA SEBAGAI MOTIVASI UNTUK SUKSES', '', '2012-11-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (697, 16, 'Kesehatan', '7', 'MELAKUKAN PHOTO THORAX', '', '2013-03-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (698, 16, 'Pelatihan', '7', 'MENGIKUTI PELATIHAN PENAMBAHAN NOMER URUT WADAH KOLOID DARI MIXING KE COATING', '', '2013-03-15', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (699, 16, 'Kesehatan', '7', 'MELAKUKAN PHOTO THORAX', '', '2014-02-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (700, 16, 'Pelatihan', '7', 'MENGIKUTI PELATIHAN PENGENALAN ISO 9001 : 2008', '', '2014-06-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (701, 16, 'Tetap', '7', 'DITUNJUK SEBAGAI ANGGOTA P2K3', '', '2013-05-15', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (702, 16, 'Kesehatan', '7', 'MELAKUKAN PHOTO THORAX', '', '2015-03-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (703, 16, 'Pelatihan', '7', 'MENGIKUTI PELATIHAN KOMUNIKASI', '', '2015-11-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (704, 16, 'Pelatihan', '7', 'PELATIHAN PROPTAP PENGISIAN BATH RECORT, FORM PENCATATAN DAN FORM PENGISIAN NO. DOK: PT (6)-010 REV : 01', '', '2016-03-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (705, 16, 'Kesehatan', '7', 'MELAKUKAN PHOTO THORAX', '', '2016-04-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (706, 16, 'Kesehatan', '7', 'MELAKUKAN PHOTO THORAX', '', '2017-05-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (707, 16, 'Kontrak', '7', '18-19/08/17 MENGIKUTI PELATIHAN ISO 9001 : 2015 AWARENESS OF QUALITY MANAJEMEN SYSTEM', '', '2017-08-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (708, 16, 'Kesehatan', '7', 'MELAKUKAN PHOTO THORAX', '', '2018-05-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (709, 37, 'Masuk', '24', '23/2/00 - 4/9/00 AWAL KONTRAK KERJA ( DURASI KONTRAK 3 BULAN )', '', '2000-02-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (710, 37, 'Tetap', '24', 'DIANGKAT MENJADI KARYAWAN TETAP ( GPP ) BAGIAN PLESTER', '', '2000-09-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (711, 37, 'Pelatihan', '24', 'PELATIHAN DISIPLIN KERJA', '', '2010-03-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (712, 37, 'SP 1', '24', 'SP I : TIDAK TELITI DALAM MENCARI 3187 VDS NEOBUN YANG TERSELIP SEHINGGA HARUS', '', '2011-11-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (713, 37, 'Pelatihan', '24', 'PELATIHAN PENGGUNAAN LABEL \"BERSIH\"', '', '2013-07-31', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (714, 37, 'Pelatihan', '24', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (715, 37, 'Pelatihan', '24', 'PELATIHAN MENGENAKAN PAKAIAN KERJA DENGAN BAIK.', '', '2014-06-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (716, 37, 'SP 1', '24', 'SP I : TIDAK MELAKUKAN PENGECEKAN TERHADAP BARANG YANG DIKERJAKAN ( KOYO,HUNDREDPLAST DENGAN NO. BATCH 16/77 TURUNAN L - Z ROLL @ 100 M. TURUNAN 11-8 ROLL @ 100M, TURUNAN 14 - 1 ROLL @ 107M', '', '2016-08-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (717, 13, 'Masuk', '4', 'AWAL MASUK SEBAGAI DRIVER HARIAN LEPAS', '', '2010-10-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (718, 13, 'Kontrak', '4', 'MULAI KERJA SEBAGAI DRIVER KONTRAK', '', '2011-06-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (719, 13, 'Tetap', '4', 'DIANGKAT JADI DRIVER TETAP', '', '2019-09-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (720, 6, 'Masuk', '3', 'AWAL MASUK KERJA DENGAN POSISI KEBERSIHAN', '', '2001-09-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (721, 6, 'SP 3', '3', 'SP III : TELAH TIDUR DITEMPAT KERJA ( RUANG GUDANG KARTON ) PADA SAAT JAM KERJA BERLANGSUNG.', '', '2004-04-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (722, 6, 'Pelatihan', '3', 'PELATIHAN PENTINGNYA KEBERSIHAN  DALAM MENJAGA MUTU ', '', '2007-07-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (723, 6, 'SP 3', '3', 'SP III : TELAH TIDUR DI LORONG KAIN PADA SAAT JAM KERJA BERLANGSUNG', '', '2007-09-17', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (724, 6, 'Pelatihan', '3', 'PELATIHAN MOTIVASI KERJA', '', '2008-12-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (725, 6, 'Pelatihan', '3', 'PELATIHAN ETIKA KERJA', '', '2009-04-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (726, 6, 'SP 1', '3', 'SP I : SUDAH 2X KARYAWAN TERSEBUT TIDAK ADA DITEMPAT KERJANYA DAN TERNYATA DIKETAHUI SEDANG MENGOBROL DI GULUNG KAIN & RUANG POTONG KERTAS.', '', '2009-04-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (727, 6, 'SP 1', '3', 'SP I : PADA TANGGAL 1 JUNI 2010 TIDAK MASUK KERJA TANPA KETERANGAN (ALPHA)', '', '2010-06-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (728, 6, 'Pelatihan', '3', 'PELATIHAN PENANGGULANAGN KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR', '', '2011-05-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (729, 6, 'SP 2', '3', 'SP II : PADA HARI KAMIS, 14 APRIL 2011 TELAH MELAKUKAN PELANGGARAN TATA TERTIB\nKERJA SBB : (1) MENGELUARKAN KATA KATA KASAR PADA SECURITY\n(2) MEMBAWA MASUK TAS PLASTIK BESERTA ISINYA : HANDPHONE & CHARGER\n(4) MENGENAKAN SEPATU KARET WARNA PUTIH DILUAR RUANG PRODUKSI.', '', '2011-04-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (730, 67, 'Masuk', '33', '16/11/-29/12/99 SEBAGAI KARYAWAN KONTRAK GPP', '', '1999-11-16', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (731, 67, 'Tetap', '33', 'DIANGKAT SEBAGAI KARYAWAN TETAP (GPP) BAGIAN PLESTER', '', '2003-05-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (732, 67, 'Pelatihan', '33', 'PELATIHAN PERSYARATAN ISO, IMPLEMENTASI DAN MANFAATNYA BAGI PERUSAHAAN', '', '2007-01-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (733, 67, 'Pelatihan', '33', 'PELATIHAN MOTIVASI KERJA', '', '2007-04-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (734, 67, 'Pelatihan', '33', 'PELATIHAN KEDISIPLINAN', '', '2007-06-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (735, 67, 'Pelatihan', '33', 'PELATIHAN ETIKA KERJA', '', '2008-01-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (736, 67, 'SP 2', '33', 'SP II : LALAI SEHINGGA 2 KARTON BETADINE JUNIOR DI TOLAK QC KARENA RELEASE PAPER MELIPAT', '', '2008-05-09', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (737, 67, 'Pelatihan', '33', 'PELATIHAN STRES KERJA', '', '2008-06-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (738, 67, 'Pelatihan', '33', 'PELATIHAN KEDISIPLINAN', '', '2008-07-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (739, 67, 'Pelatihan', '33', 'PELATIHAN ETIKA KERJA', '', '2008-08-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (740, 67, 'Pelatihan', '33', 'PELATIHAN DOKUMENTASI CPOB', '', '2009-10-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (741, 67, 'Penghargaan', '33', 'MENDAPATKAN PENGHARGAAN KARYAWAN BERPRESTASI TAHUN 2013', '', '2013-08-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (742, 22, 'Masuk', '10', 'MASUK KERJA SEBAGAI HARIAN LEPAS', '', '2005-01-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (743, 22, 'Kontrak', '10', 'SEBAGAI KARYAWAN KONTRAK', '', '2006-02-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (744, 22, 'Tetap', '10', 'KARYAWAN TETAP (GPP) GOLONGAN I MIXING', '', '2007-03-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (745, 22, 'Pelatihan', '10', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR', '', '2008-03-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (746, 22, 'Pelatihan', '10', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR', '', '2008-10-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (747, 22, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2011-03-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (748, 22, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2012-03-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (749, 22, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2013-03-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (750, 22, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2014-02-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (751, 22, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2015-03-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (752, 22, 'SP 1', '10', 'SP I : PADA HARI SENIN, 20 APRIL 2015 TELAH DITEMUKAN 1 BUNGKUS ROKOK DI DALAM LOKER', '', '2015-05-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (753, 22, 'SP 1', '10', 'SP I : DENGAN SENGAJA MEMBAWA KOREK APE KEDALAM LOKER PRODUKSI', '', '2016-11-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (754, 22, 'SP 1', '10', 'SP I : MEMBAWA AIR MINERAL DI RUANG PRODUKSI MIXING', '', '2016-04-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (755, 22, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2016-04-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (756, 22, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2017-05-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (757, 22, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2018-05-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (758, 22, 'Kesehatan', '10', 'MELAKUKAN PHOTO THORAX', '', '2019-08-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (759, 38, 'Masuk', '24', '4/9/00-18/6/02 GPP KARYAWAN KONTRAK ', '', '2000-09-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (760, 38, 'Tetap', '24', 'DIANGKAT SEBAGAI KARYAWAN TETAP BAGIAN KOYO CABE', '', '2003-03-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (761, 38, 'SP 1', '24', 'SP I : PADA SAAT JAM KERJA BERADA DI LOCKER DARI PUKUL 15.40 - 16.13 TIDAK DI DALAM PRODUKSI', '', '2007-05-16', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (762, 38, 'Pelatihan', '24', 'PELATIHAN STRESS KERJA', '', '2006-05-16', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (763, 38, 'SP 1', '24', 'SP I : LALAI SEHINGGA ADA PRODUK YANG TIDAK SESUAI SPESIFIKASI, TERDAPAT SACHET KOSONG DAN HANYA ADA3 LEMBAR PRODUK DALAM 1 SACHET.', '', '2008-05-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (764, 38, 'Pelatihan', '24', 'PELATIHAN PEMAHAMAN MUTU PRODUK', '', '2008-11-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (765, 38, 'Pelatihan', '24', 'PELATIHAN MOTIVASI KERJA', '', '2010-03-17', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (766, 38, 'Pelatihan', '24', 'PELATIHAN MEMAHAMI PENTINGNYA PENANDAAN DALAM SUATU PROSES PENGEMASAN', '', '2012-03-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (767, 38, 'Pelatihan', '24', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (768, 38, 'Pelatihan', '24', 'PELATIHAN PENGGUNAAN LABEL \"BERSIH\"', '', '2021-07-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (769, 38, 'Pelatihan', '24', 'PELATIHAN MENGENAKAN PAKAIAN KERJA DENGAN BAIK', '', '2014-06-09', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (770, 7, 'Masuk', '3', 'AWAL MASUK KERJA SEBAGAI OFFICE BOY\nRANGKING II KARYAWAN BERPRESTASI 2006', '', '2000-09-21', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (771, 7, 'Pelatihan', '3', 'PELATIHAN PENTINGNYA KEBERSIHAN DALAM MENUNJANG MUTU PRODUK', '', '2006-08-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (772, 7, 'Pelatihan', '3', 'PELATIHAN PEMADAMAN KEBAKARAN', '', '2007-07-26', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (773, 7, 'Pelatihan', '3', 'PELATIHAN PENTINGNYA KEBERSIHAN DALAM MENUNJANG MUTU PRODUK', '', '2007-07-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (774, 7, 'Pelatihan', '3', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR', '', '2010-07-28', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (775, 7, 'SP 3', '3', 'SP III : TIDUR PADA SAAT JAM KERJA 2/9/10', '', '2010-09-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (776, 7, 'Penghargaan', '3', 'MENDAPATKAN PENGHARGAAN KARYAWAN BERPRESTASI ', '', '2010-09-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (777, 7, 'Pelatihan', '3', 'MENGELOLAH STRESS KERJA & MENJADIKANNYA SEBAGAI MOTIVASI UNTUK SUKSES', '', '2012-11-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (778, 7, 'Penghargaan', '3', 'MENDAPATKAN PENGHARGAAN KARYAWAN BERPRESTASI TAHUN 2013', '', '2013-08-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (779, 7, 'SP 1', '3', 'SP I : DENGAN SENGAJA MEMBAWA SABUN KELLY KE DALAM LOCKER', '', '2014-12-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (780, 7, 'Peringatan', '3', 'PADA HARI KAMIS 9 AGUSTUS 2018 DENGAN SENGAJA MEMBAWA DAN MEMAINKAN HP', '', '2017-08-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (781, 7, 'Peringatan', '3', 'PADA SAAT JA KERJA DI LOKER GANTI KARYAWAN AREA DEPAN', '', '2018-08-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (782, 79, 'Masuk', '42', 'KARYAWAN HARIAN LEPAS', '', '2002-09-16', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (783, 79, 'Kontrak', '42', '5/1/04 - 5/01/05 KARYAWAN KONTRAK', '', '2004-01-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (784, 79, 'Promosi', '42', 'KENAIKAN JABATAN DARI KONTRAK MENJADI TETAP SEBAGAI HELPER GOLONGAN I PLESTER', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (785, 79, 'Pelatihan', '42', 'PELATIHAN MOTIVASI KERJA', '', '2007-10-26', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (786, 79, 'Pelatihan', '42', 'PELATIHAN ETIKA KERJA', '', '2009-04-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (787, 79, 'Pelatihan', '42', 'PELATIHAN P3K', '', '2009-11-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (788, 79, 'Pelatihan', '42', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR', '', '2011-05-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (789, 79, 'Pelatihan', '42', 'PELATIHAN KEDISIPLINAN DAN ETOS KERJA', '', '2011-08-09', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (790, 79, 'SP 1', '42', 'SP I : LALAI / SALAH DALAM MENGHITUNG DAN MEMBUAT LAPORAN STOCK KAIN AMANPLAST', '', '2013-05-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (791, 79, 'Penghargaan', '42', 'MENDAPAT PENGHARGAAN 10 TAHUN MASA KERJA', '', '2014-12-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (792, 39, 'Masuk', '25', 'KARYAWAN PRODUKSI BAGIAN KOYO \nDITAHUN 2006 JABATANNYA ADALAH PACK SEK. TAKAHI', '', '1996-07-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (793, 39, 'Pelatihan', '25', 'PERSYARATAN ISO, IMPLEMENTASI DAN MANFAATNYA BAGI ORGANISASI PERUSAHAAN', '', '2007-01-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (794, 39, 'Pelatihan', '25', 'PELATIHAN MOTIVASI KERJA', '', '2007-04-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (795, 39, 'Pelatihan', '25', 'PELATIHAN TATA CARA DALAM CPOB', '', '2008-09-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (796, 39, 'Pelatihan', '25', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR', '', '2011-05-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (797, 39, 'Pelatihan', '25', 'PELATIHAN PENGGUNAAN LABEL \"BERSIH\"', '', '2013-07-21', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (798, 39, 'Pelatihan', '25', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (799, 39, 'Pelatihan', '25', 'PELATIHAN MENGENAKAN PAKAIAN KERJA DENGAN BAIK', '', '2014-06-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (800, 39, 'Pelatihan', '25', 'PELTIHAN PROPTAP PENANDAAN PT(06)-009 REV.03', '', '2016-03-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (801, 68, 'Masuk', '33', '23/5/02-31/7/03 KARYAWAN HARIAN LEPAS', '', '2002-05-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (802, 68, 'Kontrak', '33', '01/8/03-5/1/06 KARYAWAN KONTRAK', '', '2003-08-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (803, 68, 'Tetap', '33', 'KARYAWAN TETAP BAGIAN PLESTER (GPP)', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (804, 68, 'Pelatihan', '33', 'PELATIHAN STRESS KERJA', '', '2007-11-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (805, 68, 'Pelatihan', '33', 'PELATIHAN PEMAHAMAN MUTU PRODUK', '', '2008-11-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (806, 68, 'Pelatihan', '33', 'PELATIHAN PENANGGULANGAN KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR YANG TEPAT DAN BENAR', '', '2013-07-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (807, 68, 'Pelatihan', '33', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (808, 68, 'Penghargaan', '33', 'MENDAPATKAN PENGHARGAAN 10 THN MASA KERJA', '', '2014-12-13', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (809, 2, 'Masuk', '1', 'MULAI MASUK KERJA SEBAGAI SECURITY/SATPAM HL', '', '2008-05-26', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (810, 2, 'Kontrak', '1', '11/9/08, 16/1/09 PERJANJIAN KEDUA SEBAGAI SECUTRITY/ SATPAM HL', '', '2008-09-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (811, 2, 'Kontrak', '1', 'PERJANJIAN TERAKHIR SEBAGAI SECUTRITY/ SATPAM HL', '', '2009-11-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (812, 2, 'Kontrak', '1', '1/7/09 - 30/7/10 MULAI DIKONTRAK SEBAGAI SECURITY / SATPAM', '', '2009-07-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (813, 2, 'Tetap', '1', 'MULAI DIANGKAT SEBAGAI KARYAWAN TETAP A. SATPAM / II', '', '2012-06-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (814, 2, 'Penghargaan', '1', 'MENDAPATKAN PENGHARGAAN KARYAWAN BERPRESTASI TAHUN 2013', '', '2013-08-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (815, 2, 'Penghargaan', '1', 'MENDAPATKAN PENGHARGAAN SEBAGAI KRY. BERPRESTASI TH. 2014', '', '2014-12-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (816, 3, 'Kontrak', '1', '12/10/07 - 21/8/08 MASUK KERJA SEBAGAI SECURITY / SATPAM ( HL )', '', '2007-10-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (817, 3, 'Kontrak', '1', '1/12/08 - 30/11/10 AWAL KONTRAK SEBAGAI SECURITY / SATPAM', '', '2008-12-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (818, 3, 'Masuk', '1', 'DIANGKAT SEBGAGAI SECURITY ( SATPAM ) / II', '', '2012-06-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (819, 1, 'Masuk', '1', 'MULAI BEKERJA SEBAGAI ANGGOTA SATPAM', '', '2000-02-21', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (820, 1, 'SP 1', '1', 'SP I : ADA KAYU PERUSAHAAN YG DIANGKUT TNPA SURAT JALAN DAN SURAT IJIN PEMAKAIAN KENDARAAN DARI DIVISI TERKAIT', '', '2006-05-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (821, 1, 'SP 1', '1', 'SP I : MENUTUPI KESALAHAN REKAN KERJA YAITU SENTOT TIDUR DALAM BIS KARYAWAN  SAAT JAM KERJA. KURANGNYA PENERAPAN ETIKA DALAM BEKERJA DAN KURANG SIGAP SEBAGAI SECURITY', '', '2010-07-21', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (822, 1, 'SP 2', '1', 'SP II : MENGAMBIL LIBUR SELAMA 3 HARI DARI TGL 21 JULI - 23 JULI 2010 TANPA IJIN MENDAPAT PENGHARGAAN SEBAGAI SATPAM TERBAIK DENGAN NILAI 92', '', '2011-12-16', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (823, 35, 'Masuk', '23', '9/2 - 9/5/2000 AWAL MASUK KERJA SEBGAI GPP KONTRAK', '', '2000-02-09', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (824, 35, 'Kontrak', '23', '14/4 - 14/8/2000 GPP KONTRAK', '', '2000-04-14', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (825, 35, 'Tetap', '23', 'KARYAWAN TETAP', '', '2000-09-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (826, 35, 'Tetap', '23', 'JABATANNYA ADALAH ASS. OPR PLONG', '', '0000-00-00', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (827, 35, 'Pelatihan', '23', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN', '', '2008-10-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (828, 35, 'Pelatihan', '23', 'PELATIHAN DISIPLIN KERJA', '', '2010-03-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (829, 35, 'Pelatihan', '23', 'PELATIHAN PENGGUNAAN LABEL \"BERSIH\"', '', '2013-07-31', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (830, 35, 'Penghargaan', '23', 'MENDAPATKAN PENGHARGAAN KARYAWAN BERPRESTASI TAHUN 2013', '', '2013-08-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (831, 35, 'Pelatihan', '23', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (832, 35, 'Pelatihan', '23', 'PELATIHAN MENGENAKAN PAKAIAN KERJA DENGAN BAIK', '', '2014-06-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (833, 71, 'Kontrak', '35', '23/02-04/09/2000 AWAL MASUK KERJA GPP KONTRAK\nYANG BERSANGKUTAN JABATANNYA ADALAH ASS. OPR. MIXING SS DI TAHUN 2000', '', '2000-02-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (834, 71, 'Pelatihan', '35', 'PLATIHAN STRESS KERJA', '', '2006-11-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (835, 71, 'Penghargaan', '35', 'MENDAPATKAN PENGHARGAAN SEBAGAI KARYAWAN BERPRESTASI THN 2012 DENGAN  NILAI 90', '', '2012-12-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (836, 71, 'SP 1', '35', 'SP I : TGL 19 JUNI 2013 TIDAK MASUK KERJA TANPA KET. ALPHA', '', '2013-06-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (837, 71, 'Pelatihan', '35', 'PENANGGULANGAN KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR YANG TEPAT DAN BENAR ', '', '2013-07-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (838, 71, 'Pelatihan', '35', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (839, 71, 'Pelatihan', '35', 'PELATIHAN KEDISIPLINAN', '', '2013-08-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (840, 56, 'Kontrak', '30', 'KARYAWAN GPP KONTRAK', '', '2002-02-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (841, 56, 'Tetap', '30', 'KARYAWAN PRODUKSI TETAP', '', '2003-03-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (842, 56, 'Promosi', '30', 'KENAIKAN JABATAN DARI GPP MENJADI ASSISTEN OPERATOR II BAGIAN PLESTER', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (843, 56, 'Pelatihan', '30', 'PELATIHAN STRESS KERJA', '', '2006-05-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (844, 56, 'Pelatihan', '30', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (845, 61, 'Kontrak', '14', '1-AGST-04 - 5 JAN 06 DIANGKAT JADI KARYAWAN KONTRAK', '', '2004-08-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (846, 61, 'Tetap', '14', 'DIANGKAT JADI KARYAWAN TETAP (GPP I ) BAGIAN PLESTER', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (847, 61, 'Tetap', '14', 'DIANGKAT SEBAGAI ASSISTEN OPERATOR (GOL II ) BAGIAN PLESTER', '', '2008-07-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (848, 61, 'Pelatihan', '14', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (849, 61, 'Penghargaan', '14', 'MENDAPATKAN PENGHARGAAN 10 THN MASA KERJA', '', '2014-12-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (850, 69, 'Kontrak', '12', '23 FEB - 23 MEI 2000 KARYAWAN GPP KONTRAK ', '', '2000-02-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (851, 69, 'Kontrak', '12', '5 JUNI- 4 SEPT 2000 KARYAWAN GPP KONTRAK \nDI TAHUN 2006 JABATANNYA ADALAH ASST. OPERATOR FILLING SS', '', '2000-06-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (852, 69, 'SP 2', '12', 'SP II : TIDAK HATI - HATI DALAM MENJALANKAN MESIN PRINTING PADA SACHET COSMOS CAPSICUM PLASTER SEHINGGA TIDAK BISA DIHAPUS', '', '2003-10-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (853, 69, 'Pelatihan', '12', 'PELATIHAN MOTIVASI KERJA', '', '2008-12-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (854, 69, 'Pelatihan', '12', 'PELATIHAN LOYALITAS KERJA', '', '2009-02-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (855, 69, 'Pelatihan', '12', 'PELATIHAN TEAM WORK ( KERJA SAMA )', '', '2012-03-09', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (856, 69, 'Pelatihan', '12', 'PELATIHAN MEMAHAMI PENTINGNYA PENANDAAN DALAM PROSES PENGEMASAN', '', '2012-03-22', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (857, 69, 'Pelatihan', '12', 'PELATIHAN PENANGGULANGAN KEBAKARAN DENGAN MENGGUNAKAN TABUNG APAR YANG TEPAT DAN BENAR', '', '2013-07-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (858, 69, 'Pelatihan', '12', 'PELATIHAN PENERAPAN HYGENE PERORANGAN UNTUK KARYAWAN BAGIAN OT', '', '2014-10-29', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (859, 69, 'Pelatihan', '12', 'PELATIHAN MENGENAKAN PAKAIAN KERJA DAN MEMASUKI AREA PRODUKSI OT', '', '2014-11-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (860, 85, 'Masuk', '24', 'AWAL MASUK KERJA SEBAGAI KARYAWAN PRODUKSI \nDITAHUN 2006 JABATANNYA ADALAH ASS. OPERATOR TKH', '', '1996-07-01', '2023-04-19 11:05:33');
INSERT INTO `riwayat_karyawan` VALUES (861, 85, 'Pelatihan', '24', 'PELATIHAN PEMADAMAN KEBAKARAN', '', '2007-07-26', '2023-04-19 11:05:33');
INSERT INTO `riwayat_karyawan` VALUES (862, 85, 'Pelatihan', '24', 'PELATIHAN STRESS KERJA', '', '2007-11-19', '2023-04-19 11:05:33');
INSERT INTO `riwayat_karyawan` VALUES (863, 85, 'Pelatihan', '24', 'PELATIHAN TATA CARA DALAM CPOB', '', '2008-09-18', '2023-04-19 11:05:33');
INSERT INTO `riwayat_karyawan` VALUES (864, 85, 'Pelatihan', '24', 'PELATIHAN PENGGUNAAN LABEL \"BERSIH\"', '', '2013-07-18', '2023-04-19 11:05:33');
INSERT INTO `riwayat_karyawan` VALUES (865, 85, 'Pelatihan', '24', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-04-19 11:05:33');
INSERT INTO `riwayat_karyawan` VALUES (866, 85, 'Pelatihan', '24', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2014-06-06', '2023-04-19 11:05:33');
INSERT INTO `riwayat_karyawan` VALUES (867, 84, 'Masuk', '47', 'karyawan baru', '', '1996-07-05', '2023-04-19 10:58:30');
INSERT INTO `riwayat_karyawan` VALUES (868, 84, 'SP 1', '47', 'SP II : 6/2/07 MEMBAWA MAKANAN DAN MAKAN DALAM RUANG PRODUKSI', '', '2007-02-07', '2023-04-19 10:58:30');
INSERT INTO `riwayat_karyawan` VALUES (869, 84, 'SP 2', '47', 'SP III : HARI JUM\'AT 27 JULI 2007 TIDAK MASUK KERJA TANPA KETERANGAN', '', '2007-07-23', '2023-04-19 10:58:30');
INSERT INTO `riwayat_karyawan` VALUES (870, 84, 'SP 1', '47', 'SP I : RABU. 21 MARET 2012 TIDAK MASUK KERJA TANPA KETERANGAN', '', '2011-03-26', '2023-04-19 10:58:30');
INSERT INTO `riwayat_karyawan` VALUES (871, 84, 'Pelatihan', '47', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2013-08-27', '2023-04-19 10:58:30');
INSERT INTO `riwayat_karyawan` VALUES (872, 84, 'SP 1', '47', 'SP I : RABU. 4 SEPTEMBER 2013 TIDAK MASUK KERJA TANPA KETERANGAN', '', '2013-09-06', '2023-04-19 10:58:30');
INSERT INTO `riwayat_karyawan` VALUES (873, 84, 'Pelatihan', '47', 'MENGIKUTI SOSIALISASI PEMBERIAN LABEL IDENTIFIKASI PADA SETIAP WADAH', '', '2013-10-17', '2023-04-19 10:58:30');
INSERT INTO `riwayat_karyawan` VALUES (874, 84, 'Pelatihan', '47', 'MENGIKUTI PELATIHAN KEDISIPLINAN', '', '2013-10-25', '2023-04-19 10:58:30');
INSERT INTO `riwayat_karyawan` VALUES (875, 84, 'Pelatihan', '47', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '2014-06-05', '2023-04-19 10:58:30');
INSERT INTO `riwayat_karyawan` VALUES (876, 84, 'Pelatihan', '47', 'MENGIKUTI PELATIHAN KEDISIPLINAN', '', '2016-10-28', '2023-04-19 10:58:30');
INSERT INTO `riwayat_karyawan` VALUES (877, 85, 'Non Aktif', '24', 'Keluar karena pensiun', '', '2023-04-19', '2023-04-19 12:08:36');
INSERT INTO `riwayat_karyawan` VALUES (878, 84, 'Non Aktif', '47', 'Keluar karena pensiun', '', '2023-04-19', '2023-04-19 12:09:24');

-- ----------------------------
-- Table structure for sie
-- ----------------------------
DROP TABLE IF EXISTS `sie`;
CREATE TABLE `sie`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_bagian` int NOT NULL,
  `nama_sie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sie
-- ----------------------------
INSERT INTO `sie` VALUES (1, 18, 'Anggota Satpam');
INSERT INTO `sie` VALUES (2, 17, 'Koordinator');
INSERT INTO `sie` VALUES (3, 17, 'Anggota Kebersihan');
INSERT INTO `sie` VALUES (4, 17, 'Driver');
INSERT INTO `sie` VALUES (5, 7, 'IPC');
INSERT INTO `sie` VALUES (6, 11, 'Mixing');
INSERT INTO `sie` VALUES (7, 11, 'Coating');
INSERT INTO `sie` VALUES (8, 11, 'Koyo');
INSERT INTO `sie` VALUES (9, 11, 'Alkes');
INSERT INTO `sie` VALUES (10, 11, 'OT');
INSERT INTO `sie` VALUES (11, 11, 'MBP');
INSERT INTO `sie` VALUES (12, 19, 'Gudang');
INSERT INTO `sie` VALUES (13, 19, 'Gudang Gulung Kain');
INSERT INTO `sie` VALUES (14, 19, 'Gudang Jadi');
INSERT INTO `sie` VALUES (15, 20, 'Workshop');
INSERT INTO `sie` VALUES (16, 20, 'Line Mekanik');
INSERT INTO `sie` VALUES (17, 20, 'Utility Mekanik');

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status`  (
  `id_status` int NOT NULL AUTO_INCREMENT,
  `nama_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_awal` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `id_master` int NOT NULL,
  PRIMARY KEY (`id_status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status
-- ----------------------------

-- ----------------------------
-- Table structure for struktur
-- ----------------------------
DROP TABLE IF EXISTS `struktur`;
CREATE TABLE `struktur`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `level` int NOT NULL,
  `pid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tags` varchar(123) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of struktur
-- ----------------------------
INSERT INTO `struktur` VALUES (1, 'GENERAL MANAGER', 1, '-', '-');
INSERT INTO `struktur` VALUES (2, 'QUALITY MANAGER', 2, '1', '0');
INSERT INTO `struktur` VALUES (3, 'ACCOUNTING MANAGER', 2, '1', '0');
INSERT INTO `struktur` VALUES (4, 'PRODUCTION MANAGER', 2, '1', '0');
INSERT INTO `struktur` VALUES (5, 'PURCHASING MANAGER', 2, '1', '0');
INSERT INTO `struktur` VALUES (6, 'KABAG HRD', 3, '1', '1');
INSERT INTO `struktur` VALUES (7, 'KABAG EXIM', 3, '1', '1');
INSERT INTO `struktur` VALUES (8, 'KABAG QUALITY ASSURRANCE', 3, '2', '0');
INSERT INTO `struktur` VALUES (9, 'KABAG KASIR', 3, '3', '0');
INSERT INTO `struktur` VALUES (10, 'KABAG PPIC', 3, '4', '0');
INSERT INTO `struktur` VALUES (11, 'KABAG PRODUKSI', 3, '4', '0');
INSERT INTO `struktur` VALUES (12, 'KABAG TEKNIK OPERASIONAL', 3, '4', '0');
INSERT INTO `struktur` VALUES (13, 'KABAG TEKNIK PROJEK', 3, '4', '0');
INSERT INTO `struktur` VALUES (14, 'KASIE SATPAM', 4, '6', '0');
INSERT INTO `struktur` VALUES (15, 'KASIE GA', 4, '6', '0');
INSERT INTO `struktur` VALUES (16, 'KASIE REGISTRASI', 4, '2', '1');
INSERT INTO `struktur` VALUES (17, 'KASIE R&D', 4, '2', '1');
INSERT INTO `struktur` VALUES (18, 'KASIE IPC & STABILITAS', 4, '2', '1');
INSERT INTO `struktur` VALUES (19, 'KASIE BAHAN AWAL,MICROBIOLOGI & TRANSPARANSI', 4, '2', '1');
INSERT INTO `struktur` VALUES (20, 'KASIE PRODUCTION PLANNING', 4, '11', '0');
INSERT INTO `struktur` VALUES (21, 'KASIE KOYO & OT', 4, '11', '0');
INSERT INTO `struktur` VALUES (22, 'KASIE MIXING & KARET', 4, '11', '0');
INSERT INTO `struktur` VALUES (23, 'KASIE GUDANG BAHAN BAKU & KEMAS', 4, '4', '1');
INSERT INTO `struktur` VALUES (24, 'KASIE GUDANG JADI', 4, '4', '1');
INSERT INTO `struktur` VALUES (25, 'KASIE UTILITY', 4, '4', '1');
INSERT INTO `struktur` VALUES (26, 'KASIE OPERATOR & LINE MEKANIK', 4, '4', '1');
INSERT INTO `struktur` VALUES (27, 'KOORDINATOR HSE', 5, '6', '1');
INSERT INTO `struktur` VALUES (28, 'STAFF HRD', 5, '7', '1');
INSERT INTO `struktur` VALUES (29, 'STAFF PERSONALIA', 5, '7', '1');
INSERT INTO `struktur` VALUES (30, 'KOORDINATOR KEBERSIHAN', 5, '15', '0');
INSERT INTO `struktur` VALUES (31, 'KOORDINATOR DRIVER', 5, '15', '0');
INSERT INTO `struktur` VALUES (32, 'KOORDINATOR BANGUNAN', 5, '15', '0');
INSERT INTO `struktur` VALUES (33, 'STAFF IT', 5, '1', '3');
INSERT INTO `struktur` VALUES (34, 'STAFF QA', 5, '8', '1');
INSERT INTO `struktur` VALUES (35, 'STAFF REGISTRASI', 5, '16', '0');
INSERT INTO `struktur` VALUES (36, 'STAFF R&D', 5, '17', '0');
INSERT INTO `struktur` VALUES (37, 'STAFF QC', 5, '18', '0');
INSERT INTO `struktur` VALUES (38, 'STAFF ACCOUNTING', 5, '3', '2');
INSERT INTO `struktur` VALUES (39, 'STAFF ACCOUNTING TRADING REG TIMUR', 5, '3', '2');
INSERT INTO `struktur` VALUES (40, 'STAFF TRAINEE', 5, '3', '2');
INSERT INTO `struktur` VALUES (41, 'STAFF KASIR', 5, '9', '1');
INSERT INTO `struktur` VALUES (42, 'STAFF PPIC', 5, '10', '1');
INSERT INTO `struktur` VALUES (43, 'STAFF ADM PRODUKSI', 5, '20', '0');
INSERT INTO `struktur` VALUES (44, 'STAFF PRODUKSI', 5, '20', '0');
INSERT INTO `struktur` VALUES (45, 'STAFF PRODUKSI JAMU', 5, '20', '0');
INSERT INTO `struktur` VALUES (46, 'WAKIL KASIE KOYO', 5, '21', '0');
INSERT INTO `struktur` VALUES (47, 'KAPOK PACK PRIMER', 5, '21', '0');
INSERT INTO `struktur` VALUES (48, 'KAPOK PACK SEKUNDER KOYO', 5, '21', '0');
INSERT INTO `struktur` VALUES (49, 'KEPALA REGU', 5, '22', '0');
INSERT INTO `struktur` VALUES (50, 'KAPOK CHILI PLAST', 5, '22', '0');
INSERT INTO `struktur` VALUES (51, 'KAPOK OT', 5, '22', '0');
INSERT INTO `struktur` VALUES (52, 'KAPOK PACK MBP', 5, '22', '0');
INSERT INTO `struktur` VALUES (53, 'STAFF GUDANG', 5, '22', '0');
INSERT INTO `struktur` VALUES (54, 'STAFF ADM GUDANG JADI', 5, '24', '0');
INSERT INTO `struktur` VALUES (55, 'STAFF ADM TEKNIK', 5, '12', '1');
INSERT INTO `struktur` VALUES (56, 'STAFF OPR MAINTENANCE MESIN IMPORT', 5, '12', '1');
INSERT INTO `struktur` VALUES (57, 'STAFF ADM PURCHASING', 5, '5', '2');
INSERT INTO `struktur` VALUES (58, 'STAFF PURCHASING', 5, '5', '2');
INSERT INTO `struktur` VALUES (59, 'HELPER DINAS LUAR', 6, '7', '2');
INSERT INTO `struktur` VALUES (60, 'HELPER RECEPTIONIS', 6, '7', '2');
INSERT INTO `struktur` VALUES (61, 'HELPER PERSONALIA', 6, '29', '0');
INSERT INTO `struktur` VALUES (62, 'ANGGOTA SATPAM', 6, '14', '1');
INSERT INTO `struktur` VALUES (63, 'TAMAN', 6, '30', '0');
INSERT INTO `struktur` VALUES (64, 'TAMAN LUAR', 6, '30', '0');
INSERT INTO `struktur` VALUES (65, 'ANGGOTA KEBERSIHAN', 6, '30', '0');
INSERT INTO `struktur` VALUES (66, 'HELPER MESS', 6, '30', '0');
INSERT INTO `struktur` VALUES (67, 'ANGGOTA DRIVER', 6, '31', '0');
INSERT INTO `struktur` VALUES (68, 'ANGGOTA BANGUNAN', 6, '32', '0');
INSERT INTO `struktur` VALUES (69, 'GLW QA', 6, '34', '0');
INSERT INTO `struktur` VALUES (70, 'GLW R&D', 6, '36', '0');
INSERT INTO `struktur` VALUES (71, 'INSPECTOR QC', 6, '19', '1');
INSERT INTO `struktur` VALUES (72, 'ANALIS BAGIAN QC', 6, '19', '1');
INSERT INTO `struktur` VALUES (73, 'GLW QC', 6, '19', '1');
INSERT INTO `struktur` VALUES (74, 'TRAINEE ACCOUNTING', 6, '38', '0');
INSERT INTO `struktur` VALUES (75, 'HELPER PPIC', 6, '42', '0');
INSERT INTO `struktur` VALUES (76, 'ASS. OP JAMU', 6, '45', '0');
INSERT INTO `struktur` VALUES (77, 'OPR. TKH', 6, '47', '0');
INSERT INTO `struktur` VALUES (78, 'ASS. OPR TKH', 6, '47', '0');
INSERT INTO `struktur` VALUES (79, 'ASISTEN OPERATOR KOYO', 6, '47', '0');
INSERT INTO `struktur` VALUES (80, 'PACK SEK TAKAHI', 6, '47', '0');
INSERT INTO `struktur` VALUES (81, 'ASS. OP PACKING KOYO', 6, '48', '0');
INSERT INTO `struktur` VALUES (82, 'ASS. OPR KOYO', 6, '48', '0');
INSERT INTO `struktur` VALUES (83, 'ASS. OP COATING PLASTER', 6, '48', '0');
INSERT INTO `struktur` VALUES (84, 'GPW / COATING', 6, '48', '0');
INSERT INTO `struktur` VALUES (85, 'OPR. COATING KOYO', 6, '48', '0');
INSERT INTO `struktur` VALUES (86, 'GPP', 6, '48', '0');
INSERT INTO `struktur` VALUES (87, 'ASS. OP PENIMBANGAN', 6, '49', '0');
INSERT INTO `struktur` VALUES (88, 'ASS. OP MIXING', 6, '49', '0');
INSERT INTO `struktur` VALUES (89, 'ASS. OPR PLONG', 6, '49', '0');
INSERT INTO `struktur` VALUES (90, 'ASISTEN OPERATOR ALKES', 6, '50', '0');
INSERT INTO `struktur` VALUES (91, 'OPR. PLASTER', 6, '50', '0');
INSERT INTO `struktur` VALUES (92, 'OPERATOR', 6, '50', '0');
INSERT INTO `struktur` VALUES (93, 'ASS. OPR. OK PLAST', 6, '50', '0');
INSERT INTO `struktur` VALUES (94, 'ASS.OP. ALKES', 6, '50', '0');
INSERT INTO `struktur` VALUES (95, 'ASS.OP. DRESSING', 6, '50', '0');
INSERT INTO `struktur` VALUES (96, 'Ass. Opr. Filling Ss', 6, '51', '0');
INSERT INTO `struktur` VALUES (97, 'Ass. Opr. Mixing Ss', 6, '51', '0');
INSERT INTO `struktur` VALUES (98, 'Ass. Operator', 6, '51', '0');
INSERT INTO `struktur` VALUES (99, 'Gpw OT', 6, '52', '0');
INSERT INTO `struktur` VALUES (100, 'Helper Adm. Gudang', 6, '53', '0');
INSERT INTO `struktur` VALUES (101, 'Karu Gulung Kain', 6, '23', '1');
INSERT INTO `struktur` VALUES (102, 'Gpw', 6, '23', '1');
INSERT INTO `struktur` VALUES (103, 'Ass. Operator Gudang', 6, '54', '0');
INSERT INTO `struktur` VALUES (104, 'Teknik Workshop', 6, '25', '1');
INSERT INTO `struktur` VALUES (105, 'Adm Gudang Teknik', 6, '13', '2');
INSERT INTO `struktur` VALUES (106, 'Gudang Sparepart', 6, '26', '1');
INSERT INTO `struktur` VALUES (107, 'GTW Line Mekanik', 6, '26', '1');
INSERT INTO `struktur` VALUES (108, 'Design Grafis', 6, '58', '0');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('personalia','kabag','manager') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jabatan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'personalia', 'admin@gmail.com', NULL, '$2y$10$7SeDx0iO9x8q6udfiGsIHOjoKATMIIoJsCs/qTc6VRLUWtK3m2jaq', 'personalia', '', NULL, '2022-10-03 00:34:12', '2023-04-18 00:37:56');
INSERT INTO `users` VALUES (2, 'admin1', 'admin1@gmail.com', NULL, '$2y$10$p8IBbQHX7FJCuCSojePw/eH6L7ANhLJB7iTDeZu6x3BscK6MkJW6.', 'personalia', '', NULL, '2022-10-03 21:15:06', '2022-10-03 21:15:06');
INSERT INTO `users` VALUES (3, 'kabag', '', NULL, '$2y$10$LfooFh0oJTs3E/KxWSVqMe7hxwvaEtn2G0RfGzTDQ9PuXei50nbyu', 'kabag', '57', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
