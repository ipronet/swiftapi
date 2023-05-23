const pool = require("../../config/db");
const { logger } = require("../../logs/winston");

let swiftdb = {};

swiftdb.GetSessionSettings = () => {
  return new Promise((resolve, reject) => {
    pool.query("SELECT * FROM settings_session", (err, results) => {
      if (err) {
        logger.error(err);
return reject(err);
      }
      return resolve(results);
    });
  });
};

swiftdb.createSession = (postData = req.body) => {
  return new Promise((resolve, reject) => {
    pool.query(
      "INSERT INTO settings_session SET ?",
      [postData],
      (err, results) => {
        if (err) {
          throw err;
        }

        return resolve(results);
      }
    );
  });
};

swiftdb.update = (postdata, id) => {
  return new Promise((resolve, reject) => {
    pool.query("UPDATE settings_session SET ? WHERE  id = ?",[postdata, id],
      (err, results) => {
        if (err) {
          logger.error(err);
return reject(err);
        }
        return resolve(results);
      }
    );
  });
};

swiftdb.find = (id) => {
  return new Promise((resolve, reject) => {
    const sql = "SELECT * FROM settings_session WHERE idsettings_session = ?";
    pool.query(sql, [id], function (error, results, fields) {
      if (error) {
    logger.error(err);
return reject(err);
      }
      return resolve(results[0]);
    });
  });
};
module.exports = swiftdb;
