const { SantriController } = require("../controller");
const route = require("express").Router();

route.get("/", SantriController.getSantris);
route.post("/", SantriController.createSantri);
route.put("/:id", SantriController.updateSantri);
route.delete("/:id", SantriController.deleteSantri);

module.exports = route;
