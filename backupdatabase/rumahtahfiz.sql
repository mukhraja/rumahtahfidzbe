/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: alqurangurus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alqurangurus`;
CREATE TABLE `alqurangurus` (
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
  CONSTRAINT `alqurangurus_ibfk_1` FOREIGN KEY (`guruId`) REFERENCES `gurus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: alquransantris
# ------------------------------------------------------------

DROP TABLE IF EXISTS `alquransantris`;
CREATE TABLE `alquransantris` (
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
  CONSTRAINT `alquransantris_ibfk_1` FOREIGN KEY (`santriId`) REFERENCES `santris` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 35 DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: gurus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gurus`;
CREATE TABLE `gurus` (
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
  CONSTRAINT `gurus_ibfk_1` FOREIGN KEY (`pondokId`) REFERENCES `pondoks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: iqrogurus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `iqrogurus`;
CREATE TABLE `iqrogurus` (
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
  CONSTRAINT `iqrogurus_ibfk_1` FOREIGN KEY (`guruId`) REFERENCES `gurus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 15 DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: iqrosantris
# ------------------------------------------------------------

DROP TABLE IF EXISTS `iqrosantris`;
CREATE TABLE `iqrosantris` (
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
  CONSTRAINT `iqrosantris_ibfk_1` FOREIGN KEY (`santriId`) REFERENCES `santris` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 47 DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: masterpondoks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `masterpondoks`;
CREATE TABLE `masterpondoks` (
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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: pondoks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pondoks`;
CREATE TABLE `pondoks` (
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
  CONSTRAINT `pondoks_ibfk_1` FOREIGN KEY (`masterpondokId`) REFERENCES `masterpondoks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: santris
# ------------------------------------------------------------

DROP TABLE IF EXISTS `santris`;
CREATE TABLE `santris` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nis` varchar(255) DEFAULT NULL,
  `datebirth` datetime DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `tempat` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
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
  CONSTRAINT `santris_ibfk_1` FOREIGN KEY (`pondokId`) REFERENCES `pondoks` (`id`) ON DELETE
  SET
  NULL ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: sequelizemeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sequelizemeta`;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: surahpendekgurus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `surahpendekgurus`;
CREATE TABLE `surahpendekgurus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `guruId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `guruId` (`guruId`),
  CONSTRAINT `surahpendekgurus_ibfk_1` FOREIGN KEY (`guruId`) REFERENCES `gurus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: surahpendeksantris
# ------------------------------------------------------------

DROP TABLE IF EXISTS `surahpendeksantris`;
CREATE TABLE `surahpendeksantris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `santriId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `santriId` (`santriId`),
  CONSTRAINT `surahpendeksantris_ibfk_1` FOREIGN KEY (`santriId`) REFERENCES `santris` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 40 DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
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
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`pondokId`) REFERENCES `pondoks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: usersantris
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usersantris`;
CREATE TABLE `usersantris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL,
  `SantriId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: alqurangurus
# ------------------------------------------------------------

INSERT INTO
  `alqurangurus` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alqurangurus` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alqurangurus` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alqurangurus` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '245d57c6-0076-44ea-9876-dd2d3da50465',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alqurangurus` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '245d57c6-0076-44ea-9876-dd2d3da50465',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: alquransantris
# ------------------------------------------------------------

INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b3',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b3',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b3',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b4',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b4',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b4',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b6',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b6',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b6',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b7',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b7',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b7',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c3',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c3',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c4',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c4',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c7',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c7',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c8',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c8',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c15',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c15',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `alquransantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: gurus
# ------------------------------------------------------------

INSERT INTO
  `gurus` (
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
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `gurus` (
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
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `gurus` (
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
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `gurus` (
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
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `gurus` (
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
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `gurus` (
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
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `gurus` (
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
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `gurus` (
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
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `gurus` (
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
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `gurus` (
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
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `gurus` (
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
    'Batara Dwi Hasanah',
    'RTU0006',
    'Padang',
    '2022-12-09 00:00:00',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-30',
    '2023-10-10',
    'a7dbbf78bd5d7a4c44996e50c.png',
    '9d2108b4-0759-45f1-a1a3-cc0d81cad9e0',
    '0000-00-00 00:00:00',
    '2022-12-07 01:36:34'
  );
INSERT INTO
  `gurus` (
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
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `gurus` (
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
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `gurus` (
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
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `gurus` (
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
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `gurus` (
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
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `gurus` (
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
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `gurus` (
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
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `gurus` (
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
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'Jl. Rasuna Said No.82, Rimbo Kaluang, Kec. Padang Bar., Kota Padang, Sumatera Barat',
    'Budi Santoso',
    'Sumarni',
    '2022-08-08',
    '2023-10-10',
    'aji.jpg',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `gurus` (
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
    'cc69f9e5-1348-42d5-906c-a712ec423c1d',
    'anjalan',
    'ass',
    'ass',
    '2022-12-20 00:00:00',
    'ass',
    'ass',
    'asdasdad',
    'ass',
    'ass',
    '29/12/2022',
    '16/12/2022',
    'a7dbbf78bd5d7a4c44996e50d.png',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '2022-12-06 15:18:51',
    '2022-12-06 15:18:51'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: iqrogurus
# ------------------------------------------------------------

INSERT INTO
  `iqrogurus` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrogurus` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrogurus` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrogurus` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrogurus` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrogurus` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrogurus` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrogurus` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50462',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrogurus` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrogurus` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrogurus` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrogurus` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrogurus` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrogurus` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: iqrosantris
# ------------------------------------------------------------

INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    'IQRO 4',
    '29',
    '2022-12-13 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '0000-00-00 00:00:00',
    '2022-12-04 09:30:05'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas lanjut',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b8',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b8',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b9',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b9',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b9',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c5',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c5',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c5',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c9',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c9',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c9',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c10',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c10',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c10',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c13',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c13',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c13',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c15',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c15',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c15',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'Tuntas',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `iqrosantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: masterpondoks
# ------------------------------------------------------------

INSERT INTO
  `masterpondoks` (
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
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `masterpondoks` (
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
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `masterpondoks` (
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
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `masterpondoks` (
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
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: pondoks
# ------------------------------------------------------------

INSERT INTO
  `pondoks` (
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
    'RTS0003',
    'Jalan Padang Salam No.285',
    '08218233445',
    'Sanjaya',
    'a7dbbf78bd5d7a4c44996e502.png',
    'logo.png',
    '96f95aea-ef38-4623-82af-979c383bbb02',
    '0000-00-00 00:00:00',
    '2022-12-06 13:49:36'
  );
INSERT INTO
  `pondoks` (
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
    '',
    '',
    '',
    '',
    'logoadmin.png',
    '96f95aea-ef38-4623-82af-979c383bbb01',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `pondoks` (
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
    'Jalan Padangan',
    '98198201280',
    'asadad',
    '1c42498d50abfde430a579300.png',
    '1c42498d50abfde430a579301.png',
    '96f95aea-ef38-4623-82af-979c383bbb02',
    '0000-00-00 00:00:00',
    '2022-12-05 14:47:04'
  );
INSERT INTO
  `pondoks` (
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
    'RTS0001',
    'Jalan Padang Salam No.285',
    '08218233445',
    'Ustad Adri',
    '1c42498d50abfde430a579302.png',
    '1c42498d50abfde430a579303.png',
    '96f95aea-ef38-4623-82af-979c383bbb02',
    '0000-00-00 00:00:00',
    '2022-12-05 14:52:07'
  );
INSERT INTO
  `pondoks` (
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
    '9d2108b4-0759-45f1-a1a3-cc0d81cad9e0',
    'TAZKIYAHCABANG4',
    '121213131',
    'Jalan Tegalang',
    '12312313',
    'asadasdadad',
    '5db6c217eb7eb9ee73a76a800.png',
    '5db6c217eb7eb9ee73a76a801.png',
    '96f95aea-ef38-4623-82af-979c383bbb02',
    '2022-12-07 01:15:39',
    '2022-12-07 01:16:17'
  );
INSERT INTO
  `pondoks` (
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
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `pondoks` (
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
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: roles
# ------------------------------------------------------------

INSERT INTO
  `roles` (`id`, `name`, `createdAt`, `updatedAt`)
VALUES
  (
    '1a2832f9-ceb7-4ff9-930a-af176c88dcc5',
    'ortu',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `roles` (`id`, `name`, `createdAt`, `updatedAt`)
VALUES
  (
    '1b864518-299d-469c-b270-4d4b9d5b120f',
    'donatur',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `roles` (`id`, `name`, `createdAt`, `updatedAt`)
VALUES
  (
    '8b273d68-fe09-422d-a660-af3d8312f883',
    'Master Admin',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `roles` (`id`, `name`, `createdAt`, `updatedAt`)
VALUES
  (
    '8b273d68-fe09-422d-a660-af3d8312f884',
    'admin',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: santris
# ------------------------------------------------------------

INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-06 00:00:00',
    'Pria',
    'Padang',
    '2147483647',
    0,
    'Jalan Samiban Ayam',
    'Budi Darma Putra',
    'a7dbbf78bd5d7a4c44996e50e.png',
    '2022-08-08 00:00:00',
    '2022-08-08 00:00:00',
    '9d2108b4-0759-45f1-a1a3-cc0d81cad9e0',
    '0000-00-00 00:00:00',
    '2022-12-07 01:40:02'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    'e3028fca-6d4a-4c80-8e09-14d253dac965',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `santris` (
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
    '1998-06-05 17:00:00',
    'Pria',
    'Padang',
    'Jalan Samiban Ayam',
    2147483647,
    'Budi Darma Putra',
    'Maryam',
    'ajisetiaji.jpg',
    '2022-08-07 17:00:00',
    '2022-08-07 17:00:00',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: sequelizemeta
# ------------------------------------------------------------

INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220902092156-create-roles.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220902092158-create-masterpondok.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220902092159-create-pondok.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220903125150-create-users.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220904082542-create-santri.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220904092536-create-guru.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220904093926-create-iqrosantri.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220904093927-create-iqroguru.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220904094614-create-surahpendekguru.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220904094614-create-surahpendeksantri.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220904094805-create-alquransantri.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220904094806-create-alquranguru.js');
INSERT INTO
  `sequelizemeta` (`name`)
VALUES
  ('20220905155750-create-user-santri.js');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: surahpendekgurus
# ------------------------------------------------------------

INSERT INTO
  `surahpendekgurus` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50465',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendekgurus` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50465',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendekgurus` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50465',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendekgurus` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendekgurus` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendekgurus` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '245d57c6-0076-44ea-9876-dd2d3da50466',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: surahpendeksantris
# ------------------------------------------------------------

INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a8',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b1',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b3',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b3',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b3',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b4',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b4',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b4',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c3',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c3',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c3',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c4',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c4',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c4',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c5',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c5',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c6',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c11',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c12',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c12',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c12',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c13',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c13',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c13',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `surahpendeksantris` (
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
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008c14',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: users
# ------------------------------------------------------------

INSERT INTO
  `users` (
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
    '$2b$10$Jy7kO6wc4w9g95gxywDP9.bHlWeRot8WPa4MJol2DVayPD7Mf4MKC',
    'masteradmin@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '0000-00-00 00:00:00',
    NULL,
    '082177751041',
    'adminprofile.png',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIxYzcyNThmOC0wYWMwLTRjMzYtYWJhMi05NGJhM2Y0ZjMwMzkiLCJuYW1lIjoiTWFzdGVyIEFkbWluIiwiZW1haWwiOiJtYXN0ZXJhZG1pbkBnbWFpbC5jb20iLCJyb2xlIjoiOGIyNzNkNjgtZmUwOS00MjJkLWE2NjAtYWYzZDgzMTJmODgzIiwicGhvdG8iOiJhZG1pbnByb2ZpbGUucG5nIiwibG9nb3RhaGZpZHoiOiIiLCJyb2xlTmFtZSI6Ik1hc3RlciBBZG1pbiIsImlhdCI6MTY3MDQ2MTYxOSwiZXhwIjoxNjcwNTQ4MDE5fQ.sP-KbvYa7eA_x6BssFZes-4pNuGifZ7-qrexsibITr0',
    '8b273d68-fe09-422d-a660-af3d8312f883',
    '96f95aea-ef38-4623-82af-979c383bbb35',
    '0000-00-00 00:00:00',
    '2022-12-08 01:06:59'
  );
INSERT INTO
  `users` (
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
    '$2b$10$Uwp0ChupBdUKLtksdXHDLOnt3p7ZX867XCsY3UtlCfI/uCpNFdN9W',
    'admin@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '0000-00-00 00:00:00',
    NULL,
    '082177751041',
    'adminprofile.png',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIxYzcyNThmOC0wYWMwLTRjMzYtYWJhMi05NGJhM2Y0ZjMwNDAiLCJuYW1lIjoiQWRtaW4iLCJlbWFpbCI6ImFkbWluQGdtYWlsLmNvbSIsInJvbGUiOiI4YjI3M2Q2OC1mZTA5LTQyMmQtYTY2MC1hZjNkODMxMmY4ODQiLCJwaG90byI6ImFkbWlucHJvZmlsZS5wbmciLCJsb2dvdGFoZmlkeiI6IjFjNDI0OThkNTBhYmZkZTQzMGE1NzkzMDIucG5nIiwicm9sZU5hbWUiOiJhZG1pbiIsImlhdCI6MTY3MDQ2MTgyMCwiZXhwIjoxNjcwNTQ4MjIwfQ.QjCOhEHweTV2BMWjO0Nr5iGo0r-4nfhU7nYJsEoUnIY',
    '8b273d68-fe09-422d-a660-af3d8312f884',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '0000-00-00 00:00:00',
    '2022-12-08 01:10:20'
  );
INSERT INTO
  `users` (
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
    'Admin20',
    '$2b$10$aMl.6c/r2TZbaC7i9pL/6OzUSwAEEKbSBfyTFqf9IfWeJipmBYC1K',
    'admin2@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '2022-12-09 00:00:00',
    'Pria',
    '082177751041',
    'adminprofile.png',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIxYzcyNThmOC0wYWMwLTRjMzYtYWJhMi05NGJhM2Y0ZjMwNDEiLCJuYW1lIjoiQWRtaW4yIiwiZW1haWwiOiJhZG1pbjJAZ21haWwuY29tIiwicm9sZSI6IjhiMjczZDY4LWZlMDktNDIyZC1hNjYwLWFmM2Q4MzEyZjg4NCIsInBob3RvIjoiYWRtaW5wcm9maWxlLnBuZyIsImxvZ290YWhmaWR6IjoiIiwicm9sZU5hbWUiOiJhZG1pbiIsImlhdCI6MTY3MDE0NjY5MywiZXhwIjoxNjcwMjMzMDkzfQ.FdfxTJZbrDpV9yLqsOsB97WQZYmiDvcBXVx1Evd6sjQ',
    '8b273d68-fe09-422d-a660-af3d8312f884',
    '9d2108b4-0759-45f1-a1a3-cc0d81cad9e0',
    '0000-00-00 00:00:00',
    '2022-12-08 01:03:52'
  );
INSERT INTO
  `users` (
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
    '$2b$10$h/rHdIBY9E8ARy0BsDD3GOkLJKt16lvC4cL5R611mfrjkhdtOcD0y',
    'ortu2@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '0000-00-00 00:00:00',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '1a2832f9-ceb7-4ff9-930a-af176c88dcc5',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `users` (
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
    '$2b$10$p0JjijIa6oEHkRK8fXJmGubB2KRY.d4Jh7g57ZO/1hvADozFcOfeS',
    'donatur@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '0000-00-00 00:00:00',
    NULL,
    '082177751041',
    'adminprofile.png',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIxYzcyNThmOC0wYWMwLTRjMzYtYWJhMi05NGJhM2Y0ZjMwNDMiLCJuYW1lIjoiRG9uYXR1ciIsImVtYWlsIjoiZG9uYXR1ckBnbWFpbC5jb20iLCJyb2xlIjoiMWI4NjQ1MTgtMjk5ZC00NjljLWIyNzAtNGQ0YjlkNWIxMjBmIiwicGhvdG8iOiJhZG1pbnByb2ZpbGUucG5nIiwibG9nb3RhaGZpZHoiOiIiLCJyb2xlTmFtZSI6ImRvbmF0dXIiLCJpYXQiOjE2NzAwODE5MDksImV4cCI6MTY3MDE2ODMwOX0.xCX_dUi3gexVAudaY00CMEuau6HmG9qoZWPXhygrxYg',
    '1b864518-299d-469c-b270-4d4b9d5b120f',
    '96f95aea-ef38-4623-82af-979c383bbb36',
    '0000-00-00 00:00:00',
    '2022-12-03 15:38:29'
  );
INSERT INTO
  `users` (
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
    '$2b$10$8VQ403lkN4nA7H5p.LUMXeN4EeJnnQM60milersbcxDnjydAUNP4e',
    'adminhikmah1@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '0000-00-00 00:00:00',
    NULL,
    '082177751041',
    'adminprofile.png',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIxYzcyNThmOC0wYWMwLTRjMzYtYWJhMi05NGJhM2Y0ZjMwNDQiLCJuYW1lIjoiQWRtaW5oaWttYWgxIiwiZW1haWwiOiJhZG1pbmhpa21haDFAZ21haWwuY29tIiwicm9sZSI6IjhiMjczZDY4LWZlMDktNDIyZC1hNjYwLWFmM2Q4MzEyZjg4NCIsInBob3RvIjoiYWRtaW5wcm9maWxlLnBuZyIsImxvZ290YWhmaWR6IjoiIiwicm9sZU5hbWUiOiJhZG1pbiIsImlhdCI6MTY3MDE0Njc1MywiZXhwIjoxNjcwMjMzMTUzfQ.xotZohyq_uDXzwhVJ0BKPfzUUIWVvnlPVlez7NcAC90',
    '8b273d68-fe09-422d-a660-af3d8312f884',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '0000-00-00 00:00:00',
    '2022-12-04 09:39:13'
  );
INSERT INTO
  `users` (
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
    '$2b$10$uZ7cOG0pKCc05M8lnGWgoONKD8Cjr1avlPpXkiUhRaiuXaZcl0/nO',
    'ortuhikmah1@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '0000-00-00 00:00:00',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '1a2832f9-ceb7-4ff9-930a-af176c88dcc5',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `users` (
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
    '$2b$10$lNCYDQTBd6s0wzMJfQtOKOcT3Ful9lsgx1R433ow4T/S1lKtHnVS6',
    'donaturhikmah1@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '0000-00-00 00:00:00',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '1b864518-299d-469c-b270-4d4b9d5b120f',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `users` (
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
    '$2b$10$ulrOHt2Vjm0A756cRcieFO26Ux3LosbGv7uLAeoPITrLxzqcxsMGW',
    'adminhikmah2@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '0000-00-00 00:00:00',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '8b273d68-fe09-422d-a660-af3d8312f884',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `users` (
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
    '$2b$10$Fwg8y1AfCn186F9Zd1mre.9vNTkliQX0XFw.KRw5CcDbz5.nzkLwe',
    'ortuhikmah2@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '0000-00-00 00:00:00',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '1a2832f9-ceb7-4ff9-930a-af176c88dcc5',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `users` (
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
    '$2b$10$P.zsmAagWZSzb6Z0htPSvevFA7w.TtqTfMXFEd/5dLeE.Lo3Qfj/2',
    'donaturhikmah2@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '0000-00-00 00:00:00',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '1b864518-299d-469c-b270-4d4b9d5b120f',
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `users` (
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
    '$2b$10$mwHKC3yyiVSrla7Mr33fYeU3TcOG7sR2LIEZ3hJMLxeR2XCHG8wxy',
    'donatur@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '0000-00-00 00:00:00',
    NULL,
    '082177751041',
    'adminprofile.png',
    NULL,
    '1b864518-299d-469c-b270-4d4b9d5b120f',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
  );
INSERT INTO
  `users` (
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
    '$2b$10$TLJ.pPtxeXKJ4SpsLMMhjOKLRBxsUGKotV/VDwyQsI9FA4YgoGece',
    'ortu@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '0000-00-00 00:00:00',
    NULL,
    '082177751041',
    'adminprofile.png',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI4Y2UzZWQ4OC0zNGU0LTRmYjItYmFhNy0yNmI2MTUxYTQzZmMiLCJuYW1lIjoiT3JhbmcgVHVhIiwiZW1haWwiOiJvcnR1QGdtYWlsLmNvbSIsInJvbGUiOiIxYTI4MzJmOS1jZWI3LTRmZjktOTMwYS1hZjE3NmM4OGRjYzUiLCJwaG90byI6ImFkbWlucHJvZmlsZS5wbmciLCJsb2dvdGFoZmlkeiI6IiIsInJvbGVOYW1lIjoib3J0dSIsImlhdCI6MTY3MDE1OTkyMSwiZXhwIjoxNjcwMjQ2MzIxfQ.G95NkarAmW5evl9_WSrvhQSSvhkXZ0_i8VHjmkVWN8w',
    '1a2832f9-ceb7-4ff9-930a-af176c88dcc5',
    '96f95aea-ef38-4623-82af-979c383bbb37',
    '0000-00-00 00:00:00',
    '2022-12-04 13:18:41'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: usersantris
# ------------------------------------------------------------


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
