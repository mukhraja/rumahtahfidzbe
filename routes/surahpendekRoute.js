const { SurahPendekController } = require("../controller");
const route = require("express").Router();

route.post("/", SurahPendekController.createSurahPendek);
route.get("/listawal", SurahPendekController.listSurahPendekAwal);
route.get("/list/:id", SurahPendekController.getSurahPendeks);
route.get("/:id", SurahPendekController.getSurahPendek);
route.put("/:id", SurahPendekController.updateSurahpendek);
route.delete("/:id", SurahPendekController.deleteSurahpendek);

module.exports = route;
