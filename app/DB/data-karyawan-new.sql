/*
 Navicat Premium Data Transfer

 Source Server         : web
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : data-karyawan

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 07/09/2023 10:37:45
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
  `jenis` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ket` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `surat` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `filesurat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of absen
-- ----------------------------
INSERT INTO `absen` VALUES (1, 17, '2023-08-10', 'ijin', 'testing', 'disetujui', 'tidak', '', '2023-08-24 09:34:38');

-- ----------------------------
-- Table structure for akses_jabatan
-- ----------------------------
DROP TABLE IF EXISTS `akses_jabatan`;
CREATE TABLE `akses_jabatan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `id_jabatan` int NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 431 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of akses_jabatan
-- ----------------------------
INSERT INTO `akses_jabatan` VALUES (1, 7, 5, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (2, 7, 6, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (3, 7, 52, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (4, 7, 55, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (5, 7, 82, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (6, 7, 83, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (7, 7, 84, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (8, 7, 85, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (9, 7, 86, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (10, 7, 87, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (11, 7, 88, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (12, 7, 89, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (13, 7, 90, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (14, 7, 50, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (15, 7, 59, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (16, 7, 71, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (17, 7, 72, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (18, 7, 73, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (19, 7, 74, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (20, 7, 75, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (21, 7, 76, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (22, 7, 7, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (23, 7, 8, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (24, 7, 9, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (25, 7, 10, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (26, 7, 11, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (27, 7, 12, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (28, 7, 13, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (29, 7, 14, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (30, 7, 15, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (31, 7, 16, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (32, 7, 17, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (33, 7, 18, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (34, 7, 19, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (35, 7, 20, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (36, 7, 21, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (37, 7, 22, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (38, 7, 23, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (39, 7, 24, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (40, 7, 25, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (41, 7, 26, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (42, 7, 27, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (43, 7, 28, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (44, 7, 29, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (45, 7, 30, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (46, 7, 31, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (47, 7, 32, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (48, 7, 33, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (49, 7, 34, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (50, 7, 35, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (51, 7, 36, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (52, 7, 37, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (53, 7, 38, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (54, 7, 39, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (55, 7, 40, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (56, 7, 41, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (57, 7, 42, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (58, 7, 43, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (59, 7, 44, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (60, 7, 45, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (61, 7, 46, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (62, 7, 47, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (63, 7, 48, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (64, 7, 51, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (65, 7, 53, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (66, 7, 54, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (67, 7, 91, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (68, 7, 92, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (69, 7, 93, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (70, 7, 94, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (71, 7, 95, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (72, 7, 96, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (73, 7, 97, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (74, 7, 98, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (75, 7, 99, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (76, 7, 100, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (77, 7, 101, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (78, 7, 102, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (79, 7, 103, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (80, 7, 104, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (81, 7, 105, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (82, 7, 106, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (83, 7, 107, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (84, 7, 108, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (85, 7, 109, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (86, 7, 110, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (87, 7, 111, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (88, 7, 112, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (89, 7, 113, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (90, 7, 49, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (91, 7, 77, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (92, 7, 78, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (93, 7, 79, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (94, 7, 1, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (95, 7, 2, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (96, 7, 3, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (97, 7, 4, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (98, 7, 57, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (99, 7, 58, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (100, 7, 60, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (101, 7, 61, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (102, 7, 62, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (103, 7, 63, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (104, 7, 64, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (105, 7, 65, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (106, 7, 66, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (107, 7, 67, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (108, 7, 68, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (109, 7, 69, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (110, 7, 70, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (111, 7, 80, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (112, 7, 81, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (113, 7, 114, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (114, 7, 115, '2023-08-28 09:08:27');
INSERT INTO `akses_jabatan` VALUES (229, 4, 106, '2023-08-28 09:09:45');
INSERT INTO `akses_jabatan` VALUES (230, 4, 107, '2023-08-28 09:09:45');
INSERT INTO `akses_jabatan` VALUES (231, 4, 110, '2023-08-28 09:09:45');
INSERT INTO `akses_jabatan` VALUES (232, 4, 111, '2023-08-28 09:09:45');
INSERT INTO `akses_jabatan` VALUES (233, 4, 112, '2023-08-28 09:09:45');
INSERT INTO `akses_jabatan` VALUES (234, 4, 113, '2023-08-28 09:09:45');
INSERT INTO `akses_jabatan` VALUES (235, 3, 49, '2023-08-28 09:10:14');
INSERT INTO `akses_jabatan` VALUES (236, 3, 77, '2023-08-28 09:10:14');
INSERT INTO `akses_jabatan` VALUES (237, 3, 78, '2023-08-28 09:10:14');
INSERT INTO `akses_jabatan` VALUES (238, 3, 79, '2023-08-28 09:10:14');
INSERT INTO `akses_jabatan` VALUES (239, 6, 7, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (240, 6, 8, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (241, 6, 9, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (242, 6, 10, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (243, 6, 11, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (244, 6, 12, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (245, 6, 13, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (246, 6, 14, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (247, 6, 15, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (248, 6, 16, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (249, 6, 17, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (250, 6, 18, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (251, 6, 19, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (252, 6, 20, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (253, 6, 21, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (254, 6, 22, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (255, 6, 23, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (256, 6, 24, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (257, 6, 25, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (258, 6, 26, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (259, 6, 27, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (260, 6, 28, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (261, 6, 29, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (262, 6, 30, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (263, 6, 31, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (264, 6, 32, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (265, 6, 33, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (266, 6, 34, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (267, 6, 35, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (268, 6, 36, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (269, 6, 37, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (270, 6, 38, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (271, 6, 39, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (272, 6, 40, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (273, 6, 41, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (274, 6, 42, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (275, 6, 43, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (276, 6, 44, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (277, 6, 45, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (278, 6, 46, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (279, 6, 47, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (280, 6, 48, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (281, 6, 51, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (282, 6, 53, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (283, 6, 54, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (284, 6, 91, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (285, 6, 92, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (286, 6, 93, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (287, 6, 94, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (288, 6, 95, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (289, 6, 96, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (290, 6, 97, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (291, 6, 98, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (292, 6, 99, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (293, 6, 100, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (294, 6, 101, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (295, 6, 102, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (296, 6, 103, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (297, 6, 104, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (298, 6, 105, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (299, 6, 106, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (300, 6, 107, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (301, 6, 108, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (302, 6, 109, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (303, 6, 110, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (304, 6, 111, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (305, 6, 112, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (306, 6, 113, '2023-08-28 09:10:26');
INSERT INTO `akses_jabatan` VALUES (307, 5, 5, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (308, 5, 6, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (309, 5, 52, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (310, 5, 55, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (311, 5, 82, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (312, 5, 83, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (313, 5, 84, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (314, 5, 85, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (315, 5, 86, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (316, 5, 87, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (317, 5, 88, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (318, 5, 89, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (319, 5, 90, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (320, 5, 50, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (321, 5, 59, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (322, 5, 71, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (323, 5, 72, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (324, 5, 73, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (325, 5, 74, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (326, 5, 75, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (327, 5, 76, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (328, 5, 7, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (329, 5, 8, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (330, 5, 9, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (331, 5, 10, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (332, 5, 11, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (333, 5, 12, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (334, 5, 13, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (335, 5, 14, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (336, 5, 15, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (337, 5, 16, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (338, 5, 17, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (339, 5, 18, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (340, 5, 19, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (341, 5, 20, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (342, 5, 21, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (343, 5, 22, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (344, 5, 23, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (345, 5, 24, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (346, 5, 25, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (347, 5, 26, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (348, 5, 27, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (349, 5, 28, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (350, 5, 29, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (351, 5, 30, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (352, 5, 31, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (353, 5, 32, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (354, 5, 33, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (355, 5, 34, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (356, 5, 35, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (357, 5, 36, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (358, 5, 37, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (359, 5, 38, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (360, 5, 39, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (361, 5, 40, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (362, 5, 41, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (363, 5, 42, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (364, 5, 43, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (365, 5, 44, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (366, 5, 45, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (367, 5, 46, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (368, 5, 47, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (369, 5, 48, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (370, 5, 51, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (371, 5, 53, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (372, 5, 54, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (373, 5, 91, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (374, 5, 92, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (375, 5, 93, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (376, 5, 94, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (377, 5, 95, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (378, 5, 96, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (379, 5, 97, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (380, 5, 98, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (381, 5, 99, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (382, 5, 100, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (383, 5, 101, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (384, 5, 102, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (385, 5, 103, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (386, 5, 104, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (387, 5, 105, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (388, 5, 106, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (389, 5, 107, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (390, 5, 108, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (391, 5, 109, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (392, 5, 110, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (393, 5, 111, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (394, 5, 112, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (395, 5, 113, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (396, 5, 49, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (397, 5, 77, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (398, 5, 78, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (399, 5, 79, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (400, 5, 1, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (401, 5, 2, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (402, 5, 3, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (403, 5, 4, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (404, 5, 57, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (405, 5, 58, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (406, 5, 60, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (407, 5, 61, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (408, 5, 62, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (409, 5, 63, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (410, 5, 64, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (411, 5, 65, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (412, 5, 66, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (413, 5, 67, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (414, 5, 68, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (415, 5, 69, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (416, 5, 70, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (417, 5, 80, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (418, 5, 81, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (419, 5, 114, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (420, 5, 115, '2023-08-28 09:10:41');
INSERT INTO `akses_jabatan` VALUES (421, 8, 85, '2023-08-28 09:11:02');
INSERT INTO `akses_jabatan` VALUES (422, 9, 5, '2023-08-28 09:11:24');
INSERT INTO `akses_jabatan` VALUES (423, 9, 6, '2023-08-28 09:11:24');
INSERT INTO `akses_jabatan` VALUES (424, 9, 87, '2023-08-28 09:11:24');
INSERT INTO `akses_jabatan` VALUES (425, 9, 88, '2023-08-28 09:11:24');
INSERT INTO `akses_jabatan` VALUES (426, 9, 89, '2023-08-28 09:11:24');
INSERT INTO `akses_jabatan` VALUES (427, 10, 102, '2023-08-28 09:12:14');
INSERT INTO `akses_jabatan` VALUES (428, 10, 103, '2023-08-28 09:12:14');
INSERT INTO `akses_jabatan` VALUES (429, 10, 104, '2023-08-28 09:12:14');
INSERT INTO `akses_jabatan` VALUES (430, 10, 105, '2023-08-28 09:12:14');

-- ----------------------------
-- Table structure for bagian
-- ----------------------------
DROP TABLE IF EXISTS `bagian`;
CREATE TABLE `bagian`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_departemen` int NOT NULL,
  `nama_bagian` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
  `tingkatan_pendidikan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `usia_max` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
  `no_bpjs_kes` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nama` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nik` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kelas` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `iuran` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_master` int NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `alasan_nonaktif` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `bpjs_kes` VALUES (68, '1231231234', 'Yulia In Pangestu', '', '1', '226150', 68, 'Pengajuan', 'master dinonaktifkan karena pensiun', '2023-08-16 07:03:53');
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
  `no_bpjs_tk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tgl_kepesertaan` date NOT NULL,
  `iuran` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_master` int NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `bpjs_tk` VALUES (16, '01NC0015765', '2001-01-01', '447325', 16, 'Aktif', '2023-09-05 03:09:30');
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
INSERT INTO `bpjs_tk` VALUES (68, '01NC0015765', '2001-01-01', '447325', 68, 'Non Aktif', '2023-08-16 07:03:53');
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
  `nama_departemen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of departemen
-- ----------------------------
INSERT INTO `departemen` VALUES (1, 'QUALITY', '2023-02-28 01:28:20');
INSERT INTO `departemen` VALUES (2, 'ACCOUNTING', '2023-02-28 01:28:14');
INSERT INTO `departemen` VALUES (4, 'PRODUKSI', '2023-02-28 01:37:58');
INSERT INTO `departemen` VALUES (5, 'PURCHASING', '2023-02-28 01:27:52');
INSERT INTO `departemen` VALUES (6, 'HRD', '2023-04-14 13:03:27');

-- ----------------------------
-- Table structure for distribusi_absen
-- ----------------------------
DROP TABLE IF EXISTS `distribusi_absen`;
CREATE TABLE `distribusi_absen`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `tanggal` date NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of distribusi_absen
-- ----------------------------

-- ----------------------------
-- Table structure for history_pekerjaan
-- ----------------------------
DROP TABLE IF EXISTS `history_pekerjaan`;
CREATE TABLE `history_pekerjaan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_perusahaan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tahun_masuk` date NOT NULL,
  `tahun_keluar` date NOT NULL,
  `jabatan_terakhir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `alasan_pindah` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_master` int NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of history_pekerjaan
-- ----------------------------

-- ----------------------------
-- Table structure for jabatan
-- ----------------------------
DROP TABLE IF EXISTS `jabatan`;
CREATE TABLE `jabatan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `departemen` int NULL DEFAULT NULL,
  `bagian` int NULL DEFAULT NULL,
  `sie` int NULL DEFAULT NULL,
  `level` int NULL DEFAULT NULL,
  `pid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tags` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updateby` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jabatan
-- ----------------------------
INSERT INTO `jabatan` VALUES (1, 'Anggota Satpam', 6, 18, 1, 6, '57', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (2, 'Koor Kebersihan', 6, 17, 2, 6, '2', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (3, 'Kebersihan', 6, 17, 3, 6, '57', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (4, 'Driver', 6, 17, 6, 6, '57', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (5, 'Inspector Qc', 1, 7, 5, 6, '55', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (6, 'Analis Bagian Qc', 1, 7, 5, 6, '55', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (7, 'Kepala Regu', 4, 11, 6, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (8, 'Ass. Op Penimbangan', 4, 11, 6, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (9, 'Ass. Op Mixing', 4, 11, 6, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (10, 'Gpw ', 4, 11, 6, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (11, 'Opr Coating Koyo', 4, 11, 7, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (12, 'Act. Kapok OT', 4, 11, 10, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (13, 'Asisten Operator', 4, 11, 8, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (14, 'Asisten Operator Alkes', 4, 11, 9, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (15, 'Ass. Op  Jamu', 4, 11, 7, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (16, 'Ass. Op Coating Plaster', 4, 11, 7, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (17, 'Gpw / Coating', 4, 11, 7, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (18, 'Kapok Pack. Primer', 4, 11, 8, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (19, 'Kapok Pack. Skunder Koyo', 4, 11, 8, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (20, 'Ass. Op Packing Koyo', 4, 11, 8, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (21, 'Ass. Opr. Koyo / Ii', 4, 11, 8, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (22, 'Ass. Opr. Tkh', 4, 11, 8, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (23, 'Ass. Opr. Plong', 4, 11, 8, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (24, 'Gpp', 4, 11, 8, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (25, 'Pack Sek Takahi', 4, 11, 8, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (26, 'Kapok Chili Plast', 4, 11, 9, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (27, 'Opr. Plaster', 4, 11, 9, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (28, 'Operator', 4, 11, 9, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (29, 'Ass. Opr. Ok Plast', 4, 11, 9, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (30, 'Ass. Operator', 4, 11, 9, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (31, 'Ass. Op. Alkes', 4, 11, 9, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (32, 'Ass. Op Dressing', 4, 11, 9, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (33, 'Gpp Alkes', 4, 11, 9, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (34, 'Ass. Opr. Filling Ss', 4, 11, 10, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (35, 'Ass. Opr. Mixing Ss', 4, 11, 10, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (36, 'Ass. Opr. OT', 4, 11, 10, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (37, 'Gpp OT', 4, 11, 10, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (38, 'Kapok Pack Mbp', 4, 11, 11, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (39, 'Helper Adm. Gudang', 4, 19, 12, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (40, 'Karu Gulung Kain ', 4, 19, 13, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (41, 'Gpw G. GulungKain', 4, 19, 13, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (42, 'Gpw G. GulungKain I', 4, 19, 13, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (43, 'Ass. Operator Gudang', 4, 19, 14, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (44, 'Teknik Workshop', 4, 20, 15, 6, '53', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (45, 'Line Mekanik', 4, 20, 16, 6, '54', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (46, 'Teknik Utility-Mekanik', 4, 20, 17, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (47, 'Opr. Tkh', 4, 11, 8, 6, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (48, 'Production Manager', 4, 0, 0, 2, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (49, 'Purchasing Manager', 5, 0, 0, 2, '0', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (50, 'Accounting Manager', 2, 0, 0, 2, '0', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (51, 'Kasie PPIC', 4, 11, 0, 4, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (52, 'Kasie QA', 1, 4, 0, 4, '55', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (53, 'Kabag Teknik Operasional', 4, 20, 0, 3, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (54, 'KABAG TEKNIK PROJEK', 4, 20, 0, 3, '48', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (55, 'Quality Manager', 1, 0, 0, 2, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (56, 'General Manager', 0, 0, 0, 1, '0', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (57, 'Kabag Hrd', 6, 2, 0, 3, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (58, 'Nsm', 6, 0, 0, 1, '6', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (59, 'Kabag Kasir', 2, 9, 0, 2, '56', '0', '', '2023-08-22 15:13:56');
INSERT INTO `jabatan` VALUES (60, 'Kabag Exim', 6, 1, 0, 2, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (61, 'Kasie Ga', 6, 17, 0, 3, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (62, 'Kasie Pam', 6, 2, 0, 3, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (63, 'Staff Hrd', 6, 2, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (64, 'Staff Personalia', 6, 2, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (65, 'Helper Dinas Luar', 6, 17, 0, 5, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (66, 'Koordinator HSE', 6, 17, 0, 3, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (67, 'Helper Personalia', 6, 17, 0, 5, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (68, 'Helper Reception', 6, 17, 0, 5, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (69, 'Bangunan', 6, 17, 0, 5, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (70, 'Taman', 6, 17, 0, 5, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (71, 'Staff Accounting', 2, 8, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (72, 'Staff Accounting Trading Reg. Timur', 2, 8, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (73, 'Staff Acounting', 2, 8, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (74, 'Staff Kasir', 2, 9, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (75, 'Trainee Accounting', 2, 8, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (76, 'Staff Trainee', 2, 0, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (77, 'Staff Adm Purchasing', 5, 16, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (78, 'Staff Purchasing', 5, 16, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (79, 'Design Grafis', 5, 16, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (80, 'Staff It', 6, 3, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (81, 'Project Management Staff', 6, 3, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (82, 'Act. Kabag. Quality Assurrance', 1, 4, 0, 3, '56', '0', '', '2023-08-14 16:03:40');
INSERT INTO `jabatan` VALUES (83, 'Staff Qa', 1, 4, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (84, 'Kasie QA (Registrasi)', 1, 4, 0, 43, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (85, 'Staff R&D', 1, 6, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (86, 'Kasie R&D', 1, 6, 0, 3, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (87, 'Staff Qc', 1, 7, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (88, 'Act. Kasie. IPC & Stabilitas', 1, 11, 0, 3, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (89, 'Act. Kasie Bahan Awal, Microbiologi & Instrument', 1, 11, 0, 3, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (90, 'Glw', 1, 11, 0, 5, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (91, 'Act. Kabag. PPIC', 4, 12, 0, 2, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (92, 'Staff Ppic', 4, 12, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (93, 'Helper PPIC', 4, 12, 0, 5, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (94, 'Kabag Produksi', 4, 11, 0, 2, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (95, 'Kasie Production Planning', 4, 11, 0, 3, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (96, 'Kasie. Koyo & Ot', 4, 11, 0, 3, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (97, 'Kasie Mixing & Karet', 4, 11, 0, 3, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (98, 'Staff Adm. Produksi', 4, 11, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (99, 'Staff Produksi', 4, 11, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (100, 'Staff Produksi Jamu', 4, 11, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (101, 'Wakil Kasie Koyo', 4, 11, 0, 3, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (102, 'Kasie Gudang Bahan Baku & Kemas', 4, 11, 0, 3, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (103, 'Kasie Gudang Jadi', 4, 19, 0, 3, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (104, 'Staff Gudang', 4, 19, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (105, 'Staff Adm Gudang Jadi', 4, 19, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (106, 'Staff Adm Tehnik', 4, 20, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (107, 'Staff Opr. Maintenance Mesin Import', 4, 20, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (108, 'Act. Kasie Utility', 4, 20, 0, 3, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (109, 'Act. Kasie Operator & Line Mekanik', 4, 20, 0, 3, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (110, 'Kepala Bagian Teknik Projek', 4, 20, 0, 2, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (111, 'GTW', 4, 20, 0, 5, '56', '0', '', '2023-08-14 12:01:47');
INSERT INTO `jabatan` VALUES (112, 'Adm Gudang Teknik', 4, 20, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (113, 'Gudang Sparepart', 4, 20, 0, 4, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (114, 'Taman Luar', 6, 17, 0, 5, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (115, 'Helper Mess', 6, 17, 0, 5, '56', '0', '', '2023-12-12 10:00:00');
INSERT INTO `jabatan` VALUES (118, 'programmer', NULL, NULL, NULL, NULL, NULL, NULL, '4', '2023-09-01 11:02:42');
INSERT INTO `jabatan` VALUES (119, 'teknisi it', NULL, NULL, NULL, NULL, NULL, NULL, '4', '2023-09-01 13:33:04');
INSERT INTO `jabatan` VALUES (120, 'anyar', NULL, NULL, NULL, NULL, NULL, NULL, '4', '2023-09-01 13:39:27');

-- ----------------------------
-- Table structure for master
-- ----------------------------
DROP TABLE IF EXISTS `master`;
CREATE TABLE `master`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `foto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nik` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nokk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `norekening` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tempat_lahir` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `alamat` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `no_hp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `agama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_jabatan` int NOT NULL,
  `golongan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `updated_at` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 400 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of master
-- ----------------------------
INSERT INTO `master` VALUES (16, 'Krisnawati', '', '3525134410880002', '', '', 'Gresik', '1988-10-04', 'perempuan', 'DESA DOMAS RT7/RW2 MENGANTI GRESIK', '082234934174', 'Islam', 67, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (17, 'Endah Murdaningrum', '', '3515144412940000', '', '', 'Sidoarjo', '1994-12-04', 'perempuan', 'Balongsari Madya Blok 7i No.14 RT01 RW02', '08563076067', 'Islam', 68, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (18, 'Suprianto', '', '3515180609780002', '', '', 'Sidoarjo', '1978-09-06', 'laki-laki', 'Benowo 5/13 Rt. 07 Rw.02 Kel. Benowo Kec. Pakal / Surabaya', '', 'Islam', 1, 'III', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (19, 'Khoirul Anam', '', '3525132310770014', '', '', 'Gresik', '1977-10-23', 'laki-laki', 'Dsn. Ngasinan  Rt. 02 Rw. 07 Ds. Kepatihan Kec. Menganti / Gresik', '082331473900', 'Islam', 1, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (20, 'Muhlasin', '', '3525041502790001', '', '', 'Gresik', '1979-02-15', 'laki-laki', 'Dsn Jogodalu Rt. 006 Rw. 002 Ds. Jogodalu Kec. Benjeng / Gresik', '', 'Islam', 1, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (21, 'Anton Istiawan', '', '3525110404840021', '', '', 'Gresik', '1984-04-04', 'laki-laki', 'Ds. Iker Iker Geger Rt. 01 Rw 01 Kec. Cerme / Gresik', '081515151129', 'Islam', 1, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (22, 'Gatot Purwanto', '', '3578112009780002', '', '', 'Surabaya', '1978-09-20', 'laki-laki', 'Jln. Sidomulyo Wetan No. 15 Rt. 01 Rw. 13 Kel. Simokerto / Surabaya', '', 'Islam', 1, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (23, 'Satriyo Basuki', '', '3525111501780021', '', '', 'Gresik', '1978-01-15', 'laki-laki', 'Ds. Banyu Urip Rt. 01 Rw. 05 Gempol Kurung Menganti /Gresik', '085732307586', 'Islam', 1, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (24, 'Syamsul  Effendi', '', '3525112709800000', '', '', 'Gresik', '1980-09-27', 'laki-laki', 'Cerme Lor Rt. 02 Rw. 09 Cerme / Gresik', '', 'Islam', 1, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (25, 'Lilik Widarti', '', '3578145707740003', '', '', 'Surabaya', '1974-07-17', 'perempuan', 'Banjar Sugihan 2/7 rt03/rw04 tandes surabaya', '085100074045', 'Islam', 1, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (26, 'Agus Subroto', '', '3578102108750008', '', '', 'Surabaya', '1975-08-21', 'laki-laki', 'Dukuh setro, Kec. Tambak sarui - Surabaya', '089636495105', 'Islam', 1, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (27, 'Hermanto', '', '3525135501900002', '', '', 'Ngawi ', '1996-07-24', 'laki-laki', 'Desa Hendrosari RT01/RW04 Menganti Gresik', '', 'Islam', 1, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (28, 'Wahyudi', '', '3521092467960006', '', '', 'Surabaya', '1977-07-24', 'laki-laki', 'Puri Menganti Indah Block C/7 RT 38 RW 12 Menganti Gresik', '', 'Islam', 1, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (29, 'Juan Carolina', '', '3525134706830017', '', '', 'Pasuruan', '1983-06-07', 'perempuan', 'Ds. Botengang Kec. Menganti / Gresik', '085850506659', 'Islam', 1, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (30, 'Robert Dika Anggoro', '', '3525082812940013', '', '', 'Gresik', '1994-12-28', 'laki-laki', 'Desa Kedamean RT13/RW05 Kedamean Gresik', '', 'Islam', 1, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (31, 'Moh. Heri Mustofah', '', '3525102204880001', '', '', 'Gresik', '1988-04-22', 'laki-laki', 'Desa Pengaden RT09/RW02 Manyar Gresik', '081515206600', 'Islam', 1, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (32, 'Dandy Sugiarto', '', '3525132402030006', '', '', 'Gresik', '2003-02-24', 'laki-laki', 'Dusun Ngablak rejo RT04/RW02 desa gempol kurung Menganti Gresik', '083832169108', 'Islam', 1, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (33, 'Nanang Sutrisno', '', '3514072112750005', '', '', 'Pasuruan', '1975-12-21', 'laki-laki', 'Dsn. Krajan Rt. 05 Rw. 04 Ds. Kluwut Kec. Wonorejo / Pasuruan', '085850466127', 'Islam', 2, 'III', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (34, 'Rofik', '', '3525130610810001', '', '', 'Gresik', '1981-10-06', 'laki-laki', 'Dsn Kutil Rt.05 Rw.01 Ds. Gempol Kurung  Kec.Menganti / Gresik', '081335828446', 'Islam', 3, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (35, 'Sigit Nurdianto', '', '3515162603830004', '', '', 'Sidoarjo', '1983-03-26', 'laki-laki', 'Pakal Barat I/5 Rt. 01 Rw.03 Kel. Pakal Kec. Pakal / Surabaya', '', 'Islam', 3, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (36, 'Sulaeman', '', '3578311102810001', '', '', 'Surabaya', '1981-02-11', 'laki-laki', 'Dk. Kapasan Rt 04 Rw 02 Kel. Sambikerep Kec. Sambikerep / Surabaya', '', 'Islam', 3, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (37, 'Asmunik', '', '3525134101810022', '', '', 'Gresik', '1981-01-01', 'perempuan', 'Dsn Ngablakrejo, Ds Gempol Kurung Rt. 12 Rw 03 Menganti/Gresik', '', 'Islam', 3, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (38, 'Astutik C', '', '3525136602840003', '', '', 'Gresik', '1984-02-26', 'perempuan', 'Dsn. Ngablakrejo Rt 04 Rw 03 Ds. Gempol Kurung, Menganti Gresik', '', 'Islam', 3, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (39, 'Iwan Rusnandar', '', '3578102608840006', '', '', 'Gresik', '1984-08-26', 'laki-laki', 'Kapas Baru Iii / 114 C', '', 'Islam', 3, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (40, 'Muhammad Anto', '', '3522130806790002', '', '', 'Gresik', '1979-06-18', 'laki-laki', 'Ds. Kepatihan Kec. Menganti / Gresik', '', 'Islam', 3, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (41, 'Mulyadi', '', '3525132005820017', '', '', 'Gresik', '1982-05-20', 'laki-laki', 'Dsn Ngablakrejo Desa Gempol Kurung Kec. Menganti / Gresik', '', 'Islam', 3, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (42, 'Kasvianto', '', '3525112305890002', '', '', 'Gresik', '1989-05-23', 'laki-laki', 'Dsn. Ngebret Rt. 02 Rw. 03 Ds. Morowudi Cerme / Gresik', '', 'Islam', 3, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (43, 'Muhammad Andryansyah Qomaruddin', '', '3525111312860022', '', '', 'Gresik', '1986-12-13', 'laki-laki', 'Raya Cerme Lor, Kec. Cerme / Gresik', '083822686344', 'Islam', 3, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (44, 'Agung Sumarsono', '', '3525041506870001', '', '', 'Gresik', '1987-06-15', 'laki-laki', 'Dsn Kecangan, Kec. Cerme / Gresik', '085859042194', 'Islam', 3, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (45, 'Lika Fatmala', '', '3525155105860001', '', '', 'Gresik', '1986-05-11', 'perempuan', 'WEDOROANOM DRIYOREJO  GRESIK RT02/RW01', '083838698391', 'Islam', 3, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (46, 'Saiful Amar', '', '3578312505840002', '', '', 'Surabaya', '1984-05-25', 'laki-laki', 'Bringin Rt. 01 Rw 01 Kel. Bringin Kec.Sambi Kerep / Surabaya', '', 'Islam', 4, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (47, 'Maruki', '', '3578312804720001', '', '', 'Surabaya', '1972-04-28', 'laki-laki', 'Dk. Kapasan Gang Ii No. 11 Rt. 02 Rw. 02 Kel. Sambi Kerep Kec. Sambikerep /Sby', '', 'Islam', 4, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (48, 'Muchamad Khoiruddin', '', '3525131510790001', '', '', 'Gresik', '1979-10-15', 'laki-laki', 'Desa Putat Lor Rt.4/Rw.2 Kec. Menganti - Gresik', '', 'Islam', 4, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (49, 'Sukardi', '', '3520070203740003', '', '', 'Magetan', '1974-03-02', 'laki-laki', 'Desa Pacalan RT48/RW04 kec plaosan kab Magetan', '', 'Islam', 4, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (50, 'Siswanto', '', '3520072310820001', '', '', 'Magetan', '1982-10-23', 'laki-laki', 'ngrejeng ds puntuk doro RT02/RW01 Kec Plaosan', '', 'Islam', 4, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (51, 'Kusmadi', '', '3525110608730003', '', '', 'Gresik', '1973-08-06', 'laki-laki', 'Ds. Kandangan Kec. Cerme Kab. Gresik', '', 'Islam', 69, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (52, 'Abdullah', '', '3525130109830001', '', '', 'GRESIK', '1983-09-01', 'laki-laki', 'DUSUN RANDUPADANGAN RT19/RW06 MENGANTI GRESIK', '', 'Islam', 70, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (53, 'Lo Soi Tie ( Abdul Rasyid )', '', '', '', '', 'Pontianak', '1957-11-04', 'laki-laki', 'Tandes Lor Gg 1 / 9 A Rt 02 Rw 01, Tandes Surabaya', '', 'Islam', 70, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (96, 'Anis Sya\'Ati', '', '3525135306820000', '', '', 'Gresik', '1982-06-13', 'perempuan', 'Kepatihan Rt 04 Rw 02 Ds. Kepatihan Menganti / Gresik', '085732658912', 'Islam', 5, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (97, 'Irawati A', '', '3578154612740001', '', '', 'Surabaya', '1974-12-06', 'perempuan', 'Gadukan Timur I/8/B Rt. 003 Rw. 004 Kel. Morokrembangan /  Kec. Krembangan Surabaya', '085648877136', 'Islam', 6, 'IV', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (98, 'Rohmatul Ummah', '', '3526136208960001', '', '', 'Gresik', '1996-08-12', 'perempuan', 'Dsn Pelem Dodol Rt 09 Rw 05 Desa Pelemwatu Menganti', '085733660913', 'Islam', 90, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (99, 'Ari Irwandi', '', '3525131611890001', '', '', 'Gresik', '1989-11-16', 'laki-laki', 'Ds. Kepatihan Rt 01 Rw 01 Menganti / Gresik', '', 'Islam', 90, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (100, 'Deni Priyanto', '', '3578313006870001', '', '', 'Surabaya', '1987-06-30', 'laki-laki', 'Jl. Ngemplak Rt 02 Rw 05 No. 14 Kel. Made Sambikerep / Surabaya 60219', '', 'Islam', 90, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (101, 'Eka Silviana Dewi', '', '3525114604940022', '', '', 'Gresik', '1994-04-06', 'perempuan', 'Morowudi Kulon Rt. 05 Rw. 04 Cerme / Gresik', '', 'Islam', 90, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (102, 'Rumi Susanti', '', '1256165603980002', '', '', 'Surabaya', '1985-07-10', 'perempuan', 'Dukuh Kupang Timur 10A / 05 Rt.02 Rw.03 Kelurahan Pakis Kec. Sawahan / Sby', '085746553912', 'Islam', 90, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (103, 'Setianingrum', '', '3578315503850002', '', '', 'Malang', '1985-03-15', 'perempuan', 'Jl. Made Barat Rt.01 Rw.02 Kel Made Kec. Sambi Kerep / Sby', '087774494485', 'Islam', 90, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (104, 'Gathot Prayitno', '', '3525130607820014', '', '', 'Surabaya', '1982-07-06', 'laki-laki', 'Ds. Gempol Kurung Rt 09 Rw 02 Gempol Kurung Menganti / Gresik', '0812-5914-1772', 'Islam', 90, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (105, 'Damas Rahimi', '', '3525132109950006', '', '', 'Jombang', '1995-09-21', 'laki-laki', 'PERUM TAMAN SIWALAN Indah F/09 Menganti Gresik', '0813-3193-4053', 'Islam', 90, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (106, 'M. Ma\'Azil Mufliq', '', '3578300508930001', '', '', 'Surabaya', '1993-08-05', 'laki-laki', 'Pakal barat I/22 / Surabaya ', '083134486003', 'Islam', 90, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (107, 'Ria Apriliawati', '', '3578175904970001', '', '', 'Surabaya', '1997-04-19', 'perempuan', 'Sidotopo wetan mulia I B no. 8 - Surabaya', '083831076331', 'Islam', 90, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (108, 'Febrina Berty Anjarsari', '', '3578306002940002', '', '', 'Surabaya', '1994-02-20', 'perempuan', 'Benowo rt.01 rw.02 kel. Benowo kec. Pakal - surabaya', '082257483846', 'Islam', 90, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (109, 'Fradilla Salwa Mariska Putri', '', '3578175202980001', '', '', 'Surabaya', '1998-02-12', 'perempuan', 'Jalan batu pualam 3 CE 19 Kota Baru Driyorejo Gresik RT 21 RW 09', '089677993049', 'Islam', 90, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (110, 'Ratna Vimala Devi', '', '3523165011970005', '', '', 'Tuban', '1997-11-10', 'perempuan', 'JL. Glatik Raya KA5 RT/RW 03/04 Kelurahan Kembangan kec. Kebomas GRESIK', '085878888928', 'Islam', 90, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (116, 'Rupiyati', '', '3525044612890000', '', '', 'Gresik', '1989-12-06', 'perempuan', 'Dsn Kalimoro, Kec. Bebjeng - Gresik', '085203485650', 'Islam', 93, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (127, 'Rofi\'I', '', '3525130408760012', '', '', 'Surabaya', '1976-08-04', 'laki-laki', 'Dsn. Ngablak Rejo Rt. 005 Rw 003 Ds. Gempol Kurung  Kec.Menganti / Gresik', '085739288463', 'Islam', 7, 'IV', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (128, 'Hasan Bisri', '', '3578300203820001', '', '', 'Surabaya', '1982-03-02', 'laki-laki', 'Dk. Babat I/18 Rt 03 Rw 01 Kel Babat Jerawat Kec. Pakal / Surabaya', '', 'Islam', 8, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (129, 'Ismail Marzuki', '', '3525132006810001', '', '', 'Gresik', '1981-06-20', 'laki-laki', 'Wringin Kurung Rt. 02 Rw. 04 Kel. Gempol Kurung Kec. Menganti / Gresik', '085608700790', 'Islam', 9, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (130, 'Bambang Rinekso', '', '3508070609820006', '', '', 'Gresik', '1982-09-06', 'laki-laki', 'Jl. Bibis Tama No. 7, Tandes / Surabaya', '081331159470', 'Kristen', 10, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (131, 'Eka Yuliardiansah', '', '3578302107870001', '', '', 'Gresik', '1987-07-21', 'laki-laki', 'Ds. Slempit Rt 13 Rw 03, Kedamean / Gresik', '085604403562', 'Islam', 10, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (132, 'Eko Wahyudi', '', '3525131209810001', '', '', 'Gresik', '1981-09-12', 'laki-laki', 'Ds. Pengalangan Rt 06 Rw 03', '08814968412', 'Islam', 10, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (133, 'Slamet Hariadi', '', '3578301707830001', '', '', 'Surabaya', '1983-07-17', 'laki-laki', 'Dk. Babat Rt 03 Rw 01 Kec. Babat Jerawat Kec.Pakal / Surabaya', '', 'Islam', 10, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (134, 'Benyamin Siri', '', '5304221509870001', '', '', 'Lalabul', '1987-09-20', 'laki-laki', ' Jln. Kauman Asri Rt. 05 Rw. 04 Benowo / Pakal / Surabaya', '087761722393', 'Islam', 10, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (135, 'M. Saiful Azis', '', '3525132310880002', '', '', 'Gresik', '1988-10-23', 'laki-laki', 'Jl. Menganti Laban Kulon Gang Iii Rt. 04 Rw. 03 Menganti / Gresik', '085655292328', 'Islam', 10, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (136, 'Akhmad Ramadon', '', '3525042102940004', '', '', 'GRESIK', '1994-02-21', 'laki-laki', 'DS. GURAN PLOSO,DSN GLURAN RT05/RW02 BENJENG GRESIK', '085649395591', 'Islam', 10, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (137, 'Toni Hadi Pramono', '', '3525130111840003', '', '', 'Gresik', '1984-11-01', 'laki-laki', 'Ds. Kepatihan Kec, Menganti - Gresik', '083831999110', 'Islam', 10, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (138, 'Beny Agus Priyanto', '', '1256157006680051', '', '', 'SURABAYA', '1986-08-10', 'laki-laki', 'JLN RAYA NGEMPLAK 23 RT02/05 KEL. MADE KEC. SAAMBIKEREP-SURABAYA', '085737691963', 'Islam', 10, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (139, 'Santoso', '', '3525131209890001', '', '', 'Gresik', '1989-09-12', 'laki-laki', 'Sememi jaya 5/14 Benowo surabaya', '', 'Islam', 10, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (140, 'Teguh Setyo Nugroho', '', '3516041009950002', '', '', 'Mojokerto', '1995-09-10', 'laki-laki', 'DSN. JANTEN RT 10 RW 03 DS. SELOTAPAK KEC. TRAWAS KAB. MOJOKERTO', '', 'Islam', 10, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (141, 'Ahmad Khoirudin', '', '3525130303940000', '', '', 'Gresik', '1994-03-03', 'laki-laki', 'Dusun Gempol rt 05/rw 02 kec. Menganti', '0838-3089-1438', 'Islam', 10, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (142, 'Eko Heru Cahyo Utomo', '', '3525130201920001', '', '', 'Gresik', '1992-01-02', 'laki-laki', 'Setro rt 02/rw 01 Menganti Gresik', '083110077017', 'Islam', 10, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (143, 'Muhammad Eko Prasetio', '', '3525130910970003', '', '', 'gresik', '1997-10-09', 'laki-laki', 'DUSUN GEMPOL RT05/RW02 GEMPOL KURUNG MENGANTI GRESIK', '', 'Islam', 10, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (144, 'Yulian Ageng Dwi Wibowo', '', '3518112307020001', '', '', 'Gresik', '2002-07-23', 'laki-laki', 'Perum bumi cerme apsari U-21 - Cerme - Gresik', '082234690240', 'Islam', 10, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (145, 'Deny Dwi Setiawan', '', '3525136405870001', '', '', 'Mojokerto', '1995-06-29', 'laki-laki', 'DSN. TETES DS GUNUNGSARI KEC DAWAR BLANDONG MOJOKERTO', '08563288465', 'Islam', 10, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (146, 'Afian Rusdiyanto', '', '3525111205960001', '', '', 'Gresik', '1996-05-12', 'laki-laki', 'Cerme Kidul No 18 RT04/RW06 Gresik', '081241612015', 'Islam', 10, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (147, 'Wiro\'I', '', '3514076102790001', '', '', 'Pasuruan', '1979-02-21', 'laki-laki', 'Dsn Songgat Rt.05 Rw.02 Kel. Pengalangan Kec. Menganti / Gresik', '', 'Islam', 11, 'III', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (148, 'Anwari', '', '3525132904830001', '', '', 'Gresik', '1983-04-29', 'laki-laki', 'Ngablak Rejo Rt 04 Rw 03 Kel.Gempol Kurung Kec. Menganti / Gresik', '083834956408', 'Islam', 15, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (149, 'Nanang Sudaryono', '', '3578100811790003', '', '', 'Surabaya', '1979-11-08', 'laki-laki', 'Kapas Baru I/83 Rt.03 Rw. 07 Kel. Kapasmadya Baru Kec. Tambak Sari / Surabaya', '081937183467', 'Islam', 17, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (150, 'Waras', '', '3525132712810002', '', '', 'Gresik', '1981-12-27', 'laki-laki', 'Dsn. Balong Dinding Rt.20 Rw. 05 Kel. Sidowungu Kec. Menganti / Gresik', '', 'Islam', 16, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (151, 'Hendro Mulyono', '', '3517200909800002', '', '', 'Gresik', '1980-09-09', 'laki-laki', 'Dinoyo Tangsi Gg. Iii No. 8', '083831999110', 'islam', 17, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (152, 'Agung Dwi Prasetyo', '', '3525132410890001', '', '', 'Gresik', '1989-10-24', 'laki-laki', 'Gempol Kurung, Ds. Ngablak Rejo Rt 14 Rw 03 Menganti / Gresik', '081246831844', 'Islam', 10, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (153, 'Ainur Rofiq', '', '3525132807870003', '', '', 'Gresik', '1987-07-28', 'laki-laki', ' Jl. Raya Kepatihan 123 Rt 04 Rw 07 Menganti / Gresik', '', 'Islam', 10, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (154, 'Azis Jainuri', '', '3525131306880003', '', '', 'Gresik', '1988-06-13', 'laki-laki', 'Ds. Domas Rt 16. Rw 05 Kec. Menganti / Gresik', '', 'Islam', 10, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (155, 'Sunyoto', '', '3525132207860003', '', '', 'Gresik', '1986-07-22', 'perempuan', 'Dsn Ngablak Rejo Rt 13 Rw Iii Ds. Gempol Kurung Mengati / Gresik', '', 'Islam', 10, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (156, 'Suwada Efendy', '', '3525130711840001', '', '', 'Gresik', '1984-11-07', 'laki-laki', 'Ngablak Rt 12 Rw 03 Menganti / Gresik', '', 'Islam', 10, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (157, 'Jama\'Atin', '', '3525135410880001', '', '', 'Gresik', '1988-10-14', 'perempuan', 'Kutil, Gempolkurung - Gresik', '085731868100', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (158, 'Arga Dianto', '', '3525081101920001', '', '', 'GRESIK', '1992-01-11', 'laki-laki', 'DSN LINGSIR DS SLEMPIT RT27/RW05 KEC KEDAMEAN KAB GRESIK', '083850245977', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (159, 'Mochamad Teguh Junaidi', '', '3578300106880001', '', '', 'Gresik', '1988-06-01', 'laki-laki', 'DUSUN NGABLAKREJO RT 13 RW 03 MENGANTI-GRESIK', '085791103189', 'Islam', 10, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (160, 'Wawan', '', '3525131710820015', '', '', 'Gresik', '1982-10-17', 'laki-laki', 'DESA PRANTI KEC MENGANTI GRESIK', '', 'Islam', 10, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (161, 'Ido Bardianto', '', '3525042306980001', '', '', 'Gresik', '1998-06-23', 'laki-laki', 'JLN RAYA BIBIS NO 05-7A', '', 'Islam', 10, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (162, 'Ari Dwi Kurniawan', '', '3525132310920012', '', '', 'KLATEN', '1992-10-23', 'laki-laki', 'PERUMAHAN PALEM PERTIWI BLOK I 12A GRESIK', '082141606683', 'Islam', 10, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (163, 'Nur Kholis ', '', '3326092608900002', '', '', 'Pekalongan', '1990-08-26', 'laki-laki', 'Perum Menganti Permai block C 3 no 22', '', 'Islam', 10, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (164, 'Paryati', '', '3578306107760002', '', '', 'Tulungagung', '1976-07-21', 'perempuan', 'Kauman Asri I Rt. 01 Rw. 06 Kel. Benowo Kec. Pakal / Surabaya', '085807173312', 'Islam', 18, 'III', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (165, 'Sri Wulandari', '', '3525134910840016', '', '', 'Gresik', '1984-10-09', 'perempuan', 'Pelem Watu Rt. 06 Rw. 03 Kel. Pelem Watu Kec.Menganti / Gresik', '085231445559', 'Islam', 19, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (166, 'Ranis', '', '3525134703780001', '', '', ' Gresik', '1978-03-07', 'perempuan', 'Dsn. Kutil Rt. 05 Rw. 01 Kel. Gempol Kurung Kec. Mengati / Gresik', '081352245847', 'Islam', 47, 'III', 'Non Aktif', '2023-08-23 07:41:30');
INSERT INTO `master` VALUES (167, 'Astutik B', '', '3525135711780014', '', '', 'Gresik', '1978-11-17', 'perempuan', 'Gempol Rt. 06 Rw 02 Kel. Gempol Kurung Kec. Menganti / Gresik', '', 'Islam', 20, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (168, 'Kumaiyah', '', '3578084205810001', '', '', 'Surabaya', '1981-05-02', 'perempuan', 'Dk. Ngemplak No. 54 Rt. 02 Rw.05Nkel. Made Kec.Lakarsantri / Surabaya', '083115300927', 'Islam', 20, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (169, 'Masitah', '', '3578145309770003', '', '', 'Surabaya', '1977-09-13', 'perempuan', 'Jl. Raya Bibis No. 18 Rt. 01 Rw. 07 Kel. Manukan Wetan Kec. Tandes / Surabaya', '', 'Islam', 21, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (170, 'Sumarlik', '', '3525135708760018', '', '', 'Surabaya', '1976-08-17', 'laki-laki', 'Wringin Kurung, Rt 02 Rw 04 Ds. Gempol Kurung Kec. Menganti  / Gresik', '', 'Islam', 22, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (171, 'Umi Mari\'Fah', '', '3525136107810013', '', '', 'Lamongan', '1981-07-21', 'perempuan', ' Dsn. Ngablak Rejo Rt.03 Rw 03 Kel. Gempol Kurung Kec. Menganti / Gresik', '', 'Islam', 13, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (172, 'Watini', '', '3525115903730005', '', '', 'Gresik', '1973-03-19', 'perempuan', 'Dsn Geger Gang Telaga Rt. 02 Rw. 01 Kel. Iker Iker  Geger Kec.Cerme / Gresik', '', 'Islam', 22, 'II', 'Non Aktif', '2023-08-23 07:41:36');
INSERT INTO `master` VALUES (173, 'Nur Chasanah', '', '3578304610770001', '', '', 'Surabaya', '1977-10-06', 'perempuan', 'Benowo G3 / 46/B Rt. 02 Rw 02. Kel. Benowo Kec. Pakal / Surabaya', '', 'Islam', 23, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (174, 'Hindun Kamida', '', '3578306106790001', '', '', 'Gresik', '1979-06-21', 'perempuan', 'Beji No. 28 Rt.02/Rw.04  Pakal/Surabaya', '', 'Islam', 24, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (175, 'Ninik Rodhotul Jannah', '', '3578065102810007', '', '', 'Surabaya', '1981-02-11', 'perempuan', 'Jl. Petemon 4/85/A Rt. 05 Rw. 11 Kel. Petemon Kec. Sawahan /  Surabaya', '085101677888', 'Islam', 24, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (176, 'Suherni Indah Katiti ', '', '3578145509760003', '', '', 'Malang', '1976-09-25', 'perempuan', 'Bibis Tama Ii/84 Rt 1 Rw 7 Kel. Manukan Wetan Kec. Tandes / Surabaya', '0895422000000', 'Islam', 24, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (177, 'Useni', '', '3525137006750099', '', '', 'Gresik', '1975-06-30', 'perempuan', 'Dsn Ngablakrejo Rt 05 Rw 03 Ds. Gempol Kurung  Kec.Menganti / Gresik', '085655126216', 'Islam', 25, 'I', 'Non Aktif', '2023-08-23 07:41:42');
INSERT INTO `master` VALUES (178, 'Ana Suyanti', '', '3578316712810001', '', '', 'Surabaya', '1982-12-27', 'perempuan', 'Dk. Kapasan Gg Ii / 37 Lakarsantri / Surabaya', '083119932722', 'Islam', 24, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (179, 'Ana Wiyanti', '', '1256104306840001', '', '', 'Surabaya', '1984-06-03', 'perempuan', 'Jl. Perum Uka 8/3 Surabaya', '', 'Islam', 24, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (180, 'Rusdianawati', '', '3578146401850003', '', '', 'Surabaya', '1985-01-24', 'perempuan', 'Manukan Kulon Rt. 01 Rw. 10 Jln. Manukan Kasman I/99 Tandes / Surabaya', '082331128123', 'Islam', 24, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (181, 'Sulfia Fitria Ningrum', '', '1256104904910001', '', '', 'Surabaya', '1991-04-09', 'perempuan', 'Sumberejo Rt. 01 Rw. 03 Ds. Sumberejo Kec. Pakal / Surabaya', '083857123472', 'Islam', 24, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (182, 'Halimatus Sa\'Diyah', '', '3578305306920001', '', '', 'Surabaya', '1992-07-13', 'perempuan', 'Rejosari Rt4 Rw3 Kec. Pakal / surabaya', '082234252729', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (183, 'Wiwik Indarti', '', '3525136111880001', '', '', 'Gresik', '1988-11-21', 'perempuan', 'Banyuurip, Gempolkurung , Gresik', '083108821344', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (184, 'Puspita Rini', '', '3525045408910001', '', '', 'Tuban', '1991-08-14', 'perempuan', 'Dsn Kandangan - Margosuko Kec, bancar - Tuban', '085708656048', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (185, 'Risa Kusuma Ningrum', '', '3525044301940001', '', '', 'Gresik', '1994-01-03', 'perempuan', 'Delik wetan Kec. Benjeng Kab Gresik', '085708222315', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (186, 'Lilis Handayani', '', '3525134507920004', '', '', 'Gresik', '1992-07-05', 'perempuan', 'DESA KEPATIHAN RT01/RW01 KEC. MENGANTI KAB. GRESIK', '081236029616', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (187, 'Tineke Rafiqiani', '', '3525136607930002', '', '', 'Gresik', '1993-07-26', 'perempuan', 'Boboh Menganti / Gresik', '085731770447', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (188, 'Ike Yuana Pertiwi', '', '3525136303860013', '', '', 'Kediri', '1986-03-23', 'perempuan', 'Rejosari Indah Gg. II/09 Pakal / Surabaya', '089617332020', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (189, 'Santi A', '', '3525135503910001', '', '', 'Gresik', '1991-03-15', 'perempuan', 'Ds. Kepatihan / Menganti / Gresik', '083834470921', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (190, 'Sulis Rachmawati', '', '3525115008910002', '', '', 'Gresik', '1991-08-10', 'perempuan', 'DESA KAMBINGAN RT02 RW 01 KEC. CERME KAB. GRESIK', '082223984069', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (191, 'Hayu Lusiana Wati', '', '3525045006930004', '', '', 'Gresik', '1993-06-10', 'perempuan', 'DESA DERMO RT07 RW 02 BENJENG GRESIK', '085748486788', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (192, 'Dessy Uliatin Masruroh', '', '3578316512910002', '', '', 'Surabaya', '1991-12-15', 'perempuan', 'Bringin Kec. Sambikerep / Surabaya', '085746887781', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (193, 'Liana B', '', '3525134503860001', '', '', 'Gresik', '1986-03-05', 'perempuan', 'RANDU PADANGAN RT/RW 14/05 MENGANTI GRESIK', '085731329120', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (194, 'Wiwin Angelita', '', '3578305608850003', '', '', 'SURABAYA', '1985-08-16', 'perempuan', 'JL. REJOSARI JURANG KUPING RT04/RW03 BENOWO PAKAL SURABAYA', '089529779012', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (195, 'Diah Rochmawati ', '', '3525114602870022', '', '', 'Gresik', '1990-09-04', 'perempuan', 'DS. KEPATIHAN RT 03 RW 01 MENGANTI-GRESIK', '085721684869', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (196, 'Sri Rahayu', '', '3525134904820001', '', '', 'Gresik', '1982-04-09', 'perempuan', 'Kepatihan, Menganti / Gresik', '0859172000000', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (197, 'Devy Sugiyanti', '', '3578304302900002', '', '', 'Surabaya', '1990-02-03', 'perempuan', 'Rejosari benowo - Surabaya', '081336750450', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (198, 'Siti Wulandari', '', '3525136508910001', '', '', 'Gresik', '1991-08-25', 'perempuan', 'Bringkang Menganti / Gresik', '085732576433', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (199, 'Dia Arita Ayu Kasih', '', '3525115501870001', '', '', 'SURABAYA', '1987-01-15', 'perempuan', 'PERUM CERME INDAH RT 04 RW 03 BLOK 5/14 CERME GRESIK', '081515149115', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (200, 'Wida Dwi Retnosari', '', '3525134101900002', '', '', 'Gresik', '1990-01-01', 'perempuan', 'Bandut, Drancang, Menganti - Gresik', '085704526311', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (201, 'Titik Mardiana', '', '3525135705760002', '', '', 'Gresik', '1976-05-17', 'perempuan', 'DUSUN BOBOH RT05/RW01', '', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (202, 'Lusiana', '', '3578314311860001', '', '', 'Surabaya', '1986-11-03', 'perempuan', 'DK Alas malang no 42 RT/RW 02/03 ', '082132325456', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (203, 'Nita Mayasari', '', '3578306202890000', '', '', 'Surabaya', '1989-02-22', 'perempuan', 'DK. Kauman Sumberejo Pakal - Surabaya', '081336675146', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (204, 'Erma Kustianingsih', '', '3525046607960002', '', '', 'Gresik', '1996-07-26', 'perempuan', 'Kalang Anyar, Benjeng - Gresik', '085899524840', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (205, 'Idawati', '', '3578314612840002', '', '', 'Surabaya', '1984-12-06', 'perempuan', 'Lempung Perdana I No. 09 Lontar - Surabaya', '083849048680', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (206, 'Nur Jayanti', '', '3522124611900001', '', '', 'Bojonegoro', '1990-11-06', 'perempuan', 'Mlinjeng 15/04 / Sumberejo / Bojonegoro', '083134476206', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (207, 'Munfaatin Khasanah', '', '3578306304930001', '', '', 'Surabaya', '1993-04-23', 'perempuan', 'Kedungsekar kidul Kedung Sekar benjeng - Gresik', '085704857223', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (208, 'Rista Nur Octaviana', '', '3578164710870010', '', '', 'Surabaya', '1987-10-07', 'perempuan', 'Dsn Kutil Gempolkurung Menganti - Gresik', '081217766540', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (209, 'Nuryati', '', '3578144404760002', '', '', 'Surabaya', '1976-04-04', 'perempuan', 'JL. BIBIS TAMA II/59 SURABAYA', '', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (210, 'Indana Lazulfa', '', '3525117001910003', '', '', 'Sidoarjo', '1991-01-30', 'perempuan', 'Dsn Ngering / Sukoanyar / Cerme / Gresik', '083117796178', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (211, 'Shofi Tirta Trisnasari', '', '3525134109920001', '', '', 'Gresik', '1992-09-01', 'perempuan', 'Desa Hendrosari RT06/RW03 Menganti Gresik', '083123107876', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (212, 'Putri Utami', '', '3525086606850012', '', '', 'Gresik', '1987-09-03', 'perempuan', 'DSN BONGSO KULON RT03/RW01 DESA PENGALANGAN MENGANTI-GRESIK', '082245641619', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (213, 'Linda Arianti', '', '3578306502850001', '', '', 'Surabaya', '1985-09-06', 'perempuan', 'DK. Sendang Bulu rt02/rw05 Babat jerawat Pakal surabaya', '085746875765', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (214, 'Ninis Fitrianik', '', '3578305306790004', '', '', 'Gresik', '1989-05-10', 'perempuan', 'DESA KEPATIHAN RT01/RW02 KEC. MENGANTI KAB. GRESIK', '083830291221', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (215, 'Dia Rachmawati B', '', '3525134105870013', '', '', 'GRESIK', '1987-02-06', 'perempuan', 'GANG DIPENOGORO NO 15 RT 01/08 CERME LOR, CERME - GRESIK', '085853572604', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (216, 'Titis Rahmawati', '', '3524224906900002', '', '', 'Lamongan ', '1990-06-09', 'perempuan', 'Kedungwungu, Sumber Bendo, Mantub - Lamongan ', '085732131990', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (217, 'Ida Iswati', '', '3525135105860001', '', '', 'Gresik', '1986-05-11', 'perempuan', 'Dusun Ngablak Rt 4 Rw 3', '083849048680', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (218, 'Kartika Ayu Wulandari', '', '3525136508920001', '', '', 'Gresik', '1992-08-25', 'perempuan', 'JLN. BOBOH RT04 RW01 KEC MENGANTI KAB. GRESIK', '081234305699', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (219, 'Fatchuni Hayah', '', '3525135601950001', '', '', 'Gresik', '1992-08-25', 'perempuan', 'DUSUN GLINTUNG RT07 RW05 KEPATIHAN MENGANTI GRESIK', '08993697655', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (220, 'Putri Anisa Candra Arianti', '', '3520050405960002', '', '', 'Gresik', '1990-01-15', 'perempuan', 'Desa Bringkang RT08/RW 04 Menganti-Gresik', '', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (221, 'Nuryana ', '', '3525156605840004', '', '', 'Kediri', '1994-06-26', 'perempuan', 'WedoroAnom RT02/RW01 Driyorejo Gresik', '083165012469', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (222, 'Mar\'Atus Sholikah', '', '3525156605840004', '', '', 'Gresik', '1994-02-18', 'perempuan', 'DESA DUNGUS RT01/RW05 CERME GRESIK', '085954586746', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (223, 'Syahadata Rachmana', '', '3578304705910002', '', '', 'Surabaya', '1991-05-07', 'perempuan', 'DK. Kauman Sumberejo Pakal - Surabaya', '085647628203', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (224, 'Mujayati Octavia', '', '3524165210860001', '', '', 'Lamongan', '1986-10-12', 'perempuan', 'Dusun Kedung Dowo Desa Pelabuhan Rejo Kec. Mantub Kab. Lamongan', '083831771869', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (225, 'Zeni', '', '3578304101930002', '', '', 'SURABAYA', '1985-05-27', 'perempuan', 'JL. MULYO MUKTI NO 03 RT01/RW02 PAKAL SURABAYA', '087753819940', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (226, 'Rumiyati', '', '3578147107810001', '', '', 'Surabaya', '1981-07-31', 'perempuan', 'JLN. BIBIS TAMA II / 103 TANDES SURABAYA', '', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (227, 'Ani Listiani', '', '3525137010890001', '', '', 'Gresik', '1987-05-24', 'perempuan', 'DSN GELINTUNG RT01/RW04 KEPATIHAN MENGANTI GRESIK', '085607625782', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (228, 'Ismiati Dwi Atlani', '', '3525046412870001', '', '', 'Gresik', '1987-12-24', 'perempuan', 'Dusun klarang anyar, desa karangan kidul rt11/rw04 benjeng-gresik', '085706038688', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (229, 'Ririn Mega Nilawati', '', '3525136301890002', '', '', 'Gresik', '1989-01-23', 'perempuan', 'NGABLAK REJO RT13/RW03', '083117714601', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (230, 'Siti Maula', '', '3578306610920001', '', '', 'SURABAYA', '1992-10-26', 'perempuan', 'Jln. Pakal Madya no. 66 ', '083831654654', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (231, 'Ririn Dwi Lestari', '', '3524164503880003', '', '', 'Lamongan', '1988-03-05', 'perempuan', 'Dsn Kampung desa Sumber Kerep Mantub-Lamongan', '081230341289', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (232, 'Nur Lailatul Fitria', '', '3525135403940001', '', '', 'Surabaya', '1994-03-14', 'perempuan', 'Dusun Kutil RT04/RW01 Gempolkurung Menganti Gresik', '081231270706', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (233, 'Atik Kusman', '', '3525134511870002', '', '', 'Gresik', '1987-11-05', 'perempuan', 'Desa Ngablakrejo RT05/RW03 Menganti Gresik', '087859482146', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (234, 'Iswati C', '', '3525136612880003', '', '', 'Gresik', '1988-12-26', 'perempuan', 'Desa RanduPadangan rt05 rw02 Menganti-Gresik', '088228151457', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (235, 'Anita Febriani', '', '3525115802920001', '', '', 'Gresik', '1992-02-18', 'perempuan', 'Ds. LekerRejoRT03/RW03 Kec. Cerme Gresik', '085655204577', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (236, 'Sinta Rosita', '', '3578306309900002', '', '', 'Surabaya', '1990-09-23', 'perempuan', 'Sememi Kidul RT03/RW04 Benowo-Surabaya', '085925391118', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (237, 'Miftakhul Imamah', '', '3525114105930007', '', '', 'Gresik', '1993-05-01', 'perempuan', 'Desa Banter Benjeng RT 07/RW 04 Gresik', '085655679110', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (238, 'Nur Latifah', '', '3525134807860001', '', '', 'Gresik', '1986-07-08', 'perempuan', 'Dsn. Bandut RT/RW 13/06 Desa Drancang Menganti', '082334987148', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (239, 'Nuriyana ', '', '3525136704850002', '', '', 'Gresik', '1985-04-27', 'perempuan', 'Kepatihan RT04/RW01 Menganti Gresik', '089516530500', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (240, 'Isti\'anah B', '', '3525134812860001', '', '', 'Gresik', '1986-12-08', 'perempuan', 'Kepatihan RT 02/RW 01 Menganti-Gresik', '083856882515', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (241, 'Ulfa Kurniawati', '', '3525134412940014', '', '', 'Magetan', '1995-12-04', 'perempuan', 'Gempol Kurung Rt. 04 Rw. 002 Ds. Gempol Kurung Kec. Menganti / Gresik', '083846837888', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (242, 'Rini Veronika Noer', '', '3578305710840002', '', '', 'Surabaya', '1984-10-27', 'perempuan', 'Pondok Indah Benowo Blok CG/08 Rt.03 Rw.09 Kel. Babat Jerawat Kec. Pakal / Surabaya', '082140935939', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (243, 'Winarsih', '', '3578304702880001', '', '', 'Surabaya', '1988-02-07', 'perempuan', 'Sumberrejo Baru no. 55 RT02/RW04 Benowo- Surabaya', '081331483917', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (244, 'Mujiati', '', '3578285305830002', '', '', 'Surabaya', '1983-05-13', 'perempuan', 'Ngablakrejo rt01 rw03 menganti gresik', '085335331137', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (245, 'Lianah', '', '3525136008850001', '', '', 'GRESIK', '1985-08-20', 'perempuan', 'Desa Setro RT06/RW03 Menganti Gresik', '085101228566', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (246, 'Nurul Afifah', '', '3578305003930002', '', '', 'Surabaya', '1993-03-10', 'perempuan', 'Jln. Rejosari RT 04 RW 03 Benowo Pakal surabaya', '081216050009', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (247, 'Ngatminah', '', '3578196403790001', '', '', 'Tuban', '1979-03-24', 'perempuan', 'Rejosari Baru 3/28 Rt.06 Rw.03 Kel. Benowo Kec. Pakal / Surabaya', '089677854784', 'Islam', 26, 'III', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (248, 'Indrawati (A)', '', '3578184907790002', '', '', 'Surabaya', '1979-07-09', 'perempuan', ' Lidah Kulon Rt. 05 Rw.03 Kel. Lidah Kulon Kec. Lakarsantri / Surabaya', '085748333634', 'Islam', 27, 'III', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (249, 'Koniyah', '', '3525135903780003', '', '', 'Gresik', '1978-03-19', 'perempuan', 'Ngablak Rejo Rt 04 Rw 03 Kel.Gempol Kurung Kec. Menganti / Gresik', '081330696874', 'Islam', 27, 'III', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (250, 'Ninik Susana', '', '3525134710760013', '', '', 'Gresik', '1976-10-07', 'perempuan', 'Hulaan Rt. 17 Rw. 08 Kel. Hulaan Kec. Menganti / Gresik', '085746090870', 'Islam', 27, 'III', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (251, 'Wiwik Suhartatik', '', '3525135506760005', '', '', 'Gresik', '1976-06-15', 'perempuan', 'Hulaan, Rt 17 Rw 08 Kel. Hulaan Kec.Menganti / Gresik', '081559549634', 'Islam', 27, 'III', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (252, 'Yuli Suliswanti', '', '3525137007780006', '', '', 'Gresik', '1978-07-30', 'perempuan', 'Setro Rt 05 Rw. 03 Kel. Setro Kec. Menganti / Gresik', '081332494646', 'Islam', 27, 'III', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (253, 'Hartatik', '', '3525135912770012', '', '', 'Surabaya', '1977-12-19', 'perempuan', 'Dsn Ngablak Rejo Rt. 03 Rw. 03 Kel.Gempol Kurung Kec. Menganti / Gresik', '083846963939', 'Islam', 28, 'III', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (254, 'Ismaulanah', '', '3578304202790002', '', '', 'Surabaya', '1979-02-02', 'perempuan', 'Griya Surabaya Asri A/01 Rt.03 Rw.04 Kel. Sumber Rejo Kec. Pakal / Surabaya', '082230784405', 'Islam', 28, 'III', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (255, 'Lasianah', '', '3525135602800017', '', '', 'Surabaya', '1980-02-16', 'perempuan', 'Dsn. Kepatihan Rt.05 Rw.03 Kel. Kepatihan Kec. Menganti / Gresik', '083831657560', 'Islam', 28, 'III', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (256, 'Marnah', '', '3578305809800001', '', '', 'Surabaya', '1980-09-18', 'perempuan', 'Dk. Sumberlanggeng Rt.03 Rw.03 Kel.Sumber Rejo Kec. Pakal / Surabaya', '081234862919', 'Islam', 28, 'III', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (257, 'Nanik Rini Setyowati', '', '3525135301730001', '', '', 'Gresik', '1973-01-13', 'perempuan', 'Dsn. Gatul Rt. 02 Rw. 06 Kel. Pandu Kec. Cerme / Gresik', '085730884688', 'Islam', 28, 'III', 'Non Aktif', '2023-08-23 07:42:20');
INSERT INTO `master` VALUES (258, 'Sumilah (A)', '', '3525134804730002', '', '', 'Gresik', '1973-04-08', 'perempuan', ' Dsn. Ngablak Rejo  Rt.03 Rw.03 Kel. Gempol Kurung Kec.Menganti / Gresik', '082146906583', 'Islam', 28, 'III', 'Non Aktif', '2023-08-23 07:42:01');
INSERT INTO `master` VALUES (259, 'Ana Nur Laila', '', '3525134402800013', '', '', 'Gresik', '1980-02-04', 'perempuan', 'Dsn. Kepatihan Rt. 05 Rw. 03 Kel. Kepatihan Kec. Menganti / Gresik', '082334828175', 'Islam', 29, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (260, 'Asmani', '', '3578306006830001', '', '', 'Surabaya', '1983-06-20', 'perempuan', 'Dk. Kauman  Rt.03 Rw. 02 Kel. Sumbe Rejo Kec. Pakal / Surabaya', '087842228363', 'Islam', 29, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (261, 'Binti Alqori\'Ah', '', '3525136912730012', '', '', 'Nganjuk', '1973-12-29', 'perempuan', 'Gempol Kurung Rt. 12 Rw 03 Ds Gempol Kurung Kec.  Menganti / Gresik', '085335499616', 'Islam', 29, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (262, 'Evi Triskawati', '', '3525134103750014', '', '', 'Kediri', '1975-03-01', 'perempuan', 'Hulaan Rt 15 Rw. 07 Kel. Hulaan Kec.Menganti / Gresik', '085259236462', 'Islam', 29, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (263, 'Nur Hidayati', '', '3578146207820004', '', '', 'Tuban', '1982-07-22', 'perempuan', 'Jln. Bibis Tama 2 / 105 Rt. 02 Rw. 07 Kel. Manukan Wetan Kec.Tandes / Surabaya', '082257817734', 'Islam', 30, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (264, 'Siti Sunarsih', '', '3524215107750006', '', '', 'Lamongan', '1975-07-11', 'perempuan', 'Kruwul Rt. 04 Rw. 01 Kel. Sukoanyar, Kec. Turi / Lamongan', '082341730554', 'Islam', 30, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (265, 'Sumiati (A)', '', '3525134108780001', '', '', 'Gresik', '1978-08-01', 'perempuan', 'Dsn. Banyu Urip Rt. 01 Rw. 05 Ds. Gempol Kurung Kec. Menganti / Gresik', '085707485037', 'Islam', 30, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (266, 'Sutini', '', '3525136911780003', '', '', 'Gresik', '1978-11-29', 'perempuan', 'Dsn. Banyu Urip Rt.03 Rw. 05 Kel. Gempol Kurung Kec. Menganti / Gresik', '083117977805', 'Islam', 30, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (267, 'Luluk Ekawati', '', '3525044812800003', '', '', 'Banyuwangi', '1980-12-08', 'perempuan', 'Kacangan Rt. 16 Rw. 06 Kel. Bulurejo Kec. Benjeng / Gresik', '082141131828', 'Islam', 31, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (268, 'Ida Pratiwi', '', '3525134203840001', '', '', 'Gresik', '1984-03-02', 'perempuan', 'Dsn Ngablak Rejo Rt. 03 Rw. 03 Ds. Gempol Kurung Kec.Menganti / Gresik', '082131857981', 'Islam', 32, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (269, 'Mila Suryani', '', '3578155101820001', '', '', 'Surabaya', '1982-01-11', 'perempuan', 'Jln. Gadukan Timur I / 8/B Rt.03 Rw.04 Kel. Morokrembangan Kec. Krembangan / Surabaya', '081216979957', 'Islam', 13, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (270, 'Nur Asiyah', '', '3518084206810008', '', '', 'Nganjuk', '1981-06-02', 'perempuan', 'Hulaan Rt. 13 Rw. 06 Hulaan / Menganti / Gresik', '083856308068', 'Islam', 13, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (271, 'Nur Atika Lestari', '', '3525134711820002', '', '', 'Gresik', '1982-11-07', 'perempuan', 'Ngablak Rejo Rt. 12 Rw. 03 Gempol Kurung Kec. Menganti / Gresik', '0857-4969-2960', 'Islam', 13, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (272, 'Yuliatin', '', '3578194512800003', '', '', 'Surabaya', '1980-12-05', 'perempuan', 'Sememi Jaya 4/C/15/B Rt. 02 Rw. 01 Kel. Sememi Kec. Benowo / Surabaya', '0899-0406-452', 'Islam', 13, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (273, 'Evi Yusniawati', '', '3525135201830004', '', '', 'Gresik', '1983-01-12', 'perempuan', 'Desa Setro Rt 05 / Rw 03 Kec. Menganti / Gresik', '0822-3148-1350', 'Islam', 24, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (274, 'Fira Nofita', '', '3525134611810000', '', '', 'Gresik', '1981-11-06', 'perempuan', 'Desa Setro Rt 06 / Rw 03 Kec. Menganti / Gresik', '0831-0466-1381', 'Islam', 24, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (275, 'Siti Khotimah', '', '3578304704780001', '', '', 'Surabaya', '1978-04-07', 'perempuan', 'Dk. Sumbersari Rt 02 Rw 02 Kel. Sumber Rejo  Kec. Pakal / Surabaya', '0819-3937-9509', 'Islam', 24, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (276, 'Yulia In Pangestu', '', '3578065507830008', '', '', 'Lumajang', '1983-07-15', 'perempuan', 'Putat Jaya Pasar 31 Rt.02 Rw.03 Kel. Putat Jaya Kec. Sawahan / Surabaya', '0812-8886-8263', 'Protestan', 24, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (277, 'Endah Misdiawati', '', '3578047105880005', '', '', 'Kediri', '1988-05-31', 'perempuan', 'Dsn. Koripan Rt. 02 Rw. 02 Kel. Bangsongan', '0813-3283-6660', 'Islam', 24, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (278, 'Fatchur Rochmah', '', '3578307101850001', '', '', 'Surabaya', '1995-01-31', 'perempuan', 'Surabaya, 31 Januari 1995', '0857-4529-0442', 'Islam', 24, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (279, 'Juwanah Mandasari', '', '1218177006820001', '', '', 'Gresik', '1982-06-30', 'perempuan', 'Wringin Kurung Rt 17 Rw Iv Menganti / Gresik', '0856-4602-6426', 'Islam', 24, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (280, 'M. Asyik Sukoco', '', '3525132511850012', '', '', 'Gresik', '1985-11-25', 'laki-laki', 'Ds. Gempol Kurung Rt 18 Rw 05 Menganti / Gresik', '', 'Islam', 10, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (281, 'Mualifatin Muyantini', '', '3578304811860001', '', '', 'Surabaya', '1986-01-08', 'perempuan', 'Jl. Beji Rt 02 Rw Iv Benowo Surabaya', '0877-0338-9683', 'Islam', 24, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (282, 'Santi Sulistiowati', '', '1256106103830001', '', '', 'Surabaya', '1983-03-21', 'perempuan', 'Jln. Sumber Sari Rt 2 Rw 2 No. 65 Sumberejo Benowo / Surabaya', '0812-1018-5967', 'Islam', 24, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (283, 'Siti Mufarika A', '', '1218174509870000', '', '', 'Gresik', '1987-09-05', 'perempuan', 'Dsn Gempol Kurung RT.10/2 Kec. Menganti - Gresik', '0831-7490-6618', 'Islam', 24, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (284, 'Makhmudah', '', '3525134507850001', '', '', 'Gresik', '1985-07-05', 'perempuan', 'kepatihan rt02 rw01 menganti gresik', '0838-5438-7223', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (285, 'Kusniati', '', '3578305611840002', '', '', 'Surabaya', '1984-11-16', 'perempuan', 'Dk Kauman 3/2 Sumberejo / pakal / surabaya', '089536548346', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (286, 'Ucik Dini W.', '', '3578306210900001', '', '', 'Surabaya', '1990-10-22', 'perempuan', 'Dusun SumberRejo II Pakal Surabaya', '0882-3171-9844', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (287, 'Mudjiyani', '', '3578144906830001', '', '', 'Surabaya', '1983-06-08', 'perempuan', 'Bibis Tama 2/39 Surabya', '088217660479', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (288, 'Sumila B', '', '3525135110810001', '', '', 'Gresik', '1981-10-11', 'perempuan', 'PELEMWATU RT01/RW01 MENGANTI GRESIK', '0812-3053-7579', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (289, 'Yusitaningrum', '', '3578306608890002', '', '', 'SURABAYA', '1989-08-26', 'perempuan', 'PERUM VETERAN NO 79 RT03/RW05 BENOWO SURABAYA', '0857-4859-8794', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (290, 'Novi', '', '3525134205890001', '', '', 'Gresik', '1989-05-02', 'perempuan', 'DESA GEMPOL KURUNG RT 09 RW 02 KEC. MENGANTI KAB GRESIK', '089622760939', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (291, 'Eni Wulandari', '', '3578304101850003', '', '', 'Surabaya', '1985-01-01', 'perempuan', 'Pakal Madya 3/3 Surabaya', '081230794294', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (292, 'Rosita', '', '3525044905860002', '', '', 'Gresik', '1986-05-09', 'perempuan', 'DSN GLURAN PLOSO RT04/RW02 KEC BENJENG-GRESIK', '0815-5549-3327', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (293, 'Nur Chodiyah', '', '3578306803850002', '', '', 'Surabaya', '1985-03-28', 'perempuan', 'Beji 25 Kec. Pakal / Surabaya', '083846407243', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (294, 'Heni Liswati', '', '3525116505850001', '', '', 'GRESIK', '1985-05-25', 'perempuan', 'DSN MANDO RT/RW 01/05 DESA PANDU KEC. CERME GRESIK', '0822-4443-0364', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (295, 'Nur Anifah Syafaati', '', '3525126204830001', '', '', 'Gresik', '1983-04-22', 'perempuan', 'DSN NGABLAK REJO RT 12 RW 03 DESA GEMPOL KURUNG MENGANTI GRESIK', '0895-0465-6567', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (296, 'Suningsih', '', '3525046803820004', '', '', 'Gresik', '1982-03-22', 'perempuan', 'DERMO BENJENG GRESIK', '', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (297, 'Uswatun Khasanah', '', '3525116708930001', '', '', 'Gresik', '1993-08-27', 'perempuan', 'Cagak agung - Cerme - Gresik', '085704503035', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (298, 'Anis Dwi Andrini', '', '3525135812840004', '', '', 'GRESIK', '1985-06-26', 'perempuan', 'DS SLEMPIT RT01/RW02 KEC KEDAMEAM KAB GRESIK', '0857-7393-8966', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (299, 'Elfiana Faujiah', '', '3525135004920001', '', '', 'Gresik', '1992-04-10', 'perempuan', 'Desa boboh rt. 02 rw. 01 kec. Menganti kab. Gresik ', '083833481453', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (300, 'Yustina', '', '3525136501870015', '', '', 'Gresik', '1987-01-25', 'perempuan', 'Dusun Ngablak Rejo', '0822-3305-7490', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (301, 'Isnawati', '', '3525136501870015', '', '', 'Surabaya', '1985-02-25', 'perempuan', 'jln. Sendang bulu rt 04/ rw 05 surabaya', '0857-4866-6414', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (302, 'Suriyani', '', '3578305906850002', '', '', 'Surabaya', '1985-06-19', 'perempuan', 'Rejosari - Benowo Kec. Pakal - surabaya', '085804004703', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (303, 'Indanah', '', '3578305306790004', '', '', 'SURABAYA', '1979-06-13', 'perempuan', 'Mulyo Mukti rt001/rw002 Babat Jerawat PAkal', '0853-3547-2832', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (304, 'Alfitriyah', '', '3525135005800001', '', '', 'Gresik', '1987-05-01', 'perempuan', 'Dusun Kutil Desa Gempol Kurung Menganti Gresik', '0838-5409-2975', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (305, 'Anisah', '', '3525134409900002', '', '', 'Surabaya', '1985-01-07', 'perempuan', 'Rejosari RT01 RW03 Benowo Pakal Surabaya', '0857-5551-9663', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (306, 'Ida Fahtur Rokhmah', '', '3578304511890002', '', '', 'Surabaya', '1989-11-05', 'perempuan', 'Dk. Jawu Kidul Sumberejo Pakal - Surabaya', '083831131676', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (307, 'Sunarseh', '', '3525134302870004', '', '', 'Gresik', '1987-06-04', 'perempuan', 'Ngablakrejo rt04 rw01 menganti gresik', '0877-6151-3239', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (308, 'Sutartik', '', '3578197107840001', '', '', 'Surabaya', '1984-07-31', 'perempuan', 'Uka 19/1 A', '0856-5546-8677', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (309, 'Suyanti', '', '3578197107840001', '', '', 'Gresik', '1986-12-12', 'perempuan', 'GEMPOL KURUNG MENGANTI GRESIK', '0858-5365-6494', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (310, 'Lilik Istianah', '', '3578306206830001', '', '', 'Gresik', '1983-06-22', 'perempuan', 'Kemorogan 03/07 pranti menganti', '0838-4987-4341', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (311, 'Nikmatul Fitria', '', '3578306206830001', '', '', 'Gresik', '1994-03-14', 'perempuan', 'RANDU PADANGAN RT 11 RW 04 MENGANTI GRESIK', '0898-3921-798', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (312, 'Devi Ari Vinarti', '', '3578195006900000', '', '', 'Madiun', '1990-06-10', 'perempuan', 'Dsn Kandangan - Margosuko Kec, bancar - Tuban', '0859-6424-1017', 'Islam', 24, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (313, 'Muliati', '', '3525134104800016', '', '', 'Gresik', '1980-04-01', 'perempuan', 'Hulaan Rt. 17 Rw. 08  Kel. Hulaan Kec.Menganti / Gresik ', '0813-1926-9751', 'Islam', 12, 'III', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (314, 'Siti Nur Aisah', '', '3525134504810000', '', '', 'Gresik', '1981-04-05', 'perempuan', 'Randu Padangan Rt. 18 Rw. 06 Kel.  Randu Padangan Kec. Menganti / Gresik', '', 'Islam', 34, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (315, 'Sumarti', '', '3525136201820001', '', '', 'Gresik', '1982-01-22', 'perempuan', 'Randu Padangan Rt. 18 Rw. 06 Kel. Randu Paangan Kec. Menganti / Gresik', '085755606013', 'Islam', 35, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (316, 'Istianah A', '', '3525136007810019', '', '', 'Gresik', '1981-07-20', 'perempuan', 'Jl. Raya Kepatihan Rt. 04 Rw. 02 Kel. Kepatihan Kec.Menganti / Gresik', '', 'Islam', 35, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (317, 'Suwarni', '', '3578184901790001', '', '', 'Surabaya', '1979-01-09', 'perempuan', 'Lidah Kulon Rt. 05 Rw. 03 No. 537 Kel.Lidah Kulon Kec. Lakarsantri / Surabaya', '081314729813', 'Islam', 30, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (318, 'Iswati B', '', '3525136203800000', '', '', 'Gresik', '1980-03-22', 'perempuan', 'Dsn Banyuurip Rt/Rw 18/05 Ds Gempol Kurung / Menganti / Grs', '082228030220', 'Islam', 24, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (319, 'Masrukah', '', '3525135412750001', '', '', 'Gresik', '1975-12-14', 'perempuan', ' Jl. Raya Geger 94 Rt. 02 Rw. 01 Iker / Iker Geger Kec. Cerme / Gresik', '0813-3521-9425', 'Islam', 38, 'IV', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (320, 'Gunarto', '', '3578311212830011', '', '', 'Surabaya', '1983-12-12', 'laki-laki', 'Ds. Klurahan Kec. Mgronggot Kab. Nganjuk', '', 'Islam', 10, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (321, 'Istowo', '', '3525130305820004', '', '', 'Gresik', '1982-05-03', 'laki-laki', 'Dsn Kutil Gempol Kurung Menganti / Gresik', '', 'Islam', 10, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (322, 'Sutrisno', '', '3525130207910001', '', '', 'Gresik', '1991-07-02', 'laki-laki', 'Ds. Gempol Kurung Rt. 01 Rw. 02 Menganti / Gresik', '085606299337', 'Islam', 10, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (323, 'Abdur Rochim', '', '3515162711870005', '', '', 'Sidoarjo', '1987-11-27', 'laki-laki', 'TANBAK SARI RT01/RW02 TAMBAK REJO WARU,SIDOARJO', '', 'Islam', 10, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (324, 'Achmad Rafi Ashari', '', '3578301806960002', '', '', 'Gresik', '1996-06-18', 'laki-laki', 'MULYOMUKTI RT 01/RW02 KELURAHAN BABAT JERAWAT KEC. PAKAL SURABAYA', '087722882444', 'Islam', 10, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (325, 'Nur Hadi Saputra', '', '357813161184 0004', '', '', 'Surabaya', '1984-11-16', 'laki-laki', 'Jln gempol Kurung rt08 rw22/67 menganti gresik', '', 'Islam', 10, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (326, 'Nur Lailatul Fitriyani', '', '35251354039400001', '', '', 'Gresik', '1990-09-03', 'perempuan', 'DESA KEPATIHAN RT02 RW 01 MENGANTI-GRESIK', '0857-3832-2483', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (327, 'Irlani Yulianti', '', '3525116611880001', '', '', 'Gresik', '1988-11-26', 'perempuan', 'Diponegoro, Cerme - Gresik', '081554555095', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (328, 'Ani Suardini', '', '3578315011850001', '', '', 'Surabaya', '1985-11-10', 'perempuan', 'Dkh Kapasan, Kel. Sambikerep Kec. Sambikerep - Surabaya', '081333510259', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (329, 'Asih Darweni', '', '3578306811870001', '', '', 'SURABAYA', '1987-11-28', 'perempuan', 'PERUM PASUKAN KUNING B-1/31 PAKAL SURABAYA', '0856-5553-8370', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (330, 'Faris Krisdiantoro', '', '3522091511910002', '', '', 'Bojonegoro', '1991-11-15', 'laki-laki', 'DESA BOBOH RT05/RW02 KEC. MENGANTI', '0813-5850-6197', 'Islam', 10, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (331, 'Mucharom Arif', '', '3525130106960001', '', '', 'GRESIK', '1996-06-01', 'laki-laki', 'DESA KEPATIHAN RT03/RW02 KEC. MENGANTI KAB. GRESIK', '', 'Islam', 10, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (336, 'Suriyah', '', '3525135207780004', '', '', 'Gresik', '1978-07-12', 'perempuan', 'Dsn Ngablak Rejo Rt.03 Rw. 03 Kel.Gempol Kurung Kec. Menganti / Gresik', '083144378550', 'Islam', 39, 'III', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (337, 'Fatoni', '', '3525132206810013', '', '', 'Gresik', '1981-06-22', 'laki-laki', 'Benowo Gg. Iii/29 Rt/Rw 02/02 Pakal / Surabaya', '', 'Islam', 40, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (338, 'Ampar Jaya Suwondo', '', '3525132603780002', '', '', 'Gresik', '1978-03-26', 'laki-laki', 'Ds. Setro Rt. 05 Rw. 03 No. 37 Kec. Menganti / Gresik', '', 'Islam', 10, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (339, 'Suryadi', '', '3578142501780001', '', '', 'Surabaya', '1978-01-25', 'laki-laki', 'Jln. Bibis Tama 2/86 Rt 01 Rw 02 Kel. Bibis / Tandes / Surabaya', '081358364048', 'Islam', 10, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (340, 'Teguh Santoso', '', '3507250206810003', '', '', 'Malang', '1981-06-02', 'laki-laki', 'Dsn. Badut Rt. 15 Rw.07 Kel. Drancang Kec. Menganti / Gresik', '', 'Islam', 43, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (341, 'Moh. Lukman Hakim', '', '3525131703920002', '', '', 'Gresik', '1992-03-17', 'laki-laki', 'Dsn Bandut Rt. 14 Rw. 07 Drancang / Menganti / Gresik', '', 'Islam', 10, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (342, 'Toni Ardiyansyah', '', '3578271405760002', '', '', 'Pasuruan', '1976-05-14', 'laki-laki', 'Simogunung Barat Tol Kali 11A Rt. 08 Rw. 08 Ds. Simomulyo Baru Kec. Sukomanunggal / Sby', '', 'Islam', 10, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (343, 'Achmad Ashari', '', '3578152602890001', '', '', 'Surabay', '1989-02-26', 'laki-laki', 'Gadukan 266 Rt.08 Rw.05 Kel. Moro Krembangan Kec. Krembangan / Surabaya', '', 'Islam', 10, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (344, 'Mangun Saputro', '', '3578141605970001', '', '', 'Surabaya', '1997-05-16', 'laki-laki', 'Jln. Bibis Tama 4/18 Rt.03 Rw.06 Manukan Wetan / Surabaya', '0831-0948-0683', 'Islam', 10, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (345, 'Suroso', '', '3525112605920002', '', '', 'Gresik', '1992-05-26', 'laki-laki', 'Dsn Terongbangi Rt. 02 Rw. 01 Kel. Kandangan Cerme / Gresik', '0857-0437-7705', 'Islam', 10, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (346, 'Tomi Andriyas P. ', '', '3525130607900002', '', '', 'Gresik', '1990-07-06', 'laki-laki', 'Sidojangkung Rt. 01 Rw. 01 Kel. Sidojangkung Menganti / Gresik', '0838-3137-3367', 'Islam', 10, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (347, 'Fatimatuz Zahroh', '', '3525086204940001', '', '', 'Gresik', '1994-04-22', 'perempuan', 'DUSUN GEMPOL RT04 RW05 DESA LAMPAH KEC. KEDAMEAN KAB. GRESIK', '', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (348, 'Anita', '', '3525085408870003', '', '', 'Gresik', '1987-08-14', 'perempuan', 'Desa Gelindah RT?RW 09/03 Kec. Kedamean Kab. Gresik', '082234879237', 'Islam', 24, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (357, 'Ari Wibowo', '', '3578140211770002', '', '', 'Surabaya', '1977-11-02', 'laki-laki', 'Manukan Kulon Blok 20/F/1 Rt. 002 Rw. 003 Kel. Manukan Wetan Kec. Tandes / Surabaya', '083830438415', 'Islam', 44, 'III', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (358, 'Rokhmad', '', '3578302911820002', '', '', 'Surabaya', '1982-11-29', 'laki-laki', ' Dsn. Songgat No. 33 Rt. 04 Rw.02 Kel. Pengalangan Kec. Menganti / Gresik', '081212353729', 'Islam', 111, 'II', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (359, 'Edy Sutrisno', '', '3578301002840001', '', '', 'Gresik', '1984-02-10', 'laki-laki', 'Raya Benowo 11 Rt 001 Rw 001, Kel. Benowo, Kec. Pakal / Surabaya', '085606405737', 'Islam', 111, 'I', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (360, 'Dimas Panji Utomo', '', '3578123105940004', '', '', 'Blitar', '1994-05-31', 'laki-laki', 'Teluk Nibung Barat 8/2 Rt. 08 Rw. 07 Kel. Perak Utara Kec. Pecabean Cantian / Surabaya', '083853994049', 'Islam', 111, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (361, 'M. Urip Santoso', '', '3525130410870001', '', '', 'Gresik', '1987-10-04', 'laki-laki', 'Drancang Rt. 13 Rw. 06 Menganti / Gresik', '087720778254', 'Islam', 111, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (362, 'Nur Ismadi Woko', '', '3578011805830003', '', '', 'Surabaya', '1983-05-18', 'laki-laki', 'Jl. Griya Kebraon barat Block BJ 04 RT08/RW05 Kelurahan Kebraon KarangPilang Surabaya', '', 'Islam', 111, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (363, 'Kiki Purwanto', '', '3525042812970004', '', '', 'Gresik', '1997-12-28', 'laki-laki', 'Kalipang Klampok Benjeng / Gresik', '081328132974', 'Islam', 111, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (364, 'Setyo Budi', '', '3523181101940001', '', '', 'Tuban', '1994-01-11', 'laki-laki', 'Dsn. Tambak Rejo Rt 03 Rw Iii Ds. Glodog Kec. Dalang Kab. Tuban', '085648581388', 'Islam', 111, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (365, 'Eko Didik Pujianto', '', '3516161511870002', '', '', 'Mojokerto', '1987-11-15', 'laki-laki', 'Dsn. Tumapel Rt. 01 Rw. 02 Kel. Jolotundo / Jetis / Mojokerto', '085648110508', 'Islam', 111, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (366, 'Suma Fendy P', '', '1256101801920003', '', '', 'Surabaya', '1992-01-18', 'laki-laki', 'Rejosari baru RT05/RW03 NO 77 benowo pakal surabaya', '087854640172', 'Islam', 111, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (367, 'Rudianto', '', '3525132610890002', '', '', 'Gresik', '1989-10-26', 'laki-laki', 'DESA MOJOTENGAH RT09/RW04 MENGANTI-GRESIK', '082131747553', 'Islam', 111, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (368, 'Mashadi ', '', '3525131201950001', '', '', 'Gresik', '1995-01-12', 'laki-laki', 'Hendrosari Rt. 01 Rw. 04 Menganti / Gresik', '0895339000000', 'Islam', 111, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (369, 'Rizkey Firmansyah Putra', '', '3525130304940001', '', '', 'Gresik', '1994-04-03', 'laki-laki', 'Ds. Boboh Rt. 07 Rw. 01 Menganti / Gresik', '082257035965', 'Islam', 111, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (370, 'Slamet Hariyanto', '', '3578020712920002', '', '', 'Surabaya', '1992-12-07', 'laki-laki', 'Sidosermo Ii Blok E / 2 Rt. 02 Rw. 04 Wonocolo / Surabaya', '081717594741', 'Islam', 111, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (371, 'Yusuf Indrawan', '', '3525132311950002', '', '', 'Gresik', '1995-11-23', 'laki-laki', 'Kepatihan menganti / Gresik ', '082122986096', 'Islam', 111, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (372, 'Nur Cholis', '', '3578300809930002', '', '', 'Gresik', '2000-04-14', 'laki-laki', 'DSN BOBOH RT04 RW 01 MENGANTI GRESIK', '081358217003', 'Islam', 111, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (373, 'Shokiful Hamzah', '', '3525110811940004', '', '', 'Gresik', '1994-11-06', 'laki-laki', 'Sukoanyar Cerme / Gresik', '081231402325', 'Islam', 111, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (374, 'Nazarudin Sultoni', '', '3525131912910003', '', '', 'Gresik', '1991-12-19', 'laki-laki', 'SETRO RT06 RW03 MENGANTI GRESIK', '08988151135', 'Islam', 111, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (375, 'Fajar Aji Subandrio', '', '3525111702980001', '', '', 'Gresik', '1998-02-17', 'laki-laki', 'DUSUN TERONG BANGI DESA KANDANGAN CERME', '081410531635', 'Islam', 111, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (376, 'Muji Tamrin', '', '3525132110770014', '', '', 'Gresik', '1977-10-21', 'laki-laki', 'Randu padangan Menganti / Gresik', '0859172000000', 'Islam', 111, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (377, 'Imam Basori', '', '3578140510930001', '', '', '', '1993-10-05', 'laki-laki', '', '', 'Islam', 112, 'Kontrak', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (378, 'Fahri Khusaini', '', '3525113107950001', '', '', 'Gresik', '1995-07-31', 'laki-laki', 'DESA KAMBINGAN RT01 RW 02 KEC. CERME KAB. GRESIK', '081241358916', 'Islam', 111, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (379, 'Tantya Diana Syafitri', '', '3525044107020001', '', '', 'Gresik', '2002-07-01', 'perempuan', 'Dsn Karang Ploso RT09/RW05, Desa Kelampok Kec. Benjeng', '082141333505/081233653705', 'Islam', 113, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (380, 'Rahmad', '', '3525130310920001', '', '', 'Gresik', '1992-10-03', 'laki-laki', 'Dusun Ngablak Rejo RT02/RW03 desa gempol kurung Menganti Gresik', '', 'Islam', 69, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (381, 'Jaini Dahlan', '', '3525082404920004', '', '', 'Gresik', '1982-04-24', 'laki-laki', 'Belahanrejo, Kedamean', '', 'Islam', 69, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (382, 'Ani Supriadi', '', '3521111207780006', '', '', 'Madiun', '1978-07-12', 'laki-laki', '', '', 'Islam', 69, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (383, 'Sugeng Hadi Iswanto', '', '3522012206820002', '', '', 'Mojokerto', '1982-06-22', 'laki-laki', 'Dsn. Sukorejo RT05/RW02 Mojokerto', '', 'Islam', 69, 'HL', 'Aktif', '2023-01-23 08:56:00');
INSERT INTO `master` VALUES (384, 'Purnomo', '', '3525110807810001', '3525000000000000', '123456789', 'Gresik', '1981-07-08', 'laki-laki', 'Desa Cerme Lor RT02 RW07', '081234567890', 'Islam', 69, 'HL', 'Aktif', '2023-09-07 02:31:26');

-- ----------------------------
-- Table structure for pendidikan
-- ----------------------------
DROP TABLE IF EXISTS `pendidikan`;
CREATE TABLE `pendidikan`  (
  `id_pendidikan` int NOT NULL AUTO_INCREMENT,
  `tingkat_pendidikan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nama_sekolah` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jurusan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tgl_awal` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tgl_akhir` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_master` int NOT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id_pendidikan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 984 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pendidikan
-- ----------------------------
INSERT INTO `pendidikan` VALUES (1, 'SD', 'SDK STELLA MARIS SURABAYA', '', '', '1991', 1, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (2, 'SD', 'SDK SANJAYA SUKOREJO JATENG (1979/1982)', '', '', '1982', 2, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (3, 'SD', 'SD', '', '', '1982', 4, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (4, 'SD', 'SD', '', '', '', 7, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (5, 'SD', 'SD KR PETRA 13 SIDOARJO', '', '', '2000', 8, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (6, 'SD', 'SDN SAMBIKEREP III', '', '', '1990', 9, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (7, 'SD', 'SDN MIJI 1 MOJOKERTO', '', '', '1986', 10, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (8, 'SD', 'MI Sunan Giri Menganti', '', '', '1994', 11, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (9, 'SD', 'SD 1 MINDUGADING', '', '', '1993', 12, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (10, 'SD', 'SDN 1 SLEMPIT', '', '', '2004', 13, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (11, 'SD', 'SDN Patahunan I Bogor', '', '', '2009', 14, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (12, 'SD', 'SDN Pakis X/538', '', '', '2010', 15, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (13, 'SD', 'SD N 1 DOMAS MENGANTI', '', '', '2000', 16, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (14, 'SD', 'SDN NGARES REJO', '', '', '2006', 17, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (15, 'SD', 'Madrasah, Gresik', '', '', '1990', 19, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (16, 'SD', 'MI', '', '', '1991', 20, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (17, 'SD', 'SDN PODOT', '', '', '1991', 22, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (18, 'SD', 'SD Benjeng', '', '', '1990', 23, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (19, 'SD', 'SDN Cerme lor 1', '', '', '1993', 24, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (20, 'SD', 'SDN 2 GRUNO NGAWI', '', '', '2008', 27, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (21, 'SD', 'SDN MOROKREMBANGAN', '', '', '1995', 29, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (22, 'SD', 'SDN II KEDAMEAN', '', '', '2006', 30, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (23, 'SD', 'MI MIFTAHUL ULUM PEGANDEN GRESIK', '', '', '2000', 31, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (24, 'SD', 'SDN Gempol Kurung, Menganti / Gresik', '', '', '2015', 32, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (25, 'SD', 'SDN PASURUAN', '', '', '', 33, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (26, 'SD', 'SDN Bungurasih', '', '', '', 35, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (27, 'SD', 'SDN Gempol Kurung', '', '', '1994', 37, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (28, 'SD', 'SDN Gempol Kurung', '', '', '1997', 38, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (29, 'SD', 'SD', '', '', '1998', 39, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (30, 'SD', 'SDN JANTOK Kediri', '', '', '1996', 41, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (31, 'SD', 'SDN CERME LOR', '', '', '1999', 43, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (32, 'SD', 'SDN BULU REJO', '', '', '1999', 44, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (33, 'SD', 'SD TARBIATUL AKHLAK WEDOROANOM', '', '', '1999', 45, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (34, 'SD', 'SDN Bringin Surabaya ', '', '', '1996', 46, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (35, 'SD', 'sdn putat lor I', '', '', '1992', 48, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (36, 'SD', 'SDN Kandangan, Cerme, Gresik', '', '', '', 51, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (37, 'SD', 'MTS RANDU PADANGAN ', '', '', '1996', 52, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (38, 'SD', 'SD AL/ISLAM MOROWUDI', '', '', '1994', 54, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (39, 'SD', 'SD YPPI KAPASARI SURABAYA', '', '', '', 55, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (40, 'SD', 'SDN 11 KLAMPOK', '', '', '1995', 56, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (41, 'SD', 'SD BAA  Riau', '', '', '1986', 57, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (42, 'SD', 'SD AL/Manar Surabaya', '', '', '2004', 58, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (43, 'SD', 'MI MATHOLIUL FALAH', '', '', '2004', 59, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (44, 'SD', 'SDN KEPATIHAN 039 MENGANTI GRESIK', '', '', '2002', 60, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (45, 'SD', 'MI TARBIYATUL MUWAHIDIN GRESIK', '', '', '2006', 61, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (46, 'SD', 'SDN DOMAS 1 DOMAS', '', '', '2007', 62, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (47, 'SD', 'SDN KENONGO 1 TULANGAN', '', '', '2008', 63, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (48, 'SD', 'SDN KEPATIHAN GRESIK', '', '', '2007', 64, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (49, 'SD', 'SDN boboh', '', '', '2011', 65, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (50, 'SD', 'SD SANTA THERESIA I', '', '', '2003', 66, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (51, 'SD', 'SDN I DUYUNG', '', '', '', 67, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (52, 'SD', 'SD BHAYANGKARI 1', '', '', '1979', 68, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (53, 'SD', 'SDN KREMBANGAN', '', '', '1986', 69, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (54, 'SD', 'SDN 05 Pontianak', '', '', '2009', 70, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (55, 'SD', 'SDN 3 MALANG', '', '', '', 71, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (56, 'SD', 'SDN 2 MENGANTI', '', '', '2005', 72, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (57, 'SD', 'SD Negri 03 Koripan', '', '', '2011', 73, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (58, 'SD', 'SDK Kalam Kudus Surabaya', '', '', '2008', 74, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (59, 'SD', 'SIDOMULYO IV SURABAYA', '', '', '2002', 75, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (60, 'SD', 'MI ROUDLOTUL ULUM', '', '', '2004', 76, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (61, 'SD', 'SD BANG TUAH X JUANDA', '', '', '2000', 77, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (62, 'SD', 'SD MI ISLAMIYAH MADIUN', '', '', '2006', 78, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (63, 'SD', 'SDN BELAHAN REJO KEDAMEAN GRESIK', '', '', '2005', 79, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (64, 'SD', 'SDN Maospati III', '', '', '2004', 80, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (65, 'SD', 'SD KATOLIK 2 SAMARINDA', '', '', '2006', 81, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (66, 'SD', 'SD KEPATIHAN 252', '', '', '1990', 82, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (67, 'SD', 'SD MUHAMADIYAH SURABAYA', '', '', '2004', 83, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (68, 'SD', 'SDK SANTO YOSEP', '', '', '2003', 84, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (69, 'SD', 'SD KRISTEN PETRA 13', '', '', '2004', 85, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (70, 'SD', ' SDN Ketawang 2 Nganjuk', '', '', '2009', 87, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (71, 'SD', ' SDN Bunul Rejo 4 Malang', '', '', '2007', 88, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (72, 'SD', ' SDN 1 Sumput', '', '', '2008', 89, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (73, 'SD', 'SDN BABAT JERAWAT 1', '', '', '2001', 90, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (74, 'SD', 'SDN BABATAN GRESIK', '', '', '2007', 91, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (75, 'SD', 'SDN LAWANGGINTUNG 1', '', '', '2002', 92, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (76, 'SD', 'MI TARBUYATHUL ULUM', '', '', '2010', 93, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (77, 'SD', 'SDN Sambikerep I / $&(', '', '', '2006', 94, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (78, 'SD', 'SD SANTO YUSUP', '', '', '2001', 95, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (79, 'SD', 'MI Nurul Huda I Kepatihan', '', '', '', 96, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (80, 'SD', 'MI NU BARUL ULUM PELEMWATU', '', '', '2008', 98, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (81, 'SD', 'SDN Made I', '', '', '', 100, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (82, 'SD', 'MI Tarbiyatul Muwahiddin', '', '', '2006', 101, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (83, 'SD', 'SDN Pakis', '', '', '1999', 102, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (84, 'SD', 'SDN Banjarejo III Malang ', '', '', '1998', 103, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (85, 'SD', 'SDN Nurul ulum', '', '', '1995', 104, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (86, 'SD', 'SDK KARITAS V SURABAYA', '', '', '2008', 105, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (87, 'SD', 'SDAL MANNAR', '', '', '1999', 106, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (88, 'SD', 'SDN SIDOTOPOWETAN', '', '', '2009', 107, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (89, 'SD', 'SDN BENOWO II', '', '', '2005', 108, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (90, 'SD', 'SDN 3 PETIKEN DRIYOREJO', '', '', '2010', 109, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (91, 'SD', 'SDN LATSARI TUBAN', '', '', '2010', 110, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (92, 'SD', 'SDN 2 CANGKRINGAN MALANG', '', '', '2002', 111, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (93, 'SD', 'SDN SIMOMULYO II SURABAYA', '', '', '2005', 112, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (94, 'SD', 'JATI GUWI', '', '', '2004', 113, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (95, 'SD', 'SD Muhammadiyah Gresik', '', '', '2008', 114, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (96, 'SD', 'SDN GEMPOL KURUNG 2', '', '', '2009', 115, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (97, 'SD', 'SDN KALIPADANG', '', '', '2004', 116, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (98, 'SD', 'SDN 114 MANUKAN WETAN SURABAYA', '', '', '', 117, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (99, 'SD', 'SDN BUTUH', '', '', '1990', 118, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (100, 'SD', 'SDK ST VINCENTIUS SURABAYA', '', '', '2005', 119, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (101, 'SD', 'SD RUNGKUT MANANGGAL 2 SURABAYA', '', '', '2003', 120, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (102, 'SD', 'MI Kepatihan', '', '', '2000', 121, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (103, 'SD', 'MI MIFTAHUL ULUM GRESIK', '', '', '2009', 122, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (104, 'SD', 'SDI SUNSN GIRI TULUNGAGUNG', '', '', '2005', 123, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (105, 'SD', 'SDN SAWONGGALING VII', '', '', '2011', 125, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (106, 'SD', 'SDK SANTO CAROLUS SURABAYA', '', '', '2008', 126, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (107, 'SD', 'SDN Gempol Kurung II', '', '', '', 129, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (108, 'SD', 'SD Lumajang', '', '', '1996', 130, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (109, 'SD', 'MI BABAT', '', '', '', 133, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (110, 'SD', 'SDN Kewar', '', '', '', 134, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (111, 'SD', 'SDN 1 Laban Menganti', '', '', '2000', 135, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (112, 'SD', 'SD GLURAN PLOSO GRESIK', '', '', '2006', 136, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (113, 'SD', 'MI nurul huda', '', '', '1997', 137, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (114, 'SD', 'SD SELOTAPAK MOJOKERTO', '', '', '2007', 140, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (115, 'SD', 'MI MIFTAHUL HUDA BANDUT', '', '', '2006', 141, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (116, 'SD', 'SDN SETRO', '', '', '2004', 142, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (117, 'SD', 'MI MIFTAHUL HUDA BANDUT', '', '', '2009', 143, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (118, 'SD', 'SDN CERME LOR', '', '', '2015', 144, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (119, 'SD', 'SDN II GUNUNGSARI ', '', '', '2008', 145, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (120, 'SD', 'SDN 1 CERME GRESIK', '', '', '2009', 146, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (121, 'SD', 'SDN Sambisirah 1 Pasuruan', '', '', '1992', 147, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (122, 'SD', 'SDN Gading VII Surabaya ', '', '', '1992', 149, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (123, 'SD', 'SDN GEMPOL', '', '', '', 150, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (124, 'SD', 'SDN TURI PINGGIR I', '', '', '1992', 151, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (125, 'SD', 'SDN Ngablak Rejo', '', '', '2002', 152, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (126, 'SD', 'SDN Kepatihan', '', '', '1999', 153, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (127, 'SD', 'SDN Domas II', '', '', '2001', 154, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (128, 'SD', 'SDN Gempol Kurung II Gresik', '', '', '1998', 155, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (129, 'SD', 'SDN Gempol kurung II', '', '', '1996', 156, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (130, 'SD', 'SDN GEMPOL KURUNG', '', '', '2001', 157, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (131, 'SD', 'SD SLEMPIT GRESIK', '', '', '2004', 158, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (132, 'SD', 'SDN GEMPOLKURUNG', '', '', '2000', 159, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (133, 'SD', 'SDN Bibis / Surabaya', '', '', '2010', 161, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (134, 'SD', 'SD KEBRAON 1', '', '', '2004', 162, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (135, 'SD', 'SDN 1 PONOLAWEN', '', '', '2002', 163, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (136, 'SD', 'SDN KARANGREJO', '', '', '', 164, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (137, 'SD', 'MI Bahrul Ulum, Pelemwatu', '', '', '', 165, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (138, 'SD', 'SDN KUTIL', '', '', '', 166, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (139, 'SD', 'SDN Gempol Kurung, Menganti / Gresik', '', '', '', 167, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (140, 'SD', 'SDN Made I', '', '', '', 168, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (141, 'SD', 'SDN Bibis / Surabaya', '', '', '1991', 169, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (142, 'SD', 'SDN III LK', '', '', '', 170, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (143, 'SD', 'SDN CERME', '', '', '', 172, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (144, 'SD', 'SDN GEMPOL', '', '', '', 177, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (145, 'SD', 'SDN SURABAYA', '', '', '1995', 178, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (146, 'SD', 'SDN II Sememi', '', '', '1997', 179, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (147, 'SD', 'SDN Sumberejo II', '', '', '2003', 181, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (148, 'SD', 'SDN BENOWO II', '', '', '2004', 182, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (149, 'SD', 'SDN MARGOSUKO', '', '', '2004', 184, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (150, 'SD', 'SDN DELIK SUMBER', '', '', '2006', 185, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (151, 'SD', 'SDN BOBOH', '', '', '2005', 187, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (152, 'SD', 'SDN GEMPOL KURUNG 1 MENGANTI', '', '', '1999', 188, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (153, 'SD', 'SDN PELEMWATU GRESIK', '', '', '2005', 189, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (154, 'SD', 'SDN KAMBINGAN CEREME GRESIK', '', '', '2003', 190, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (155, 'SD', 'SDN DERMO BENJENG', '', '', '2005', 191, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (156, 'SD', 'SDN BRINGIN NO 477', '', '', '2004', 192, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (157, 'SD', 'MI THORIQULHUDA RANDU PADANGAN', '', '', '1999', 193, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (158, 'SD', 'SDN II BENOWO', '', '', '1996', 194, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (159, 'SD', 'SDN BENOWO II SURABAYA', '', '', '2002', 197, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (160, 'SD', 'SDN MOJOTENGAH GRESIK', '', '', '2006', 198, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (161, 'SD', 'SDN NEGRI WONOREJO VII', '', '', '1999', 199, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (162, 'SD', 'SDN DOMAS 1 MENGANTI', '', '', '2002', 200, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (163, 'SD', 'SDN II KARANGAN KIDUL', '', '', '2007', 204, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (164, 'SD', 'SDN 481 KUWUKAN', '', '', '1998', 205, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (165, 'SD', 'MI MLINJENG', '', '', '2002', 206, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (166, 'SD', 'SD AL MANAR', '', '', '2005', 207, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (167, 'SD', 'SDN MANUKAN KULON', '', '', '1999', 208, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (168, 'SD', 'MI TARBIYATUL M MOROWUDI', '', '', '2003', 210, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (169, 'SD', 'SDN HENDROSARI GRESIK', '', '', '2005', 211, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (170, 'SD', 'SD KYAI RODIYAH', '', '', '1998', 213, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (171, 'SD', 'SD CERME', '', '', '2000', 215, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (172, 'SD', 'SDN RANCANG KENCONO', '', '', '2002', 216, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (173, 'SD', 'SDN Hendrosari', '', '', '1998', 217, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (174, 'SD', 'SDN BOBOH', '', '', '2004', 218, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (175, 'SD', 'MI NURUL HUDA GLINTUNG', '', '', '2006', 219, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (176, 'SD', 'SDN BRINGKANG 1', '', '', '2000', 220, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (177, 'SD', 'MI MATHOLIHUL FALLAH CERME', '', '', '2006', 222, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (178, 'SD', 'SD SUMBERREJO 1 SURABAYA', '', '', '2003', 223, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (179, 'SD', 'MI AL-HIDAYAH BENOWO', '', '', '1997', 225, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (180, 'SD', 'SD KEPATIHAN', '', '', '2008', 227, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (181, 'SD', 'SDN KARANGAN KIDUL II', '', '', '2000', 228, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (182, 'SD', 'MI MIFTAHUL HUDA GEMPOL KURUNG', '', '', '2001', 229, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (183, 'SD', 'SD AL MANAR PAKAL SURABAYA', '', '', '2005', 230, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (184, 'SD', 'SDN GEMPOL KURUNG II GRESIK', '', '', '2000', 233, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (185, 'SD', 'SDN NEGERI DADAP KUNING BENJENG', '', '', '2004', 235, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (186, 'SD', 'MI HASYIM ASYARI BENOWO SURABAYA', '', '', '2004', 236, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (187, 'SD', 'MI NURUL HUDA KEPATIHAN GRESIK', '', '', '2008', 237, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (188, 'SD', 'MI NURUL HUDA KEPATIHAN GRESIK', '', '', '1997', 239, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (189, 'SD', 'SDN 1 SIDOREJO', '', '', '2006', 241, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (190, 'SD', 'SD GUNDIH BENOWO', '', '', '2000', 243, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (191, 'SD', 'MI MIFTAHUL JANNAH GREGES', '', '', '1996', 244, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (192, 'SD', 'SDN BENOWO II SURABAYA', '', '', '2005', 246, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (193, 'SD', 'SDN TUBAN', '', '', '', 247, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (194, 'SD', 'sdn lakarsantri', '', '', '', 248, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (195, 'SD', 'SDN GEMPOL KURUNG', '', '', '', 249, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (196, 'SD', 'SDN Hulaan', '', '', '', 251, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (197, 'SD', 'SDN SETRO', '', '', '', 252, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (198, 'SD', 'SDN SURABAYA', '', '', '1991', 253, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (199, 'SD', 'SDN Sumberejo II Surabaya', '', '', '1993', 254, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (200, 'SD', 'SDN PAKAL', '', '', '', 256, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (201, 'SD', 'SDN Kepatihan / Surabaya', '', '', '1992', 259, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (202, 'SD', 'MI Sumberejo II Surabaya', '', '', '1996', 260, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (203, 'SD', 'SD KEDIRI', '', '', '', 262, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (204, 'SD', 'SDN Singgahan', '', '', '1994', 263, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (205, 'SD', 'SDN Gempol Kurung II', '', '', '', 268, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (206, 'SD', 'SDN SURABAYA', '', '', '1996', 269, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (207, 'SD', 'SDN Kertosono', '', '', '', 270, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (208, 'SD', 'SDN KLAKAH REJO I', '', '', '', 272, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (209, 'SD', 'SD Sumberejo II', '', '', '1990', 275, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (210, 'SD', 'SDN Banyu Urip VI', '', '', '2000', 277, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (211, 'SD', 'SDN Pakal Al Manar ', '', '', '1998', 281, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (212, 'SD', 'SDN Sumberejo I', '', '', '1995', 282, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (213, 'SD', 'SDN Kepatihan', '', '', '1999', 283, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (214, 'SD', 'SDN HASYIM ASHARI', '', '', '1999', 285, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (215, 'SD', 'SD BIBIS 113', '', '', '1996', 287, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (216, 'SD', 'SDN PAKAL II/120', '', '', '2002', 289, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (217, 'SD', 'SDN GEMPOL KURUNG 1', '', '', '2000', 290, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (218, 'SD', 'SDN GLURAN PLOSO', '', '', '1997', 292, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (219, 'SD', 'SD AL MANNAR PAKAL SURABAYA', '', '', '1998', 293, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (220, 'SD', 'MI BUNGAH GRESIK', '', '', '1995', 295, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (221, 'SD', 'SDN CAGAK AGUNG', '', '', '2006', 297, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (222, 'SD', 'SDN 1 BOBOH', '', '', '2003', 299, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (223, 'SD', 'SDN BENOWO II SURABAYA', '', '', '1998', 302, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (224, 'SD', 'SDN BABAT JERAWAT', '', '', '1992', 303, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (225, 'SD', 'SDN GEMPOL KURUNG 1', '', '', '1999', 304, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (226, 'SD', 'SDN BENOWO II SURABAYA', '', '', '1998', 305, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (227, 'SD', 'MI MIFTAHUL HUDA GEMPOLKURUNG', '', '', '1998', 309, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (228, 'SD', 'SD RANDU PADANGAN', '', '', '2006', 311, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (229, 'SD', 'SDN SIMOMULYO 1', '', '', '2002', 312, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (230, 'SD', 'SDN Kepatihan', '', '', '1995', 316, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (231, 'SD', 'SDN SURABAYA', '', '', '', 317, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (232, 'SD', 'MI Miftakhul Huda', '', '', '2002', 322, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (233, 'SD', 'SD DARULULLUM TAMBAK REJO', '', '', '2000', 323, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (234, 'SD', 'SDN GEMPOL KURUNG', '', '', '2009', 324, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (235, 'SD', 'MI NURUL HUDA 1 KEPATIHAN', '', '', '2000', 326, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (236, 'SD', 'SDN CERME LOR II', '', '', '2002', 327, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (237, 'SD', 'SD SUMBEREJO II SURABAYA', '', '', '2000', 329, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (238, 'SD', 'SDN 1 SUMBER AGUNG', '', '', '2005', 330, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (239, 'SD', 'MI NURUL HUDA 1 GRESIK', '', '', '2008', 331, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (240, 'SD', 'SD BANGKAH 6 SURABAYA', '', '', '2003', 332, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (241, 'SD', 'SDN 04 TANGGERANG', '', '', '2001', 334, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (242, 'SD', 'SDK KARITAS 2 SURABAYA', '', '', '2005', 335, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (243, 'SD', 'SDN Setro', '', '', '1992', 338, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (244, 'SD', 'MI Drancang', '', '', '2004', 341, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (245, 'SD', 'SDN Sidomulyo III Sby', '', '', '1988', 342, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (246, 'SD', 'SDN Sikatan', '', '', '2009', 344, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (247, 'SD', 'SDN Kandangan', '', '', '2004', 345, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (248, 'SD', 'MI WACHID HASYIM GEMPOL', '', '', '2006', 347, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (249, 'SD', 'SD', '', '', '1999', 348, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (250, 'SD', 'SDN SUKOANYAR', '', '', '1987', 349, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (251, 'SD', 'SDN SLEMPIT', '', '', '2006', 350, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (252, 'SD', 'SD MIM GONDANG BAKI SUKOHARJO', '', '', '2007', 351, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (253, 'SD', 'SDN 1 Barang Trenggalek', '', '', '2007', 352, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (254, 'SD', 'MI Miftahul Huda Gresik', '', '', '2009', 353, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (255, 'SD', 'SDN 2 Simongagrok Dawar Blandong', '', '', '2006', 354, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (256, 'SD', 'SDN 2 Kedungsari', '', '', '2005', 355, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (257, 'SD', 'SD KATHOLIK SANTA MARIA TULUNG AGUNG', '', '', '1992', 356, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (258, 'SD', 'SDN 115 Manukan Kulon Surabaya ', '', '', '1990', 357, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (259, 'SD', ' SDN Perak Utara Teluk Batu ', '', '', '2006', 360, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (260, 'SD', 'SDN Drancang', '', '', '2000', 361, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (261, 'SD', 'SDN KEBRAON 3 SURABAYA', '', '', '1996', 362, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (262, 'SD', 'SDN 1 KELAMPOK', '', '', '2005', 363, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (263, 'SD', 'SDN Glodog Tuban', '', '', '2005', 364, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (264, 'SD', 'SDN Jolotundo 1 Mojokerto', '', '', '2000', 365, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (265, 'SD', 'SDN 1 benowo', '', '', '2004', 366, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (266, 'SD', 'MI AL MUTADI\'IN', '', '', '2001', 367, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (267, 'SD', 'SDN HENDROSARI', '', '', '2006', 368, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (268, 'SD', 'SDN Boboh', '', '', '2006', 369, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (269, 'SD', 'SD Proklamasi SBY ', '', '', '2006', 370, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (270, 'SD', 'SDN KEPATIHAN', '', '', '2007', 371, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (271, 'SD', 'SDN BOBOH', '', '', '2012', 372, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (272, 'SD', 'SD SUKOANYAR', '', '', '2006', 373, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (273, 'SD', 'MI BUSTANHUL SETRO', '', '', '2004', 374, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (274, 'SD', 'SDN KANDANGAN CERME', '', '', '2011', 375, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (275, 'SD', 'MI Miftahul Huda Gresik', '', '', '2007', 378, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (276, 'SD', 'SDN 1 KLAMPOK', '', '', '2014', 379, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (277, 'SD', 'SDN PUTAT JAYA II', '', '', '1995', 392, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (278, 'SD', 'SDN CERME LOR', '', '', '2009', 393, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (279, 'SD', 'SD NEGERI SAMBIKEREP II', '', '', '2006', 394, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (280, 'SMP', 'SMPK STELLA MARIS SURABAYA', '', '', '1994', 1, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (281, 'SMP', 'SMP KANISIUS SUKOREJO JATENG', '', '', '1986', 2, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (282, 'SMP', 'SMP K YOS SUDARSO', '', '', '1984', 3, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (283, 'SMP', 'SMP', '', '', '1985', 4, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (284, 'SMP', 'SMP', '', '', '', 7, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (285, 'SMP', 'SMP KR PETRA 5 SURABAYA', '', '', '2003', 8, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (286, 'SMP', 'SMPN 20 SURABAYA', '', '', '1993', 9, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (287, 'SMP', 'SMP KREISTEN YBPK MOJOKERTO', '', '', '1989', 10, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (288, 'SMP', 'SLTP Sunan Giri Menganti', '', '', '1997', 11, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (289, 'SMP', 'SMP N 01 TARIK SIDOARJO', '', '', '1996', 12, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (290, 'SMP', 'SMP UDKD', '', '', '2007', 13, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (291, 'SMP', 'SMP Budi Mulia Surakarta', '', '', '2012', 14, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (292, 'SMP', 'SMPN 46 Surabaya', '', '', '2013', 15, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (293, 'SMP', 'SMP N 1 MENGANTI', '', '', '2003', 16, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (294, 'SMP', 'SMP N 2 SUKODONO', '', '', '2009', 17, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (295, 'SMP', 'SMP Tsanawiyah, Gresik ', '', '', '1993', 19, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (296, 'SMP', 'SMP', '', '', '1994', 20, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (297, 'SMP', 'SMPN SIDOTOPO', '', '', '1994', 22, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (298, 'SMP', 'SMP Benjeng', '', '', '1993', 23, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (299, 'SMP', 'SMPN I Elektro ', '', '', '1996', 24, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (300, 'SMP', 'SMPN 3 NGAWI', '', '', '2011', 27, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (301, 'SMP', 'MTS WACHID HASYIM SURABAYA', '', '', '1998', 29, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (302, 'SMP', 'SMPN 1 KEDAMEAN', '', '', '2009', 30, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (303, 'SMP', 'MTS MIFTAHUL ULUM PEGANDEN GRESIK', '', '', '2003', 31, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (304, 'SMP', 'SMPN 1 MENGANTI', '', '', '2018', 32, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (305, 'SMP', 'SMP PASURUAN', '', '', '', 33, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (306, 'SMP', 'SMP BINA PUTRA', '', '', '', 34, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (307, 'SMP', 'SMP PGRI I Antartika Buduran, Sidoarjo', '', '', '', 35, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (308, 'SMP', 'MTs Nyai Haji Ashfiyah / SMP', '', '', '', 36, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (309, 'SMP', 'SMP Nurul Huda', '', '', '2000', 38, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (310, 'SMP', 'SMP MUHAMMADDIYAH 4 Balen Bojonegoro', '', '', '1996', 40, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (311, 'SMP', 'SMPN PURWOASRI', '', '', '1999', 41, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (312, 'SMP', 'SMPN CERME', '', '', '2002', 43, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (313, 'SMP', 'SLTPN 1 BENJENG', '', '', '2003', 44, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (314, 'SMP', 'SLTP AL FURQON WEDOROANOM', '', '', '2002', 45, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (315, 'SMP', 'SLTP Giri Surya, Surabaya ', '', '', '1999', 46, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (316, 'SMP', 'smpn 1 cerme', '', '', '1995', 48, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (317, 'SMP', 'SMPN I Cerme, Gresik', '', '', '', 51, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (318, 'SMP', 'SMP RANDU PADANGAN', '', '', '1999', 52, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (319, 'SMP', 'SLTPN DOMAS', '', '', '1997', 54, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (320, 'SMP', 'SMP SANTA AGNES SURABAYA', '', '', '', 55, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (321, 'SMP', 'SLTP 1 BENJENG', '', '', '1998', 56, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (322, 'SMP', 'SMP BAA  Riau', '', '', '1989', 57, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (323, 'SMP', 'SMPN 14 Surabaya', '', '', '2006', 58, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (324, 'SMP', 'SUNAN AMPEL ', '', '', '2007', 59, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (325, 'SMP', 'SMP N 14 PAKAL SURABAYA', '', '', '2005', 60, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (326, 'SMP', 'SMP YPI DARUSSALAM 1 GRESIK', '', '', '2009', 61, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (327, 'SMP', 'SMP N 1 MENGANTI DOMAS', '', '', '2010', 62, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (328, 'SMP', 'SMPN 1 KREMBUNG', '', '', '2011', 63, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (329, 'SMP', 'SMPN 14 SURABAYA', '', '', '2010', 64, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (330, 'SMP', 'SMP YPI DARUSSALAM 1 GRESIK', '', '', '2014', 65, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (331, 'SMP', 'SANTO STANISLAUS I', '', '', '2006', 66, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (332, 'SMP', 'SLTP 11 TAKERAN', '', '', '1993', 67, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (333, 'SMP', 'SMP HANGTUAH 1', '', '', '1982', 68, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (334, 'SMP', 'SMPN 5 SURABAYA', '', '', '1989', 69, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (335, 'SMP', 'SMPN II Pontianak', '', '', '2012', 70, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (336, 'SMP', 'SMPN 5 MALANG', '', '', '', 71, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (337, 'SMP', 'SMPN 4 SURABAYA', '', '', '2008', 72, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (338, 'SMP', 'SMP Negeri 1 Matesih', '', '', '2014', 73, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (339, 'SMP', 'SMPK Angelus Custos 1 Surabaya', '', '', '2011', 74, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (340, 'SMP', 'SMP 6 PONOROGO', '', '', '2005', 75, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (341, 'SMP', 'MTS ROUDLOTUL ULUM', '', '', '2007', 76, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (342, 'SMP', 'SMP NEGERI 4 BOGOR', '', '', '2003', 77, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (343, 'SMP', 'SMPN 6 MADIUN', '', '', '2009', 78, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (344, 'SMP', 'SMP N 1 KEDAMEAN GRESIK', '', '', '2008', 79, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (345, 'SMP', 'SMPK Santo Yusuf Madiun ', '', '', '2007', 80, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (346, 'SMP', 'SMPN 1 SAMARINDA', '', '', '2009', 81, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (347, 'SMP', 'SMP N 14 SURABAYA', '', '', '1993', 82, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (348, 'SMP', 'SMP NEGERI 26 SURABAYA', '', '', '2007', 83, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (349, 'SMP', 'SMPK SANTO YOSEP', '', '', '2006', 84, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (350, 'SMP', 'SMPKR PETRA05', '', '', '2007', 85, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (351, 'SMP', ' SMPN 2 Gondang / Nganjuk ', '', '', '2012', 87, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (352, 'SMP', 'SMPN 20 Malang Malang', '', '', '2010', 88, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (353, 'SMP', 'SMPN 1 Krian / Sidoarjo', '', '', '2011', 89, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (354, 'SMP', 'SMP BINA PUTRA', '', '', '2003', 90, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (355, 'SMP', 'SMPN 1 BALONGPANGGANG GRESIK', '', '', '2010', 91, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (356, 'SMP', 'SMPN 9', '', '', '2005', 92, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (357, 'SMP', 'MTS NEGRI SURABAYA 2', '', '', '2013', 93, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (358, 'SMP', 'SMP Negeri 20 Surabaya', '', '', '2009', 94, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (359, 'SMP', 'SMP NEGERI 1 SURABAYA', '', '', '2004', 95, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (360, 'SMP', ' SLTP Nurul Huda I Kepatihan', '', '', '', 96, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (361, 'SMP', 'SMP NU BARUL ULUM PELEMWATU', '', '', '2011', 98, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (362, 'SMP', 'SMPN 20 Sambi Kerep Surabaya', '', '', '', 100, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (363, 'SMP', 'SMP 1 CERME', '', '', '2009', 101, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (364, 'SMP', 'SLTP Bahrul Ulum Sby', '', '', '2001', 102, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (365, 'SMP', 'SDN Banjarejo III Malang ', '', '', '2001', 103, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (366, 'SMP', 'SMP Barunawati', '', '', '1998', 104, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (367, 'SMP', 'SMP WIJAYA PUTRA SURABAYA', '', '', '2011', 105, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (368, 'SMP', 'SMPN 14 SURABAYA', '', '', '2002', 106, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (369, 'SMP', 'SMP WACHID HASYIM 1 SIDOTOPO', '', '', '2012', 107, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (370, 'SMP', 'SMPN 14 Surabaya', '', '', '2008', 108, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (371, 'SMP', 'MTSN 2 SURABAYA', '', '', '2013', 109, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (372, 'SMP', 'SMP 1 N TUBAN', '', '', '2013', 110, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (373, 'SMP', 'SMPN 1 BANGIL', '', '', '2005', 111, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (374, 'SMP', 'SMPN 25 SURABAYA', '', '', '2008', 112, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (375, 'SMP', 'SMPN 2 SUMBERPULUNG', '', '', '2007', 113, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (376, 'SMP', 'SMP Muhammadiyah I Gresik', '', '', '2011', 114, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (377, 'SMP', 'SMPN 1 MENGANTI', '', '', '2012', 115, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (378, 'SMP', 'SMPN 1 BALONGPANGGANG GRESIK', '', '', '2006', 116, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (379, 'SMP', 'SMPN14 BENOWO SURABYA', '', '', '', 117, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (380, 'SMP', 'SMPN KEDUNGSARI', '', '', '1993', 118, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (381, 'SMP', 'SMPK ST VINCENTIUS SURABAYA', '', '', '2008', 119, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (382, 'SMP', 'SMP N 35 SURABAYA', '', '', '2006', 120, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (383, 'SMP', 'SMP Kepatihan', '', '', '2003', 121, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (384, 'SMP', 'SMPN 2 MENGANTI', '', '', '2012', 122, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (385, 'SMP', 'MTSN', '', '', '2008', 123, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (386, 'SMP', 'SMP PGRI 52 SURABAYA', '', '', '1988', 124, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (387, 'SMP', 'SMPN 22 SURABAYA', '', '', '2014', 125, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (388, 'SMP', 'SMPK SANTO COROLUS', '', '', '2011', 126, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (389, 'SMP', 'SLTPN 14 Surabaya', '', '', '', 129, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (390, 'SMP', 'SMP Lumajang', '', '', '1999', 130, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (391, 'SMP', 'MTS BABAT', '', '', '', 133, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (392, 'SMP', 'SMP Atambua', '', '', '', 134, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (393, 'SMP', 'MTSN 2 Surabaya', '', '', '2004', 135, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (394, 'SMP', 'SMPN2 BENJENG', '', '', '2009', 136, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (395, 'SMP', 'SLTP nurul huda', '', '', '2000', 137, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (396, 'SMP', 'SMPN 1 TRAWAS', '', '', '2010', 140, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (397, 'SMP', 'SMP SUNAN AMPEL', '', '', '2009', 141, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (398, 'SMP', 'SMPN 2 MENGANTI', '', '', '2007', 142, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (399, 'SMP', 'SMP SUNAN AMPEL DRANCANG GRESIK', '', '', '2011', 143, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (400, 'SMP', 'SMPN 2 CERME', '', '', '2018', 144, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (401, 'SMP', 'SMPN II DAWAR BLANDONG', '', '', '2011', 145, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (402, 'SMP', 'SMP 1 CERME GRESIK', '', '', '2012', 146, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (403, 'SMP', 'MTS Bangil / Pasuruan', '', '', '1995', 147, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (404, 'SMP', 'SLTPN 15 Surabaya', '', '', '1995', 149, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (405, 'SMP', 'SMP KEPATIHAN', '', '', '', 150, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (406, 'SMP', 'SMP NEGERI MEGALUH', '', '', '1995', 151, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (407, 'SMP', 'SMP Benowo', '', '', '2005', 152, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (408, 'SMP', 'SLTPN 14 Surabaya', '', '', '2007', 153, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (409, 'SMP', 'SLTPN I Menganti', '', '', '2005', 154, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (410, 'SMP', 'SLTPN 14 Surabaya', '', '', '2001', 155, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (411, 'SMP', 'SMP Nurul Huda ', '', '', '1999', 156, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (412, 'SMP', 'SMP KEPATIHAN', '', '', '2004', 157, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (413, 'SMP', 'SMP UDKP', '', '', '2007', 158, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (414, 'SMP', 'SLTPN BENOWO', '', '', '2003', 159, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (415, 'SMP', 'SMPN 14 Surabaya', '', '', '2013', 161, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (416, 'SMP', 'SMP SUNSN GIRI', '', '', '2007', 162, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (417, 'SMP', 'SMPN 3 KASESI', '', '', '2005', 163, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (418, 'SMP', 'SMP SEMBON', '', '', '', 164, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (419, 'SMP', ' SLTP Sunan Giri, Menganti', '', '', '', 165, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (420, 'SMP', 'SDN Made I', '', '', '', 168, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (421, 'SMP', 'SMP Jos sudarso', '', '', '1994', 169, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (422, 'SMP', 'SMP Siti Aminah', '', '', '', 170, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (423, 'SMP', 'Madarasah Tsanawiyah/SMP', '', '', '', 171, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (424, 'SMP', 'SMPN CERME', '', '', '', 172, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (425, 'SMP', 'MTs Imam Syafi\'I tahun', '', '', '1993', 173, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (426, 'SMP', 'SMP', '', '', '', 177, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (427, 'SMP', 'SMPN SURABAYA', '', '', '1998', 178, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (428, 'SMP', 'SMPN 14 Jurang Kuping', '', '', '2000', 179, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (429, 'SMP', 'SMPN 14 Surabaya', '', '', '2006', 181, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (430, 'SMP', 'MTS N 2 SURABAYA', '', '', '2007', 182, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (431, 'SMP', 'SMPN 1 BANCAR', '', '', '2007', 184, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (432, 'SMP', 'SMP MA\'ARIF NU BENJENG', '', '', '2009', 185, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (433, 'SMP', 'SMP YPI DARUSALAM 1 CERME', '', '', '2008', 187, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (434, 'SMP', 'SLTPN 14 BENOWO SURABAYA', '', '', '2002', 188, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (435, 'SMP', 'SMPN 1 MENGANTI GRESIK', '', '', '2008', 189, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (436, 'SMP', 'SMPN 2 CERME GRESIK', '', '', '2006', 190, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (437, 'SMP', 'SMP MUHAMMADIYAH BENJENG', '', '', '2008', 191, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (438, 'SMP', 'SMPN 26 SURABAYA', '', '', '2007', 192, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (439, 'SMP', 'MTS THORIQUL HUDA RANDU PADANGAN', '', '', '2001', 193, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (440, 'SMP', 'SMPN 14 BENOWO', '', '', '1999', 194, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (441, 'SMP', 'MTS NEGRI 3 SURABAYA', '', '', '2005', 197, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (442, 'SMP', 'SMPN KEDAMEAN GRESIK', '', '', '2009', 198, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (443, 'SMP', 'SLTP NEGRI 10', '', '', '2002', 199, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (444, 'SMP', 'SMPN 1 MENGANTI GRESIK', '', '', '2005', 200, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (445, 'SMP', 'SMPN III BALONG PANGGANG', '', '', '2010', 204, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (446, 'SMP', 'SMPN 20 SAMBIKEREP', '', '', '2001', 205, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (447, 'SMP', 'MTS BANJAREJO', '', '', '2005', 206, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (448, 'SMP', 'SMPN 14 SURABAYA', '', '', '2008', 207, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (449, 'SMP', 'SLTPN 20 SAMBIKEREP', '', '', '2002', 208, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (450, 'SMP', 'SMP BANI HASYIM LENGKONG', '', '', '2006', 210, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (451, 'SMP', ' SMP AL AZHAR MENGANTI GRESIK', '', '', '2008', 211, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (452, 'SMP', 'SMP AL AZAR', '', '', '2001', 213, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (453, 'SMP', 'SMP JOMBANG', '', '', '2003', 215, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (454, 'SMP', 'MTS PA PI LAMONGAN', '', '', '2005', 216, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (455, 'SMP', 'SMP N 1 MENGANTI', '', '', '2001', 217, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (456, 'SMP', 'SMP MUHAMMADIYAH 07', '', '', '2007', 218, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (457, 'SMP', 'SMP I KEPATIHAN', '', '', '2009', 219, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (458, 'SMP', 'SMP 1 KRIAN', '', '', '2003', 220, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (459, 'SMP', 'SLTP AL FURQON WEDORO ANOM DRIYOREJO', '', '', '2002', 221, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (460, 'SMP', 'SMPN 2 CERME', '', '', '2009', 222, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (461, 'SMP', 'SMP WACHID HASYIM 7 SURABAYA', '', '', '2006', 223, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (462, 'SMP', 'SLTP WACHID HASYIM 7 SURABAYA', '', '', '2000', 225, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (463, 'SMP', 'SMP KEPATIHAN', '', '', '2001', 227, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (464, 'SMP', 'SMPN I BALONG P[ANGGANG', '', '', '2003', 228, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (465, 'SMP', 'SMP Wachid Hasyim 7 Surabaya', '', '', '2004', 229, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (466, 'SMP', 'SMP Wachid Hasyim 7 Surabaya', '', '', '2008', 230, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (467, 'SMP', 'SLTP WACHID HASYIM 7 SURABAYA', '', '', '2003', 233, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (468, 'SMP', 'SMP NEGERI 1 CERME GRESIK', '', '', '2007', 235, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (469, 'SMP', 'SMP WACHID HASYIM SURABAYA', '', '', '2007', 236, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (470, 'SMP', 'SMP NURUL HUDA KEPATIHAN GRESIK', '', '', '2008', 237, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (471, 'SMP', 'SLTP NURUL HUDA KEPATIHAN GRESIK', '', '', '2000', 239, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (472, 'SMP', 'MTSN 1 SIDOREJO', '', '', '2009', 241, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (473, 'SMP', 'SLTP BINA PUTRA BENOWO', '', '', '2003', 243, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (474, 'SMP', 'SMP WAHID HASYIM 2 SURABAYA', '', '', '1999', 244, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (475, 'SMP', 'SMP WACHID HASYIM SURABAYA', '', '', '2008', 246, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (476, 'SMP', 'SMP TUBAN', '', '', '', 247, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (477, 'SMP', 'SMP PGRI 70 Surabaya', '', '', '', 248, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (478, 'SMP', 'SMPn 14 Benowo / Surabaya', '', '', '', 249, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (479, 'SMP', 'SMP Sunan Giri Menganti / Gresik', '', '', '', 251, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (480, 'SMP', 'SMP Sunan Giri Menganti / Gresik', '', '', '', 252, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (481, 'SMP', 'SMPN SURABAYA', '', '', '1994', 253, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (482, 'SMP', 'SMP Wachid Hasyim 7 Surabaya', '', '', '1995', 254, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (483, 'SMP', 'SMP Yos Sudarso / Tandes / Surabaya', '', '', '', 255, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (484, 'SMP', 'SMP Bina Putra Benowo / Surabaya', '', '', '', 256, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (485, 'SMP', 'SMP Nurul Huda Benowo / Surabaya', '', '', '1995', 259, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (486, 'SMP', 'SMP wachid Hasyim', '', '', '', 260, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (487, 'SMP', 'SMPN KEDIRI', '', '', '', 262, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (488, 'SMP', 'SMP Singgahan', '', '', '1997', 263, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (489, 'SMP', 'SMP Wachid Hasyim 7 Sby', '', '', '', 265, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (490, 'SMP', 'SLTP PGRI 4 Banyuwangi', '', '', '', 267, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (491, 'SMP', 'SLTPN 14 Surabaya', '', '', '', 268, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (492, 'SMP', 'SLPN SURABAYA', '', '', '1999', 269, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (493, 'SMP', 'SDN Kertosono', '', '', '', 270, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (494, 'SMP', 'SMP 14 SURABAYA', '', '', '', 272, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (495, 'SMP', 'SMP Wachid Hasyim 7 Surabaya', '', '', '1993', 275, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (496, 'SMP', 'SMP Simo Mulyo', '', '', '2003', 277, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (497, 'SMP', 'SMP Imam Syafi\'I Surabaya', '', '', '2001', 281, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (498, 'SMP', 'SMP Bina Putra', '', '', '1998', 282, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (499, 'SMP', 'SLTPN 14 Surabaya', '', '', '2002', 283, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (500, 'SMP', 'SLPN 14 SURABAYA', '', '', '2001', 285, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (501, 'SMP', 'SLTPN 14 BENOWO', '', '', '1999', 287, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (502, 'SMP', 'SLTPN 14 BENOWO', '', '', '2005', 289, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (503, 'SMP', 'SLTP NURUL HUDA KEPATIHAN', '', '', '2003', 290, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (504, 'SMP', 'SMP MA\'ARIF BENJENG', '', '', '2000', 292, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (505, 'SMP', 'SMP AL AZHAR BEJI SURABAYA', '', '', '2001', 293, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (506, 'SMP', 'SMP MUHAMMADIYAH 10 BUNGAH GRESIK', '', '', '1998', 295, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (507, 'SMP', 'SMPN 1 CERME GRESIK', '', '', '2009', 297, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (508, 'SMP', 'SMPN 1 MENGANTI', '', '', '2006', 299, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (509, 'SMP', 'SMP IMAM SYAFI\'I BABATJERAWAT SURABAYA', '', '', '2001', 302, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (510, 'SMP', 'SMPN 14 SURABAYA', '', '', '1995', 303, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (511, 'SMP', 'SLTP Sunan Giri Menganti', '', '', '2002', 304, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (512, 'SMP', 'SLTP 14 SURABAYA', '', '', '2001', 305, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (513, 'SMP', 'SLTPN 1 MENGANTI', '', '', '2001', 309, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (514, 'SMP', 'SMP AL AZHAR', '', '', '2009', 311, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (515, 'SMP', 'SMP PAWIYATAN', '', '', '2005', 312, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (516, 'SMP', ' SMP Terbuka negeri 14 Surabaya', '', '', '1998', 314, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (517, 'SMP', 'SMPN Negeri I Menganti', '', '', '1997', 316, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (518, 'SMP', 'MTS NGANJUK', '', '', '', 317, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (519, 'SMP', 'SMP Nurul Huda', '', '', '2005', 322, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (520, 'SMP', 'SMP DARULULLUM TAMBAK REJO', '', '', '2003', 323, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (521, 'SMP', 'SMP WACHID HASYIM', '', '', '2012', 324, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (522, 'SMP', 'SMP WACHID HASYIM 05', '', '', '2003', 326, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (523, 'SMP', 'SMPN I CERME', '', '', '2005', 327, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (524, 'SMP', 'SLTPN 14 SURABAYA', '', '', '2003', 329, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (525, 'SMP', 'SMPN 1 MOJOSARI', '', '', '2007', 330, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (526, 'SMP', 'SMP Wachid Hasyim 07 Benowo', '', '', '2011', 331, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (527, 'SMP', 'SMPN 1 SURABAYA', '', '', '2006', 332, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (528, 'SMP', 'SMPN 16 TANGGERANG', '', '', '2004', 334, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (529, 'SMP', 'SMPK SANTO YOSEF SURABAYA', '', '', '2008', 335, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (530, 'SMP', 'SMP Sunan Giri Menganti', '', '', '1995', 338, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (531, 'SMP', 'SMP Bandut', '', '', '2007', 341, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (532, 'SMP', 'SMP WR Supratman Sby ', '', '', '1991', 342, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (533, 'SMP', 'SMP SAMBIKEREP', '', '', '2012', 344, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (534, 'SMP', 'SLTP Dungus', '', '', '2007', 345, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (535, 'SMP', 'MTS ASYAHROH KASIAN', '', '', '2009', 347, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (536, 'SMP', 'MTS', '', '', '2002', 348, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (537, 'SMP', 'SLTPN NGORO', '', '', '1990', 349, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (538, 'SMP', 'SMPN 1 KEDAMEAN', '', '', '2009', 350, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (539, 'SMP', 'SMO TA\'MIRUL ISLAM SURAKARTA', '', '', '2010', 351, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (540, 'SMP', 'SMPN 3 Panggul Trenggalek', '', '', '2010', 352, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (541, 'SMP', 'MTs Assa\'diyah Gresik', '', '', '2012', 353, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (542, 'SMP', 'SMPN 2  Dawar Blandong', '', '', '2010', 354, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (543, 'SMP', 'SMPN 1 PURWOHARJO', '', '', '2008', 355, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (544, 'SMP', 'SMP KATHOLIK SANTA MARIA', '', '', '1995', 356, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (545, 'SMP', 'SMPN 20 Sambi Kerep Surabaya', '', '', '1993', 357, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (546, 'SMP', 'SMP Al Ikhlas ', '', '', '2009', 360, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (547, 'SMP', 'SMP Sunan Ampel', '', '', '2003', 361, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (548, 'SMP', 'SMP MUHAMMADUYAH 2 TAMAN SIDOARJO', '', '', '1999', 362, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (549, 'SMP', 'MTS YPM 6 KEDUNG SEKAR', '', '', '2008', 363, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (550, 'SMP', 'SDN Glodog Tuban', '', '', '2008', 364, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (551, 'SMP', 'SMPN 1 Jetis Mojokerto', '', '', '2003', 365, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (552, 'SMP', 'SMPN 14 Benowo', '', '', '2007', 366, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (553, 'SMP', 'SMP DARUSALAM KATIMOHO', '', '', '2004', 367, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (554, 'SMP', 'SMP 1 MENGANTI', '', '', '2009', 368, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (555, 'SMP', 'SMPN 1 MENGANTI', '', '', '2009', 369, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (556, 'SMP', 'MP N 17 Sby', '', '', '2009', 370, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (557, 'SMP', 'SMPN 14 SURABAYA', '', '', '2010', 371, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (558, 'SMP', 'SMP YPI DARUSSALAM 01 CERME', '', '', '2015', 372, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (559, 'SMP', 'SMP MUHAMMADIYAH 07 MOROWUDI GRESIK', '', '', '2009', 373, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (560, 'SMP', 'MTSN 2 SURABAYA', '', '', '2007', 374, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (561, 'SMP', 'SMPN II CERME', '', '', '2014', 375, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (562, 'SMP', 'SMPN 1 MENGANTI', '', '', '1999', 376, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (563, 'SMP', 'SMPN I CERME', '', '', '2010', 378, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (564, 'SMP', 'SMPN 1 BENJENG', '', '', '2017', 379, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (565, 'SMP', 'SLTP PGRI 47', '', '', '1998', 392, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (566, 'SMP', 'SMP YPI DARUSALAM 1 CERME', '', '', '2012', 393, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (567, 'SMP', 'SMP WARDHANI SURABAYA', '', '', '2009', 394, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (568, 'SMA', 'SMUK FRATELON SURABAYA', '', '', '1997', 1, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (569, 'SMA', 'SMA BT IKA JAKARTA (1988/1989)', '', '', '1989', 2, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (570, 'SMA', 'SMA K ST PAULUS', '', '', '1987', 3, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (571, 'SMA', 'SMA', '', '', '1988', 4, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (572, 'SMA', 'SMA GIKI 2', '', '', '1996', 7, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (573, 'SMA', 'SMA KR PETRA 5 SURABAYA', '', '', '2006', 8, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (574, 'SMA', 'SMA SARIPRAJA', '', '', '1996', 9, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (575, 'SMA', 'SMA PGRI 1 MOJOKERTO', '', '', '1992', 10, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (576, 'SMA', 'SMK Sunan Giri (AKUNTANSI)', '', '', '2000', 11, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (577, 'SMA', 'SMU NEGRI 2 MOJOKERTO', '', '', '1997', 12, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (578, 'SMA', 'SMK NASIONAL DWR', '', '', '2010', 13, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (579, 'SMA', 'SMK 6 Budi Mulia DP Jakarta', '', '', '2015', 14, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (580, 'SMA', 'SMAN 2 Surabaya', '', '', '2016', 15, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (581, 'SMA', 'SMAN 1 MENGANTI', '', '', '2006', 16, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (582, 'SMA', 'SMK N 1 SURABAYA', '', '', '2012', 17, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (583, 'SMA', 'SMA YPM Panjunan Sukodono / sidoarjo', '', '', '1998', 18, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (584, 'SMA', 'SMU NU 1, Gresik', '', '', '1996', 19, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (585, 'SMA', 'SMK PGRI 6 Surabaya', '', '', '1997', 20, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (586, 'SMA', 'SMKN Cerme Listrik', '', '', '2002', 21, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (587, 'SMA', 'SMA IPA Sidotopo', '', '', '1997', 22, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (588, 'SMA', 'SMA Benjeng', '', '', '1996', 23, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (589, 'SMA', 'SMAN I IPS', '', '', '1999', 24, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (590, 'SMA', 'SMA swasta bintang diponggo', '', '', '1992', 25, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (591, 'SMA', 'SMK KOSGORO NGAWI', '', '', '2014', 27, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (592, 'SMA', 'SMK PGRI II SURABAYA', '', '', '2001', 29, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (593, 'SMA', 'SMK PGRI II GRESIK', '', '', '2012', 30, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (594, 'SMA', 'SMK YASMU GRESIK', '', '', '2006', 31, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (595, 'SMA', 'SMA N 1 CERME', '', '', '2021', 32, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (596, 'SMA', 'SMK Teknik Mesin YPI Darussalam', '', '', '', 42, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (597, 'SMA', 'SMAN 1 CERME', '', '', '2005', 43, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (598, 'SMA', 'KEJAR PAKET C', '', '', '2014', 44, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (599, 'SMA', 'STM Siang, Jurusan Otomotif, Surabaya ', '', '', '2002', 46, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (600, 'SMA', 'STM Mesin Simo', '', '', '1992', 47, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (601, 'SMA', 'SMU barul ulum jombang', '', '', '1998', 48, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (602, 'SMA', 'SMP PGRI PLAOSAN MAGETAN', '', '', '1991', 49, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (603, 'SMA', 'SMA PANCA BAKTI MAGETAN', '', '', '2001', 50, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (604, 'SMA', 'SMU YPI DARUSSALAM', '', '', '2000', 54, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (605, 'SMA', 'SMA KR PETRA SURABAYA', '', '', '', 55, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (606, 'SMA', 'SMUN 1 CERME', '', '', '2001', 56, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (607, 'SMA', 'SMA Medan', '', '', '1992', 57, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (608, 'SMA', 'SMK Wijaya Putra Akuntansi Surabaya', '', '', '2009', 58, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (609, 'SMA', 'SMAN 1 MENGANTI', '', '', '2010', 59, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (610, 'SMA', 'SMA N 12 SEMEMI SURABYA', '', '', '2008', 60, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (611, 'SMA', 'SMK N 1 CERME GRESIK', '', '', '2012', 61, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (612, 'SMA', 'SMK N 1 CERME GRESIK', '', '', '2013', 62, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (613, 'SMA', 'SMKN 2 BUDURAN', '', '', '2014', 63, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (614, 'SMA', 'SMA SUNAN GIRI', '', '', '2013', 64, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (615, 'SMA', 'SMK YPI 2 DARUSALAM CERME GRESIK', '', '', '2017', 65, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (616, 'SMA', 'SANTA AGNES', '', '', '2009', 66, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (617, 'SMA', 'SLTA I KAWEDANAN', '', '', '1996', 67, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (618, 'SMA', 'SMA HANGTUAH 1', '', '', '1985', 68, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (619, 'SMA', 'SMA BARUNAWATI', '', '', '1992', 69, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (620, 'SMA', 'SMKN 03 Pontianak', '', '', '2015', 70, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (621, 'SMA', 'SMT GRAFITIKA NEGERI MALANG', '', '', '', 71, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (622, 'SMA', 'SMAN 4 SURABAYA', '', '', '2001', 72, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (623, 'SMA', 'SMK Muhammadiyah 03 Karanganyar', '', '', '2017', 73, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (624, 'SMA', 'SMAK Frateran Surabaya', '', '', '2014', 74, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (625, 'SMA', 'SMA N 3 PONOROGO', '', '', '2008', 75, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (626, 'SMA', 'SMAN 1 NGORO', '', '', '2010', 76, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (627, 'SMA', 'SMA NEGERI 1 SIDOARJO', '', '', '2006', 77, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (628, 'SMA', 'SMAN 5 MADIUN', '', '', '2012', 78, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (629, 'SMA', 'SMK N 1CERME GRESIK', '', '', '2011', 79, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (630, 'SMA', 'SMAN III Madiun', '', '', '2010', 80, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (631, 'SMA', 'SMA N 1 SAMARINDA', '', '', '2012', 81, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (632, 'SMA', 'SMAN 12 SURABAYA', '', '', '1996', 82, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (633, 'SMA', 'SMAN 11 SURABAYA', '', '', '2010', 83, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (634, 'SMA', 'SMA SANTA MARIA', '', '', '2009', 84, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (635, 'SMA', 'SMAKR PERTA 05', '', '', '2010', 85, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (636, 'SMA', 'SMAN I Gondang IPA / Nganjuk', '', '', '2015', 87, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (637, 'SMA', ' SMA Laboratorium UM IPA Malang', '', '', '2013', 88, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (638, 'SMA', 'SMK Farmasi Krian / Sidoarjo', '', '', '2015', 89, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (639, 'SMA', 'SMKN 2 SURABAYA', '', '', '2006', 90, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (640, 'SMA', 'SMA ASSA\'ADAH GRESIK', '', '', '2013', 91, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (641, 'SMA', 'SMAN 1 CIAWI', '', '', '2008', 92, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (642, 'SMA', 'SMA NEGRI 1 CERME', '', '', '2016', 93, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (643, 'SMA', 'SMA TA\'miriyah Surabaya', '', '', '2012', 94, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (644, 'SMA', 'SMA NEGERI 5 SURABAYA', '', '', '2007', 95, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (645, 'SMA', ' SMU PGRI I Martapura Kalimantan Selatan', '', '', '', 96, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (646, 'SMA', 'SMEA Negeri I Wonokromo Surabaya', '', '', '1993', 97, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (647, 'SMA', 'SMK N 1 CERME(ANALIS KIMIA)', '', '', '2014', 98, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (648, 'SMA', 'SMK Negeri 2 Surabaya ', '', '', '', 99, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (649, 'SMA', 'SMA N 1 CERME', '', '', '2012', 101, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (650, 'SMA', 'SMEA Kawung II Surabaya Sekretaris', '', '', '2004', 102, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (651, 'SMA', 'SMAN I Tumpang Malang', '', '', '2004', 103, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (652, 'SMA', 'SMU Barunawati Pabean Cantian Surabaya', '', '', '2001', 104, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (653, 'SMA', 'SMK WIJAYA PUTRA', '', '', '2014', 105, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (654, 'SMA', 'SMK SIANG SURABAYA', '', '', '2005', 106, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (655, 'SMA', 'SMA PKBM TUNAS HARAPAN (PAKET C)', '', '', '2017', 107, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (656, 'SMA', 'SMK FARMASI SURABAYA', '', '', '2011', 108, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (657, 'SMA', 'SMKF SEKESAL SURABAYA', '', '', '2016', 109, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (658, 'SMA', 'SMA N 1 TUBAN', '', '', '2016', 110, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (659, 'SMA', 'SMAN 1 BANGIL', '', '', '2008', 111, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (660, 'SMA', 'SMK KAWUNG 2,JURUSAN AKUNTANSI SURABAYA', '', '', '2011', 112, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (661, 'SMA', 'SMAN 5 MALANG', '', '', '2010', 113, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (662, 'SMA', 'SMA Yasmu IPA Manyar Gresik', '', '', '2014', 114, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (663, 'SMA', 'SMAN 1 MENGANTI', '', '', '2015', 115, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (664, 'SMA', 'MA HIDAYATHUL UMMAH BALONGPANGGANG GRESIK', '', '', '2008', 116, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (665, 'SMA', 'SMA NEGERI 12 SEMEMI SURABAYA', '', '', '', 117, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (666, 'SMA', 'SMAN SENTOLO', '', '', '1996', 118, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (667, 'SMA', 'SMAK ST LOUIS II SURABAYA', '', '', '2011', 119, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (668, 'SMA', 'SMA FARMASI SURABAYA', '', '', '2009', 120, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (669, 'SMA', 'SMA Menganti', '', '', '2006', 121, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (670, 'SMA', 'SMAN 1 MENGANTI', '', '', '2015', 122, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (671, 'SMA', 'SMKN BOYOLANGU KIMIA INDUSTRI TULUNGAGUNG', '', '', '2011', 123, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (672, 'SMA', 'SMAN 15 SURABAYA', '', '', '2017', 125, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (673, 'SMA', 'SMS st. LOUIS 1', '', '', '2014', 126, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (674, 'SMA', 'SMA Negeri 12 Surabaya', '', '', '', 127, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (675, 'SMA', 'Madrasah Aliyah Imam Syafi\'I Benowo / Surabaya', '', '', '', 128, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (676, 'SMA', 'SMU Sunan Giri', '', '', '', 129, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (677, 'SMA', 'SMA Lumajang', '', '', '2000', 130, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (678, 'SMA', 'SMA Negeri Kedamean', '', '', '2005', 131, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (679, 'SMA', 'SMA AL Azhar Menganti', '', '', '2000', 132, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (680, 'SMA', 'MA BABAT', '', '', '', 133, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (681, 'SMA', 'SMK Akutansi Atambua', '', '', '', 134, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (682, 'SMA', 'SMA Kartika V3 IPA Kodam', '', '', '2006', 135, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (683, 'SMA', 'SMA MUHAMMADIYAH 08 CERME', '', '', '2012', 136, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (684, 'SMA', 'SMAN 1 MENGANTI', '', '', '2003', 137, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (685, 'SMA', 'STM SIANG SURABAYA', '', '', '2005', 138, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (686, 'SMA', 'SMA N 1 TRAWAS', '', '', '2013', 140, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (687, 'SMA', 'SMK SUNAN AMPEL', '', '', '2012', 141, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (688, 'SMA', 'SMKN 1 CERME (TKJ)', '', '', '2010', 142, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (689, 'SMA', 'SMK SUNAN AMPEL DRANCANG GRESIK', '', '', '2015', 143, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (690, 'SMA', 'SMK MUHAMADIYAH CERME GRESIK', '', '', '2021', 144, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (691, 'SMA', 'SMAN I GEDEG MOJOKERTO', '', '', '2014', 145, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (692, 'SMA', 'SMKN 1 CERME GRESIK', '', '', '2015', 146, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (693, 'SMA', 'SMU Al Azhar', '', '', '', 148, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (694, 'SMA', 'SMUN 19 Surabaya (IPS)', '', '', '1998', 149, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (695, 'SMA', 'SMU Sunan Giri Menganti', '', '', '', 150, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (696, 'SMA', 'SMK NEGERI 1 JOMBANG', '', '', '1998', 151, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (697, 'SMA', 'SMA Lempung Perdana', '', '', '', 152, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (698, 'SMA', 'SMK Karman Amat Surabaya jurusan mekanik otomotif', '', '', '2005', 153, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (699, 'SMA', 'SMK Penerbangan Megetan Jurusan Kompetensi Elektro', '', '', '2007', 154, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (700, 'SMA', 'SMA Negeri I menganti', '', '', '2004', 155, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (701, 'SMA', 'SMU Karman Amat', '', '', '2002', 156, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (702, 'SMA', 'SMAN 1 MENGANTI', '', '', '2007', 157, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (703, 'SMA', 'SMK NATIONAL OTOMATIS DAWAR BLANDONG GRESIK', '', '', '2010', 158, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (704, 'SMA', 'SMA SUNAN GIRI MENGANTI GRESIK', '', '', '2006', 159, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (705, 'SMA', 'SMU Sunan Giri Menganti', '', '', '2002', 160, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (706, 'SMA', 'SMK DARMA BAHARI SURABAYA', '', '', '2016', 161, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (707, 'SMA', 'SMKN 1 CERME', '', '', '2010', 162, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (708, 'SMA', 'SMK NU KASESESI', '', '', '2008', 163, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (709, 'SMA', 'SMU Sunan Giri, Menganti', '', '', '', 165, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (710, 'SMA', 'SMK Wijaya Putra I', '', '', '', 168, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (711, 'SMA', 'SMEA Kartini Sukomanunggal / Surabaya', '', '', '1997', 169, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (712, 'SMA', 'SMA PGRI 5 Surabaya', '', '', '1995', 170, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (713, 'SMA', 'SMEA Bhakti Cerme', '', '', '', 172, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (714, 'SMA', 'SMU AL AZHAR BENOWO / SURABAYA', '', '', '2000', 174, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (715, 'SMA', 'SMEA Pawiyatan Surabaya', '', '', '', 175, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (716, 'SMA', 'SMEA Pemuda Kesamben Blitar', '', '', '1995', 176, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (717, 'SMA', 'SMK Swasta Surabaya jurusan Akuntansi', '', '', '2001', 178, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (718, 'SMA', 'SMU Hang Tuah jurusan IPS', '', '', '2003', 179, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (719, 'SMA', 'SMK Pawiyatan Sekretaris', '', '', '2003', 180, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (720, 'SMA', ' MA Imam Syafi\'I IPA', '', '', '2009', 181, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (721, 'SMA', 'SMA WACHID HASYIM', '', '', '2010', 182, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (722, 'SMA', 'SMA WACHID HASYIM 5 SURABYA', '', '', '2007', 183, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (723, 'SMA', 'SMK ABDI NEGARA TUBAN', '', '', '2010', 184, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (724, 'SMA', 'SMA MA\'ARIF NU BENJENG', '', '', '2012', 185, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (725, 'SMA', 'SMA MUHAMMADIYAH 08 CERME', '', '', '2010', 186, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (726, 'SMA', 'SMK YPI DARUSALAM 2 CERME', '', '', '2011', 187, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (727, 'SMA', 'SMA NEGERI 1 MENGANTI', '', '', '2005', 188, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (728, 'SMA', 'SMA NEGERI 1 MENGANTI', '', '', '2010', 189, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (729, 'SMA', 'SMAN 1 CERME', '', '', '2009', 190, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (730, 'SMA', 'SMK MUHAMMADIYAH 2 GRESIK', '', '', '2011', 191, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (731, 'SMA', 'SMA SHAFTA SURABAYA', '', '', '2010', 192, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (732, 'SMA', 'MA MIFTAHUL ULUM TELAGA BEDAH', '', '', '2004', 193, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (733, 'SMA', 'SMK WIJAYA PUTRA', '', '', '2003', 194, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (734, 'SMA', 'SMA NEGERI 1 MENGANTI GRESIK', '', '', '2007', 195, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (735, 'SMA', 'SMU SUNANGIRI MENGANTI GRESIK', '', '', '2001', 196, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (736, 'SMA', 'SMA NEGRI 12 SURABAYA', '', '', '2008', 197, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (737, 'SMA', 'SMA SUNAN GIRI MENGANTI', '', '', '2011', 198, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (738, 'SMA', 'SMAN 1 CERME', '', '', '2005', 199, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (739, 'SMA', 'SMAN 1 MENGANTI GRESIK', '', '', '2008', 200, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (740, 'SMA', 'SMA WIJAYA PUTRA', '', '', '1995', 201, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (741, 'SMA', 'SMA WIJAYA KUSUMA', '', '', '2004', 202, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (742, 'SMA', 'SMA NEGERI 1 MENGANTI Gresik', '', '', '2008', 203, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (743, 'SMA', 'SMK HIDAYATHUL UMMAH', '', '', '2013', 204, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (744, 'SMA', 'SMK WIJAYA PUTRA', '', '', '2004', 205, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (745, 'SMA', 'MA BANJAREJO', '', '', '2008', 206, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (746, 'SMA', 'SMAN 12 SURABAYA', '', '', '2011', 207, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (747, 'SMA', 'SMK SATYA WIDYA', '', '', '2005', 208, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (748, 'SMA', 'SMA TRIKARYA', '', '', '1996', 209, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (749, 'SMA', 'SMA BANI HASYIM LENGKONG', '', '', '2009', 210, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (750, 'SMA', 'SMKN 1 CERME GRESIK', '', '', '2011', 211, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (751, 'SMA', 'SMA SUNAN GIRI', '', '', '2005', 212, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (752, 'SMA', 'SMA AL AZHAR', '', '', '2004', 213, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (753, 'SMA', 'SMAN 1 MENGANTI', '', '', '2006', 214, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (754, 'SMA', 'SMA YPI DARUS SALAM CERME GRESIK', '', '', '2006', 215, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (755, 'SMA', 'SMA PANCA MARGA 1 LAMONGAN', '', '', '2008', 216, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (756, 'SMA', 'SMAN 11 Surabaya', '', '', '2004', 217, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (757, 'SMA', 'SMA WACHID HASYIM SEMEMI', '', '', '2010', 218, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (758, 'SMA', 'SMA WACHID HASYIM SEMEMI', '', '', '2012', 219, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (759, 'SMA', 'SMAN 1 MENGANTI', '', '', '2006', 220, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (760, 'SMA', 'SMAN 1 CERME', '', '', '2012', 222, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (761, 'SMA', 'SMA IMAM SYAFI\'I SURABAYA', '', '', '2009', 223, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (762, 'SMA', 'SMPN MANTUP LAMONGAN', '', '', '2002', 224, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (763, 'SMA', 'SMU GARUDA MANUKAN SURABAYA', '', '', '2003', 225, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (764, 'SMA', 'SMK PAWIYATAN SURABAYA', '', '', '2000', 226, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (765, 'SMA', 'SMA CERME', '', '', '2004', 227, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (766, 'SMA', 'SMAN 1 CERME', '', '', '2006', 228, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (767, 'SMA', 'SMA SUNAN GIRI', '', '', '2007', 229, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (768, 'SMA', 'SMA N 12 SURABAYA', '', '', '2011', 230, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (769, 'SMA', 'SMAN 1 MANTUP LAMONGAN', '', '', '2005', 231, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (770, 'SMA', 'SMA SUNAN GIRI MENGANTI GRESIK', '', '', '2006', 233, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (771, 'SMA', 'SMA SUNAN GIRI MENGANTI GRESIK', '', '', '2007', 234, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (772, 'SMA', 'SMK NEGERI 1 CERME GRESIK', '', '', '2010', 235, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (773, 'SMA', 'SMA SEJAHTERA SIMO RUKUN SURABAYA', '', '', '2010', 236, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (774, 'SMA', 'SMA N 1 MENGANTI GRESIK', '', '', '2011', 237, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (775, 'SMA', 'SMA SUNAN GIRI MENGANTI GRESIK', '', '', '2005', 238, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (776, 'SMA', 'MA IMAM SYAFI\'I PONDOK BENOWO SURABAYA', '', '', '2003', 239, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (777, 'SMA', 'MA IMAM SYAFI\'I PONDOK BENOWO SURABAYA', '', '', '2005', 240, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (778, 'SMA', 'SMKN 1 MAGETAN', '', '', '2012', 241, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (779, 'SMA', 'SMK PGRI 10 SURABAYA', '', '', '2004', 242, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (780, 'SMA', 'SMAN 12 SURABAYA', '', '', '2006', 243, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (781, 'SMA', 'SMA BARUNAWATI SURABAYA', '', '', '2002', 244, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (782, 'SMA', 'SMA NEGERI 1 MENGANTI', '', '', '2003', 245, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (783, 'SMA', 'SMAN 12 SURABAYA', '', '', '2011', 246, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (784, 'SMA', 'SMK YPK \'64 Tuban', '', '', '', 247, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (785, 'SMA', 'SMEA PGRI II Surabaya', '', '', '', 250, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (786, 'SMA', 'SMA (IPS) Sunan Giri Menganti / Gresik', '', '', '', 251, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (787, 'SMA', 'SMU Kartika Krembangan surabaya', '', '', '1997', 253, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (788, 'SMA', 'SMU Karman Amat IPS Surabaya', '', '', '1997', 254, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (789, 'SMA', 'SPP ( Sekolah Pertanian Pembangunan ) Gresik', '', '', '1991', 257, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (790, 'SMA', 'SMEA PGRI 7 Benowo / Surabaya ( Keuangan )', '', '', '1991', 258, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (791, 'SMA', 'SMU Karman Amat Benowo / Surabaya', '', '', '1999', 259, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (792, 'SMA', 'SMEA PGRI Kertosono', '', '', '', 261, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (793, 'SMA', 'SMAN 3 Pesantren Kediri', '', '', '1993', 262, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (794, 'SMA', 'SMK Pawiyatan Sukomanunggal Surabaya', '', '', '2000', 263, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (795, 'SMA', 'SMUN 1 Lamongan', '', '', '', 264, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (796, 'SMA', 'SMK Wijaya Putra 1 SURABAYA', '', '', '', 266, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (797, 'SMA', 'SMK Wijaya Putra Bisnis manajemen & Akutansi 2002', '', '', '2002', 268, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (798, 'SMA', 'SMK Kawung I Surabaya', '', '', '2001', 269, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (799, 'SMA', 'SMK Muhammadiyah I Nganjuk', '', '', '', 270, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (800, 'SMA', 'SMU 12 SURABAYA', '', '', '', 271, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (801, 'SMA', 'SMU XI Surabaya', '', '', '1999', 272, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (802, 'SMA', 'SMK SUNAN GIRI MENGANTI', '', '', '2001', 273, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (803, 'SMA', ' SMK SUNAN GIRI MENGANTi', '', '', '2000', 274, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (804, 'SMA', 'SMK Negeri 1 Lumajang Akuntansi', '', '', '', 276, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (805, 'SMA', 'SMU Kawung II Simogunung', '', '', '2006', 277, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (806, 'SMA', 'MAN MOJOKERTO', '', '', '', 278, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (807, 'SMA', 'SMU Sunan Giri Menganti / Gresik', '', '', '', 279, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (808, 'SMA', 'SMK YPI Darussalam Cerme jurusan Teknik', '', '', '2004', 280, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (809, 'SMA', 'SMA Imam Syafi\'I Surabaya', '', '', '2004', 281, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (810, 'SMA', 'SMU Hang Tuah I', '', '', '2001', 282, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (811, 'SMA', 'SMK Karman Amat Surabaya jurusan mekanik otomotif', '', '', '2005', 283, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (812, 'SMA', 'SMUM 08 CERME', '', '', '2003', 284, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (813, 'SMA', 'SMU N 12 SURABAYA', '', '', '2004', 285, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (814, 'SMA', 'SMUN 12 SURABAYA', '', '', '2002', 287, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (815, 'SMA', 'SMU SWASTA AVISENA KEDUNGCANGKRING SIDOARJO', '', '', '2001', 288, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (816, 'SMA', 'SMA WACHID HASYIM 5 SURABAYA', '', '', '2008', 289, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (817, 'SMA', 'SMAN 1 CERME', '', '', '2006', 290, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (818, 'SMA', 'SMA MA\'ARIF BENJENG', '', '', '2004', 292, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (819, 'SMA', 'SMA JOS SOEDARSO SURABAYA', '', '', '2004', 293, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (820, 'SMA', 'SMK YPI DARUSSALAM CERME', '', '', '2005', 294, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (821, 'SMA', 'SMU MUHAMMADIYAH 05 DUKUN GRESIK', '', '', '2001', 295, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (822, 'SMA', 'SMK WIJAYA PUTRA SURABAYA', '', '', '2000', 296, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (823, 'SMA', 'SMKN 1 CERME GRESIK', '', '', '2012', 297, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (824, 'SMA', 'SMU NEGERI 1 KEDAMEAN GRESIK', '', '', '2003', 298, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (825, 'SMA', 'SMAN 1 MENGANTI', '', '', '2009', 299, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (826, 'SMA', 'SMU SUNAN GIRI MENGANTI GRESIK', '', '', '2005', 300, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (827, 'SMA', 'SMK WIJAYA PUTRA', '', '', '2004', 301, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (828, 'SMA', 'SMA GARUDA MANUKAN SURABAYA', '', '', '2004', 302, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (829, 'SMA', 'SMA IMAM SYAFI\'I SURABAYA', '', '', '1998', 303, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (830, 'SMA', 'SMK SUNAN GIRI MENGANTI', '', '', '2005', 304, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (831, 'SMA', 'SMA Imam Syafi\'I Surabaya', '', '', '2004', 305, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (832, 'SMA', 'SMA SUNAN GIRI MENGANTI GRESIK', '', '', '2005', 307, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (833, 'SMA', 'SMK WIJAYA PUTRA 1 SURABAYA', '', '', '2003', 308, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (834, 'SMA', 'SMK SUNANGIRI MENGANTI GRESIK', '', '', '2004', 309, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (835, 'SMA', 'SMU ASSA\'ADAH BUNGAH GRESIK', '', '', '2001', 310, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (836, 'SMA', 'SMA AL AZHAR', '', '', '2012', 311, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (837, 'SMA', 'SMA WAC HID HASYIM 05', '', '', '2008', 312, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (838, 'SMA', 'SMU Sunan Giri Menganti / Gresik', '', '', '1997', 313, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (839, 'SMA', 'MTs. Thoriqul Huda Randu Padangan ', '', '', '', 315, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (840, 'SMA', 'SMK Wijaya Putra I Surabaya Manajemen Bisnis', '', '', '2000', 316, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (841, 'SMA', 'SMU PGRI 23 Wiyung / Surabaya ', '', '', '1999', 317, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (842, 'SMA', 'SMEA Wijaya Putra I Surabaya', '', '', '1994', 319, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (843, 'SMA', 'SMU Negeri 1 Prambon Nganjuk ', '', '', '2002', 320, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (844, 'SMA', 'U Muhammadiyah 08 Gresik', '', '', '2001', 321, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (845, 'SMA', 'SMA Sunan Giri ', '', '', '2008', 322, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (846, 'SMA', 'SMA DARULULLUM TAMBAK REJO', '', '', '2006', 323, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (847, 'SMA', 'SMAN 12 SURABAYA', '', '', '2015', 324, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (848, 'SMA', 'SMK BUBUTAN', '', '', '2003', 325, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (849, 'SMA', 'SMA WACHID HASYIM', '', '', '2007', 326, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (850, 'SMA', 'SMA YPI DARUSALAM CERME', '', '', '2007', 327, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (851, 'SMA', 'SMAN 11 SURABAYA', '', '', '2006', 329, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (852, 'SMA', 'SMA AKHMAD YANI', '', '', '2010', 330, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (853, 'SMA', 'SMA TRIKARYA SURABAYA', '', '', '2014', 331, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (854, 'SMA', 'SMAN 5 SURABAYA', '', '', '2009', 332, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (855, 'SMA', 'SMK KRISTEN KANAAN TANGGERANG', '', '', '2007', 334, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (856, 'SMA', 'SMA K ST LOUIS 2 SURABAYA', '', '', '2011', 335, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (857, 'SMA', 'SMA Negeri 12 (A2) Surabaya', '', '', '1996', 336, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (858, 'SMA', 'SMU ASSA\'ADAH BUNGA GRESIK', '', '', '2000', 337, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (859, 'SMA', 'SMU Sunan Giri Menganti', '', '', '1998', 338, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (860, 'SMA', 'STM PGRI Singosari, Mekanik Otomotif', '', '', '', 340, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (861, 'SMA', 'SMK Komputer Bandut ', '', '', '2010', 341, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (862, 'SMA', 'SMA Kawung II Sby', '', '', '1994', 342, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (863, 'SMA', 'SMK Berdikari Mesin Otomotif', '', '', '', 343, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (864, 'SMA', 'SMK Teknik Otomotif ', '', '', '2015', 344, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (865, 'SMA', 'SMK Mesin Cerme', '', '', '2010', 345, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (866, 'SMA', 'SMKN 1 Cerme', '', '', '2009', 346, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (867, 'SMA', 'SMK AL AZHAR', '', '', '2012', 347, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (868, 'SMA', 'MA AS SA\'ADAH LAMPAH KEDAMEAN', '', '', '2005', 348, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (869, 'SMA', 'STM KITA BAKTI', '', '', '1993', 349, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (870, 'SMA', 'SMAN 1 KEDAMEAN', '', '', '2012', 350, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (871, 'SMA', 'SMK BHINEKA KARYA SURAKARTA,PERMESINAN', '', '', '2013', 351, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (872, 'SMA', 'SMAN 1 Panggul IPA Trenggalek ', '', '', '2013', 352, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (873, 'SMA', 'SMK Yasmu Permesinan Gresik', '', '', '2015', 353, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (874, 'SMA', 'SMKN 1 Jetis Mojokerto', '', '', '2013', 354, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (875, 'SMA', 'SMAN 1 GIRI', '', '', '2011', 355, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (876, 'SMA', 'SMU KATHOLIK SANTO BONAVENTURA', '', '', '1998', 356, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (877, 'SMA', 'STMN 2 ( Mesin ) Surabaya', '', '', '1996', 357, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (878, 'SMA', 'SMK Kal / 2 Permesinan', '', '', '2012', 360, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (879, 'SMA', 'SMA Sunan Ampel', '', '', '2006', 361, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (880, 'SMA', 'SMK MUHAMMADIYAH 02 TAMAN SIDOARJO', '', '', '2002', 362, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (881, 'SMA', 'SMKN 1 DUDUK SAMPEYAN', '', '', '2011', 363, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (882, 'SMA', 'Teknik Otomatis SMK N I Tuban', '', '', '2011', 364, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (883, 'SMA', 'SMA 1 Gedeg Mojokerto', '', '', '2006', 365, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (884, 'SMA', 'SMA taruna surabaya', '', '', '2010', 366, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (885, 'SMA', 'SMA SUNAN GIRI', '', '', '2008', 367, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (886, 'SMA', 'SMK 1 CERME', '', '', '2012', 368, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (887, 'SMA', 'SMKN I Cerme Listrik', '', '', '2012', 369, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (888, 'SMA', 'SMU N 3 Sby Teknik Listrik ', '', '', '2012', 370, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (889, 'SMA', 'SMK N 1 CERME GRESIK', '', '', '2013', 371, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (890, 'SMA', 'SMA N 1 CERME', '', '', '2018', 372, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (891, 'SMA', 'SMA N 1 CERME', '', '', '2012', 373, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (892, 'SMA', 'SMA WAHANA KARYA SURABAYA', '', '', '2010', 374, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (893, 'SMA', 'SMKN I CERME', '', '', '2017', 375, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (894, 'SMA', 'SMK YPI DARUSALAM', '', '', '2013', 378, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (895, 'SMA', 'SMKN 1 CERME', '', '', '2020', 379, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (896, 'SMA', 'SMU PGRI GEDEG MOJOKERTO', '', '', '2000', 383, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (897, 'SMA', 'SMA PGRI WONOKROMO KOTAMADYA SURABAYA', '', '', '1989', 391, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (898, 'SMA', 'SMK YPI DARUSALAM 1 CERME', '', '', '2015', 393, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (899, 'SMA', 'SMK SARI PRAJA SURABAYA', '', '', '2011', 394, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (900, 'Lainnya', 'UNIVERSITAS AIRLANGGA SURABAYA, PROGAM PROFESI APOTEKER', 'Apoteker', '', '2003', 1, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (901, 'S1', 'UNIKA WIDYA MANDALA', '', '', '1993', 3, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (902, 'S1', 'Sarjana Ekonomi', '', '', '', 4, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (903, 'S1', 'Sarjana Ekonomi', '', '', '', 5, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (904, 'S1', 'SI FKIP UNIV PGRI ADI BUANA BAHASA INGGRIS', '', '', '2003', 7, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (905, 'S1', 'UNIVERSITAS SURABAYA ( HUKUM )', '', '', '2011', 8, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (906, 'S1', 'UNIV WIJAYA PUTRA SURABAYA', '', '', '2000', 9, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (907, 'S1', 'Universitas Widya Dharma S1 Bahasa indonesia', '', '', '2011', 11, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (908, 'S1', 'SI/SASTRA INGGRIS UNIV WIJAYA PUTRA', '', '', '2004', 12, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (909, 'S1', 'Universitas Wijaya Putra', '', '', '2020', 13, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (910, 'S1', 'Sarjana Teknik Sipil', '', '', '', 14, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (911, 'S1', 'UNIVERSITAS PEMBANGUNAN NASIONAL VETERAN JAWA TIMUR ( TEKNIK/TEKNIK LINGKUNGAN HIDUP )', '', '', '2020', 15, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (912, 'S1', 'UNIVERSITAS WIJAYA PUTRA SURABAYA ( HUKUM )', '', '', '2004', 54, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (913, 'S1', 'D3 MANAGEMENT PERBANKAN UNAIR SURABAYA', '', '', '2005', 56, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (914, 'S1', 'D3 Akutansi USU Medan ', '', '', '1998', 57, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (915, 'S1', 'Universitas Wijaya Putra Akuntansi Surabaya', '', '', '2017', 58, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (916, 'S1', 'UNIVERSITAS PGRI ADI BUANA', '', '', '', 59, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (917, 'S1', 'UNIVERSITAS WIJAYA PUTRA ( MANAGEMENT)', '', '', '2021', 61, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (918, 'S1', 'UNIVERSITAS WIJAYA PUTRA AKUNTANSI', '', '', '2017', 62, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (919, 'S1', 'SEKOLAH TINGGI EKONOMI INDONESIA (AKUNTANSI)', '', '', '', 63, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (920, 'S1', 'UNIVERSITAS WIJAYA PUTRA AKUNTANSI EKONOMI DAN BISNIS', '', '', '', 64, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (921, 'S1', 'Universitas Trunpjoyo Madura', '', '', '2021', 65, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (922, 'S1', 'UNIVERSITAS WIDYA MANDALA SURABAYA JURUSAN BISNIS/AKUNTANSI', '', '', '2013', 66, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (923, 'S1', 'UNIKA WIDYA MANDALA ( AKUNTANSI )', '', '', '2001', 67, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (924, 'S1', 'FAKULTAS HUKUM UNIVERSITAS WIJAYA KUSUMA SURABAYA', '', '', '1985', 68, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (925, 'S1', 'Universitas Tanjungpura Manajemen Pontianak', '', '', '2019', 70, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (926, 'S1', 'UNIVERSITAS NEGERI SURABYA D3 MANAGEMENT INFORMATIKA', '', '', '2015', 72, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (927, 'S1', 'Universitas Teknologi Yogyakarta ( Teknik Komputer )', '', '', '2021', 73, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (928, 'S1', 'Institut Sains Dan Teknologi Terpadu Surabaya', '', '', '2019', 74, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (929, 'Lainnya', 'UNIVERSITAS AIRLANGGA SURABAYA FARMASI ( 2008/2012 )\nUNIVERSITAS AIRLANGGA SURABAYA APOTEKER ( 2012/2013 )', 'Apoteker', '', '2013', 75, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (930, 'S1', 'UNIVERSITAS AIRLANGGA ( FARMASI )', '', '', '2010', 77, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (931, 'Lainnya', 'UNIVERSITAS SANATA DHARMA YOGJAKARTA ( FARMASI 2012/2016 )\nUNIVERSITAS SANATA DHARMA YOGJAKARTA ( APOTEKER 2016/2017)', 'Apoteker', '', '2017', 78, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (932, 'S1', 'AKADEMI ANALIS KESEHATAN DELIMA HUSADA GRESIK', '', '', '2014', 79, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (933, 'S1', 'UNIVERSITAS SURABAYA (FARMASI )', '', '', '2014', 80, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (934, 'Lainnya', 'UNIVERSITAS SURABAYA FARMASI ( 2012 / 2016 )\nUNIVERSITAS SURABAYA APOTEKER ( 2016 / 2017 )', 'Apoteker', '', '2017', 81, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (935, 'S1', 'UNIVERSITAS NEGERI SURABAYA SI KIMIA', '', '', '2014', 83, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (936, 'S1', 'UNIVERSITAS SURABAYA (FARMASI)', '', '', '2013', 84, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (937, 'Lainnya', 'UBAYA FARMASI ( 2010/2014 )\nUBAYA APOTEKER ( 2014/2015 )', 'Apoteker', '', '2015', 85, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (938, 'Lainnya', 'UNIVERSITAS SURABAYA FARMASI (2012/2016)\nAPOTEKER (2016/2017)', 'Apoteker', '', '2017', 86, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (939, 'S1', 'UPN VETERAN  Teknik Kimia / Surabaya', '', '', '2019', 87, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (940, 'S1', 'Universitas Brawijaya Malang Analis Kimia  Malang', '', '', '2017', 88, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (941, 'Lainnya', 'UBAYA S1 Farmasi, Tahun 2018\nApoteker profesi Tahun 2019', 'Apoteker', '', '2018', 89, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (942, 'S1', 'UNIVERSITAS WIJAYA PUTRA TEKNIK INDUSTRI', '', '', '2012', 90, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (943, 'S1', 'INSTITUT TEKNOLOGI SEPULUH NOVEMBER ( BIOLOGI ) SURABAYA', '', '', '2018', 91, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (944, 'Lainnya', 'UNIVERSITAS SURABAYA (FARMASI/APOTEKER)', 'Apoteker', '', '2014', 92, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (945, 'Lainnya', 'UNIVERSITAS SURABAYA (FARMASI/APOTEKER)', 'Apoteker', '', '2021', 93, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (946, 'S1', 'Umiversitas Negeri Surabaya', '', '', '2016', 94, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (947, 'S1', 'UNIVERSITAS AIRLANGGA ( FARMASI )', '', '', '2011', 95, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (948, 'S1', 'D1 Pekarya Kesehatan ( Asst Paramedis)', '', '', '', 103, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (949, 'S1', 'ITATS TEKNIK KIMIA', '', '', '2019', 108, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (950, 'S1', 'AKADEMI FARMASI SURABAYA(FARMASI)', '', '', '2020', 109, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (951, 'S1', 'ISTITUT TEKNOLOGI SEPULUH NOVEMBER ( Teknik Industri)', '', '', '2022', 110, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (952, 'Lainnya', 'UNIVERSITAS AIRLANGGA FARMASI ( 2008/2012)\nAPOTEKER (2012/2013)', 'Apoteker', '', '2013', 111, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (953, 'S1', 'POLITEKNIK NEGERI MALANG', '', '', '2013', 113, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (954, 'S1', ' Universitas Muhammadiyah Gresik', '', '', '2018', 114, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (955, 'S1', 'UNIVERSITAS NEGERI SURABAYA ( MATEMATIKA )', '', '', '', 115, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (956, 'S1', 'IKIP NEGERI MALANG', '', '', '', 117, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (957, 'S1', 'UNIVERSITAS WANGSA MANDALA JURUSAN TEKNOLOGI HASIL PERTANIAN', '', '', '2001', 118, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (958, 'S1', 'UNIVERSITAS WIDYA MANDALA SURABAYA JURUSAN TEKNIK KIMIA', '', '', '', 119, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (959, 'S1', 'UNIVERSITAS MUHAMADIYAH MALANG', '', '', '2014', 120, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (960, 'S1', 'POLITEKNIK ELEKTRONIKA NEGRI SURABYA', '', '', '2018', 122, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (961, 'S1', 'POLTEK NEGERI MALANG TEKNIK KIMIA MALANG', '', '', '2014', 123, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (962, 'S1', 'UPN VETERAN  Teknik Kimia / Surabaya', '', '', '2021', 125, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (963, 'S1', 'UNIVERSITAS SURABAYA', '', '', '2018', 126, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (964, 'S1', 'POLITEKNIK INDONESI', '', '', '2011', 162, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (965, 'S1', 'Pernah kursus komputer tingkat LOTUS Surabaya', '', '', '', 253, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (966, 'S1', 'Kursus Akuntansi \" SUCCESS ACCOUNTING COURSE \" Kediri 1994', '', '', '', 262, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (967, 'S1', 'Kursus Andromeda Salon ( Kursus )', '', '', '', 277, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (968, 'S1', 'D1 Komputer Akuntansi', '', '', '2002', 282, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (969, 'S1', 'MAGISTRAUTAMA MANAGEMENT INFORMATIKA', '', '', '2007', 323, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (970, 'S1', 'UNIVERSITAS AIRLANGGA FARMASI', '', '', '2013', 332, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (971, 'S1', 'FAKLULTAS HUKUM UNIVERSITAS WIJAYA PUTRA SURABAYA', '', '', '', 333, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (972, 'S1', 'UNIVERSITAS WIJAYA PUTRA', '', '', '2018', 335, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (973, 'S1', 'S1 Universitas Wijaya Putra ', '', '', '2002', 338, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (974, 'S1', 'D1 PERHOTELAN', '', '', '', 339, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (975, 'S1', 'UNIV SUNAN GIRI SURABAYA / S I TEKNIK MESIN', '', '', '', 349, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (976, 'S1', 'UNIVERSITAS MUHAMADIYAH GRESIK ( KEGURUAN ILMU BHS INGGRIS )', '', '', '2018', 350, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (977, 'S1', 'AKADEMI TEKNOLOGI WARGA SURAKARTA, TEKNIK MESIN', '', '', '2016', 351, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (978, 'S1', ' Universitas Muhammadiyah Malang Teknik Elektro Tahun 2018\nUPT BLK Singosari PLC Malang ? 3 Bulan 2019', '', '', '2019', 352, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (979, 'S1', 'Universitas Negeri Malang Teknik Mesin Malang', '', '', '2015', 353, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (980, 'S1', 'Institut Teknologi Adhi Tama Surabaya Teknik Mesin ', '', '', '2018', 354, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (981, 'S1', 'UNIVERSITAS JEMBER', '', '', '2017', 355, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (982, 'S1', 'POLITEKNIK UNIVERSITAS BRAWIJAYA & INSTITUT TEKNOLOGI ADHI TAMA ( TEKNIK MESIN )', '', '', '2014', 356, '2023-12-12 10:00:00');
INSERT INTO `pendidikan` VALUES (983, 'S1', 'Kursus di BPT LOGAM & LIK Sidoarjo mesin perkakas', '', '', '2008', 365, '2023-12-12 10:00:00');

-- ----------------------------
-- Table structure for pengajuan_karyawan
-- ----------------------------
DROP TABLE IF EXISTS `pengajuan_karyawan`;
CREATE TABLE `pengajuan_karyawan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `idpengaju` int NULL DEFAULT NULL,
  `idpenyetuju` int NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `idjabatan` int NULL DEFAULT NULL,
  `jumlah` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pendidikan_terakhir` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `profesi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `max_usia` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_kelamin` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pengajuan_karyawan
-- ----------------------------
INSERT INTO `pengajuan_karyawan` VALUES (1, 4, NULL, '', 3, '2', 'SD', NULL, '30', 'L', '2023-09-01 04:01:54');
INSERT INTO `pengajuan_karyawan` VALUES (2, 4, NULL, '', 118, '2', 'S1', NULL, '30', 'L/P', '2023-09-01 04:02:42');
INSERT INTO `pengajuan_karyawan` VALUES (3, 4, NULL, '', 2, '1', 'SD', NULL, NULL, 'L/P', '2023-09-01 06:30:59');
INSERT INTO `pengajuan_karyawan` VALUES (4, 4, NULL, '', 119, '1', 'SMA', NULL, '30', 'L/P', '2023-09-01 06:33:04');
INSERT INTO `pengajuan_karyawan` VALUES (5, 4, NULL, 'Pengajuan', 1, '2', NULL, NULL, NULL, 'L/P', '2023-09-01 06:38:57');
INSERT INTO `pengajuan_karyawan` VALUES (6, 4, NULL, 'Belum dicek', 120, NULL, NULL, NULL, NULL, 'L/P', '2023-09-01 06:39:27');

-- ----------------------------
-- Table structure for riwayat_bpjs_kes
-- ----------------------------
DROP TABLE IF EXISTS `riwayat_bpjs_kes`;
CREATE TABLE `riwayat_bpjs_kes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_bpjs` int NOT NULL,
  `id_master` int NOT NULL,
  `iuran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of riwayat_bpjs_kes
-- ----------------------------
INSERT INTO `riwayat_bpjs_kes` VALUES (1, 1, 1, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (2, 2, 2, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (3, 3, 3, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (4, 4, 4, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (5, 5, 5, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (6, 6, 6, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (7, 7, 7, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (8, 8, 8, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (9, 9, 9, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (10, 10, 10, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (11, 11, 11, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (12, 12, 12, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (13, 13, 13, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (14, 14, 14, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (15, 15, 15, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (16, 16, 16, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (17, 17, 17, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (18, 18, 18, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (19, 19, 19, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (20, 20, 20, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (21, 21, 21, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (22, 22, 22, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (23, 23, 23, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (24, 24, 24, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (25, 25, 25, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (26, 26, 26, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (27, 27, 27, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (28, 28, 28, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (29, 29, 29, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (30, 30, 30, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (31, 31, 31, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (32, 32, 32, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (33, 33, 33, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (34, 34, 34, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (35, 35, 35, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (36, 36, 36, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (37, 37, 37, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (38, 38, 38, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (39, 39, 39, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (40, 40, 40, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (41, 41, 41, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (42, 42, 42, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (43, 43, 43, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (44, 44, 44, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (45, 45, 45, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (46, 46, 46, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (47, 47, 47, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (48, 48, 48, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (49, 49, 49, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (50, 50, 50, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (51, 51, 51, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (52, 52, 52, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (53, 53, 53, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (54, 54, 54, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (55, 55, 55, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (56, 56, 56, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (57, 57, 57, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (58, 58, 58, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (59, 59, 59, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (60, 60, 60, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (61, 61, 61, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (62, 62, 62, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (63, 63, 63, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (64, 64, 64, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (65, 65, 65, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (66, 66, 66, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (67, 67, 67, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (68, 69, 69, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (69, 70, 70, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (70, 71, 71, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (71, 72, 72, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (72, 73, 73, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (73, 74, 74, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (74, 75, 75, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (75, 76, 76, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (76, 77, 77, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (77, 78, 78, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (78, 79, 79, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (79, 80, 80, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (80, 81, 81, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (81, 82, 82, '226150', 'July-2023');
INSERT INTO `riwayat_bpjs_kes` VALUES (82, 83, 83, '226150', 'July-2023');

-- ----------------------------
-- Table structure for riwayat_bpjs_tk
-- ----------------------------
DROP TABLE IF EXISTS `riwayat_bpjs_tk`;
CREATE TABLE `riwayat_bpjs_tk`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_bpjs` int NOT NULL,
  `id_master` int NOT NULL,
  `iuran` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of riwayat_bpjs_tk
-- ----------------------------

-- ----------------------------
-- Table structure for riwayat_karyawan
-- ----------------------------
DROP TABLE IF EXISTS `riwayat_karyawan`;
CREATE TABLE `riwayat_karyawan`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_master` int NOT NULL,
  `jenis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jabatan` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `sertifikat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1683 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of riwayat_karyawan
-- ----------------------------
INSERT INTO `riwayat_karyawan` VALUES (1, 273, 'Masuk', '24', 'KARYAWAN HARIAN LEPAS', '', '', '2003-01-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (2, 273, 'Kontrak', '24', 'KARYAWAN KONTRAK', '', '', '2005-02-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (3, 273, 'Tetap', '24', 'DIANGKAT KARYAWAN TETAP (GPP I) BAGIAN PLESTER', '', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (4, 273, 'SP 1', '24', 'SP1: SERING TIDAK MEMAKAI MASKER PADA SAAT BEKERJA', '', '', '2009-03-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (5, 273, 'Pelatihan', '24', 'PELATIHAN STRESS KERJA', '', '', '2009-05-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (6, 273, 'Pelatihan', '24', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DG TABUNG APAR', '', '', '2013-07-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (7, 273, 'Pelatihan', '24', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '', '2013-08-27', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (8, 273, 'Penghargaan', '24', 'MENDAPATKAN PENGHARGAAN MASA KERJA 10 TAHUN', 'Sertifikat', '', '2014-12-23', '2023-08-24 15:44:33');
INSERT INTO `riwayat_karyawan` VALUES (9, 337, 'Masuk', '40', 'HARIAN LEPAS', '', '', '2003-06-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (10, 337, 'Kontrak', '40', 'KONTRAK', '', '', '2004-01-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (11, 337, 'Tetap', '40', 'DIANGKAT KARYAWAN TETAP HELPER (I) BAG COATING', '', '', '2006-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (12, 337, 'Pelatihan', '40', 'PELATIHAN MOTIVASI KERJA', '', '', '2007-04-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (13, 337, 'Kesehatan', '40', 'MELAKUKAN PHOTO THORAX', '', '', '2011-03-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (14, 337, 'Pelatihan', '40', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DG TABUNG APAR', '', '', '2011-05-06', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (15, 337, 'Penghargaan', '40', 'MENDAPATKAN PENGHARGAAN MASA KERJA 10 TAHUN', 'Sertifikat', '', '2014-12-23', '2023-08-24 15:44:37');
INSERT INTO `riwayat_karyawan` VALUES (16, 274, 'Masuk', '24', 'GPP KONTRA', '', '', '2000-09-04', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (17, 274, 'Kontrak', '24', 'KARYAWAN GPP KONTRAK', '', '', '2002-02-26', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (18, 274, 'Tetap', '24', 'KARYAWAN TETAP BAG PLESTER', '', '', '2003-02-24', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (19, 274, 'SP 2', '24', 'SP 2 : KURANG TELITI TERJADI 2 PENOMORAN', '', '', '2003-10-21', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (20, 274, 'Pelatihan', '24', 'PELATIHAN MOTIVASI KERJA', '', '', '2007-04-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (21, 274, 'Pelatihan', '24', 'PELATIHAN MOTIVASI KERJA', '', '', '2007-10-26', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (22, 274, 'SP 1', '24', 'SP 1 LALAI DALAM BEKERJA MENGAKIBATKAN 251 STICKER SALAH PRINT', '', '', '2009-07-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (23, 274, 'SP 1', '24', 'SP 1 : 2 MEI \'14, CEROBOH TDK NGECEK ULANG UNTUK PRINT BOX, SEHINGGGA TERJADI KESALAHAN 2.200 PCS ', '', '', '2014-06-12', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (24, 174, 'Masuk', '24', 'KARYAWAN BAG PRODUKSI STATUS KONTRA', '', '', '2009-11-02', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (25, 174, 'Pelatihan', '24', 'PELATIHAN MENGGUNAKAN PAKAIAN KERJA YANG BAIK', '', '', '2014-06-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (26, 174, 'Tetap', '24', 'GPP TETAP (I)', '', '', '2015-06-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (27, 174, 'Pelatihan', '24', 'PELATIHAN PROPTAP PENANDAAN PT(6)-009 REV.03', '', '', '2016-03-18', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (28, 174, 'Peringatan', '24', 'TEGURAN : LALI DALAM PENGERJAAN KOYO NEOBUN CAPSICUM KECIL,SEHINGGA ADA KELEBIHAN PRODUK KOYO NEOBUN CAPSICUM KECIL SAMPLE SEJUMLAH 30.000 SCT @ 2 LEMBAR  ( DIBERIKAN SANKSI SEJUMLAH RP. 269.280,- )', '', '', '2019-09-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (29, 338, 'Masuk', '10', 'GPW HARIAN LEPAS', '', '', '2003-01-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (30, 338, 'Kontrak', '10', 'GPP KARYAWAN KONTRAK', '', '', '2004-01-05', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (31, 338, 'Kontrak', '10', 'KENAIKAN JABATAN DARI KARYAWAN KONTRAK MENJADI HELPER (I) BAG COATING', '', '', '2005-01-01', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (32, 338, 'Pelatihan', '10', 'PELATIHAN PERSYARATAN ISO, IMPLEMENTASI DAN MANFAATNYA BAG ORGANISASI ', '', '', '2007-01-08', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (33, 338, 'Pelatihan', '10', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN', '', '', '2008-10-23', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (34, 338, 'Pelatihan', '10', 'PELATIHAN MOTIVASI KERJA', '', '', '2010-03-17', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (35, 338, 'Pelatihan', '10', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DG MENGGUNAKAN TABUNG APAR', '', '', '2012-07-28', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (36, 338, 'Pelatihan', '10', 'PELTIHAN KEDISIPLINAN DAN ETOS KERJA', '', '', '2011-08-09', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (37, 338, 'Pelatihan', '10', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DG MENGGUNAKAN TABUNG APAR', '', '', '2012-07-19', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (38, 338, 'SP 1', '10', 'SP I : TIDUR SAAT JAM KERJA (PD TANGGAL 3 NOPEMBER 2014', '', '', '2014-11-03', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (39, 338, 'Pelatihan', '10', 'PELATIHAN : PENGENALAN DAN PELAKSANAAN SISTEM MANAJEMEN MUTU ', '', '', '2014-12-10', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (40, 338, 'Penghargaan', '10', 'MENDAPAT PENGHARGAAN MASA KERJA 10 TAHUN ISO 9001:2008', 'Sertifikat', '', '2014-12-23', '2023-08-24 15:44:40');
INSERT INTO `riwayat_karyawan` VALUES (41, 338, 'Pelatihan', '10', 'PELATIHAN PENANGGULANGAN BAHAYA KEBAKARAN DG MENGGUNAKAN TABUNG APAR', '', '', '2015-06-25', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (42, 37, 'Masuk', '3', 'KEBERSIHAN DALAM', '', '', '1996-06-07', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (43, 37, 'Pelatihan', '3', 'PELATIHAN PENTINGNYA KEBERSIHAN DALAM MENUNJANG MUTU PRODUK', '', '', '2006-08-11', '2023-03-08 14:27:00');
INSERT INTO `riwayat_karyawan` VALUES (44, 37, 'Pelatihan', '3', 'PELATIHAN PENTINGNYA KEBERSIHAN DALAM MENUNJANG MUTU PRODUK', '', '', '2007-07-12', '2023-03-08 14:27:00');

-- ----------------------------
-- Table structure for riwayat_pengajuan
-- ----------------------------
DROP TABLE IF EXISTS `riwayat_pengajuan`;
CREATE TABLE `riwayat_pengajuan`  (
  `id` int NOT NULL,
  `id_user` int NULL DEFAULT NULL,
  `deskripsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of riwayat_pengajuan
-- ----------------------------

-- ----------------------------
-- Table structure for sie
-- ----------------------------
DROP TABLE IF EXISTS `sie`;
CREATE TABLE `sie`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_bagian` int NOT NULL,
  `nama_sie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
  `nama_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tgl_awal` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `id_master` int NOT NULL,
  PRIMARY KEY (`id_status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of status
-- ----------------------------

-- ----------------------------
-- Table structure for struktur
-- ----------------------------
DROP TABLE IF EXISTS `struktur`;
CREATE TABLE `struktur`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `level` int NOT NULL,
  `pid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tags` varchar(123) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
  `role` enum('personalia','pimpinan','manager') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jabatan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'personalia', 'admin@gmail.com', NULL, '$2y$10$7SeDx0iO9x8q6udfiGsIHOjoKATMIIoJsCs/qTc6VRLUWtK3m2jaq', 'personalia', '', NULL, '2022-10-03 00:34:12', '2023-04-18 00:37:56');
INSERT INTO `users` VALUES (2, 'admin1', 'admin1@gmail.com', NULL, '$2y$10$p8IBbQHX7FJCuCSojePw/eH6L7ANhLJB7iTDeZu6x3BscK6MkJW6.', 'personalia', '', NULL, '2022-10-03 21:15:06', '2022-10-03 21:15:06');
INSERT INTO `users` VALUES (3, 'taufan', '', NULL, '$2y$10$0WABYzrze9b99yhiEv2QUujq4IDcjYcEInHdAhOrllmUTyw1gJhTq', 'pimpinan', '53', NULL, NULL, '2023-08-14 05:22:50');
INSERT INTO `users` VALUES (4, 'andi', 'KBGTKNIK', NULL, '$2y$10$7SeDx0iO9x8q6udfiGsIHOjoKATMIIoJsCs/qTc6VRLUWtK3m2jaq', 'pimpinan', '54', NULL, NULL, NULL);
INSERT INTO `users` VALUES (5, 'teddy', 'KBGHRD', NULL, '$2y$10$7SeDx0iO9x8q6udfiGsIHOjoKATMIIoJsCs/qTc6VRLUWtK3m2jaq', 'pimpinan', '57', NULL, NULL, NULL);
INSERT INTO `users` VALUES (6, 'kartini', 'PM', NULL, '$2y$10$7SeDx0iO9x8q6udfiGsIHOjoKATMIIoJsCs/qTc6VRLUWtK3m2jaq', 'pimpinan', '82', NULL, NULL, NULL);
INSERT INTO `users` VALUES (7, 'chennie', 'GM', NULL, '$2y$10$7SeDx0iO9x8q6udfiGsIHOjoKATMIIoJsCs/qTc6VRLUWtK3m2jaq', 'pimpinan', '1', NULL, NULL, NULL);
INSERT INTO `users` VALUES (8, 'tiara', 'KRND', NULL, '$2y$10$7SeDx0iO9x8q6udfiGsIHOjoKATMIIoJsCs/qTc6VRLUWtK3m2jaq', 'pimpinan', '1', NULL, NULL, NULL);
INSERT INTO `users` VALUES (9, 'lita', 'KQC', NULL, '$2y$10$7SeDx0iO9x8q6udfiGsIHOjoKATMIIoJsCs/qTc6VRLUWtK3m2jaq', 'pimpinan', '1', NULL, NULL, NULL);
INSERT INTO `users` VALUES (10, 'toni', 'KGUDANG', NULL, '$2y$10$7SeDx0iO9x8q6udfiGsIHOjoKATMIIoJsCs/qTc6VRLUWtK3m2jaq', 'pimpinan', '', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
