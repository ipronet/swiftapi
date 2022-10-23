const pool = require("../../config/db");

let swiftdb = {};

swiftdb.all = () => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT DISTINCT * FROM usermenu WHERE status = 1 AND deletedAt IS NULL GROUP BY userid";
    pool.query(sql, function (error, results, fields) {
      if (error) {
        return reject(error);
      }
      return resolve(results);
    });
  });
};

swiftdb.FindUsers = () => {
  return new Promise((resolve, reject) => {
    const sql = "SELECT  * FROM users WHERE status = 1 AND deletedAt IS NULL";
    pool.query(sql, function (error, results, fields) {
      if (error) {
        return reject(error);
      }
      return resolve(results);
    });
  });
};


swiftdb.FindUser = (username) => {
    return new Promise((resolve, reject) => {
      const sql = "SELECT  * FROM users WHERE username = ?";
      pool.query(sql,[username], function (error, results, fields) {
        if (error) {
          return reject(error);
        }
        return resolve(results[0]);
      });
    });
  };

swiftdb.rolemenusnodistinct = (roleid) => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT m.menuid,c.title FROM usermenu m INNER JOIN menu c ON c.id = m.menuid WHERE m.status = 1 AND m.deletedAt IS NULL AND m.userid = ?";
    pool.query(sql, [roleid], function (error, results, fields) {
      if (error) {
        return reject(error);
      }
      return resolve(results);
    });
  });
};

swiftdb.rolemenusnodistinctshowall = (roleid) => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT m.id AS usermenuid,m.accessType,m.status as usermenustatus,  m.menuid,c.title FROM usermenu m INNER JOIN menu c ON c.id = m.menuid WHERE m.userid = ? AND m.deletedAt IS NULL";
    pool.query(sql, [roleid], function (error, results, fields) {
      if (error) {
        return reject(error);
      }
      return resolve(results);
    });
  });
};
//create rolemenu
swiftdb.create = (postData) => {
  return new Promise((resolve, reject) => {
    pool.query("INSERT INTO usermenu SET ?", [postData], (err, results) => {
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
      "UPDATE usermenu SET ? WHERE id = ?",
      [postdata, id],
      (err, results) => {
        if (err) {
          return reject(err);
        }
        return resolve(results);
      }
    );
  });
};

swiftdb.Find = (id) => {
  return new Promise((resolve, reject) => {
    const sql = "SELECT * FROM usermenu WHERE id = ?";
    pool.query(sql, [id], function (error, results, fields) {
      if (error) {
        return reject(error);
      }
      return resolve(results[0]);
    });
  });
};

swiftdb.FindUserMenu = (userID,menuid) => {
    return new Promise((resolve, reject) => {
      const sql =
        "SELECT * FROM usermenu WHERE userID = ? AND menuid  = ?";
      pool.query(sql, [userID, menuid], function (error, results, fields) {
        if (error) {
          return reject(error);
        }
        return resolve(results[0]);
      });
    });
  };
module.exports = swiftdb;
