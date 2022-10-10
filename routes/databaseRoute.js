const { DatabaseController } = require("../controller");

const route = require("express").Router();

route.get("/", DatabaseController.exportDatabase);

module.exports = route;
