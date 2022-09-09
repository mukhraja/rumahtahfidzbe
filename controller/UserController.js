const { Users } = require("../models");
const uuid = require("uuid");

class UserController {
  static async getUsers(req, res) {
    try {
      const data = await Users.findAll();
      res.status(200).json({ data });
    } catch (error) {
      res.status(404).json({ data: error.message });
    }
  }

  static async createUser(req, res) {
    try {
      const id = uuid.v4();
      const { name, password, email, address, telephone, photo } = req.body;

      const payload = {
        id,
        name,
        password,
        email,
        address,
        telephone,
        photo,
      };

      const newuser = await Users.create(payload);
      res.status(200).json({ data: newuser });
    } catch (error) {
      res.status(404).json({ data: error.message });
    }
  }
}

module.exports = UserController;
