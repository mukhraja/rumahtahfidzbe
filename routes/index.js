const userRoute = require("./userRoute");
const iqroRoute = require("./iqroRoute");
const santriRoute = require("./santriRoute");
const guruRoute = require("./guruRoute");
const pondokRoute = require("./pondokRoute");
const alquranRoute = require("./alquranRoute");
const surahpendekRoute = require("./surahpendekRoute");
const route = require("express").Router();

route.use("/user", userRoute);
route.use("/iqro", iqroRoute);
route.use("/santri", santriRoute);
route.use("/guru", guruRoute);
route.use("/pondok", pondokRoute);
route.use("/alquran", alquranRoute);
route.use("/surahpendek", surahpendekRoute);

module.exports = route;
