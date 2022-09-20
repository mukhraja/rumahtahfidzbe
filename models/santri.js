"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Santri extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      Santri.hasMany(models.Iqrosantri);
      Santri.hasMany(models.Surahpendeksantri);
      Santri.hasMany(models.Alquransantri);
      Santri.belongsTo(models.Pondok, { foreignKey: "pondokId" });
      Santri.belongsToMany(models.Users, { through: models.UserSantri });
    }
  }
  Santri.init(
    {
      id: {
        primaryKey: true,
        type: DataTypes.STRING,
      },
      name: DataTypes.STRING,
      nis: DataTypes.STRING,
      datebirth: DataTypes.DATE,
      gender: DataTypes.STRING,
      education: DataTypes.STRING,
      city: DataTypes.STRING,
      province: DataTypes.STRING,
      address: DataTypes.STRING,
      parent: DataTypes.STRING,
      telephone: DataTypes.INTEGER,
      photo: DataTypes.STRING,
      tgl_masuk: DataTypes.DATE,
      pondokId: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "Santri",
    }
  );
  return Santri;
};
