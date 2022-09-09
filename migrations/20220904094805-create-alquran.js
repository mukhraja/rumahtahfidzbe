"use strict";
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable("Alqurans", {
      id: {
        allowNull: false,
        primaryKey: true,
        type: Sequelize.STRING,
      },
      juz: {
        type: Sequelize.STRING,
      },
      surah: {
        type: Sequelize.STRING,
      },
      ayat: {
        type: Sequelize.STRING,
      },
      tgl_selesai: {
        type: Sequelize.DATE,
      },
      santriId: {
        type: Sequelize.STRING,
        references: {
          model: "Santris",
          key: "id",
        },
        onUpdate: "cascade",
        onDelete: "cascade",
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
    await queryInterface.dropTable("Alqurans");
  },
};
