const { GuruController } = require("../controller");
const route = require("express").Router();

route.get("/", GuruController.getGurus);
route.post("/", GuruController.createGuru);
route.put("/:id", GuruController.updateGuru);
route.delete("/:id", GuruController.deleteGuru);

module.exports = route;
