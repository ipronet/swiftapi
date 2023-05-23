const mysql = require("mysql2");
const { logger } = require("../../logs/winston");
const pool = mysql.createPool({
  connectionLimit: 10,
  user: 'swiftalertadmin',
  password: 'SW1ft@l3rt',
  host: '10.65.39.163',
  database: 'swiftdb',
});
let swiftdb = {};
// ,cdatetime DATETIME,createdAt TIMESTAMP CURRENT_TIMESTAMP
swiftdb.CreateMessage = (message) => {
  return new Promise((resolve, reject) => {
    const sql =
      "CREATE TABLE IF NOT EXISTS ?? (id INT AUTO_INCREMENT PRIMARY KEY, docname VARCHAR(255), dir VARCHAR(255) NOT NULL,status VARCHAR(255) NOT NULL,sender VARCHAR(255) NOT NULL,reciever VARCHAR(255) NOT NULL,jsondata LONGTEXT NOT NULL,cdatetime DATETIME,createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP)";
    pool.query(sql, [message], function (error, results, fields) {
      if (error) {
    logger.error(err);
return reject(err);
      }

      return resolve({ results: true });
    });
  });
};
// INSERT INTO message_record(message_type,createdBy) VALUES ('m103','system') ON DUPLICATE KEY UPDATE message_type = 'm103';
//INSERT INTO message_record(message_type,createdBy) VALUES (?) ON DUPLICATE KEY UPDATE message_type = message_type
swiftdb.msgRecord = (postData = req.body) => {
  return new Promise((resolve, reject) => {
    pool.query(
      `INSERT INTO message_record SET ? ON DUPLICATE KEY UPDATE message_type=VALUES(message_type)`,
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

swiftdb.msgHeaders = (postData = req.body) => {
  return new Promise((resolve, reject) => {
    pool.query(
      "INSERT INTO message_headers  SET ?",
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

swiftdb.msgRecordInfo = (postData) => {
  return new Promise((resolve, reject) => {
    pool.query(
      "INSERT INTO message_record_info  SET ?",
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

swiftdb.DynamicMsg = (table, postData = req.body) => {
  return new Promise((resolve, reject) => {
    pool.query("INSERT INTO ??  SET ?", [table, postData], (err, results) => {
      if (err) {
       logger.error(err);
return reject(err);
      }

      return resolve(results);
    });
  });
};

swiftdb.MessageTypeRecords = (message_type) => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT messagetype FROM message_record_info WHERE messagetype = ? LIMIT 1";
    pool.query(sql, [message_type], function (error, results, fields) {
      if (error) {
    logger.error(err);
return reject(err);
      }
      return resolve(results[0]);
    });
  });
};

swiftdb.MessageTypeRecordsCount = () => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT COUNT(id) as count FROM message_record_info";
    pool.query(sql, function (error, results, fields) {
      if (error) {
    logger.error(err);
return reject(err);
      }
      return resolve(results[0]);
    });
  });
};

swiftdb.MessageTypeRecordsCountStatus = (status) => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT COUNT(id) as count FROM message_record_info WHERE status = ?";
    pool.query(sql,[status], function (error, results, fields) {
      if (error) {
    logger.error(err);
return reject(err);
      }
      return resolve(results[0]);
    });
  });
};

swiftdb.MessageRecordsCount = () => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT COUNT(id) as count FROM message_record";
    pool.query(sql, function (error, results, fields) {
      if (error) {
    logger.error(err);
return reject(err);
      }
      return resolve(results[0]);
    });
  });
};
swiftdb.AlertCount = () => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT COUNT(id) as count FROM alert_counter";
    pool.query(sql, function (error, results, fields) {
      if (error) {
    logger.error(err);
return reject(err);
      }
      return resolve(results[0]);
    });
  });
};

swiftdb.MessageRecords = () => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT * FROM message_record";
    pool.query(sql, function (error, results, fields) {
      if (error) {
    logger.error(err);
return reject(err);
      }
      return resolve(results);
    });
  });
};

swiftdb.GetMessages = (message_type) => {
    return new Promise((resolve, reject) => {
      const sql =
        "SELECT * FROM ?? ORDER BY id DESC LIMIT 500";
      pool.query(sql, [message_type], function (error, results, fields) {
        if (error) {
      logger.error(err);
return reject(err);
        }
        return resolve(results);
      });
    });
  };

  swiftdb.GetHeaders = (message_type) => {
    return new Promise((resolve, reject) => {
      const sql =
        "SELECT jsondata  FROM message_headers WHERE messagetype = ?";
      pool.query(sql, [message_type], function (error, results, fields) {
        if (error) {
      logger.error(err);
return reject(err);
        }
        return resolve(results[0]);
      });
    });
  };

  swiftdb.UpdateHeaders = (postdata, messagetype) => {
    return new Promise((resolve, reject) => {
      pool.query(
        "UPDATE message_headers SET ? WHERE messagetype = ?",
        [postdata, messagetype],
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
module.exports = swiftdb;
