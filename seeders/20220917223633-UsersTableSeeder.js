"use strict";
const uuid = require("uuid");
const bcrypt = require("bcrypt");

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
      "Users",
      [
        {
          id: "1c7258f8-0ac0-4c36-aba2-94ba3f4f3040",
          name: "Admin",
          password: bcrypt.hashSync("panji123", 10),
          email: "budidarma@gmail.com",
          address: "Jalan Tegal Binangung Lorong Abdul Rohim",
          telephone: "082177751041",
          photo: "budi.jpg",
          roleId: "8b273d68-fe09-422d-a660-af3d8312f884",
        },
        {
          id: "8ce3ed88-34e4-4fb2-baa7-26b6151a43fc",
          name: "Bryan",
          password: bcrypt.hashSync("panji123", 10),
          email: "bryan@gmail.com",
          address: "Jalan Tegal Binangung Lorong Abdul Rohim",
          telephone: "082177751041",
          photo: "budi.jpg",
          roleId: "1a2832f9-ceb7-4ff9-930a-af176c88dcc5",
        },
        {
          id: "	7a8fd74d-3fe0-4b7b-8d77-1e8266983ade",
          name: "Aji",
          password: bcrypt.hashSync("panji123", 10),
          email: "aji@gmail.com",
          address: "Jalan Tegal Binangung Lorong Abdul Rohim",
          telephone: "082177751041",
          photo: "budi.jpg",
          roleId: "1b864518-299d-469c-b270-4d4b9d5b120f",
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
    await queryInterface.bulkDelete("Users", null, {});
  },
};
