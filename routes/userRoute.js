const { UserController, refreshToken } = require("../controller");
const route = require("express").Router();
const verifyToken = require("../middleware/verifyToken");
const { uploadMultipleFile } = require("../middleware/uploadFile");

route.get("/", UserController.getUsers);
route.get("/:id", UserController.getUser);
route.put("/:id", UserController.updateNoFileUser);
route.post("/", uploadMultipleFile, UserController.createUser);
route.post("/data", UserController.createNoFileUser);
route.put("/data/:id", uploadMultipleFile, UserController.updateUser);
route.delete("/:id", UserController.deleteUser);
route.post("/login", UserController.login);
route.get("/token", refreshToken.getRefreshToken);

module.exports = route;
