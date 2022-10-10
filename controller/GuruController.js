const { Guru } = require("../models");
const uuid = require("uuid");

class GuruController {
  static async getGurus(req, res) {
    try {
      const data = await Guru.findAll({
        include: [
          {
            all: true,
          },
        ],
      });
      res.status(200).json({ data });
    } catch (error) {
      console.log(error);
      return res.status(404).json({ data: "no data found" });
    }
  }

  static async getguruid(req, res) {
    try {
      const { id } = req.params;

      const newData = await Guru.findOne({
        where: { id },
        include: [{ all: true }],
      });

      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(400).json({ data: "Data tidak ditemukan" });
    }
  }

  static async createGuru(req, res) {
    try {
      const { files, fields } = req.fileAttrb;
      const payload = {
        id: uuid.v4(),
        name: fields[0].value,
        niu: fields[1].value,
        email: fields[2].value,
        datebirth: fields[3].value,
        gender: fields[4].value,
        telephone: fields[5].value,
        education: fields[6].value,
        address: fields[7].value,
        ayah: fields[8].value,
        ibu: fields[9].value,
        mulai_masuk: fields[10].value,
        mulai_vakum: fields[11].value,
        pondokId: fields[12].value,
        photo: files[0].file.newFilename,
      };

      const newData = await Guru.create(payload);
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async updateGuru(req, res) {
    try {
      const { files, fields } = req.fileAttrb;

      const payload = {
        name: fields[0].value,
        niu: fields[1].value,
        email: fields[2].value,
        datebirth: fields[3].value,
        gender: fields[4].value,
        telephone: fields[5].value,
        education: fields[6].value,
        address: fields[7].value,
        ayah: fields[8].value,
        ibu: fields[9].value,
        mulai_masuk: fields[10].value,
        mulai_vakum: fields[11].value,
        pondokId: fields[12].value,
        photo: files[0].file.newFilename,
      };

      const newData = await Guru.update(payload, {
        returning: true,
        where: { id: req.params.id },
      });
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: "Pastikan Semua data benar" });
    }
  }

  static async updateNoFileGuru(req, res) {
    console.log("sampai disini");
    try {
      const {
        name,
        niu,
        email,
        telephone,
        education,
        address,
        datebirth,
        gender,
        age,
        ayah,
        ibu,
        mulai_masuk,
        mulai_vakum,
        roleId,
      } = req.body;

      const payload = {
        name,
        niu,
        email,
        telephone,
        education,
        address,
        datebirth,
        gender,
        age,
        ayah,
        ibu,
        mulai_masuk,
        mulai_vakum,
        roleId,
      };

      console.log(payload);

      const newData = await Guru.update(payload, {
        returning: true,
        where: { id: req.params.id },
      });
      res.status(200).json({ data: newData });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async deleteGuru(req, res) {
    try {
      const deleteData = await Guru.destroy({
        where: { id: req.params.id },
      });
      res.status(200).json("delete data" + deleteData + "successfully");
    } catch (error) {
      return res.status(404).json({ data: "pastikan id data benar" });
    }
  }
}

module.exports = GuruController;
