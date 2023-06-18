const pool = require("../../config/db");
const { logger } = require("../../logs/winston");

let swiftdb = {};



swiftdb.FindApp = (id) => {
    return new Promise((resolve, reject) => {
        const sql = "SELECT * FROM application_auth WHERE app_key = ?";
        pool.query(sql, [id], function (error, results, fields) {
            if (error) {
                logger.error(err);
                return reject(err);
            }
            return resolve(results[0]);
        });
    });
};

swiftdb.GetAppAuth = () => {
    return new Promise((resolve, reject) => {
        pool.query("SELECT app_key,app_name,allowed_ips,creadated_at,updated_at,created_by FROM application_auth", (err, results) => {
            if (err) {
                logger.error(err);
                return reject(err);
            }
            return resolve(results);
        });
    });
};

swiftdb.createAppAuth = (postData = req.body) => {
    return new Promise((resolve, reject) => {
        pool.query(
            "INSERT INTO application_auth SET ?",
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

swiftdb.updateAppAuth = (postdata, id) => {
    return new Promise((resolve, reject) => {
        pool.query("UPDATE application_auth SET ? WHERE  id = ?", [postdata, id],
            (err, results) => {
                if (err) {
                    console.log(err);
                    logger.error(err);
                    return reject(err);
                }
                return resolve(results);
            }
        );
    });
};
module.exports = swiftdb;
