var axios = require("axios");
module.exports = {
  MonitorUrl: async (url) => {
    let message = {};
    var config = {
      method: "get",
      url: url,
      headers: {},
    };
    try {
      await axios(config);
      return (message = { code: 200, url, message: "running", state: 1 });
    } catch (error) {
      return (message = {
        code: 400,
        url,
        message: "disabled",
        state: 0,
      });
    }
  },
};
