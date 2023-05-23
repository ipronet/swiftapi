const MessageModel = require("../model/Messages/MtypeCron");


module.exports = {
    AutoSaveMessageRecordInfo: async (data) => {
        delete data.jsondata
        delete data.cdatetime
        MessageModel.msgRecordInfo(data);
    },
 
}