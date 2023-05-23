const pool = require("../../config/db");
const { logger } = require("../../logs/winston");

let swiftdb = {};
// ,cdatetime DATETIME,createdAt TIMESTAMP CURRENT_TIMESTAMP
swiftdb.CreateMessage = (message) => {
  return new Promise((resolve, reject) => {
    const sql =
      "CREATE TABLE IF NOT EXISTS ?? (id INT AUTO_INCREMENT PRIMARY KEY, docname VARCHAR(255), dir VARCHAR(255) NOT NULL,sender VARCHAR(255) NOT NULL,reciever VARCHAR(255) NOT NULL,jsondata LONGTEXT NOT NULL,cdatetime DATETIME,createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP)";
    pool.query(sql, [message], function (error, results, fields) {
      if (error) {
    logger.error(error);
return reject(error);
      }

      return resolve({ results: true });
    });
  });
};

swiftdb.msgRecord = (postData = req.body) => {
  return new Promise((resolve, reject) => {
    pool.query(
      "INSERT INTO message_record  SET ?",
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
    logger.error(error);
return reject(error);
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
    logger.error(error);
return reject(error);
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
    logger.error(error);
return reject(error);
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
    logger.error(error);
return reject(error);
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
    logger.error(error);
return reject(error);
      }
      return resolve(results[0]);
    });
  });
};

swiftdb.MessageRecords = () => {
  return new Promise((resolve, reject) => {
    const sql =
      "SELECT messagetype AS message_type FROM message_record_info group by messagetype";
    pool.query(sql, function (error, results, fields) {
      if (error) {
    logger.error(error);
return reject(error);
      }
      return resolve(results);
    });
  });
};

swiftdb.GetMessages = (message_type,start,end) => {
    return new Promise((resolve, reject) => {
      const sql =
        "SELECT * FROM ?? WHERE cdatetime BETWEEN ?  AND  ?  ORDER BY cdatetime DESC";
      pool.query(sql, [message_type,start,end], function (error, results, fields) {
        if (error) {
      logger.error(error);
return reject(error);
        }
        return resolve(results);
      });
    });
  };
  swiftdb.GetMessagesWithLimit = (message_type,limit) => {
    return new Promise((resolve, reject) => {
      const sql =
        "SELECT * FROM ?? ORDER BY cdatetime DESC LIMIT ?";
      pool.query(sql, [message_type,limit], function (error, results, fields) {
        if (error) {
      logger.error(error);
return reject(error);
        }
        return resolve(results);
      });
    });
  };
  swiftdb.GetOnlyMessages = (message_type) => {
    console.log(message_type);
    return new Promise((resolve, reject) => {
      const sql =
        "SELECT * FROM ?? LIMIT 1";
      pool.query(sql, [message_type], function (error, results, fields) {
        if (error) {
      logger.error(error);
return reject(error);
        }
        return resolve(results[0]);
      });
    });
  };

  

  swiftdb.GetHeaders = (message_type) => {
    return new Promise((resolve, reject) => {
      const sql =
        "SELECT jsondata  FROM message_headers WHERE messagetype = ?";
      pool.query(sql, [message_type], function (error, results, fields) {
        if (error) {
      logger.error(error);
return reject(error);
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
