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
        {
          id: 7,
          name: "Al Kautsar",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b1",
        },
        {
          id: 8,
          name: "Al Ikhlash",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b1",
        },
        {
          id: 9,
          name: "An Nazi’at",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b1",
        },
        {
          id: 10,
          name: "Al Kautsar",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b3",
        },
        {
          id: 11,
          name: "Al Ikhlash",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b3",
        },
        {
          id: 12,
          name: "An Nazi’at",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b3",
        },
        {
          id: 13,
          name: "Al Kautsar",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b4",
        },
        {
          id: 14,
          name: "Al Ikhlash",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b4",
        },
        {
          id: 15,
          name: "An Nazi’at",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008b4",
        },
        {
          id: 16,
          name: "Al Kautsar",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c3",
        },
        {
          id: 17,
          name: "Al Ikhlash",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c3",
        },
        {
          id: 18,
          name: "An Nazi’at",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c3",
        },
        {
          id: 19,
          name: "Al Kautsar",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c4",
        },
        {
          id: 20,
          name: "Al Ikhlash",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c4",
        },
        {
          id: 21,
          name: "An Nazi’at",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c4",
        },
        {
          id: 22,
          name: "Al Kautsar",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c5",
        },
        {
          id: 23,
          name: "Al Ikhlash",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c5",
        },
        {
          id: 24,
          name: "An Nazi’at",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c6",
        },
        {
          id: 25,
          name: "Al Kautsar",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c6",
        },
        {
          id: 26,
          name: "Al Ikhlash",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c6",
        },
        {
          id: 27,
          name: "An Nazi’at",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c6",
        },
        {
          id: 28,
          name: "Al Kautsar",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c11",
        },
        {
          id: 29,
          name: "Al Ikhlash",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c11",
        },
        {
          id: 30,
          name: "An Nazi’at",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c11",
        },
        {
          id: 31,
          name: "Al Kautsar",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c12",
        },
        {
          id: 32,
          name: "Al Ikhlash",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c12",
        },
        {
          id: 33,
          name: "An Nazi’at",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c12",
        },
        {
          id: 34,
          name: "Al Kautsar",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c13",
        },
        {
          id: 35,
          name: "Al Ikhlash",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c13",
        },
        {
          id: 36,
          name: "An Nazi’at",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c13",
        },
        {
          id: 37,
          name: "Al Kautsar",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c14",
        },
        {
          id: 38,
          name: "Al Ikhlash",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c14",
        },
        {
          id: 39,
          name: "An Nazi’at",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008c14",
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
