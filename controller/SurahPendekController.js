const { Surahpendek } = require("../models");
const uuid = require("uuid");

class SurahPendekController {
  static async getSurahPendeks(req, res) {
    try {
      const data = await Surahpendek.findAll({
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

  static async createSurahPendek(req, res) {
    try {
      const id = uuid.v4();
      const { name, tgl_selesai, santriId } = req.body;

      const payload = {
        id,
        name,
        tgl_selesai,
        santriId,
      };

      const newData = await Surahpendek.create(payload);
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: "Pastikan Semua data terisi" });
    }
  }

  static async updateSurahpendek(req, res) {
    try {
      const { name, tgl_selesai, santriId } = req.body;

      const payload = {
        name,
        tgl_selesai,
        santriId,
      };

      const newData = await Surahpendek.update(payload, {
        returning: true,
        where: { id: req.params.id },
      });
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: "Pastikan Semua data benar" });
    }
  }

  static async deleteSurahpendek(req, res) {
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

module.exports = SurahPendekController;
