/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: Alqurangurus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Alqurangurus`;
CREATE TABLE `Alqurangurus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `juz` varchar(255) DEFAULT NULL,
  `surah` varchar(255) DEFAULT NULL,
  `ayat` varchar(255) DEFAULT NULL,
  `halaman` varchar(255) DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `guruId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `guruId` (`guruId`),
  CONSTRAINT `Alqurangurus_ibfk_1` FOREIGN KEY (`guruId`) REFERENCES `Gurus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: Alquransantris
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Alquransantris`;
CREATE TABLE `Alquransantris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `juz` varchar(255) DEFAULT NULL,
  `surah` varchar(255) DEFAULT NULL,
  `ayat` varchar(255) DEFAULT NULL,
  `halaman` varchar(255) DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `santriId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `santriId` (`santriId`),
  CONSTRAINT `Alquransantris_ibfk_1` FOREIGN KEY (`santriId`) REFERENCES `Santris` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 35 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: Gurus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Gurus`;
CREATE TABLE `Gurus` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `niu` varchar(255) DEFAULT NULL,
  `tempat` varchar(255) DEFAULT NULL,
  `datebirth` datetime DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `ayah` varchar(255) DEFAULT NULL,
  `ibu` varchar(255) DEFAULT NULL,
  `mulai_masuk` varchar(255) DEFAULT NULL,
  `mulai_vakum` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `pondokId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pondokId` (`pondokId`),
  CONSTRAINT `Gurus_ibfk_1` FOREIGN KEY (`pondokId`) REFERENCES `Pondoks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: Iqrogurus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Iqrogurus`;
CREATE TABLE `Iqrogurus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `halaman` varchar(255) DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `guruId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `guruId` (`guruId`),
  CONSTRAINT `Iqrogurus_ibfk_1` FOREIGN KEY (`guruId`) REFERENCES `Gurus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 15 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: Iqrosantris
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Iqrosantris`;
CREATE TABLE `Iqrosantris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `halaman` varchar(255) DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `santriId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `santriId` (`santriId`),
  CONSTRAINT `Iqrosantris_ibfk_1` FOREIGN KEY (`santriId`) REFERENCES `Santris` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 47 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: Masterpondoks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Masterpondoks`;
CREATE TABLE `Masterpondoks` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nit` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `chief` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: Pondoks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Pondoks`;
CREATE TABLE `Pondoks` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nit` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `chief` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `masterpondokId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `masterpondokId` (`masterpondokId`),
  CONSTRAINT `Pondoks_ibfk_1` FOREIGN KEY (`masterpondokId`) REFERENCES `Masterpondoks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: Roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Roles`;
CREATE TABLE `Roles` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: Santris
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Santris`;
CREATE TABLE `Santris` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nis` varchar(255) DEFAULT NULL,
  `datebirth` datetime DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `tempat` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `ayah` varchar(255) DEFAULT NULL,
  `ibu` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `mulai_masuk` datetime DEFAULT NULL,
  `mulai_vakum` datetime DEFAULT NULL,
  `pondokId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pondokId` (`pondokId`),
  CONSTRAINT `Santris_ibfk_1` FOREIGN KEY (`pondokId`) REFERENCES `Pondoks` (`id`) ON DELETE
  SET
  NULL ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: SequelizeMeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SequelizeMeta`;
CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: Surahpendekgurus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Surahpendekgurus`;
CREATE TABLE `Surahpendekgurus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `guruId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `guruId` (`guruId`),
  CONSTRAINT `Surahpendekgurus_ibfk_1` FOREIGN KEY (`guruId`) REFERENCES `Gurus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: Surahpendeksantris
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Surahpendeksantris`;
CREATE TABLE `Surahpendeksantris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `santriId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `santriId` (`santriId`),
  CONSTRAINT `Surahpendeksantris_ibfk_1` FOREIGN KEY (`santriId`) REFERENCES `Santris` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 40 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: UserSantris
# ------------------------------------------------------------

DROP TABLE IF EXISTS `UserSantris`;
CREATE TABLE `UserSantris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL,
  `SantriId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: Users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `datebirth` datetime DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `roleId` varchar(255) DEFAULT NULL,
  `pondokId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  KEY `pondokId` (`pondokId`),
  CONSTRAINT `Users_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `Roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Users_ibfk_2` FOREIGN KEY (`pondokId`) REFERENCES `Pondoks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: Alqurangurus
# ------------------------------------------------------------

INSERT INTO
  `Alqurangurus` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    1,
    '12',
    'Al maidah',
    NULL,
    '14',
    '2022-12-09 16:17:40',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alqurangurus` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    2,
    '2',
    'Al Baqarah',
    NULL,
    '20',
    '2022-12-09 16:17:40',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alqurangurus` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    3,
    '20',
    'An Nasr',
    NULL,
    '20',
    '2022-12-09 16:17:40',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alqurangurus` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    4,
    '18',
    'An Naba',
    NULL,
    '22',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '245d57c6-0076-44ea-9876-dd2d3da50465',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alqurangurus` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    5,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '245d57c6-0076-44ea-9876-dd2d3da50465',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: Alquransantris
# ------------------------------------------------------------

INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    1,
    '12',
    'Al maidah',
    NULL,
    '14',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    2,
    '2',
    'Al Baqarah',
    NULL,
    '20',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    3,
    '20',
    'An Nasr',
    NULL,
    '20',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    4,
    '18',
    'An Naba',
    NULL,
    '22',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    5,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    6,
    '20',
    'An Nasr',
    NULL,
    '20',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    7,
    '18',
    'An Naba',
    NULL,
    '22',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    8,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    9,
    '20',
    'An Nasr',
    NULL,
    '20',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b3',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    10,
    '18',
    'An Naba',
    NULL,
    '22',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b3',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    11,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b3',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    12,
    '20',
    'An Nasr',
    NULL,
    '20',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b4',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    13,
    '18',
    'An Naba',
    NULL,
    '22',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b4',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    14,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b4',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    15,
    '20',
    'An Nasr',
    NULL,
    '20',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b6',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    16,
    '18',
    'An Naba',
    NULL,
    '22',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b6',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    17,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b6',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    18,
    '20',
    'An Nasr',
    NULL,
    '20',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b7',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    19,
    '18',
    'An Naba',
    NULL,
    '22',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b7',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    20,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b7',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    21,
    '18',
    'An Naba',
    NULL,
    '22',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c3',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    22,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c3',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    23,
    '18',
    'An Naba',
    NULL,
    '22',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c4',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    24,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c4',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    25,
    '18',
    'An Naba',
    NULL,
    '22',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c7',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    26,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c7',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    27,
    '18',
    'An Naba',
    NULL,
    '22',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c8',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    28,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c8',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    29,
    '18',
    'An Naba',
    NULL,
    '22',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    30,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    31,
    '18',
    'An Naba',
    NULL,
    '22',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c15',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    32,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c15',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    33,
    '18',
    'An Naba',
    NULL,
    '22',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Alquransantris` (
    `id`,
    `juz`,
    `surah`,
    `ayat`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    34,
    '23',
    'Al-Kafirun',
    NULL,
    '90',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: Gurus
# ------------------------------------------------------------

INSERT INTO
  `Gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50456',
    'Kakak tua',
    'RTU0003',
    'Padang',
    '2022-12-09 00:00:00',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    '9c7a60b664edd14cb877efa02.png',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '2022-12-09 16:17:40',
    '2022-12-10 01:57:23'
  );
INSERT INTO
  `Gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50457',
    'cendrawasih',
    'RTU0003',
    'Padang',
    '2022-12-09 16:17:40',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50458',
    'kutilang',
    'RTU0003',
    'Padang',
    '2022-12-09 16:17:40',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50459',
    'pipit',
    'RTU0003',
    'Padang',
    '2022-12-09 16:17:40',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50460',
    'Adriansyah',
    'RTU0001',
    'Padang',
    '2022-12-09 16:17:40',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50461',
    'Putra Dwa',
    'RTU0002',
    'Padang',
    '2022-12-09 16:17:40',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    'Candra Dimuka',
    'RTU0002',
    'Padang',
    '2022-12-09 16:17:40',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50463',
    'Syailendra',
    'RTU0003',
    'Padang',
    '2022-12-09 16:17:40',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50464',
    'Sulaiman',
    'RTU0004',
    'Padang',
    '2022-12-09 16:17:40',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50465',
    'Aliansyah',
    'RTU0005',
    'Padang',
    '2022-12-09 16:17:40',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    'Batara Dwi',
    'RTU0006',
    'Padang',
    '2022-12-09 16:17:40',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50467',
    'Mahduf Munir',
    'RTU0006',
    'Padang',
    '2022-12-09 16:17:40',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50468',
    'Hola Kasih',
    'RTU0007',
    'Padang',
    '2022-12-09 16:17:40',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50469',
    'Dwi hasanaha',
    'RTU0009',
    'Padang',
    '2022-12-09 16:17:40',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50470',
    'Yansana alika',
    'RTU0010',
    'Padang',
    '2022-12-09 16:17:40',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50471',
    'Merak',
    'RTU0010',
    'Padang',
    '2022-12-09 16:17:40',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50472',
    'Camar',
    'RTU0010',
    'Padang',
    '2022-12-09 16:17:40',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50473',
    'Wasamanda',
    'RTU0010',
    'Padang',
    '2022-12-09 16:17:40',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Gurus` (
    `id`,
    `name`,
    `niu`,
    `tempat`,
    `datebirth`,
    `gender`,
    `telephone`,
    `address`,
    `ayah`,
    `ibu`,
    `mulai_masuk`,
    `mulai_vakum`,
    `photo`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '245d57c6-0076-44ea-9876-dd2d3da50480',
    'Dwi Asmarani',
    'RTU0008',
    'Padang',
    '2022-12-09 16:17:40',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: Iqrogurus
# ------------------------------------------------------------

INSERT INTO
  `Iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    1,
    'IQRO 1',
    '3',
    '2022-12-09 16:17:40',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    2,
    'IQRO 1',
    '6',
    '2022-12-09 16:17:40',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    3,
    'IQRO 1',
    '10',
    '2022-12-09 16:17:40',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    4,
    'IQRO 2',
    '12',
    '2022-12-09 16:17:40',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    5,
    'IQRO 2',
    '17',
    '2022-12-09 16:17:40',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    6,
    'IQRO 2',
    '20',
    '2022-12-09 16:17:40',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    7,
    'IQRO 3',
    '21',
    '2022-12-09 16:17:40',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    8,
    'IQRO 3',
    '29',
    '2022-12-09 16:17:40',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    9,
    'IQRO 1',
    '5',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    10,
    'IQRO 1',
    '8',
    '2022-12-09 16:17:40',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    11,
    'IQRO 1',
    '20',
    '2022-12-09 16:17:40',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    12,
    'IQRO 2',
    '28',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    13,
    'IQRO 2',
    '30',
    '2022-12-09 16:17:40',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrogurus` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    14,
    'IQRO 2',
    '35',
    '2022-12-09 16:17:40',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: Iqrosantris
# ------------------------------------------------------------

INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    1,
    'IQRO 1',
    '3',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    2,
    'IQRO 1',
    '6',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    3,
    'IQRO 1',
    '10',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    4,
    'IQRO 2',
    '12',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    5,
    'IQRO 2',
    '17',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    6,
    'IQRO 2',
    '20',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    7,
    'IQRO 3',
    '21',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    8,
    'IQRO 3',
    '29',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    9,
    'IQRO 1',
    '5',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    10,
    'IQRO 1',
    '8',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    11,
    'IQRO 1',
    '20',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    12,
    'IQRO 2',
    '28',
    '2022-12-09 16:17:40',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    13,
    'IQRO 2',
    '30',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    14,
    'IQRO 2',
    '35',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    15,
    'IQRO 2',
    '36',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    16,
    'IQRO 1',
    '6',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b8',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    17,
    'IQRO 1',
    '10',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b8',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    18,
    'IQRO 1',
    '3',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b9',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    19,
    'IQRO 1',
    '6',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b9',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    20,
    'IQRO 1',
    '10',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b9',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    21,
    'IQRO 1',
    '3',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c5',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    22,
    'IQRO 1',
    '6',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c5',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    23,
    'IQRO 1',
    '10',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c5',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    24,
    'IQRO 1',
    '3',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    25,
    'IQRO 1',
    '6',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    26,
    'IQRO 1',
    '10',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    27,
    'IQRO 1',
    '3',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c9',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    28,
    'IQRO 1',
    '6',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c9',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    29,
    'IQRO 1',
    '10',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c9',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    30,
    'IQRO 1',
    '3',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c10',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    31,
    'IQRO 1',
    '6',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c10',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    32,
    'IQRO 1',
    '10',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c10',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    33,
    'IQRO 1',
    '3',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    34,
    'IQRO 1',
    '6',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    35,
    'IQRO 1',
    '10',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    36,
    'IQRO 1',
    '3',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c13',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    37,
    'IQRO 1',
    '6',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c13',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    38,
    'IQRO 1',
    '10',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c13',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    39,
    'IQRO 1',
    '3',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    40,
    'IQRO 1',
    '6',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    41,
    'IQRO 1',
    '10',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    42,
    'IQRO 1',
    '3',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c15',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    43,
    'IQRO 1',
    '6',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c15',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    44,
    'IQRO 1',
    '10',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c15',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    45,
    'IQRO 1',
    '6',
    '2022-12-09 16:17:40',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Iqrosantris` (
    `id`,
    `name`,
    `halaman`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    46,
    'IQRO 1',
    '10',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: Masterpondoks
# ------------------------------------------------------------

INSERT INTO
  `Masterpondoks` (
    `id`,
    `name`,
    `nit`,
    `address`,
    `telephone`,
    `chief`,
    `logo`,
    `photo`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '5a7bee8c-3ac3-4542-b792-5fe780607703',
    'Rumah Tahfidz Al Hikmah',
    'RTS0002',
    'Jalan Padang Salam No.285',
    '08218233445',
    'Ustad Dian',
    '',
    'logo.png',
    '2022-12-09 16:17:39',
    '2022-12-09 16:17:39'
  );
INSERT INTO
  `Masterpondoks` (
    `id`,
    `name`,
    `nit`,
    `address`,
    `telephone`,
    `chief`,
    `logo`,
    `photo`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '96f95aea-ef38-4623-82af-979c383bbb01',
    'ADMIN',
    'RTS0000',
    '',
    '',
    '',
    '',
    'logoadmin.png',
    '2022-12-09 16:17:39',
    '2022-12-09 16:17:39'
  );
INSERT INTO
  `Masterpondoks` (
    `id`,
    `name`,
    `nit`,
    `address`,
    `telephone`,
    `chief`,
    `logo`,
    `photo`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '96f95aea-ef38-4623-82af-979c383bbb02',
    'Rumah Tahfidz Tazkiyah',
    'RTS0001',
    'Jalan Padang Salam No.285',
    '08218233445',
    'Ustad Adri',
    '',
    'logo.png',
    '2022-12-09 16:17:39',
    '2022-12-09 16:17:39'
  );
INSERT INTO
  `Masterpondoks` (
    `id`,
    `name`,
    `nit`,
    `address`,
    `telephone`,
    `chief`,
    `logo`,
    `photo`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    'e3028fca-6d4a-4c80-8e09-14d253dac904',
    'Rumah Tahfidz Al Ikhlas',
    'RTS0003',
    'Jalan Padang Salam No.285',
    '08218233445',
    'Ustad Yiansyah',
    '',
    'logo.png',
    '2022-12-09 16:17:39',
    '2022-12-09 16:17:39'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: Pondoks
# ------------------------------------------------------------

INSERT INTO
  `Pondoks` (
    `id`,
    `name`,
    `nit`,
    `address`,
    `telephone`,
    `chief`,
    `logo`,
    `photo`,
    `masterpondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    'TAZKIYAHCABANG3',
    'RTS0001',
    'Jalan Padang Salam No.285',
    '08218233445',
    'Ustad Dian',
    '',
    'logo.png',
    '96f95aea-ef38-4623-82af-979c383bbb02',
    '2022-12-09 16:17:39',
    '2022-12-09 16:17:39'
  );
INSERT INTO
  `Pondoks` (
    `id`,
    `name`,
    `nit`,
    `address`,
    `telephone`,
    `chief`,
    `logo`,
    `photo`,
    `masterpondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '96f95aea-ef38-4623-82af-979c383bbb35',
    'ADMIN',
    'RTS0000A',
    'asdasd',
    '123131',
    'asdad',
    'c0e73dcc50800f5525b313e04.png',
    'c0e73dcc50800f5525b313e05.png',
    '96f95aea-ef38-4623-82af-979c383bbb01',
    '2022-12-09 16:17:39',
    '2022-12-10 04:51:11'
  );
INSERT INTO
  `Pondoks` (
    `id`,
    `name`,
    `nit`,
    `address`,
    `telephone`,
    `chief`,
    `logo`,
    `photo`,
    `masterpondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '96f95aea-ef38-4623-82af-979c383bbb36',
    'TAZKIYAHCABANG1',
    'RTS0000',
    '',
    '',
    '',
    '',
    'logoadmin.png',
    '96f95aea-ef38-4623-82af-979c383bbb02',
    '2022-12-09 16:17:39',
    '2022-12-09 16:17:39'
  );
INSERT INTO
  `Pondoks` (
    `id`,
    `name`,
    `nit`,
    `address`,
    `telephone`,
    `chief`,
    `logo`,
    `photo`,
    `masterpondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '96f95aea-ef38-4623-82af-979c383bbb37',
    'TAZKIYAHCABANG2',
    'RTS0020',
    'Jalan Padang Salam No.285',
    '08218233445',
    'Ustad Adri',
    '43f83ea61807be9d00dc6a500.png',
    '43f83ea61807be9d00dc6a501.png',
    '96f95aea-ef38-4623-82af-979c383bbb02',
    '2022-12-09 16:17:39',
    '2022-12-09 17:08:38'
  );
INSERT INTO
  `Pondoks` (
    `id`,
    `name`,
    `nit`,
    `address`,
    `telephone`,
    `chief`,
    `logo`,
    `photo`,
    `masterpondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    'HIKMAHCABANG1',
    'RTS0002',
    'Jalan Padang Salam No.285',
    '08218233445',
    'Ustad Yiansyah',
    '',
    'logo.png',
    '5a7bee8c-3ac3-4542-b792-5fe780607703',
    '2022-12-09 16:17:39',
    '2022-12-09 16:17:39'
  );
INSERT INTO
  `Pondoks` (
    `id`,
    `name`,
    `nit`,
    `address`,
    `telephone`,
    `chief`,
    `logo`,
    `photo`,
    `masterpondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    'HIKMAHCABANG2',
    'RTS0003',
    'Jalan Padang Salam No.285',
    '08218233445',
    'Ustad Yiansyah',
    '',
    'logo.png',
    '5a7bee8c-3ac3-4542-b792-5fe780607703',
    '2022-12-09 16:17:39',
    '2022-12-09 16:17:39'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: Roles
# ------------------------------------------------------------

INSERT INTO
  `Roles` (`id`, `name`, `createdAt`, `updatedAt`)
VALUES
  (
    '1a2832f9-ceb7-4ff9-930a-af176c88dcc5',
    'ortu',
    '2022-12-09 16:17:39',
    '2022-12-09 16:17:39'
  );
INSERT INTO
  `Roles` (`id`, `name`, `createdAt`, `updatedAt`)
VALUES
  (
    '1b864518-299d-469c-b270-4d4b9d5b120f',
    'donatur',
    '2022-12-09 16:17:39',
    '2022-12-09 16:17:39'
  );
INSERT INTO
  `Roles` (`id`, `name`, `createdAt`, `updatedAt`)
VALUES
  (
    '8b273d68-fe09-422d-a660-af3d8312f883',
    'Master Admin',
    '2022-12-09 16:17:39',
    '2022-12-09 16:17:39'
  );
INSERT INTO
  `Roles` (`id`, `name`, `createdAt`, `updatedAt`)
VALUES
  (
    '8b273d68-fe09-422d-a660-af3d8312f884',
    'admin',
    '2022-12-09 16:17:39',
    '2022-12-09 16:17:39'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: Santris
# ------------------------------------------------------------

INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    'Aji Setiaji',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    'Yuliana Safiri',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    'Muhammad Panji Kurniawan',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b2',
    'Marniati',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b3',
    'Mahessa',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b4',
    'Irfan',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b5',
    'Fadlan',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b6',
    'Nizar',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b7',
    'Ilham',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b8',
    'Sabil',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b9',
    'MitaZu',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c10',
    'Mangga',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    'Manggis',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c12',
    'Anggur',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c13',
    'Nangka',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    'Semangka',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c15',
    'Durian',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c16',
    'Merkisa',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c2',
    'Ulfa',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c3',
    'Nukhi',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c4',
    'Elfira',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c5',
    'Kangkung',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    'Bayam',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c7',
    'Singkong',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c8',
    'Wortel',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Santris` (
    `id`,
    `name`,
    `nis`,
    `datebirth`,
    `gender`,
    `tempat`,
    `address`,
    `telephone`,
    `ayah`,
    `ibu`,
    `photo`,
    `mulai_masuk`,
    `mulai_vakum`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c9',
    'Apel',
    '20220907',
    '2022-12-09 16:17:40',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    '082177751041',
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: SequelizeMeta
# ------------------------------------------------------------

INSERT INTO
  `SequelizeMeta` (`name`)
VALUES
  ('20220902092156-create-roles.js');
INSERT INTO
  `SequelizeMeta` (`name`)
VALUES
  ('20220902092158-create-masterpondok.js');
INSERT INTO
  `SequelizeMeta` (`name`)
VALUES
  ('20220902092159-create-pondok.js');
INSERT INTO
  `SequelizeMeta` (`name`)
VALUES
  ('20220903125150-create-users.js');
INSERT INTO
  `SequelizeMeta` (`name`)
VALUES
  ('20220904082542-create-santri.js');
INSERT INTO
  `SequelizeMeta` (`name`)
VALUES
  ('20220904092536-create-guru.js');
INSERT INTO
  `SequelizeMeta` (`name`)
VALUES
  ('20220904093926-create-iqrosantri.js');
INSERT INTO
  `SequelizeMeta` (`name`)
VALUES
  ('20220904093927-create-iqroguru.js');
INSERT INTO
  `SequelizeMeta` (`name`)
VALUES
  ('20220904094614-create-surahpendekguru.js');
INSERT INTO
  `SequelizeMeta` (`name`)
VALUES
  ('20220904094614-create-surahpendeksantri.js');
INSERT INTO
  `SequelizeMeta` (`name`)
VALUES
  ('20220904094805-create-alquransantri.js');
INSERT INTO
  `SequelizeMeta` (`name`)
VALUES
  ('20220904094806-create-alquranguru.js');
INSERT INTO
  `SequelizeMeta` (`name`)
VALUES
  ('20220905155750-create-user-santri.js');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: Surahpendekgurus
# ------------------------------------------------------------

INSERT INTO
  `Surahpendekgurus` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    1,
    'An Naba’',
    '2022-12-09 16:17:40',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50465',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendekgurus` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    2,
    'An Nazi’at',
    '2022-12-09 16:17:40',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50465',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendekgurus` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    3,
    'Al Lahab',
    '2022-12-09 16:17:40',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50465',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendekgurus` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    4,
    'Al Kautsar',
    '2022-12-09 16:17:40',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendekgurus` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    5,
    'Al Ikhlash',
    '2022-12-09 16:17:40',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendekgurus` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `guruId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    6,
    'An Nazi’at',
    '2022-12-09 16:17:40',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: Surahpendeksantris
# ------------------------------------------------------------

INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    1,
    'An Naba’',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    2,
    'An Nazi’at',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    3,
    'Al Lahab',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    4,
    'Al Kautsar',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    5,
    'Al Ikhlash',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    6,
    'An Nazi’at',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    7,
    'Al Kautsar',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    8,
    'Al Ikhlash',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    9,
    'An Nazi’at',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    10,
    'Al Kautsar',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b3',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    11,
    'Al Ikhlash',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b3',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    12,
    'An Nazi’at',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b3',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    13,
    'Al Kautsar',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b4',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    14,
    'Al Ikhlash',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b4',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    15,
    'An Nazi’at',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b4',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    16,
    'Al Kautsar',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c3',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    17,
    'Al Ikhlash',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c3',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    18,
    'An Nazi’at',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c3',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    19,
    'Al Kautsar',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c4',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    20,
    'Al Ikhlash',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c4',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    21,
    'An Nazi’at',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c4',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    22,
    'Al Kautsar',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c5',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    23,
    'Al Ikhlash',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c5',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    24,
    'An Nazi’at',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    25,
    'Al Kautsar',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    26,
    'Al Ikhlash',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    27,
    'An Nazi’at',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    28,
    'Al Kautsar',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    29,
    'Al Ikhlash',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    30,
    'An Nazi’at',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    31,
    'Al Kautsar',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c12',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    32,
    'Al Ikhlash',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c12',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    33,
    'An Nazi’at',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c12',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    34,
    'Al Kautsar',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c13',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    35,
    'Al Ikhlash',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c13',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    36,
    'An Nazi’at',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c13',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    37,
    'Al Kautsar',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    38,
    'Al Ikhlash',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Surahpendeksantris` (
    `id`,
    `name`,
    `tgl_selesai`,
    `ket`,
    `santriId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    39,
    'An Nazi’at',
    '2022-12-09 16:17:40',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: UserSantris
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: Users
# ------------------------------------------------------------

INSERT INTO
  `Users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3039',
    'Master Admin',
    '$2b$10$nAi2U996zcOTyWlWj8ciMOgZpjlfUQPF2ZhnsrUMvcD5r3HmixY2S',
    'masteradmin@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2022-12-09 16:17:39',
    NULL,
    '082177751041',
    'adminprofile.png',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIxYzcyNThmOC0wYWMwLTRjMzYtYWJhMi05NGJhM2Y0ZjMwMzkiLCJuYW1lIjoiTWFzdGVyIEFkbWluIiwiZW1haWwiOiJtYXN0ZXJhZG1pbkBnbWFpbC5jb20iLCJyb2xlIjoiOGIyNzNkNjgtZmUwOS00MjJkLWE2NjAtYWYzZDgzMTJmODgzIiwicGhvdG8iOiJhZG1pbnByb2ZpbGUucG5nIiwibG9nb3RhaGZpZHoiOiJjMGU3M2RjYzUwODAwZjU1MjViMzEzZTA0LnBuZyIsInJvbGVOYW1lIjoiTWFzdGVyIEFkbWluIiwiaWF0IjoxNjcwNjUwNTEzLCJleHAiOjE2NzA3MzY5MTN9.DbPf4cDoqdkGSK36yvAxWSTaOWqfujfnkZaUYAwq4dQ',
    '8b273d68-fe09-422d-a660-af3d8312f883',
    '96f95aea-ef38-4623-82af-979c383bbb35',
    '2022-12-09 16:17:39',
    '2022-12-10 05:35:13'
  );
INSERT INTO
  `Users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3040',
    'Admin',
    '$2b$10$l.Iu0F.pjD9R0yJEgs6RKOC8SeOpnYTFNuDqapwRa2EtyJQKXy.AC',
    'admin@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2022-12-09 00:00:00',
    'null',
    '082177751041',
    '43f83ea61807be9d00dc6a502.png',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIxYzcyNThmOC0wYWMwLTRjMzYtYWJhMi05NGJhM2Y0ZjMwNDAiLCJuYW1lIjoiQWRtaW4iLCJlbWFpbCI6ImFkbWluQGdtYWlsLmNvbSIsInJvbGUiOiI4YjI3M2Q2OC1mZTA5LTQyMmQtYTY2MC1hZjNkODMxMmY4ODQiLCJwaG90byI6IjQzZjgzZWE2MTgwN2JlOWQwMGRjNmE1MDIucG5nIiwibG9nb3RhaGZpZHoiOiI0M2Y4M2VhNjE4MDdiZTlkMDBkYzZhNTAwLnBuZyIsInJvbGVOYW1lIjoiYWRtaW4iLCJpYXQiOjE2NzA2NTA0OTcsImV4cCI6MTY3MDczNjg5N30.VgFlMylUFe-LwUYCYyrI0u-FYXBjLNpsDAydgssWtn4',
    '8b273d68-fe09-422d-a660-af3d8312f884',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '2022-12-09 16:17:39',
    '2022-12-10 05:34:57'
  );
INSERT INTO
  `Users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3041',
    'Admin2',
    '$2b$10$Jeqd8t73oUSczMPgGLKZluRgooUiGT4O23qyYwoyMBB115ytOLqGO',
    'admin2@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2022-12-09 16:17:39',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '8b273d68-fe09-422d-a660-af3d8312f884',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '2022-12-09 16:17:39',
    '2022-12-09 16:17:39'
  );
INSERT INTO
  `Users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3042',
    'Orang Tua2',
    '$2b$10$YRWwaXf93tvru8c7wZruU.EDiLBHTWdMaSH4gj21Bu8Tv/94WKQX.',
    'ortu2@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2022-12-09 16:17:39',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '1a2832f9-ceb7-4ff9-930a-af176c88dcc5',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '2022-12-09 16:17:39',
    '2022-12-09 16:17:39'
  );
INSERT INTO
  `Users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3043',
    'Donatur',
    '$2b$10$UnpkiTs7dAUbLZgICHq..OOPeg5PBmjrCYxw9SZyxbudEZZ3fCOq2',
    'donatur@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2022-12-09 16:17:39',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '1b864518-299d-469c-b270-4d4b9d5b120f',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '2022-12-09 16:17:39',
    '2022-12-09 16:17:39'
  );
INSERT INTO
  `Users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3044',
    'Adminhikmah1',
    '$2b$10$ZG80QCnRiu9s3tq6qpb/POAXDxJd6CVQUNx2RcrnSg/hhfTGjy/KK',
    'adminhikmah1@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2022-12-09 16:17:39',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '8b273d68-fe09-422d-a660-af3d8312f884',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2022-12-09 16:17:39',
    '2022-12-09 16:17:39'
  );
INSERT INTO
  `Users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3045',
    'Orang Tua Hikmah1',
    '$2b$10$m4OKgvy9uqESnvMj9bMTQObzxEC6Neayatd3jUGI57Ez8nrCi4/t6',
    'ortuhikmah1@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2022-12-09 16:17:40',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '1a2832f9-ceb7-4ff9-930a-af176c88dcc5',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3046',
    'Donatur hikmah 1',
    '$2b$10$Es9ixHDoFZkI5kJbX6U/8uaQGuDxjAdZtJIfN2HuNWqgRs7hncF5C',
    'donaturhikmah1@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2022-12-09 16:17:40',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '1b864518-299d-469c-b270-4d4b9d5b120f',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3047',
    'Adminhikmah2',
    '$2b$10$dwCC3tjGobmsP3S2JdGcX.idJNoMDZ3h.vhUaq4sUfRhWglPU1sGi',
    'adminhikmah2@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2022-12-09 16:17:40',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '8b273d68-fe09-422d-a660-af3d8312f884',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3048',
    'Orang Tua Hikmah2',
    '$2b$10$2Avz5tPnnfQf1yh44VRf8uuX1XNA1/BduEJYCcxRG/CmXKGyaVc52',
    'ortuhikmah2@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2022-12-09 16:17:40',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '1a2832f9-ceb7-4ff9-930a-af176c88dcc5',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3049',
    'Donatur hikmah 2',
    '$2b$10$zy2ckXWtg99Sq.06zZLu8OtcnC4cBL1adpWZ0iiRdSmWT6239Goa6',
    'donaturhikmah2@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2022-12-09 16:17:40',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '1b864518-299d-469c-b270-4d4b9d5b120f',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '2022-12-09 16:17:40',
    '2022-12-09 16:17:40'
  );
INSERT INTO
  `Users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '7a8fd74d-3fe0-4b7b-8d77-1e8266983ade',
    'Donatur',
    '$2b$10$12OPFSIHD9ytUZaqvdfteO8fR5zE3jwQw3kmf8xuS5pFIVbtM9wSS',
    'donatur@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2022-12-09 16:17:39',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '1b864518-299d-469c-b270-4d4b9d5b120f',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '2022-12-09 16:17:39',
    '2022-12-09 16:17:39'
  );
INSERT INTO
  `Users` (
    `id`,
    `name`,
    `password`,
    `email`,
    `address`,
    `age`,
    `datebirth`,
    `gender`,
    `telephone`,
    `photo`,
    `refresh_token`,
    `roleId`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '8ce3ed88-34e4-4fb2-baa7-26b6151a43fc',
    'Orang Tua',
    '$2b$10$84FQBmkf/JQ.1EK4zH/aduZdzPY0c39QTy5tP0bfBNNwI7nWQog7S',
    'ortu@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2022-12-09 00:00:00',
    'null',
    '082177751041',
    '9c7a60b664edd14cb877efa03.png',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI4Y2UzZWQ4OC0zNGU0LTRmYjItYmFhNy0yNmI2MTUxYTQzZmMiLCJuYW1lIjoiT3JhbmcgVHVhIiwiZW1haWwiOiJvcnR1QGdtYWlsLmNvbSIsInJvbGUiOiIxYTI4MzJmOS1jZWI3LTRmZjktOTMwYS1hZjE3NmM4OGRjYzUiLCJwaG90byI6IjljN2E2MGI2NjRlZGQxNGNiODc3ZWZhMDMucG5nIiwibG9nb3RhaGZpZHoiOiI0M2Y4M2VhNjE4MDdiZTlkMDBkYzZhNTAwLnBuZyIsInJvbGVOYW1lIjoib3J0dSIsImlhdCI6MTY3MDY1MDUwNywiZXhwIjoxNjcwNzM2OTA3fQ.zLpn1qyCUA0J4EToi8SkkgVTDYapv6_EA-KXKD5C-nc',
    '1a2832f9-ceb7-4ff9-930a-af176c88dcc5',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '2022-12-09 16:17:39',
    '2022-12-10 05:35:07'
  );

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
