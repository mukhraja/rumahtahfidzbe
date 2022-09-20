const { Pondok } = require("../models");
const uuid = require("uuid");

class PondokController {
  static async getPondoks(req, res) {
    try {
      const newData = await Pondok.findAll({
        include: [
          {
            all: true,
          },
        ],
      });

      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(400).json({ data: "Data tidak ditemukan" });
    }
  }

  static async createPondok(req, res) {
    try {
      const id = uuid.v4();
      const { no, name, address, telephone, chief, photo } = req.body;

      const payload = {
        id,
        no,
        name,
        address,
        telephone,
        chief,
        photo,
      };

      const newData = await Pondok.create(payload);
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: "Pastikan Semua data terisi" });
    }
  }

  static async updatePondok(req, res) {
    try {
      const { no, name, address, telephone, chief, photo } = req.body;

      const payload = {
        no,
        name,
        address,
        telephone,
        chief,
        photo,
      };

      const newData = await Pondok.update(payload, {
        returning: true,
        where: { id: req.params.id },
      });
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: "Pastikan Semua data benar" });
    }
  }

  static async deletePondok(req, res) {
    try {
      const deleteData = await Pondok.destroy({
        where: { id: req.params.id },
      });
      res.status(200).json("delete data" + deleteData + "successfully");
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }
}

module.exports = PondokController;
