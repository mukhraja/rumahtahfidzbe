const { SantriController } = require("../controller");
const route = require("express").Router();
const { uploadMultipleFile } = require("../middleware/uploadFile");

route.get("/", SantriController.getSantris);
route.get("/:id", SantriController.getSantri);
route.post("/", uploadMultipleFile, SantriController.createSantri);
route.put("/:id", SantriController.updateSantriNoFile);
route.delete("/:id", SantriController.deleteSantri);
route.put("/data/:id", uploadMultipleFile, SantriController.updateSantri);

module.exports = route;
