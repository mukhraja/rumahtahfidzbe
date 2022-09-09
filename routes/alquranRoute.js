const { AlquranController } = require("../controller");
const route = require("express").Router();

route.get("/", AlquranController.getAlqurans);
route.post("/", AlquranController.createAlquran);
route.put("/:id", AlquranController.updateAlquran);
route.delete("/:id", AlquranController.deleteAlquran);

module.exports = route;
