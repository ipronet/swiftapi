const pool = require("../../config/db");
const { logger } = require("../../logs/winston");

let swiftdb = {};

swiftdb.all = () => {
  return new Promise((resolve, reject) => {
    const sql = "SELECT * FROM role WHERE status = 1 AND deletedAt IS NULL";
    pool.query(sql, function (error, results, fields) {
      if (error) {
    logger.error(err);
return reject(err);
      }
      return resolve(results);
    });
  });
};

swiftdb.allshow = () => {
  return new Promise((resolve, reject) => {
    const sql = "SELECT * FROM role";
    pool.query(sql, function (error, results, fields) {
      if (error) {
    logger.error(err);
return reject(err);
      }
      return resolve(results);
    });
  });
};
//create role
swiftdb.create = (postData) => {
  return new Promise((resolve, reject) => {
    pool.query("INSERT INTO role SET ?", [postData], (err, results) => {
      if (err) {
        throw err;
      }
      return resolve(results);
    });
  });
};

swiftdb.update = (postdata, id) => {
  return new Promise((resolve, reject) => {
    pool.query(
      "UPDATE role SET ? WHERE id = ?",
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
swiftdb.FindRole = (name) => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT * FROM role WHERE title = ?";
    pool.query(sql, [name], function (error, results, fields) {
      if (error) {
    logger.error(err);
return reject(err);
      }
      return resolve(results[0]);
    });
  });
};
swiftdb.FindRoleID = (id) => {
    return new Promise((resolve, reject) => {
      const sql =
        "SELECT * FROM role WHERE id = ?";
      pool.query(sql, [id], function (error, results, fields) {
        if (error) {
      logger.error(err);
return reject(err);
        }
        return resolve(results[0]);
      });
    });
  };

swiftdb.FindRoleMenu = (id) => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT * FROM rolemenu WHERE roleid = ? AND status  = ? AND deletedAt IS NULL";
    pool.query(sql, [id, "1"], function (error, results, fields) {
      if (error) {
    logger.error(err);
return reject(err);
      }
      return resolve(results);
    });
  });
};

swiftdb.FindUserMenu = (user, access) => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT DISTINCT menuid AS menu FROM usermenu WHERE userID = ? AND status  = ? AND accessType = ?  AND deletedAt IS NULL";
    pool.query(sql, [user, "1", access], function (error, results, fields) {
      if (error) {
    logger.error(err);
return reject(err);
      }
      return resolve(results);
    });
  });
};

swiftdb.FindMenu = (id) => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT * FROM menu WHERE id = ? AND status  = ?  AND deletedAt IS NULL";
    pool.query(sql, [id, "1"], function (error, results, fields) {
      if (error) {
    logger.error(err);
return reject(err);
      }
      return resolve(results[0]);
    });
  });
};

swiftdb.FindRoutes = () => {
  return new Promise((resolve, reject) => {
    const sql = "SELECT * FROM routes";
    pool.query(sql, function (error, results, fields) {
      if (error) {
    logger.error(err);
return reject(err);
      }
      return resolve(results[0]);
    });
  });
};

module.exports = swiftdb;
