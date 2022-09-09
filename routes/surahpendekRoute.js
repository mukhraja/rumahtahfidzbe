const { SurahPendekController } = require("../controller");
const route = require("express").Router();

route.get("/", SurahPendekController.getSurahPendeks);
route.post("/", SurahPendekController.createSurahPendek);
route.put("/:id", SurahPendekController.updateSurahpendek);
route.delete("/:id", SurahPendekController.deleteSurahpendek);

module.exports = route;
