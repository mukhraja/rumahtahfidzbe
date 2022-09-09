"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Iqro extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Iqro.belongsTo(models.Santri, { foreignKey: "santriId" });
    }
  }
  Iqro.init(
    {
      id: {
        primaryKey: true,
        type: DataTypes.STRING,
      },
      name: DataTypes.STRING,
      halaman: DataTypes.STRING,
      tgl_selesai: DataTypes.DATE,
      santriId: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "Iqro",
    }
  );
  return Iqro;
};
