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
          name: "An Naba’",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
        },
        {
          id: 2,
          name: "An Nazi’at",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
        },
        {
          id: 3,
          name: "Al Lahab",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
        },
        {
          id: 4,
          name: "Al Kautsar",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a9",
        },
        {
          id: 5,
          name: "Al Ikhlash",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a9",
        },
        {
          id: 6,
          name: "An Nazi’at",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
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
