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
          name: "IQRO 1",
          halaman: "3",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
        },
        {
          id: 2,
          name: "IQRO 1",
          halaman: "6",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
        },
        {
          id: 3,
          name: "IQRO 1",
          halaman: "10",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
        },
        {
          id: 4,
          name: "IQRO 2",
          halaman: "12",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
        },
        {
          id: 5,
          name: "IQRO 2",
          halaman: "17",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
        },
        {
          id: 6,
          name: "IQRO 2",
          halaman: "20",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
        },
        {
          id: 7,
          name: "IQRO 3",
          halaman: "21",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
        },
        {
          id: 8,
          name: "IQRO 3",
          halaman: "29",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a8",
        },
        {
          id: 9,
          name: "IQRO 1",
          halaman: "5",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas lanjut",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a9",
        },
        {
          id: 10,
          name: "IQRO 1",
          halaman: "8",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a9",
        },
        {
          id: 11,
          name: "IQRO 1",
          halaman: "20",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a9",
        },
        {
          id: 12,
          name: "IQRO 2",
          halaman: "28",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas lanjut",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a9",
        },
        {
          id: 13,
          name: "IQRO 2",
          halaman: "30",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          santriId: "4aeb9b02-0ceb-4a52-9d55-38ad38f008a9",
        },
        {
          id: 14,
          name: "IQRO 2",
          halaman: "35",
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
    await queryInterface.bulkDelete("Iqrosantris", null, {});
  },
};
