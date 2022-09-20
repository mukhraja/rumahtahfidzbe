"use strict";
const uuid = require("uuid");

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
      "Pondoks",
      [
        {
          id: "96f95aea-ef38-4623-82af-979c383bbb37",
          nit: "RTS0001",
          name: "Rumah Tahfidz Tazkiyah",
          address: "Jalan Padang Salam No.285",
          telephone: "08218233445",
          chief: "Ustad Adri",
          photo: "pondoktahfiz1",
        },
        {
          id: "5a7bee8c-3ac3-4542-b792-5fe7806077b4",
          nit: "RTS0002",
          name: "Rumah Tahfidz Al Hikmah",
          address: "Jalan Padang Salam No.285",
          telephone: "08218233445",
          chief: "Ustad Dian",
          photo: "pondoktahfiz1",
        },
        {
          id: "e3028fca-6d4a-4c80-8e09-14d253dac964",
          nit: "RTS0003",
          name: "Rumah Tahfidz Al Ikhlas",
          address: "Jalan Padang Salam No.285",
          telephone: "08218233445",
          chief: "Ustad Yiansyah",
          photo: "pondoktahfiz1",
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
    await queryInterface.bulkDelete("Pondoks", null, {});
  },
};
