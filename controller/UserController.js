const { Users } = require("../models");
const uuid = require("uuid");
const bcrypt = require("bcrypt");
const users = require("../models/users");
const salt = bcrypt.genSaltSync(10);
const jwt = require("jsonwebtoken");

class UserController {
  static async getUsers(req, res) {
    try {
      const data = await Users.findAll({
        include: [
          {
            all: true,
          },
        ],
      });
      res.status(200).json({ data });
    } catch (error) {
      res.status(404).json({ data: error.message });
    }
  }

  static async createUser(req, res) {
    try {
      const id = uuid.v4();
      const { name, password, email, address, telephone, photo, roleId } =
        req.body;

      const hashPassword = bcrypt.hashSync(password, salt);

      const payload = {
        id,
        name,
        password: hashPassword,
        email,
        address,
        telephone,
        photo,
        roleId,
      };

      const newuser = await Users.create(payload);
      res.status(200).json({ data: newuser });
    } catch (error) {
      res.status(404).json({ data: error.message });
    }
  }

  static async updateUser(req, res) {
    try {
      const { name, password, email, address, telephone, photo, roleId } =
        req.body;

      const payload = {
        name,
        password,
        email,
        address,
        telephone,
        photo,
        roleId,
      };

      const newData = await Users.update(payload, {
        returning: true,
        where: { id: req.params.id },
      });
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: "Pastikan Semua data benar" });
    }
  }

  static async deleteUser(req, res) {
    try {
      const deleteData = await Users.destroy({
        where: { id: req.params.id },
      });
      res.status(200).json({ data: deleteData });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async login(req, res) {
    try {
      const user = await Users.findAll({
        where: {
          email: req.body.email,
        },
      });
      const match = await bcrypt.compare(req.body.password, user[0].password);
      if (match) {
        const userId = user[0].id;
        const name = user[0].name;
        const email = user[0].email;
        const role = user[0].roleId;
        const accessToken = jwt.sign(
          { userId, name, email, role },
          process.env.ACCESS_TOKEN_SECRET,
          { expiresIn: "1d" }
        );
        const refresh_token = jwt.sign(
          { userId, name, email, role },
          process.env.REFRESH_TOKEN_SECRET,
          { expiresIn: "1d" }
        );

        const cek = await Users.update(
          { refresh_token: refresh_token },
          {
            where: {
              id: userId,
            },
          }
        );
        res.cookie("refreshToken", refresh_token, {
          httpOnly: true,
          maxAge: 24 * 60 * 60 * 1000,
        });
        res
          .status(200)
          .json({ profile: { name, email, role, userId }, token: accessToken });
      } else {
        next(error);
      }
    } catch (error) {
      console.log(error);
      res.status(404).json({ data: "Email dan Password Salah" });
    }
  }
}

module.exports = UserController;
