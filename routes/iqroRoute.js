const { IqroController } = require("../controller");
const route = require("express").Router();

route.get("/", IqroController.getIqros);
route.post("/", IqroController.createIqros);
route.put("/:id", IqroController.updateIqros);
route.delete("/:id", IqroController.deleteIqros);

module.exports = route;
