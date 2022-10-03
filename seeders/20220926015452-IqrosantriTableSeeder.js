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
      "Iqrosantris",
      [
        {
          id: 1,
          name: "2",
          halaman: "6",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
        },
        {
          id: 2,
          name: "6",
          halaman: "11",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
        },
        {
          id: 3,
          name: "7",
          halaman: "11",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
        },
        {
          id: 4,
          name: "2",
          halaman: "8",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas lanjut",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a9",
        },
        {
          id: 5,
          name: "9",
          halaman: "18",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a9",
        },
        {
          id: 6,
          name: "18",
          halaman: "20",
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
    await queryInterface.bulkDelete("Iqrosantris", null, {});
  },
};
