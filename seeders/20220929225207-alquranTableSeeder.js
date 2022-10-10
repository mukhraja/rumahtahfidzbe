"use strict";

module.exports = {
  async up(queryInterface, Sequelize) {
    /**
     * Add seed commands here.
     *
     * Example:
     * await queryInterface.bulkInsert('People', [{
     *   surah: 'John Doe',
     *   isBetaMember: false
     * }], {});
     */
    await queryInterface.bulkInsert(
      "Alquransantris",
      [
        {
          id: 1,
          juz: "12",
          surah: "Al maidah",
          halaman: "14",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
        },
        {
          id: 2,
          juz: "2",
          surah: "Al Baqarah",
          halaman: "20",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
        },
        {
          id: 3,
          juz: "20",
          surah: "An Nasr",
          halaman: "20",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
        },
        {
          id: 4,
          juz: "18",
          surah: "An Naba",
          halaman: "22",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas lanjut",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a9",
        },
        {
          id: 5,
          juz: "23",
          surah: "Al-Kafirun",
          halaman: "90",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas lanjut",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a9",
        },
      ],
      {}
    );
  },

  async down(queryInterface, Sequelize) {
    /**
     * Add commands to revert seed here.
     *
     * Example:
     * await queryInterface.bulkDelete('People', null, {});
     */
    await queryInterface.bulkDelete("Alquransantris", null, {});
  },
};
