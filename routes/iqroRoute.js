const { IqroController } = require("../controller");
const route = require("express").Router();

route.post("/", IqroController.createIqros);
route.get("/listawal", IqroController.listIqroAwal);
route.get("/list/:id", IqroController.getIqros);
route.get("/:id", IqroController.getIqro);
route.put("/:id", IqroController.updateIqros);
route.delete("/:id", IqroController.deleteIqros);

module.exports = route;
