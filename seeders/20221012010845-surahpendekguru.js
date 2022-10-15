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
      "Surahpendekgurus",
      [
        {
          id: 1,
          name: "An Naba’",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50465",
        },
        {
          id: 2,
          name: "An Nazi’at",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50465",
        },
        {
          id: 3,
          name: "Al Lahab",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50465",
        },
        {
          id: 4,
          name: "Al Kautsar",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50466",
        },
        {
          id: 5,
          name: "Al Ikhlash",
          tgl_selesai: "06-06-1998",
          ket: "selesai",
          guruId: "245d57c6-0076-44ea-9876-dd2d3da50466",
        },
        {
          id: 6,
          name: "An Nazi’at",
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
    await queryInterface.bulkDelete("Surahpendekgurus", null, {});
  },
};
