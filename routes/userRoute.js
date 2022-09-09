const { UserController } = require("../controller");
const route = require("express").Router();

route.get("/", UserController.getUsers);
route.post("/", UserController.createUser);

module.exports = route;
