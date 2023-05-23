const pool = require("../../config/db");
const { logger } = require("../../logs/winston");

let swiftdb = {};

swiftdb.all = () => {
  return new Promise((resolve, reject) => {
    pool.query("SELECT m.* ,c.title as roleTitle FROM users m INNER JOIN role c ON c.id = m.roleid WHERE m.deletedAt IS NULL", (err, results) => {
      if (err) {
       logger.error(err);
return reject(err);
      }

      return resolve(results);
    });
  });
};

swiftdb.FindEmail = (email) => {
  return new Promise((resolve, reject) => {
    const sql = "SELECT email FROM users WHERE email = ?";
    pool.query(sql, [email], function (error, results, fields) {
      if (error) {
    logger.error(error);
return reject(error);
      }
      return resolve(results[0]);
    });
  });
};

swiftdb.FindPhone = (phone) => {
  return new Promise((resolve, reject) => {
    const sql = "SELECT phone FROM users WHERE phone = ?";
    pool.query(sql, [phone], function (error, results, fields) {
      if (error) {
    logger.error(error);
return reject(err);
      }
      return resolve(results[0]);
    });
  });
};

swiftdb.FindUsername = (username) => {
  return new Promise((resolve, reject) => {
    const sql = "SELECT username FROM users WHERE username = ?";
    pool.query(sql, [username], function (error, results, fields) {
      if (error) {
    logger.error(error);
return reject(error);
      }
      return resolve(results[0]);
    });
  });
};

swiftdb.SetupUser = (postData = req.body) => {
  return new Promise((resolve, reject) => {
    pool.query("INSERT INTO users SET ?", [postData], (err, results) => {
      if (err) {
       logger.error(err);
return reject(err);
      }

      return resolve(results);
    });
  });
};

swiftdb.ActivateUser = (active, status, email) => {
  return new Promise((resolve, reject) => {
    pool.query(
      "UPDATE users SET active= ? status = ?  WHERE email = ?",
      [active, status, email],
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

swiftdb.Authenticate = (username) => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT m.*,c.title AS roleTitle FROM users m INNER JOIN role c ON c.id = m.roleid WHERE m.username = ?  AND m.status = 1";
    pool.query(sql, [username], function (err, results, fields) {
      if (err) {
    logger.error(err);
return reject(err);
      }
      return resolve(results[0]);
    });
  });
};
swiftdb.AuthEmail = (email) => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT m.*,c.title AS roleTitle FROM users m INNER JOIN role c ON c.id = m.roleid WHERE m.email = ? AND m.status = 1";
    pool.query(sql, [email], function (err, results, fields) {
      if (err) {
    logger.error(err);
return reject(err);
      }
      return resolve(results[0]);
    });
  });
};

swiftdb.AuthenticateEmail = (email) => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT email,password FROM users WHERE email = ? AND status = 1";
    pool.query(sql, [email], function (err, results, fields) {
      if (err) {
    logger.error(err);
return reject(err);
      }
      return resolve(results[0]);
    });
  });
};

swiftdb.Token = () => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT issuer,audience,timetolive,token_name FROM settings_token";
    pool.query(sql, function (err, results, fields) {
      if (err) {
    logger.error(err);
return reject(err);
      }
      return resolve(results[0]);
    });
  });
};

swiftdb.GetUser = (username) => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT FROM users WHERE username = ?";
    pool.query(sql, [username], function (err, results, fields) {
      if (err) {
    logger.error(err);
return reject(err);
      }
      return resolve(results[0]);
    });
  });
};

swiftdb.GetAllUser = () => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT * FROM users";
    pool.query(sql, function (err, results, fields) {
      if (err) {
    logger.error(err);
return reject(err);
      }
      return resolve(results);
    });
  });
};

swiftdb.SingleUser = (email) => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT m.*,c.title AS roleTitle FROM users m INNER JOIN role c ON c.id = m.roleid WHERE  m.email = ?";
    pool.query(sql,[email], function (err, results, fields) {
      if (err) {
    logger.error(err);
return reject(err);
      }
      return resolve(results[0]);
    });
  });
};

swiftdb.UpdateUser = (postdata, id) => {
  return new Promise((resolve, reject) => {
    pool.query(
      "UPDATE users SET ? WHERE id = ?",
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

swiftdb.ViewRoles = () => {
  return new Promise((resolve, reject) => {
    pool.query(
      "SELECT name as label, code as value from sys_user_roles",
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
swiftdb.ViewStatus = () => {
  return new Promise((resolve, reject) => {
    pool.query("SELECT * FROM sys_users_status", (err, results) => {
      if (err) {
       logger.error(err);
return reject(err);
      }
      return resolve(results);
    });
  });
};

swiftdb.FindRole = (id) => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT * FROM role WHERE id = ? AND status  = ? AND deletedAt IS NULL";
    pool.query(sql, [id, "1"], function (err, results, fields) {
      if (err) {
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
    pool.query(sql, [id, "1"], function (err, results, fields) {
      if (err) {
    logger.error(err);
return reject(err);
      }
      return resolve(results);
    });
  });
};

swiftdb.FindUserMenu = (user,access) => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT DISTINCT menuid AS menu FROM usermenu WHERE userID = ? AND status  = ? AND accessType = ?  AND deletedAt IS NULL";
    pool.query(sql, [user, "1",access], function (err, results, fields) {
      if (err) {
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
    pool.query(sql, [id, "1"], function (err, results, fields) {
      if (err) {
    logger.error(err);
return reject(err);
      }
      return resolve(results[0]);
    });
  });
};

swiftdb.FindRoutes = () => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT * FROM routes";
    pool.query(sql, function (err, results, fields) {
      if (err) {
    logger.error(err);
return reject(err);
      }
      return resolve(results[0]);
    });
  });
};

module.exports = swiftdb;
