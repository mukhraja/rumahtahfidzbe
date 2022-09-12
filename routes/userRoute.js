const { UserController, refreshToken } = require("../controller");
const route = require("express").Router();
const verifyToken = require("../middleware/verifyToken");

route.get("/", verifyToken, UserController.getUsers);
route.post("/", UserController.createUser);
route.put("/:id", UserController.updateUser);
route.delete("/:id", UserController.deleteUser);
route.post("/login", UserController.login);
route.get("/token", refreshToken.getRefreshToken);

module.exports = route;
