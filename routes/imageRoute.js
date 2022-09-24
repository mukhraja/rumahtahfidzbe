const route = require("express").Router();
const uploadFile = require("../middleware/uploadFile");

route.get("/:filename", uploadFile.showProductImage);

module.exports = route;
