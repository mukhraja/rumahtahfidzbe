"use strict";
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable("Gurus", {
      id: {
        allowNull: false,
        primaryKey: true,
        type: Sequelize.STRING,
      },
      name: {
        type: Sequelize.STRING,
      },
      niu: {
        type: Sequelize.STRING,
      },
      email: {
        type: Sequelize.STRING,
      },
      datebirth: {
        type: Sequelize.DATE,
      },
      gender: {
        type: Sequelize.STRING,
      },
      telephone: {
        type: Sequelize.STRING,
      },
      education: {
        type: Sequelize.STRING,
      },
      address: {
        type: Sequelize.STRING,
      },
      ayah: {
        type: Sequelize.STRING,
      },
      ibu: {
        type: Sequelize.STRING,
      },
      mulai_masuk: {
        type: Sequelize.STRING,
      },
      mulai_vakum: {
        type: Sequelize.STRING,
      },
      photo: {
        type: Sequelize.STRING,
      },
      pondokId: {
        type: Sequelize.STRING,
        references: {
          model: "Pondoks",
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
    await queryInterface.dropTable("Gurus");
  },
};
