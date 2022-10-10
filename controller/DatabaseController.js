const mysqldump = require("mysqldump");
const Importer = require("mysql-import");
const path = require("path");

class DatabaseController {
  static async exportDatabase(req, res) {
    try {
      await mysqldump({
        connection: {
          host: "localhost",
          user: "root",
          password: "",
          database: "rumahtahfiz",
        },
        dump: { schema: { table: { dropIfExist: true } } },
        dumpToFile: path.join(__dirname, "../backupdatabase/rumahtahfiz.sql"),
      });

      const file = path.join(__dirname, "../backupdatabase/rumahtahfiz.sql");
      res.download(file);
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }

  static async importDatabase(req, res, next) {
    try {
      const host = "localhost";
      const user = "root";
      const password = "";
      const database = "rumahtahfiz";
      const importer = new Importer({ host, user, password, database });
      importer.onProgress((progress) => {
        var percent =
          Math.floor(
            (progress.bytes_processed / progress.total_bytes) * 10000
          ) / 100;
        console.log(`${percent}% Completed`);
      });
      importer
        .import("path/to/dump.sql")
        .then(() => {
          var files_imported = importer.getImported();
          console.log(`${files_imported.length} SQL file(s) imported.`);
        })
        .catch((err) => {
          next(err);
        });
    } catch (error) {
      return res.status(404).json({ data: error.message });
    }
  }
}

module.exports = DatabaseController;
