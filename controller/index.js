const UserController = require("./UserController");
const IqroController = require("./IqroController");
const SantriController = require("./SantriController");
const GuruController = require("./GuruController");
const PondokController = require("./PondokController");
const AlquranController = require("./AlquranController");
const SurahPendekController = require("./SurahPendekController");
const RoleController = require("./RoleController");
const DatabaseController = require("./DatabaseController");
const refreshToken = require("./refreshToken");

module.exports = {
  UserController,
  IqroController,
  SantriController,
  GuruController,
  PondokController,
  AlquranController,
  SurahPendekController,
  RoleController,
  refreshToken,
  DatabaseController,
};
