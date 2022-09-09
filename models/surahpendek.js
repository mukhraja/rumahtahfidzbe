"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Surahpendek extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Surahpendek.belongsTo(models.Santri, { foreignKey: "santriId" });
    }
  }
  Surahpendek.init(
    {
      id: {
        primaryKey: true,
        type: DataTypes.STRING,
      },
      name: DataTypes.STRING,
      tgl_selesai: DataTypes.DATE,
      santriId: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "Surahpendek",
    }
  );
  return Surahpendek;
};
