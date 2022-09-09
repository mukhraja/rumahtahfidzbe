const { PondokController } = require("../controller");
const route = require("express").Router();

route.get("/", PondokController.getPondoks);
route.post("/", PondokController.createPondok);
route.put("/:id", PondokController.updatePondok);
route.delete("/:id", PondokController.deletePondok);

module.exports = route;
