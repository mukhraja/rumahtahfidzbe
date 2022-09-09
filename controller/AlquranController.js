const { Alquran } = require("../models");
const uuid = require("uuid");

class AlquranController {
  static async getAlqurans(req, res) {
    try {
      const data = await Alquran.findAll({
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

  static async createAlquran(req, res) {
    try {
      const id = uuid.v4();
      const { juz, surah, ayat, tgl_selesai, santriId } = req.body;

      const payload = {
        id,
        juz,
        surah,
        ayat,
        tgl_selesai,
        santriId,
      };

      const newData = await Alquran.create(payload);
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: "Pastikan Semua data terisi" });
    }
  }

  static async updateAlquran(req, res) {
    try {
      const { juz, surah, ayat, tgl_selesai, santriId } = req.body;

      const payload = {
        juz,
        surah,
        ayat,
        tgl_selesai,
        santriId,
      };

      const newData = await Alquran.update(payload, { returning: true, where: { id: req.params.id } });
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: "Pastikan Semua data benar" });
    }
  }

  static async deleteAlquran(req, res) {
    try {
      const deleteData = await Alquran.destroy({
        where: { id: req.params.id },
      });
      res.status(200).json("delete data" + deleteData + "successfully");
    } catch (error) {
      return res.status(404).json({ data: "pastikan id data benar" });
    }
  }
}

module.exports = AlquranController;
