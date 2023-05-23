const pool = require("../../config/db");
const { logger } = require("../../logs/winston");

let swiftdb = {};

swiftdb.all = () => {
  return new Promise((resolve, reject) => {
    pool.query("SELECT * FROM alert_profile WHERE deletedAt IS NULL", (err, results) => {
      if (err) {
logger.error(err);
return reject(err);
      }

      return resolve(results);
    });
  });
};

swiftdb.create = (postData = req.body) => {
  return new Promise((resolve, reject) => {
    pool.query(
      "INSERT INTO alert_profile SET ?",
      [postData],
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

swiftdb.update = (postdata, id) => {
  return new Promise((resolve, reject) => {
    pool.query(
      "UPDATE alert_profile SET ? WHERE id = ?",
      [postdata, id],
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
    const sql = "SELECT * FROM alert_profile WHERE deletedAt IS NULL AND id = ?";
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
