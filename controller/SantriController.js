const { Santri } = require("../models");
const uuid = require("uuid");

class SantriController {
  static async getSantris(req, res) {
    const newData = await Santri.findAll({
      include: [
        {
          all: true,
        },
      ],
    });
    res.status(200).json({ data: newData });
  }

  static async createSantri(req, res) {
    const id = uuid.v4();
    const { name, nis, datebirth, gender, education, city, province, address, parent, telephone, photo, tgl_masuk, pondokId } = req.body;

    const payload = {
      id,
      name,
      nis,
      datebirth,
      gender,
      education,
      city,
      province,
      address,
      parent,
      telephone,
      photo,
      tgl_masuk,
      pondokId,
    };
    const data = await Santri.create(payload);
    res.status(200).json({ data });
  }

  static async updateSantri(req, res) {
    const { name, nis, datebirth, gender, education, city, province, address, parent, telephone, photo, tgl_masuk, pondokId } = req.body;

    const payload = {
      name,
      nis,
      datebirth,
      gender,
      education,
      city,
      province,
      address,
      parent,
      telephone,
      photo,
      tgl_masuk,
      pondokId,
    };

    const newData = await Santri.update(payload, { returning: true, where: { id: req.params.id } });
    res.status(200).json({ data: newData });
  }
  catch(error) {
    return res.status(404).json({ data: "Pastikan Semua data benar" });
  }

  static async deleteSantri(req, res) {
    try {
      const deleteData = await Santri.destroy({
        where: { id: req.params.id },
      });
      res.status(200).json({ data: deleteData });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }
}

module.exports = SantriController;
