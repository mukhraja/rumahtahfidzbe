const userRoute = require("./userRoute");
const iqroRoute = require("./iqroRoute");
const santriRoute = require("./santriRoute");
const guruRoute = require("./guruRoute");
const pondokRoute = require("./pondokRoute");
const alquranRoute = require("./alquranRoute");
const surahpendekRoute = require("./surahpendekRoute");
const roleRoute = require("./roleRoute");
const route = require("express").Router();

route.use("/v1/api/user", userRoute);
route.use("/v1/api/iqro", iqroRoute);
route.use("/v1/api/santri", santriRoute);
route.use("/v1/api/guru", guruRoute);
route.use("/v1/api/pondok", pondokRoute);
route.use("/v1/api/alquran", alquranRoute);
route.use("/v1/api/surahpendek", surahpendekRoute);
route.use("/v1/api/role", roleRoute);

module.exports = route;
