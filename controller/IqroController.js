const { Iqro } = require("../models");
const uuid = require("uuid");

class IqroController {
  static async getIqros(req, res) {
    try {
      const data = await Iqro.findAll({
        include: [
          {
            all: true,
          },
        ],
      });
      res.status(200).json({ data });
    } catch (error) {
      return res.status(404).json({ data: "no data found" });
    }
  }

  static async createIqros(req, res) {
    try {
      const id = uuid.v4();
      const { name, halaman, tgl_selesai, santriId } = req.body;

      const payload = {
        id,
        name,
        halaman,
        tgl_selesai,
        santriId,
      };

      const newData = await Iqro.create(payload);
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: "Pastikan Semua data terisi" });
    }
  }

  static async updateIqros(req, res) {
    try {
      const { name, halaman, tgl_selesai, santriId } = req.body;

      const payload = {
        name,
        halaman,
        tgl_selesai,
        santriId,
      };

      const newData = await Iqro.update(payload, { returning: true, where: { id: req.params.id } });
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: "Pastikan Semua data benar" });
    }
  }

  static async deleteIqros(req, res) {
    try {
      const deleteData = await Iqro.destroy({
        where: { id: req.params.id },
      });
      res.status(200).json("delete data" + deleteData + "successfully");
    } catch (error) {
      return res.status(404).json({ data: "pastikan id data benar" });
    }
  }
}

module.exports = IqroController;
