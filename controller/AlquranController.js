const { Alquransantri, Pondok, sequelize } = require("../models");
const uuid = require("uuid");
const { QueryTypes } = require("sequelize");

class AlquranController {
  static async listAlquranAwal(req, res) {
    try {
      const data = await sequelize.query(
        "SELECT santris.name as namasantri, test.*, pondoks.name as namapondok FROM (SELECT * FROM alquransantris ORDER BY alquransantris.id DESC LIMIT 18446744073709551615)AS test JOIN santris ON santris.id=test.santriId JOIN pondoks ON pondoks.id=santris.pondokId GROUP BY santriId",
        {
          model: Alquransantri,
          type: QueryTypes.SELECT,
          mapToModel: true,
          nest: true,
          raw: true,
        }
      );
      res.status(200).json({ data });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async listAlquranAwalRumahTahfidz(req, res) {
    try {
      const {pondokId} = req.params;
      const data = await sequelize.query(
        `SELECT santris.name as namasantri, pondoks.id AS pondokId, pondoks.name AS pondokName, test.*, pondoks.name as namapondok, pondoks.id as pondokId FROM (SELECT * FROM alquransantris ORDER BY alquransantris.id DESC LIMIT 18446744073709551615)AS test JOIN santris ON santris.id=test.santriId JOIN pondoks ON pondoks.id=santris.pondokId WHERE pondoks.id = '${pondokId}' GROUP BY santriId`,
        {
          model: Alquransantri,
          type: QueryTypes.SELECT,
          mapToModel: true,
          nest: true,
          raw: true,
        }
      );
      res.status(200).json({ data });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async getAlqurans(req, res) {
    try {
      const { id } = req.params;
      const data = await Alquransantri.findAll({
        where: { santriId: id },
        order: [["id", "DESC"]],
        include: [{ all: true }],
      });
      res.status(200).json({ data });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async getAlquran(req, res) {
    try {
      const { id } = req.params;
      const data = await Alquransantri.findOne({
        where: { id },
        include: [{ all: true, include: { model: Pondok } }],
      });
      res.status(200).json({ data });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async createAlquran(req, res) {
    try {
      const { juz, surah, ayat, tgl_selesai, santriId, halaman } = req.body;

      const payload = {
        juz,
        surah,
        ayat,
        halaman,
        tgl_selesai,
        santriId,
      };

      const newData = await Alquransantri.create(payload);
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: "Pastikan Semua data terisi" });
    }
  }

  static async updateAlquran(req, res) {
    try {
      const { juz, surah, ayat, tgl_selesai, ket, santriId, halaman } =
        req.body;

      const payload = {
        juz,
        surah,
        ayat,
        halaman,
        tgl_selesai,
        ket,
        santriId,
      };

      const newData = await Alquransantri.update(payload, {
        returning: true,
        where: { id: req.params.id },
      });
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: "Pastikan Semua data benar" });
    }
  }

  static async deleteAlquran(req, res) {
    try {
      const deleteData = await Alquransantri.destroy({
        where: { id: req.params.id },
      });
      res.status(200).json("delete data" + deleteData + "successfully");
    } catch (error) {
      return res.status(404).json({ data: "pastikan id data benar" });
    }
  }
}

module.exports = AlquranController;
