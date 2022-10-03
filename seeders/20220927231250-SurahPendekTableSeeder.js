"use strict";

module.exports = {
  async up(queryInterface, Sequelize) {
    /**
     * Add seed commands here.
     *
     * Example:
     * await queryInterface.bulkInsert('People', [{
     *   name: 'John Doe',
     *   isBetaMember: false
     * }], {});
     */
    await queryInterface.bulkInsert(
      "Surahpendeksantris",
      [
        {
          id: 1,
          name: "An - nas",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
        },
        {
          id: 2,
          name: "Al-Ikhlas",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
        },
        {
          id: 3,
          name: "Al-Falaq",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
        },
        {
          id: 4,
          name: "At-Taubah",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas lanjut",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a9",
        },
        {
          id: 5,
          name: "Al-Maidah",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a9",
        },
        {
          id: 6,
          name: "Al-Furqon",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
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
    await queryInterface.bulkDelete("Surahpendeksantris", null, {});
  },
};
