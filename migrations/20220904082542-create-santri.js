"use strict";
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable("Santris", {
      id: {
        allowNull: false,
        primaryKey: true,
        type: Sequelize.STRING,
      },
      name: {
        type: Sequelize.STRING,
      },
      nis: {
        type: Sequelize.STRING,
      },
      datebirth: {
        type: Sequelize.DATE,
      },
      gender: {
        type: Sequelize.STRING,
      },
      education: {
        type: Sequelize.STRING,
      },
      city: {
        type: Sequelize.STRING,
      },
      province: {
        type: Sequelize.STRING,
      },
      address: {
        type: Sequelize.STRING,
      },
      parent: {
        type: Sequelize.STRING,
      },
      telephone: {
        type: Sequelize.INTEGER,
      },
      photo: {
        type: Sequelize.STRING,
      },
      tgl_masuk: {
        type: Sequelize.DATE,
      },
      pondokId: {
        type: Sequelize.STRING,
        references: {
          model: "Pondoks",
          key: "id",
        },
        onUpdate: "cascade",
        onDelete: "set null",
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE,
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE,
      },
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable("Santris");
  },
};
