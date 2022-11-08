const { Users, Pondok } = require("../models");
const uuid = require("uuid");
const bcrypt = require("bcrypt");
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

  static async getUser(req, res) {
    try {
      const { id } = req.params;

      const newData = await Users.findOne({
        where: { id },
        include: [{ all: true }],
      });

      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(400).json({ data: "Data tidak ditemukan" });
    }
  }

  static async getUserByRumahTahfidz(req, res) {
    try {
      const { pondokId } = req.params;

      const newData = await Users.findAll({
        where: { pondokId },
        include: [{ all: true }],
      });

      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(400).json({ data: "Data tidak ditemukan" });
    }
  }

  static async createUser(req, res) {
    try {
      const { files, fields } = req.fileAttrb;
      const payload = {
        id: uuid.v4(),
        name: fields[0].value,
        email: fields[1].value,
        password: fields[2].value,
        telephone: fields[3].value,
        address: fields[4].value,
        datebirth: fields[5].value,
        age: fields[6].value,
        gender: fields[7].value,
        parent: fields[8].value,
        roleId: fields[9].value,
        pondokId: fields[9].value,
        photo: files[0].file.newFilename,
      };

      const newData = await Users.create(payload);
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async createNoFileUser(req, res) {
    try {
      const {
        name,
        email,
        password,
        telephone,
        address,
        datebirth,
        gender,
        age,
        parent,
        roleId,
        pondokId,
      } = req.body;

      const hashPassword = bcrypt.hashSync(password, salt);

      const payload = {
        id: uuid.v4(),
        name,
        email,
        password: hashPassword,
        telephone,
        address,
        datebirth,
        age,
        gender,
        parent,
        roleId,
        pondokId,
      };

      const newData = await Users.create(payload);
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async updateNoFileUser(req, res) {
    console.log("sampai disini");
    try {
      const {
        name,
        email,
        password,
        telephone,
        address,
        datebirth,
        gender,
        age,
        parent,
        roleId,
        pondokId,
      } = req.body;

      const hashPassword = bcrypt.hashSync(password, salt);

      const payload = {
        name,
        email,
        password: hashPassword,
        telephone,
        address,
        datebirth,
        gender,
        age,
        parent,
        roleId,
        pondokId,
      };

      console.log(payload);

      const newData = await Users.update(payload, {
        returning: true,
        where: { id: req.params.id },
      });
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async updateUser(req, res) {
    try {
      console.log("di update user");
      const { files, fields } = req.fileAttrb;

      const hashPassword = bcrypt.hashSync(fields[3].value, salt);

      const payload = {
        name: fields[1].value,
        email: fields[2].value,
        password: hashPassword,
        telephone: fields[4].value,
        address: fields[5].value,
        datebirth: fields[6].value,
        age: fields[8].value,
        gender: fields[7].value,
        parent: fields[9].value,
        roleId: fields[10].value,
        pondokId: fields[11].value,
        photo: files[0].file.newFilename,
      };

      const newData = await Users.update(payload, {
        where: { id: req.params.id },
        returning: true,
      });
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: error.message });
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
        include: [{ all: true }],
      });
      const match = await bcrypt.compare(req.body.password, user[0].password);
      if (match) {
        const userId = user[0].id;
        const name = user[0].name;
        const email = user[0].email;
        const role = user[0].roleId;
        const roleName = user[0].Role.name;
        const photo = user[0].photo;
        const logotahfidz = user[0].Pondok.logo;
        const pondokId = user[0].pondokId;
        const accessToken = jwt.sign(
          { userId, name, email, role, photo, logotahfidz, roleName },
          process.env.ACCESS_TOKEN_SECRET,
          { expiresIn: "1d" }
        );
        const refresh_token = jwt.sign(
          { userId, name, email, role, photo, logotahfidz, roleName },
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
        res.status(200).json({
          profile: {
            name,
            email,
            role,
            photo,
            logotahfidz,
            roleName,
            userId,
            pondokId,
          },
          token: accessToken,
        });
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
