"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Guru extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Guru.belongsTo(models.Pondok, { foreignKey: "pondokId" });
    }
  }
  Guru.init(
    {
      id: {
        primaryKey: true,
        type: DataTypes.STRING,
      },
      name: DataTypes.STRING,
      nis: DataTypes.STRING,
      email: DataTypes.STRING,
      datebirth: DataTypes.DATE,
      gender: DataTypes.STRING,
      telephone: DataTypes.STRING,
      education: DataTypes.STRING,
      address: DataTypes.STRING,
      photo: DataTypes.STRING,
      pondokId: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "Guru",
    }
  );
  return Guru;
};
