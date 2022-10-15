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
      "Iqrogurus",
      [
        {
          id: 1,
          name: "1",
          halaman: "3",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50462",
        },
        {
          id: 2,
          name: "1",
          halaman: "6",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50462",
        },
        {
          id: 3,
          name: "1",
          halaman: "10",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50462",
        },
        {
          id: 4,
          name: "2",
          halaman: "12",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50462",
        },
        {
          id: 5,
          name: "2",
          halaman: "17",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50462",
        },
        {
          id: 6,
          name: "2",
          halaman: "20",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50462",
        },
        {
          id: 7,
          name: "3",
          halaman: "21",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50462",
        },
        {
          id: 8,
          name: "3",
          halaman: "29",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50462",
        },
        {
          id: 9,
          name: "1",
          halaman: "5",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas lanjut",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50466",
        },
        {
          id: 10,
          name: "1",
          halaman: "8",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50466",
        },
        {
          id: 11,
          name: "1",
          halaman: "20",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50466",
        },
        {
          id: 12,
          name: "2",
          halaman: "28",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas lanjut",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50466",
        },
        {
          id: 13,
          name: "2",
          halaman: "30",
          tgl_selesai: "06-06-1998",
          ket: "Tuntas",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50466",
        },
        {
          id: 14,
          name: "2",
          halaman: "35",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50466",
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
    await queryInterface.bulkDelete("Iqrogurus", null, {});
  },
};
