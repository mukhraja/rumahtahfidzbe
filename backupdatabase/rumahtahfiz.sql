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
  `id` varchar(255) NOT NULL,
  `juz` varchar(255) DEFAULT NULL,
  `surah` varchar(255) DEFAULT NULL,
  `ayat` varchar(255) DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `guruId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `guruId` (`guruId`),
  CONSTRAINT `alqurangurus_ibfk_1` FOREIGN KEY (`guruId`) REFERENCES `gurus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: gurus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gurus`;
CREATE TABLE `gurus` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `niu` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `datebirth` datetime DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
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
  `id` varchar(255) NOT NULL,
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
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB AUTO_INCREMENT = 15 DEFAULT CHARSET = utf8mb4;

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
  `photo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
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
  `education` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `parent` varchar(255) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `tgl_masuk` datetime DEFAULT NULL,
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
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `guruId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `guruId` (`guruId`),
  CONSTRAINT `surahpendekgurus_ibfk_1` FOREIGN KEY (`guruId`) REFERENCES `gurus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = utf8mb4;

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
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE
  SET
  NULL ON UPDATE CASCADE
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

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: gurus
# ------------------------------------------------------------

INSERT INTO
  `gurus` (
    `id`,
    `name`,
    `niu`,
    `email`,
    `datebirth`,
    `gender`,
    `telephone`,
    `education`,
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
    'andriansyah@gmail.com',
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'diploma',
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
    `email`,
    `datebirth`,
    `gender`,
    `telephone`,
    `education`,
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
    'andriansyah@gmail.com',
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'diploma',
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
    `email`,
    `datebirth`,
    `gender`,
    `telephone`,
    `education`,
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
    'andriansyah@gmail.com',
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'diploma',
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
    `email`,
    `datebirth`,
    `gender`,
    `telephone`,
    `education`,
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
    'andriansyah@gmail.com',
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'diploma',
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
    `email`,
    `datebirth`,
    `gender`,
    `telephone`,
    `education`,
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
    'andriansyah@gmail.com',
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'diploma',
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
    `email`,
    `datebirth`,
    `gender`,
    `telephone`,
    `education`,
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
    'andriansyah@gmail.com',
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'diploma',
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
    `email`,
    `datebirth`,
    `gender`,
    `telephone`,
    `education`,
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
    'andriansyah@gmail.com',
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'diploma',
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
    `email`,
    `datebirth`,
    `gender`,
    `telephone`,
    `education`,
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
    'andriansyah@gmail.com',
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'diploma',
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
    `email`,
    `datebirth`,
    `gender`,
    `telephone`,
    `education`,
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
    'andriansyah@gmail.com',
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'diploma',
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
    `email`,
    `datebirth`,
    `gender`,
    `telephone`,
    `education`,
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
    'andriansyah@gmail.com',
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'diploma',
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
    `email`,
    `datebirth`,
    `gender`,
    `telephone`,
    `education`,
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
    'andriansyah@gmail.com',
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'diploma',
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
    `email`,
    `datebirth`,
    `gender`,
    `telephone`,
    `education`,
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
    'andriansyah@gmail.com',
    '1998-06-06 00:00:00',
    'Pria',
    '082177751041',
    'diploma',
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

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: iqrogurus
# ------------------------------------------------------------


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
    '1',
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
    '1',
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
    '1',
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
    '2',
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
    '2',
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
    '2',
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
    '3',
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
    '3',
    '29',
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
    9,
    '1',
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
    '1',
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
    '1',
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
    '2',
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
    '2',
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
    '2',
    '35',
    '0000-00-00 00:00:00',
    'selesai',
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008a9',
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
    `photo`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '5a7bee8c-3ac3-4542-b792-5fe7806077b4',
    'Rumah Tahfidz Al Hikmah',
    'RTS0002',
    'Jalan Padang Salam No.285',
    '08218233445',
    'Ustad Dian',
    'pondoktahfiz1',
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
    `photo`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '96f95aea-ef38-4623-82af-979c383bbb37',
    'Rumah Tahfidz Tazkiyah',
    'RTS0001',
    'Jalan Padang Salam No.285',
    '08218233445',
    'Ustad Adri',
    'pondoktahfiz1',
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
    `photo`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    'e3028fca-6d4a-4c80-8e09-14d253dac964',
    'Rumah Tahfidz Al Ikhlas',
    'RTS0003',
    'Jalan Padang Salam No.285',
    '08218233445',
    'Ustad Yiansyah',
    'pondoktahfiz1',
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
    `education`,
    `city`,
    `province`,
    `address`,
    `parent`,
    `telephone`,
    `photo`,
    `tgl_masuk`,
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
    'Sarjana',
    'Palembang',
    'Sumatera Selatan',
    'Jalan Samiban Ayam',
    'Budi Darma Putra',
    2147483647,
    'ajisetiaji.jpg',
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
    `education`,
    `city`,
    `province`,
    `address`,
    `parent`,
    `telephone`,
    `photo`,
    `tgl_masuk`,
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
    'Sarjana',
    'Palembang',
    'Sumatera Selatan',
    'Jalan Samiban Ayam',
    'Budi Darma Putra',
    2147483647,
    'ajisetiaji.jpg',
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
    `education`,
    `city`,
    `province`,
    `address`,
    `parent`,
    `telephone`,
    `photo`,
    `tgl_masuk`,
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
    'Sarjana',
    'Palembang',
    'Sumatera Selatan',
    'Jalan Samiban Ayam',
    'Budi Darma Putra',
    2147483647,
    'ajisetiaji.jpg',
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
    `education`,
    `city`,
    `province`,
    `address`,
    `parent`,
    `telephone`,
    `photo`,
    `tgl_masuk`,
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
    'Sarjana',
    'Palembang',
    'Sumatera Selatan',
    'Jalan Samiban Ayam',
    'Budi Darma Putra',
    2147483647,
    'ajisetiaji.jpg',
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
    `education`,
    `city`,
    `province`,
    `address`,
    `parent`,
    `telephone`,
    `photo`,
    `tgl_masuk`,
    `pondokId`,
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '4aeb9b02-0ceb-4a52-9d55-38ad38f008b3',
    'Mahessa',
    '20220907',
    '1998-06-05 17:00:00',
    'Pria',
    'Sarjana',
    'Palembang',
    'Sumatera Selatan',
    'Jalan Samiban Ayam',
    'Budi Darma Putra',
    2147483647,
    'ajisetiaji.jpg',
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
    `education`,
    `city`,
    `province`,
    `address`,
    `parent`,
    `telephone`,
    `photo`,
    `tgl_masuk`,
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
    'Sarjana',
    'Palembang',
    'Sumatera Selatan',
    'Jalan Samiban Ayam',
    'Budi Darma Putra',
    2147483647,
    'ajisetiaji.jpg',
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
    `education`,
    `city`,
    `province`,
    `address`,
    `parent`,
    `telephone`,
    `photo`,
    `tgl_masuk`,
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
    'Sarjana',
    'Palembang',
    'Sumatera Selatan',
    'Jalan Samiban Ayam',
    'Budi Darma Putra',
    2147483647,
    'ajisetiaji.jpg',
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
    `education`,
    `city`,
    `province`,
    `address`,
    `parent`,
    `telephone`,
    `photo`,
    `tgl_masuk`,
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
    'Sarjana',
    'Palembang',
    'Sumatera Selatan',
    'Jalan Samiban Ayam',
    'Budi Darma Putra',
    2147483647,
    'ajisetiaji.jpg',
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
    `education`,
    `city`,
    `province`,
    `address`,
    `parent`,
    `telephone`,
    `photo`,
    `tgl_masuk`,
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
    'Sarjana',
    'Palembang',
    'Sumatera Selatan',
    'Jalan Samiban Ayam',
    'Budi Darma Putra',
    2147483647,
    'ajisetiaji.jpg',
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
    `education`,
    `city`,
    `province`,
    `address`,
    `parent`,
    `telephone`,
    `photo`,
    `tgl_masuk`,
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
    'Sarjana',
    'Palembang',
    'Sumatera Selatan',
    'Jalan Samiban Ayam',
    'Budi Darma Putra',
    2147483647,
    'ajisetiaji.jpg',
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
    `education`,
    `city`,
    `province`,
    `address`,
    `parent`,
    `telephone`,
    `photo`,
    `tgl_masuk`,
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
    'Sarjana',
    'Palembang',
    'Sumatera Selatan',
    'Jalan Samiban Ayam',
    'Budi Darma Putra',
    2147483647,
    'ajisetiaji.jpg',
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
    `education`,
    `city`,
    `province`,
    `address`,
    `parent`,
    `telephone`,
    `photo`,
    `tgl_masuk`,
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
    'Sarjana',
    'Palembang',
    'Sumatera Selatan',
    'Jalan Samiban Ayam',
    'Budi Darma Putra',
    2147483647,
    'ajisetiaji.jpg',
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
    `education`,
    `city`,
    `province`,
    `address`,
    `parent`,
    `telephone`,
    `photo`,
    `tgl_masuk`,
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
    'Sarjana',
    'Palembang',
    'Sumatera Selatan',
    'Jalan Samiban Ayam',
    'Budi Darma Putra',
    2147483647,
    'ajisetiaji.jpg',
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
    `education`,
    `city`,
    `province`,
    `address`,
    `parent`,
    `telephone`,
    `photo`,
    `tgl_masuk`,
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
    'Sarjana',
    'Palembang',
    'Sumatera Selatan',
    'Jalan Samiban Ayam',
    'Budi Darma Putra',
    2147483647,
    'ajisetiaji.jpg',
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
  ('20220902092157-create-pondok.js');
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
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '1c7258f8-0ac0-4c36-aba2-94ba3f4f3040',
    'Admin',
    '$2b$10$lg2VX9nheojU80KSFXHhdunuoz2wQ4lbN9EXdxnEZw6JM3qwl8a6q',
    'admin@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '0000-00-00 00:00:00',
    NULL,
    '082177751041',
    'budi.jpg',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiIxYzcyNThmOC0wYWMwLTRjMzYtYWJhMi05NGJhM2Y0ZjMwNDAiLCJuYW1lIjoiQWRtaW4iLCJlbWFpbCI6ImFkbWluQGdtYWlsLmNvbSIsInJvbGUiOiI4YjI3M2Q2OC1mZTA5LTQyMmQtYTY2MC1hZjNkODMxMmY4ODQiLCJpYXQiOjE2NjUwNjg3MTgsImV4cCI6MTY2NTE1NTExOH0.0qrviM_O0pLZCaixZ21zTD1JRznn74mifVQeL6ihacQ',
    '8b273d68-fe09-422d-a660-af3d8312f884',
    '0000-00-00 00:00:00',
    '2022-10-06 15:05:18'
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
    `createdAt`,
    `updatedAt`
  )
VALUES
  (
    '7a8fd74d-3fe0-4b7b-8d77-1e8266983ade',
    'Donatur',
    '$2b$10$4CZlek.AhQ9sGUDbD30Rcu5M/QCqPSktxYMIGIHzqWV58XmWFWKey',
    'donatur@gmail.com',
    'Jalan Samiban Bayam Lorong Ayam',
    '24',
    '0000-00-00 00:00:00',
    NULL,
    '082177751041',
    'budi.jpg',
    NULL,
    '1b864518-299d-469c-b270-4d4b9d5b120f',
    '0000-00-00 00:00:00',
    '0000-00-00 00:00:00'
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
