const express = require("express");
const dotenv = require("dotenv");
const cookieParser = require("cookie-parser");
const cors = require("cors");

dotenv.config();

const routes = require("./routes");

const app = express();

const PORT = 2000;

app.use(cors("*"));
app.use(cookieParser());
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.use(routes);

app.listen(PORT, () => console.log(`http://localhost:${PORT}`));
