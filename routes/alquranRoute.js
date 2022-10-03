const { AlquranController } = require("../controller");
const route = require("express").Router();

route.post("/", AlquranController.createAlquran);
route.get("/listawal", AlquranController.listAlquranAwal);
route.get("/list/:id", AlquranController.getAlqurans);
route.get("/:id", AlquranController.getAlquran);
route.put("/:id", AlquranController.updateAlquran);
route.delete("/:id", AlquranController.deleteAlquran);

module.exports = route;
