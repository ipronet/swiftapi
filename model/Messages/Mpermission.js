const pool = require("../../config/db");
const { logger } = require("../../logs/winston");

let swiftdb = {};



swiftdb.CreateMpermission = (postData = req.body) => {
    return new Promise((resolve, reject) => {
        pool.query("INSERT INTO message_permissions SET ?", [postData], (err, results) => {
            if (err) {
                logger.error(err);
                return reject(err);
            }

            return resolve(results);
        });
    });
};
swiftdb.MessageProtect = (message_type, roleid) => {
    return new Promise((resolve, reject) => {
        const sql =
            "SELECT * FROM message_permissions WHERE roleid = ? AND message_type = ? AND status = ?";
        pool.query(sql, [ roleid,message_type, 1], function (error, results, fields) {
            if (error) {
                logger.error(err);
                return reject(err);
            }
            return resolve(results[0]);
        });
    });
};

swiftdb.ViewMessagePermissions = () => {
    return new Promise((resolve, reject) => {
        const sql =
            "SELECT * FROM message_permissions";
        pool.query(sql, [], function (error, results, fields) {
            if (error) {
                logger.error(err);
                return reject(err);
            }
            return resolve(results);
        });
    });
};
swiftdb.ViewMessagePermissionsByRole = (roleid) => {
    return new Promise((resolve, reject) => {
        const sql ="SELECT * FROM message_permissions WHERE roleid = ?";
        pool.query(sql, [roleid], function (error, results, fields) {
            if (error) {
                logger.error(err);
                return reject(err);
            }
            return resolve(results);
        });
    });
};

swiftdb.FindMessagePermission = (id) => {
    return new Promise((resolve, reject) => {
        const sql ="SELECT * FROM message_permissions WHERE id = ?";
        pool.query(sql, [id], function (error, results, fields) {
            if (error) {
                logger.error(err);
                return reject(err);
            }
            return resolve(results[0]);
        });
    });
};



swiftdb.MessageRecords = (roleid) => {
    return new Promise((resolve, reject) => {
        const sql =
            "SELECT DISTINCT message_type FROM message_permissions  WHERE roleid = ?";
        pool.query(sql, [roleid], function (error, results, fields) {
            if (error) {
                logger.error(error);
                return reject(error);
            }
            return resolve(results);
        });
    });
};



swiftdb.UpdateMpermission = (postdata, id) => {
    return new Promise((resolve, reject) => {
        pool.query(
            "UPDATE message_permissions SET ? WHERE id = ?",
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
module.exports = swiftdb;
